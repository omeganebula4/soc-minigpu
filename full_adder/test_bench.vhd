library IEEE; use IEEE.STD_LOGIC_1164.all;
library work; use work.all;
use IEEE.STD_LOGIC_TEXTIO.ALL; use STD.TEXTIO.all;

entity test_bench is
end;

architecture sim of test_bench is
	component full_adder
		port(a, b, cin : in STD_LOGIC;
				s, cout : out STD_LOGIC);
	end component;
	
	signal a, b, c, x, y : STD_LOGIC;
	signal x_exp, y_exp : STD_LOGIC;

begin
	device_under_test : full_adder port map(a, b, c, x, y);
	
	process is
	
		file input_file: text;
		variable L: line;
		variable vector_in: std_logic_vector(2 downto 0);
		variable dummy: character;
		variable vector_out: std_logic_vector(1 downto 0);
		variable errors: integer := 0;
	
	begin

		FILE_OPEN(input_file, "inputs.txt", READ_MODE);
		while not endfile(input_file) loop
			readline(input_file, L);
			read(L, vector_in);
			read(L, dummy);
			read(L, vector_out);
			
			(a, b, c) <= vector_in(2 downto 0);
			(x_exp, y_exp) <= vector_out(1 downto 0);
			
			wait for 10 ns;
			
			if ((x /= x_exp) or (y /= y_exp)) then
				report "Error: y = " & STD_LOGIC'image(y) & ", Expected y = " & STD_LOGIC'image(y_exp);
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