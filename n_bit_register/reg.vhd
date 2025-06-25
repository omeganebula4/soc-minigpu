library IEEE; use IEEE.STD_LOGIC_1164.all;

entity reg is
	generic(
		n : integer := 8
	);
	port(clk, reset : in STD_LOGIC;
		d : in std_logic_vector((n-1) downto 0);
		q : out std_logic_vector((n-1) downto 0));
end;

architecture sync of reg is
begin
	process(clk, reset)
	begin
		if rising_edge(clk) then
			if reset = '1' then q <= (others => '0');
			else q <= d;
			end if;
		end if;
	end process;
end;