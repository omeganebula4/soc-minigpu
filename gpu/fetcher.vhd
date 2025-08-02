library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity fetcher is 
	port(clk : in std_logic;
		reset : in std_logic;
		core_state : in std_logic_vector(2 downto 0);
		current_pc : in std_logic_vector(7 downto 0);
		mem_read_ready : in std_logic;
		mem_read_data : in std_logic_vector(15 downto 0);
		
		mem_read_address : out std_logic_vector(7 downto 0);
		instruction : out std_logic_vector(15 downto 0);
		mem_read_valid : out std_logic;
		fetcher_state : out fetcher_statetype);
end entity;

architecture arch of fetcher is
	signal fetcher_currentstate, fetcher_nextstate : fetcher_statetype;
begin
	fetcher_state <= fetcher_currentstate;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				fetcher_currentstate <= IDLE;
				mem_read_address <= (others => '0');
				instruction <= (others => '0');
			else
				fetcher_currentstate <= fetcher_nextstate;
				
				if fetcher_currentstate = FETCHING then
					mem_read_address <= current_pc;
					
					if mem_read_ready = '1' then
						instruction <= mem_read_data;
					end if;
				end if;
			
			end if;
			
		end if;
		
	end process;
	
	process(all)
	begin
		fetcher_nextstate <= fetcher_currentstate;
		
		case fetcher_currentstate is
			when IDLE =>
				if core_state = "001" then
					fetcher_nextstate <= FETCHING;
				end if;
			
			when FETCHING =>
				if mem_read_ready = '1' then
					fetcher_nextstate <= FETCHED;
				end if;
			
			when FETCHED =>
				if core_state = "010" then
					fetcher_nextstate <= IDLE;
				end if;
			
			when others =>
				null;
		end case;
	end process;
	
	mem_read_valid <= '1' when (fetcher_state=FETCHING and mem_read_ready='0' and reset='0') else '0';
	
end arch;