library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity scheduler is
	port(clk : in std_logic;
		reset : in std_logic;
		start : in std_logic;
		mem_read_en : in std_logic;
		mem_write_en : in std_logic;
		decoded_ret : in std_logic;
		fetcher_state : in fetcher_statetype;
		lsu_states : in lsu_statetype_array;
		new_pc : in std_logic_vector(7 downto 0);
		
		core_state : out std_logic_vector(2 downto 0);
		current_pc : out std_logic_vector(7 downto 0);
		done : out std_logic);
end entity;

architecture arch of scheduler is
	signal core_current_state, core_next_state : std_logic_vector(2 downto 0);
	signal any_lsu_waiting : std_logic;
begin
	core_state <= core_current_state;
	
	any_lsu_waiting <= '1' when
		lsu_states(0) = WAITING or
		lsu_states(1) = WAITING or
		lsu_states(2) = WAITING or
		lsu_states(3) = WAITING or
		lsu_states(0) = REQUESTING or
		lsu_states(1) = REQUESTING or
		lsu_states(2) = REQUESTING or
		lsu_states(3) = REQUESTING
	else
		'0';


	process(clk)
	begin
		if rising_edge(clk) then
		
			if reset = '1' then
				current_pc <= (others => '0');
				core_current_state <= "000";
			else
				core_current_state <= core_next_state;
				if core_current_state = "110" and decoded_ret = '0' then
					current_pc <= new_pc;
				end if;
			end if;
			
		end if;
	end process;
	
	process(all)
	begin
		core_next_state <= core_current_state;
		
		case core_current_state is
			when "000"=> -- IDLE
				if start = '1' then
					core_next_state <= "001";
				end if;
			
			when "001"=> -- FETCH
				if fetcher_state = FETCHED then
					core_next_state <= "010";
				end if;
			
			when "010"=> -- DECODE
				core_next_state <= "011";
			
			when "011"=> -- REQUEST
				core_next_state <= "100";
			
			when "100"=> -- WAITING
				if any_lsu_waiting = '0' then
					core_next_state <= "101";
				end if;
			
			when "101"=> -- EXECUTE
				core_next_state <= "110";
			
			when "110"=> -- UPDATE
				if decoded_ret = '1' then
					core_next_state <= "111";
				else
					core_next_state <= "001";
				end if;
			
			when others =>
				null;
			
		end case;
	end process;
	
	done <= '1' when core_state = "111" else '0';
end arch;