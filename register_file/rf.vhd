library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;

entity rf is
	port(clk : in std_logic;
		reset : in std_logic;
		en : in std_logic;
		state : in std_logic_vector(2 downto 0);
		write_en : in std_logic;
		alu_out : in std_logic_vector(7 downto 0);
		lsu_out : in std_logic_vector(7 downto 0);
		immediate : in std_logic_vector(7 downto 0);
		mux_in : in std_logic_vector(1 downto 0);
		rs_address : in std_logic_vector(3 downto 0);
		rt_address : in std_logic_vector(3 downto 0);
		rd_address : in std_logic_vector(3 downto 0);
		block_id : in std_logic_vector(7 downto 0);
		rs_data : out std_logic_vector(7 downto 0);
		rt_data : out std_logic_vector(7 downto 0));
end;

architecture arch of rf is
	type std_logic_2d is array(0 to 15) of std_logic_vector(7 downto 0);
	signal reg_file : std_logic_2d;
begin
	process(clk)
	variable write_address : integer;
	begin

		if rising_edge(clk) then
			rs_data <= (others => 'Z');
			rt_data <= (others => 'Z');
			
			if reset='1' then	
				for i in 0 to 12 loop
					reg_file(i) <= (others => '0');
				end loop;
				reg_file(13) <= "00000000";
				reg_file(14) <= "00000100";
				reg_file(15) <= "00000000";
				
				rs_data <= "00000000";
				rt_data <= "00000000";
			
			elsif en='1' then
			
				if state = "011" then
					rs_data <= reg_file(to_integer(unsigned(rs_address)));
					rt_data <= reg_file(to_integer(unsigned(rt_address)));
				elsif write_en='1' and state = "110" then
					reg_file(13) <= block_id;
					write_address := to_integer(unsigned(rd_address));
					if write_address < 13 then
					
						if mux_in = "00" then
							reg_file(write_address) <= alu_out;
						elsif mux_in = "01" then
							reg_file(write_address) <= lsu_out;
						elsif mux_in = "10" then
							reg_file(write_address) <= immediate;
						end if;
						
					end if;
				end if;
				
			end if;
			
		end if;
	end process;

end arch;