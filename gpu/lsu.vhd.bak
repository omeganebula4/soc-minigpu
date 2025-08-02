library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
use work.types_pkg.all;

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
		lsu_out : out std_logic_vector(7 downto 0);
		lsu_state : out lsu_statetype);
end;

architecture arch of lsu is
	signal lsu_currentstate, lsu_nextstate : lsu_statetype;
begin
	lsu_state <= lsu_currentstate;
	process(clk)
	begin
		if rising_edge(clk) then
		
			if reset = '1' then
				lsu_currentstate <= IDLE;
				
			elsif en = '1' then
				lsu_currentstate <= lsu_nextstate;
				
				if lsu_currentstate = REQUESTING then
					
					if mem_read_en = '1' then
						mem_read_add <= rs_out;
					end if;
					
					if mem_write_en = '1' then
						mem_write_add <= rs_out;
						mem_write_data <= rt_out;
					end if;
					
				elsif (mem_read_en='1' and mem_read_ready = '1' and lsu_currentstate=WAITING) then
					lsu_out <= mem_read_data;
				end if;
				
			end if;
			
		end if;
	end process;
	
	process(all)
	begin
	
		lsu_nextstate <= lsu_currentstate; -- Hold previous value if state is not changed.
		
		case lsu_currentstate is
			when IDLE=>
				if state = "011" then
					lsu_nextstate <= REQUESTING;
				end if;
				
			when REQUESTING =>
				lsu_nextstate <= WAITING;
				
			when WAITING =>
				if mem_write_ready = '1' then
					lsu_nextstate <= DONE;
				end if;
				
			when DONE =>
				if state = "110" then
					lsu_nextstate <= IDLE;
				end if;
				
			when others =>
				null;
		end case;
	end process;
					
end arch;