library IEEE; use IEEE.STD_LOGIC_1164.all;

entity full_adder is
	port(a, b, cin : in STD_LOGIC;
			s, cout : out STD_LOGIC);
end;

architecture synth of full_adder is
	signal x, y : STD_LOGIC;
begin
	x <= a xor b;
	y <= a and b;
	
	s <= x xor cin;
	cout <= y or (x and cin);
end;