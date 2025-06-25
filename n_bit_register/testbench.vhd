library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_TEXTIO.ALL; use STD.TEXTIO.all;
use work.all;

entity testbench is
	generic(
		n : integer := 8
	);
end;

architecture sim of testbench is
	component reg
		port(clk, reset : in STD_LOGIC;
			d : in std_logic_vector((n-1) downto 0);
			q : out std_logic_vector((n-1) downto 0));
	end component;
	
	signal clk, reset : STD_LOGIC;
	signal d, q : std_logic_vector((n-1) downto 0);
	
begin

	dut : reg port map(clk, reset, d, q);
	
	clk_gen : process 
	begin
		clk <= '0'; wait for 5 ns;
		clk <= '1'; wait for 5 ns;
	end process clk_gen;
	
	reset_pulse : process
	begin
		reset <= '0'; wait for 21 ns;
		reset <= '1'; wait for 11 ns;
		reset <= '0'; wait;
	end process reset_pulse;
	
	simulation : process is
		file input_file: text;
		variable L: line;
		variable vector_in: std_logic_vector((n-1) downto 0);
		variable dummy: character;
		variable vector_out: std_logic_vector((n-1) downto 0);
		variable errors: integer := 0;
	begin
	
	end process simulation;
	
end;
	