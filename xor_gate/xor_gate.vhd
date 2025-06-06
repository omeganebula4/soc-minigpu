library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
	Port (INO1 : in STD_LOGIC;
			INO2 : in STD_LOGIC;
			OO : out STD_LOGIC);
end xor_gate;

architecture behav of xor_gate is
	signal nota, notb, in1, in2 : STD_LOGIC;

	component not_gate is
		Port (INO : in STD_LOGIC;
				OO : out STD_LOGIC);
	end component;

	component and_gate is
		Port (INO1 : in STD_LOGIC;
				INO2 : in STD_LOGIC;
				OO : out STD_LOGIC);
	end component;

	component or_gate is
		Port (INO1 : in STD_LOGIC;
				INO2 : in STD_LOGIC;
				OO : out STD_LOGIC);
	end component;

begin
	not1 : not_gate
		port map (INO1, nota);
	not2 : not_gate
		port map (INO2, notb);
	and1 : and_gate
		port map (INO1, notb, in1);
	and2 : and_gate
		port map (nota, INO2, in2);
	orgate : or_gate
		port map (in1, in2, OO);
end behav;


architecture behav_comp of not_gate is
begin
	OO <= not(INO);
end behav_comp;

architecture behav_comp of or_gate is
begin
	OO <= INO1 or INO2;
end behav_comp;

architecture behav_comp of and_gate is
begin
	OO <= INO1 and INO2;
end behav_comp;