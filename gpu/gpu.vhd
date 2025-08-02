library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity gpu is
	port(
		clk : in std_logic;
		reset : in std_logic;
		
		start : in std_logic;
		done : out std_logic;
		
		device_control_write_enable : in std_logic;
		device_control_data : in std_logic_vector(7 downto 0);
		program_mem_read_valid : out std_logic_vector(PROGRAM_MEM_NUM_CHANNELS-1 downto 0);
		program_mem_read_address : out meow(PROGRAM_MEM_NUM_CHANNELS-1 downto 0)(PROGRAM_MEM_ADDR_BITS-1 downto 0);
		program_mem_read_ready : in std_logic_vector(PROGRAM_MEM_NUM_CHANNELS-1 downto 0);
		program_mem_read_data : in meow(PROGRAM_MEM_NUM_CHANNELS-1 downto 0)(PROGRAM_MEM_DATA_BITS-1 downto 0);
		
		data_mem_read_valid : out std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
		data_mem_read_address : out meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_ADDR_BITS-1 downto 0);
		data_mem_read_ready : in std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
		data_mem_read_data : in meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_DATA_BITS-1 downto 0);
		
		data_mem_write_valid : out std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
		data_mem_write_address : out meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_ADDR_BITS-1 downto 0);
		data_mem_write_data : out meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_DATA_BITS-1 downto 0);
		data_mem_write_ready : in std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0)
	);
end;

