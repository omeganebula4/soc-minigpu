library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
	Port (INO1 : in STD_LOGIC;
			INO2 : in STD_LOGIC;
			OO : out STD_LOGIC);
end or_gate;

architecture behav_or of or_gate is
begin
	OO <= INO1 or INO2;
end behav_or;