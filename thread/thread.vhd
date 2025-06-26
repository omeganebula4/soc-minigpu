library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.all;

entity thread is
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
		
		
		current_pc : in unsigned(7 downto 0);
		new_pc : out unsigned(7 downto 0);
		mem_read_add : out std_logic_vector(7 downto 0);
		mem_write_add : out std_logic_vector(7 downto 0);
		mem_write_data : out std_logic_vector(7 downto 0)
	);
end;

architecture arch of thread is

	component alu is
		port(clk : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			op1 : in std_logic_vector(7 downto 0);
			op2 : in std_logic_vector(7 downto 0);
			sel : in std_logic_vector(1 downto 0);
			state : in std_logic_vector(2 downto 0);
			oo : out std_logic_vector(7 downto 0);
			alu_nzp : out std_logic_vector(2 downto 0));
	end component;
	component rf is
		port(clk : in std_logic;
			reset : in std_logic;
			en : in std_logic;
			state : in std_logic_vector(2 downto 0);
			write_en : in std_logic;
			alu_out : in std_logic_vector(7 downto 0);
			lsu_out : in std_logic_vector(7 downto 0);
			immediate : in std_logic_vector(7 downto 0);
			mux_in : in std_logic_vector(1 downto 0);
			rs_address : in std_logic_vector(3 downto 0);
			rt_address : in std_logic_vector(3 downto 0);
			rd_address : in std_logic_vector(3 downto 0);
			block_id : in std_logic_vector(7 downto 0);
			rs_data : out std_logic_vector(7 downto 0);
			rt_data : out std_logic_vector(7 downto 0));
	end component;
	component pc is
		port(clk : in std_logic;
			reset : in std_logic;
			en : in std_logic;
			state : in std_logic_vector(2 downto 0);
			nzp_write_en : in std_logic;
			nzp_instr : in std_logic_vector(2 downto 0);
			nzp_alu_out : in std_logic_vector(2 downto 0);
			immediate : in std_logic_vector(7 downto 0);
			pc_out_mux : in std_logic;
			current_pc : in unsigned(7 downto 0);
			new_pc : out unsigned(7 downto 0));
	end component;
	component lsu is
		port(clk : in std_logic;
			reset : in std_logic;
			en : in std_logic;
			state : in std_logic_vector(2 downto 0);
			mem_read_en : in std_logic;
			mem_write_en : in std_logic;
			rs_out : in std_logic_vector(7 downto 0);
			rt_out : in std_logic_vector(7 downto 0);
			mem_read_ready : in std_logic;
			mem_write_ready : in std_logic;
			mem_read_data : in std_logic_vector(7 downto 0);
			
			mem_read_add : out std_logic_vector(7 downto 0);
			mem_write_add : out std_logic_vector(7 downto 0);
			mem_write_data : out std_logic_vector(7 downto 0);
			lsu_out : out std_logic_vector(7 downto 0));
	end component;
	
	signal reg_rt_out, reg_rs_out, alu_out : std_logic_vector(7 downto 0);
	signal alu_nzp : std_logic_vector(2 downto 0);
	signal lsu_out : std_logic_vector(7 downto 0);
begin
	alu0 : alu port map(clk, reset, en, reg_rt_out, reg_rs_out, alu_select, state, alu_out, alu_nzp);
	reg_file : rf port map(clk, reset, en, state, reg_write_en, alu_out, lsu_out, immediate, reg_mux_in, rs_address, rt_address, rd_address, reg_block_id, reg_rs_out, reg_rt_out);
	counter : pc port map(clk, reset, en, state, nzp_write_en, nzp_instr, alu_nzp, immediate, pc_out_mux, current_pc, new_pc);
	load_store : lsu port map(clk, reset, en, state, mem_read_en, mem_write_en, reg_rs_out, reg_rt_out, mem_read_ready, mem_write_ready, mem_read_data, mem_read_add, mem_write_add, mem_write_data, lsu_out);
end arch;