architecture arch of gpu is
	signal thread_count : std_logic_vector(7 downto 0);
	
	signal core_start, core_reset, core_done : std_logic_vector(NUM_CORES-1 downto 0);
	signal core_block_id : owo;
	signal core_thread_count : thread_num_type;
	
	signal lsu_read_valid, lsu_read_ready, lsu_write_valid, lsu_write_ready : std_logic_vector((NUM_CORES*NUM_THREADS-1) downto 0);
	signal lsu_read_address, lsu_write_address : meow((NUM_CORES*NUM_THREADS-1) downto 0)(DATA_MEM_ADDR_BITS-1 downto 0);
	signal lsu_read_data, lsu_write_data : meow((NUM_CORES*NUM_THREADS-1) downto 0)(DATA_MEM_DATA_BITS-1 downto 0);
	
	signal fetcher_read_valid, fetcher_read_ready : std_logic_vector(NUM_CORES-1 downto 0);
	signal fetcher_read_address : meow(NUM_CORES-1 downto 0)(PROGRAM_MEM_ADDR_BITS-1 downto 0);
	signal fetcher_read_data : meow(NUM_CORES-1 downto 0)(PROGRAM_MEM_DATA_BITS-1 downto 0);
	
	component dcr is
		port(
			clk : in std_logic;
			reset : in std_logic;
			dcr_write_en : in std_logic;
			dcr_data : in std_logic_vector(7 downto 0);
			thread_count : out std_logic_vector(7 downto 0)
		);
	end component;
	
	component dispatcher is
		port(
			clk : in std_logic;
			reset : in std_logic;
			start : in std_logic;
			core_done : in std_logic_vector(NUM_CORES-1 downto 0);
			
			core_start : buffer std_logic_vector(NUM_CORES-1 downto 0);
			core_reset : buffer std_logic_vector(NUM_CORES-1 downto 0);
			core_block_ids : out owo;
			core_thread_count : out thread_num_type;
			done : out std_logic
		);
	end component;
	
	component mem_controller_mem is
		generic(
			ADDR_BITS : integer := 8;
			DATA_BITS : integer := 8;
			NUM_CONSUMERS : integer := 8;
			NUM_CHANNELS : integer := 4
		);
		
		port(
			clk : in std_logic;
			reset : in std_logic;
			consumer_read_valid : in std_logic_vector(NUM_CONSUMERS-1 downto 0);
			consumer_read_address : in meow(NUM_CONSUMERS-1 downto 0)(ADDR_BITS-1 downto 0);
			consumer_write_valid : in std_logic_vector(NUM_CONSUMERS-1 downto 0);
			consumer_write_address : in meow(NUM_CONSUMERS-1 downto 0)(ADDR_BITS-1 downto 0);
			consumer_write_data : in meow(NUM_CONSUMERS-1 downto 0)(DATA_BITS-1 downto 0);
			mem_read_ready : in std_logic_vector(NUM_CHANNELS-1 downto 0);
			mem_write_ready : in std_logic_vector(NUM_CHANNELS-1 downto 0);
			mem_read_data : in meow(NUM_CHANNELS-1 downto 0)(DATA_BITS-1 downto 0);
			
			consumer_read_ready : out std_logic_vector(NUM_CONSUMERS-1 downto 0);
			consumer_read_data : out meow(NUM_CONSUMERS-1 downto 0)(DATA_BITS-1  downto 0);
			consumer_write_ready : out std_logic_vector(NUM_CONSUMERS-1 downto 0);
			mem_read_valid : out std_logic_vector(NUM_CHANNELS-1 downto 0);
			mem_read_address : out meow(NUM_CHANNELS-1 downto 0)(ADDR_BITS-1 downto 0);
			mem_write_valid : out std_logic_vector(NUM_CHANNELS-1 downto 0);
			mem_write_address : out meow(NUM_CHANNELS-1 downto 0)(ADDR_BITS-1 downto 0);
			mem_write_data : out meow(NUM_CHANNELS-1 downto 0)(DATA_BITS-1 downto 0)
		);
	end component;
	
	component mem_controller_instr is
		generic(
			ADDR_BITS : integer := 8;
			DATA_BITS : integer := 16;
			NUM_CONSUMERS : integer := 2;
			NUM_CHANNELS : integer := 1
		);
		
		port(
			clk : in std_logic;
			reset : in std_logic;
			consumer_read_valid : in std_logic_vector(NUM_CONSUMERS-1 downto 0);
			consumer_read_address : in meow(NUM_CONSUMERS-1 downto 0)(ADDR_BITS-1 downto 0);
			mem_read_ready : in std_logic_vector(NUM_CHANNELS-1 downto 0);
			mem_read_data : in meow(NUM_CHANNELS-1 downto 0)(DATA_BITS-1 downto 0);
			
			consumer_read_ready : out std_logic_vector(NUM_CONSUMERS-1 downto 0);
			consumer_read_data : out meow(NUM_CONSUMERS-1 downto 0)(DATA_BITS-1  downto 0);
			mem_read_valid : out std_logic_vector(NUM_CHANNELS-1 downto 0);
			mem_read_address : out meow(NUM_CHANNELS-1 downto 0)(ADDR_BITS-1 downto 0)
		);
	end component;
	
	component core is
		port(
			clk : in std_logic;
			reset : in std_logic;
			enable_thread : in std_logic_vector(NUM_THREADS-1 downto 0);
			start : in std_logic; -- starts scheduler
			
			mem_read_ready : in std_logic_vector(NUM_THREADS-1 downto 0);
			mem_write_ready : in std_logic_vector(NUM_THREADS-1 downto 0);
			
			instr_read_ready : in std_logic;
			instr_read_data : in std_logic_vector(15 downto 0);
			
			mem_read_data_all : in uwu;
			
			block_id : in std_logic_vector(7 downto 0);
			
			done : out std_logic;
			instr_read_address : out std_logic_vector(7 downto 0);
			instr_read_valid : out std_logic; -- signal to instruction memory that fetcher is waiting to be served
			mem_read_addresses : out uwu;
			mem_write_addresses : out uwu;
			mem_write_data_all : out uwu;
			mem_read_valid : out std_logic_vector(NUM_THREADS-1 downto 0);
			mem_write_valid : out std_logic_vector(NUM_THREADS-1 downto 0)
		);
	end component;
	
