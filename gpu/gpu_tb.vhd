-- Standard libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work; use work.types_pkg.all;

-- Testbench entity (usually empty)
entity gpu_tb is
end entity gpu_tb;

architecture tb of gpu_tb is

    -- ## Constants (from localparam) ##
    constant THREADS                   : integer := 8;
    constant DATA_MEM_ADDR_BITS        : integer := 8;
    constant DATA_MEM_DATA_BITS        : integer := 8;
    constant DATA_MEM_NUM_CHANNELS     : integer := 4;
    constant PROGRAM_MEM_ADDR_BITS     : integer := 8;
    constant PROGRAM_MEM_DATA_BITS     : integer := 16;
    constant PROGRAM_MEM_NUM_CHANNELS  : integer := 1;
    constant NUM_CORES                 : integer := 2;
    constant THREADS_PER_BLOCK         : integer := 4;

    -- ## Custom Type Definitions for Arrays ##
    -- Program Memory types
    type t_prog_mem is array (0 to ((2**PROGRAM_MEM_ADDR_BITS)-1)) of std_logic_vector(PROGRAM_MEM_DATA_BITS-1 downto 0);

    -- Data Memory types
    type t_data_mem is array (0 to ((2**DATA_MEM_ADDR_BITS)-1)) of std_logic_vector(DATA_MEM_DATA_BITS-1 downto 0);

    -- ## Component Declaration for the DUT ##
    component gpu is
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
    end component gpu;

    -- ## Signals ##
    -- Control and Clock
    signal reset, start, dcr_write_en, done : std_logic;
    signal clk                            : std_logic := '0';
    signal device_control_data            : std_logic_vector(7 downto 0);

    -- Program Memory
    signal program_mem             : t_prog_mem;
    signal program_mem_read_ready  : std_logic_vector(PROGRAM_MEM_NUM_CHANNELS-1 downto 0);
    signal program_mem_read_data   : meow(PROGRAM_MEM_NUM_CHANNELS-1 downto 0)(PROGRAM_MEM_DATA_BITS-1 downto 0);
    signal program_mem_read_valid  : std_logic_vector(PROGRAM_MEM_NUM_CHANNELS-1 downto 0);
    signal program_mem_read_address: meow(PROGRAM_MEM_NUM_CHANNELS-1 downto 0)(PROGRAM_MEM_ADDR_BITS-1 downto 0);

    -- Data Memory
    signal data_mem             : t_data_mem;
    signal data_mem_read_ready  : std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
    signal data_mem_read_data   : meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_DATA_BITS-1 downto 0);
    signal data_mem_read_valid  : std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
    signal data_mem_read_address: meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_ADDR_BITS-1 downto 0);
    signal data_mem_write_ready : std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
    signal data_mem_write_valid : std_logic_vector(DATA_MEM_NUM_CHANNELS-1 downto 0);
    signal data_mem_write_address: meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_ADDR_BITS-1 downto 0);
    signal data_mem_write_data  : meow(DATA_MEM_NUM_CHANNELS-1 downto 0)(DATA_MEM_DATA_BITS-1 downto 0);

