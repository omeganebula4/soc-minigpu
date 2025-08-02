library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity core is
	port(
		clk : in std_logic;
		reset : in std_logic;
		enable_thread : in std_logic;
		start : in std_logic; -- starts scheduler
		
		mem_read_ready : in std_logic_vector(NUM_THREADS-1 downto 0);
		mem_write_ready : in std_logic_vector(NUM_THREADS-1 downto 0);
		
		instr_read_ready : in std_logic;
		instr_read_data : in std_logic_vector(15 downto 0);
		
		mem_read_data_all : in uwu;
		
		block_ids : in uwu;
		
		done : out std_logic;
		state : out std_logic_vector(2 downto 0);
		instr_read_address : out std_logic_vector(7 downto 0);
		instr_read_valid : out std_logic; -- signal to instruction memory that fetcher is waiting to be served
		mem_read_addresses : out uwu;
		mem_write_addresses : out uwu;
		mem_write_data_all : out uwu
	);
end;

architecture arch of core is
	
	component scheduler is
		port(clk : in std_logic;
			reset : in std_logic;
			start : in std_logic;
			mem_read_en : in std_logic;
			mem_write_en : in std_logic;
			decoded_ret : in std_logic;
			fetcher_state : in fetcher_statetype;
			lsu_states : in lsu_statetype_array;
			new_pc : in std_logic_vector(7 downto 0);
			
			core_state : out std_logic_vector(2 downto 0);
			current_pc : out std_logic_vector(7 downto 0);
			done : out std_logic);
	end component;
	
	component fetcher is
		port(clk : in std_logic;
			reset : in std_logic;
			core_state : in std_logic_vector(2 downto 0);
			current_pc : in std_logic_vector(7 downto 0);
			mem_read_ready : in std_logic;
			mem_read_data : in std_logic_vector(15 downto 0);
			
			mem_read_address : out std_logic_vector(7 downto 0);
			instruction : out std_logic_vector(15 downto 0);
			mem_read_valid : out std_logic;
			fetcher_state : out fetcher_statetype);
	end component;
	
	component decoder is
		port(clk : in std_logic;
			reset : in std_logic;
			state : in std_logic_vector(2 downto 0);
			instruction : in std_logic_vector(15 downto 0);
			
			rs_address : out std_logic_vector(3 downto 0);
			rt_address : out std_logic_vector(3 downto 0);
			rd_address : out std_logic_vector(3 downto 0);
			nzp_instr : out std_logic_vector(2 downto 0);
			immediate : out std_logic_vector(7 downto 0);
			mem_read_en : out std_logic;
			mem_write_en : out std_logic;
			reg_write_en : out std_logic;
			nzp_write_en : out std_logic;
			reg_input_mux : out std_logic_vector(1 downto 0);
			alu_select : out std_logic_vector(1 downto 0);
			pc_out_mux : out std_logic;
			decoded_ret : out std_logic);
	end component;
	
	component thread is
		port(
			clk : in std_logic;
			reset : in std_logic;
			en : in std_logic;
			reg_write_en : in std_logic;
			mem_read_en : in std_logic;
			mem_write_en : in std_logic;
			nzp_write_en : in std_logic;
			state : in std_logic_vector(2 downto 0);
			
			alu_select : in std_logic_vector(1 downto 0);
			rs_address : in std_logic_vector(3 downto 0);
			rt_address : in std_logic_vector(3 downto 0);
			rd_address : in std_logic_vector(3 downto 0);
			immediate : in std_logic_vector(7 downto 0);
			reg_mux_in : in std_logic_vector(1 downto 0);
			nzp_instr : in std_logic_vector(2 downto 0);
			reg_block_id : in std_logic_vector(7 downto 0);
			pc_out_mux : in std_logic;
			mem_read_ready : in std_logic;
			mem_write_ready : in std_logic;
			mem_read_data : in std_logic_vector(7 downto 0);
			
			
			current_pc : in std_logic_vector(7 downto 0);
			thread_id : in std_logic_vector(7 downto 0);
			new_pc : out std_logic_vector(7 downto 0);
			mem_read_add : out std_logic_vector(7 downto 0);
			mem_write_add : out std_logic_vector(7 downto 0);
			mem_write_data : out std_logic_vector(7 downto 0);
			lsu_state : out lsu_statetype
		);
	end component;
	
	signal mem_read_en, mem_write_en, reg_write_en, nzp_write_en, decoded_ret, pc_out_mux : std_logic;
	signal fetcher_state : fetcher_statetype;
	signal lsu_states : lsu_statetype_array;
	signal current_pc, new_pc, immediate : std_logic_vector(7 downto 0);
	signal core_state, nzp_instr : std_logic_vector(2 downto 0);
	signal instruction : std_logic_vector(15 downto 0);
	signal rs_address, rt_address, rd_address : std_logic_vector(3 downto 0);
	signal reg_input_mux, alu_select : std_logic_vector(1 downto 0);
	signal all_new_pcs : uwu;
	
begin
	new_pc <= all_new_pcs(0);
	state <= core_state;

	scheduler0 : scheduler port map(clk, reset, start, mem_read_en, mem_write_en, decoded_ret, fetcher_state, lsu_states, new_pc, core_state, current_pc, done);
	fetcher0 : fetcher port map(clk, reset, core_state, current_pc, instr_read_ready, instr_read_data, instr_read_address, instruction, instr_read_valid, fetcher_state);
	decoder0 : decoder port map(clk, reset, core_state, instruction, rs_address, rt_address, rd_address, nzp_instr, immediate, mem_read_en, mem_write_en, reg_write_en, nzp_write_en, reg_input_mux, alu_select, pc_out_mux, decoded_ret);
	
	gen_threads : for i in 0 to NUM_THREADS-1 generate
		thread_inst: thread
			
			port map(
				clk,
				reset,
				enable_thread,
				reg_write_en,
				mem_read_en,
				mem_write_en,
				nzp_write_en,
				core_state,
				alu_select,
				rs_address,
				rt_address,
				rd_address,
				immediate,
				reg_input_mux,
				nzp_instr,
				block_ids(i),
				pc_out_mux,
				mem_read_ready(i),
				mem_write_ready(i),
				mem_read_data_all(i),
				current_pc,
				std_logic_vector(to_unsigned(i, 8)),
				
				all_new_pcs(i),
				mem_read_addresses(i),
				mem_write_addresses(i),
				mem_write_data_all(i),
				lsu_states(i)
			);
			
	end generate gen_threads;
	
end arch;