begin
	
	dcr_inst : dcr 
		port map(
			clk,
			reset,
			device_control_write_enable,
			device_control_data,
			thread_count
		);
		
	dispatcher_inst : dispatcher
		port map(
			clk,
			reset,
			start,
			core_done,
			core_start,
			core_reset,
			core_block_id,
			core_thread_count,
			done
		);
	
	data_memory_controller : mem_controller_mem
		generic map(
			ADDR_BITS => DATA_MEM_ADDR_BITS,
			DATA_BITS => DATA_MEM_DATA_BITS,
			NUM_CONSUMERS => (NUM_CORES * NUM_THREADS),
			NUM_CHANNELS => DATA_MEM_NUM_CHANNELS
		)
		port map(
			clk,
			reset,
			lsu_read_valid,
			lsu_read_address,
			lsu_write_valid,
			lsu_write_address,
			lsu_write_data,
			data_mem_read_ready,
			data_mem_write_ready,
			data_mem_read_data,
			lsu_read_ready,
			lsu_read_data,
			lsu_write_ready,
			data_mem_read_valid,
			data_mem_read_address,
			data_mem_write_valid,
			data_mem_write_address,
			data_mem_write_data
		);
	
	instruction_memory_controller : mem_controller_instr
		generic map(
			ADDR_BITS => PROGRAM_MEM_ADDR_BITS,
			DATA_BITS => PROGRAM_MEM_DATA_BITS,
			NUM_CONSUMERS => NUM_CORES,
			NUM_CHANNELS => PROGRAM_MEM_NUM_CHANNELS
		)
		port map(
			clk,
			reset,
			fetcher_read_valid,
			fetcher_read_address,
			program_mem_read_ready,
			program_mem_read_data,
			fetcher_read_ready,
			fetcher_read_data,
			program_mem_read_valid,
			program_mem_read_address
		);
		
	cores_gen : for i in 0 to NUM_CORES - 1 generate
        signal core_lsu_read_valid     : std_logic_vector(NUM_THREADS-1 downto 0);
        signal core_lsu_read_address, core_lsu_write_address   : uwu;
        signal core_lsu_read_ready     : std_logic_vector(NUM_THREADS-1 downto 0);
        signal core_lsu_read_data, core_lsu_write_data      : uwu;
        signal core_lsu_write_valid    : std_logic_vector(NUM_THREADS-1 downto 0);
        signal core_lsu_write_ready    : std_logic_vector(NUM_THREADS-1 downto 0);

    begin
        -- Pass through signals between LSUs and data memory controller
        lsu_passthrough_gen : for j in 0 to NUM_THREADS - 1 generate
            constant lsu_index : integer := i * NUM_THREADS + j;
        begin
            passthrough_proc : process(clk)
            begin
                if rising_edge(clk) then
                    lsu_read_valid(lsu_index)     <= core_lsu_read_valid(j);
                    lsu_read_address(lsu_index)   <= core_lsu_read_address(j);
                    lsu_write_valid(lsu_index)    <= core_lsu_write_valid(j);
                    lsu_write_address(lsu_index)  <= core_lsu_write_address(j);
                    lsu_write_data(lsu_index)     <= core_lsu_write_data(j);
                    core_lsu_read_ready(j)        <= lsu_read_ready(lsu_index);
                    core_lsu_read_data(j)         <= lsu_read_data(lsu_index);
                    core_lsu_write_ready(j)       <= lsu_write_ready(lsu_index);
                end if;
            end process passthrough_proc;
        end generate lsu_passthrough_gen;

        -- Compute Core
        core_instance : core
            port map(
                clk                      => clk,
                reset                    => core_reset(i),
					 enable_thread				  => (others => '1'),
                start                    => core_start(i),
                done                     => core_done(i),
                block_id                 => core_block_id(i),
                instr_read_valid   => fetcher_read_valid(i),
                instr_read_address => fetcher_read_address(i),
                instr_read_ready   => fetcher_read_ready(i),
                instr_read_data    => fetcher_read_data(i),
                mem_read_valid      => core_lsu_read_valid,
                mem_read_addresses    => core_lsu_read_address,
                mem_read_ready      => core_lsu_read_ready,
                mem_read_data_all       => core_lsu_read_data,
                mem_write_valid     => core_lsu_write_valid,
                mem_write_addresses   => core_lsu_write_address,
                mem_write_data_all      => core_lsu_write_data,
                mem_write_ready     => core_lsu_write_ready
            );
    end generate cores_gen;
end arch;