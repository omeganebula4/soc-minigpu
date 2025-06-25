library IEEE; use IEEE.STD_LOGIC_1164.all;
library work; use work.all;
use IEEE.STD_LOGIC_TEXTIO.ALL; use STD.TEXTIO.all;
use IEEE.numeric_std.all;

entity testbench is
	generic (
		n : integer := 3
	);
end;

architecture sim of testbench is
	component multiplexer
		port (inputs : in std_logic_vector((2**n-1) downto 0);
			s : in std_logic_vector((n-1) downto 0);
			oo : out std_logic);
	end component;
	
	signal s : std_logic_vector((n-1) downto 0) := (others => '0');
	signal oo, out_exp : std_logic;

begin
	device_under_test : multiplexer port map("10011011", s, oo);
	
	process is
	
		file input_file: text;
		variable L: line;
		variable vector_in: std_logic_vector((n-1) downto 0);
		variable dummy: character;
		variable output: std_logic;
		variable errors: integer := 0;
	
	begin
		
		
		FILE_OPEN(input_file, "inputs.txt", READ_MODE);
		while not endfile(input_file) loop
			readline(input_file, L);
			read(L, vector_in);
			read(L, dummy);
			read(L, output);
			
			s <= vector_in;
			out_exp <= output;
			
			wait for 10 ns;
			
			if (oo /= out_exp) then
				report "Error: Output = " & STD_LOGIC'image(oo) & ", Expected Output = " & STD_LOGIC'image(out_exp);
				errors := errors + 1;
			end if;
			
		end loop;
		
		if (errors = 0) then
			report "NO ERRORS -- All tests completed successfully" severity note;
		else
			report integer'image(errors) & " ERRORS" severity failure;
		end if;
		
		wait;
	end process;
end;