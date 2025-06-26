library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity testbench is

end entity;

-- assuming operand 1 to be rs and operand 2 to be rt

architecture behav of testbench is
	signal clock,reset,enable: std_logic := '0';
	signal operand_1,operand_2,alu_out: std_logic_vector(7 downto 0);
	signal alu_select: std_logic_vector(1 downto 0);
	signal core_state,alu_nzp: std_logic_vector(2 downto 0);
	signal correct_behavior: std_logic;
	
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
	
	begin
	
	inst1: alu port map(clock,reset,enable,operand_1,operand_2,alu_select,
								core_state,alu_out,alu_nzp);
	
	clock_proc: process
	begin
		clock <= '1';
		wait for 10 ns;
		clock <= '0';
		wait for 10 ns;
	end process;
	
	test_proc: process
	begin
		reset <= '1';
		wait for 20 ns;
		if (alu_nzp = "000" and alu_out = "00000000") then
			correct_behavior <= '1';
		else 
			correct_behavior <= '0';
		end if;
		wait for 10 ns;
		reset <= '0';
		operand_1 <= "00011001";
		operand_2 <= "00001011";
		alu_select <= "00";
		wait for 30 ns;
		enable <= '1';
		core_state <= "101";
		operand_1 <= "00011001";
		operand_2 <= "00001011";
		alu_select <= "00";
		wait for 20 ns;
		
		if(alu_out = "00100100" and alu_nzp = "100") then
			correct_behavior <= '1';
		else 
			correct_behavior <= '0';
		end if;
		alu_select <= "01";
		
		wait for 20 ns;
		if(alu_out = "00001110" and alu_nzp = "100") then
			correct_behavior <= '1';
		else 
			correct_behavior <= '0';
		end if;
		operand_1 <= "00000101";
		operand_2 <= "00001011";
		alu_select <= "10";
		wait for 20 ns;
		if(alu_out = "00110111" and alu_nzp = "001") then
			correct_behavior <= '1';
		else 
			correct_behavior <= '0';
		end if;
		operand_1 <= "00001011";
		operand_2 <= "00000101";
		alu_select <= "11";
		wait for 20 ns;
		if(alu_out = "00000010" and alu_nzp = "100") then
			correct_behavior <= '1';
		else 
			correct_behavior <= '0';
		end if;
		wait;
	end process;
	
end architecture;
