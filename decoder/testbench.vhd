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
	component decoder is
		port (inputs : in std_logic_vector((n-1) downto 0);
				d : out std_logic_vector((2**n - 1) downto 0)
		);
	end component;
	
	signal s : std_logic_vector((n-1) downto 0) := (others => '0');
	signal oo, out_exp : std_logic_vector((2**n - 1) downto 0);

begin
	device_under_test : decoder port map(s, oo);
	
	process is
	
		file input_file: text;
		variable L: line;
		variable vector_in: std_logic_vector((n-1) downto 0);
		variable dummy: character;
		variable vector_out: std_logic_vector((2**n - 1) downto 0);
		variable errors: integer := 0;
	
	begin
		
		
		FILE_OPEN(input_file, "inputs.txt", READ_MODE);
		while not endfile(input_file) loop
			readline(input_file, L);
			read(L, vector_in);
			read(L, dummy);
			read(L, vector_out);
			
			s <= vector_in;
			out_exp <= vector_out;
			
			wait for 10 ns;
			
			if (oo /= out_exp) then
				report "Error! Output = " & integer'image(to_integer(unsigned(oo))) 
							& " Expected Output = " & integer'image(to_integer(unsigned(out_exp)));
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