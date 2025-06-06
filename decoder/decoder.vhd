library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;

entity decoder is
	generic (
		n : integer := 3
	);
	port (inputs : in std_logic_vector((n-1) downto 0);
			d : out std_logic_vector((2**n - 1) downto 0)
	);
end decoder;

architecture synth of decoder is
	signal decode : unsigned((2**n - 1) downto 0);
begin	
	decode <= shift_left(to_unsigned(1, 2**n), to_integer(unsigned(inputs)));
	d <= std_logic_vector(decode);
end synth;