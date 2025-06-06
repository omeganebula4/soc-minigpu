library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;

entity multiplexer is
	generic (
		n : integer := 3
	);
	port (inputs : in std_logic_vector((2**n-1) downto 0);
			s : in std_logic_vector((n-1) downto 0);
			oo : out std_logic);
end multiplexer;

architecture synth of multiplexer is
begin
	oo <= inputs(to_integer(unsigned(s)));
end synth;