begin

    -- ## DUT Instantiation ##
    inst : gpu
        port map (
            clk                         => clk,
            reset                       => reset,
            start                       => start,
            device_control_write_enable => dcr_write_en,
            device_control_data         => device_control_data,
            program_mem_read_ready      => program_mem_read_ready,
            program_mem_read_data       => program_mem_read_data,
            data_mem_read_ready         => data_mem_read_ready,
            data_mem_read_data          => data_mem_read_data,
            data_mem_write_ready        => data_mem_write_ready,
            done                        => done,
            program_mem_read_valid      => program_mem_read_valid,
            program_mem_read_address    => program_mem_read_address,
            data_mem_read_valid         => data_mem_read_valid,
            data_mem_read_address       => data_mem_read_address,
            data_mem_write_valid        => data_mem_write_valid,
            data_mem_write_address      => data_mem_write_address,
            data_mem_write_data         => data_mem_write_data
        );

    clk_gen : process
	 begin
		clk <= '1'; wait for 25 ns;
		clk <= '0'; wait for 25 ns;
	 end process;
	 
	 -- Program Memory Read
	 program_mem_read_proc : process(all)
	 begin		
		for c in 0 to PROGRAM_MEM_NUM_CHANNELS-1 loop
			program_mem_read_data(c) <= program_mem(to_integer(unsigned(program_mem_read_address(c))));
		end loop;
	 end process;
	 
	 -- Data Memory Read
    data_mem_read_proc: for c in 0 to DATA_MEM_NUM_CHANNELS-1 generate
        data_mem_read_data(c) <= data_mem(to_integer(unsigned(data_mem_read_address(c))));
    end generate data_mem_read_proc;

    -- Data Memory Write
	 data_mem_write_proc : process(clk)
	 begin
		if rising_edge(clk) then
			if reset = '1' then
			
            for i in 0 to data_mem'high loop
                data_mem(i) <= (others => '0'); 
            end loop;

            -- Then, set specific values
            for i in 1 to 4 loop
                data_mem(i-1) <= std_logic_vector(to_unsigned(i, DATA_MEM_DATA_BITS)); 
            end loop;
            for i in 1 to 4 loop
                data_mem(i+3) <= std_logic_vector(to_unsigned(i, DATA_MEM_DATA_BITS)); 
            end loop;
				
			else
				for c in 0 to DATA_MEM_NUM_CHANNELS-1 loop
					if data_mem_write_valid(c) = '1' then
						data_mem(to_integer(unsigned(data_mem_write_address(c)))) <= data_mem_write_data(c);
					end if;
					
					data_mem_write_ready(c) <= data_mem_write_valid(c);
				end loop;
         end if;
		end if;
	 end process;

    -- Combinational ready signals for read operations
    data_mem_read_ready <= data_mem_read_valid;
	 program_mem_read_ready <= program_mem_read_valid;

	 
	 program_data_init : process
	 begin
		  program_mem(0)   <= x"50DE"; -- MUL R0, %blockIdx, %blockDim
        program_mem(1)   <= x"300F"; -- ADD R0, R0, %threadIdx
        program_mem(2)   <= x"9101"; -- CONST R1, #1
        program_mem(3)   <= x"9202"; -- CONST R2, #2
        program_mem(4)   <= x"9300"; -- CONST R3, #0
        program_mem(5)   <= x"9404"; -- CONST R4, #4
        program_mem(6)   <= x"9508"; -- CONST R5, #8
        program_mem(7)   <= x"6602"; -- DIV R6, R0, R2
        program_mem(8)   <= x"5762"; -- MUL R7, R6, R2
        program_mem(9)   <= x"4707"; -- SUB R7, R0, R7
        program_mem(10)  <= x"9800"; -- CONST R8, #0
        program_mem(11)  <= x"9900"; -- CONST R9, #0
        program_mem(12)  <= x"5A62"; -- MUL R10, R6, R2
        program_mem(13)  <= x"3AA9"; -- ADD R10, R10, R9
        program_mem(14)  <= x"3AA3"; -- ADD R10, R10, R3
        program_mem(15)  <= x"7AA0"; -- LDR R10, R10
        program_mem(16)  <= x"5B92"; -- MUL R11, R9, R2
        program_mem(17)  <= x"3BB7"; -- ADD R11, R11, R7
        program_mem(18)  <= x"3BB4"; -- ADD R11, R11, R4
        program_mem(19)  <= x"7BB0"; -- LDR R11, R11
        program_mem(20)  <= x"5CAB"; -- MUL R12, R10, R11
        program_mem(21)  <= x"388C"; -- ADD R8, R8, R12
        program_mem(22)  <= x"3991"; -- ADD R9, R9, R1
        program_mem(23)  <= x"2092"; -- CMP R9, R2
        program_mem(24)  <= x"180C"; -- BRn LOOP (back to instr 12)
        program_mem(25)  <= x"3950"; -- ADD R9, R5, R0
        program_mem(26)  <= x"8098"; -- STR R9, R8
        program_mem(27)  <= x"F000"; -- RET

        for i in 28 to program_mem'high loop
            program_mem(i) <= (others => '0');
        end loop;
		  wait;
	 end process;
	 
    -- ## Stimulus Process ##
    stimulus_proc : process
        variable expected : unsigned(7 downto 0);
        variable result   : unsigned(7 downto 0);
        variable cycles   : integer := 0;
    begin
        -- ## Reset ##
        wait until rising_edge(clk);
        reset        <= '1';
        dcr_write_en <= '0';
        start        <= '0';
        wait until rising_edge(clk);
        reset        <= '0';

        -- ## Write thread count ##
        wait until rising_edge(clk);
        device_control_data <= std_logic_vector(to_unsigned(THREADS, 8));
        dcr_write_en        <= '1';
        wait until rising_edge(clk);
        dcr_write_en        <= '0';

        -- ## Pulse Start ##
        wait until rising_edge(clk);
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';

        -- ## Wait for DUT to assert done ##
        cycles := 0;
        while done = '0' loop
            wait until rising_edge(clk);
            cycles := cycles + 1;
            -- Add timeout to prevent infinite simulation
            if cycles > 10000 then
                report "Timeout: GPU did not complete in reasonable time" severity failure;
            end if;
        end loop;

        report "Kernel completed in " & integer'image(cycles) & " cycles";

        -- ## Check results ##
        for i in 0 to 7 loop
            expected := to_unsigned(i+i, 8);
            result   := unsigned(data_mem(i+16));
            if result /= expected then
                report "Mismatch @ index " & integer'image(i) &
                       " : expected " & integer'image(to_integer(expected)) &
                       ", got " & integer'image(to_integer(result)) severity error;
            end if;
        end loop;

        report "All results correct.";
        -- ## End Simulation ##
        assert false report "Simulation finished." severity note;
        wait; -- Stop the process forever

    end process stimulus_proc;

end architecture tb;
