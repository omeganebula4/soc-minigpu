library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity dcr is
	port(
		clk : in std_logic;
		reset : in std_logic;
		dcr_write_en : in std_logic;
		dcr_data : in std_logic_vector(7 downto 0);
		thread_count : out std_logic_vector(7 downto 0)
	);
end entity;

architecture arch of dcr is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset='1' then
				thread_count <= (others => '0');
			elsif dcr_write_en='1' then
				thread_count <= dcr_data;
			end if;
		end if;
	end process;
end arch;