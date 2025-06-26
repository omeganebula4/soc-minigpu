library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;

entity lsu is
	port(clk : in std_logic;
		reset : in std_logic;
		en : in std_logic;
		state : in std_logic_vector(2 downto 0);
		mem_read_en : in std_logic;
		mem_write_en : in std_logic;
		rs_out : in std_logic_vector(7 downto 0);
		rt_out : in std_logic_vector(7 downto 0);
		mem_read_ready : in std_logic;
		mem_write_ready : in std_logic;
		mem_read_data : in std_logic_vector(7 downto 0);
		
		mem_read_add : out std_logic_vector(7 downto 0);
		mem_write_add : out std_logic_vector(7 downto 0);
		mem_write_data : out std_logic_vector(7 downto 0);
		lsu_out : out std_logic_vector(7 downto 0));
end;

architecture arch of lsu is
	-- type statetype is (IDLE, REQUESTING, WAITING, DONE);
	signal lsu_state : std_logic_vector(1 downto 0);
begin

	process(clk)
	begin
		
		if reset = '1' then
			lsu_state <= "00"; -- IDLE
			lsu_out <= (others => '0');
			mem_read_add <= (others => '0');
			mem_write_add <= (others => '0');
			mem_write_data <= (others => '0');
			
		elsif en = '1' then
			if mem_read_en = '1' then
				if lsu_state = "00" then
					if state = "011" then
						lsu_state <= "01"; -- REQUESTING
					end if;
				elsif lsu_state = "01" then
					mem_read_add <= rs_out;
					lsu_state <= "10"; -- WAITING
				elsif lsu_state = "10" then
					if mem_read_ready = '1' then
						lsu_out <= mem_read_data;
						lsu_state <= "11"; -- DONE
					end if;
				elsif lsu_state = "11" then
					if state = "110" then
						lsu_state <= "00"; -- IDLE
					end if;
				end if;
			end if;
			
			if mem_write_en = '1' then
				if lsu_state = "00" then
					if state = "011" then
						lsu_state <= "01"; -- REQUESTING
					end if;
				elsif lsu_state = "01" then
					mem_write_add <= rs_out;
					mem_write_data <= rt_out;
					lsu_state <= "10"; -- WAITING
				elsif lsu_state = "10" then
					if mem_write_ready = '1' then
						lsu_state <= "11"; -- DONE
					end if;
				elsif lsu_state = "11" then
					if state = "110" then
						lsu_state <= "00"; --IDLE
					end if;
				end if;
			end if;
		end if;
		
	end process;

end arch;