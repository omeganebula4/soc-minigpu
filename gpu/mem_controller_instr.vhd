library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity mem_controller_instr is
	generic(
		ADDR_BITS : integer := 8;
		DATA_BITS : integer := 16;
		NUM_CONSUMERS : integer := 2;
		NUM_CHANNELS : integer := 1
	);
	
	port(
		clk : in std_logic;
		reset : in std_logic;
		consumer_read_valid : in std_logic_vector(NUM_CONSUMERS-1 downto 0);
		consumer_read_address : in meow(NUM_CONSUMERS-1 downto 0)(ADDR_BITS-1 downto 0);
		mem_read_ready : in std_logic_vector(NUM_CHANNELS-1 downto 0);
		mem_read_data : in meow(NUM_CHANNELS-1 downto 0)(DATA_BITS-1 downto 0);
		
		consumer_read_ready : out std_logic_vector(NUM_CONSUMERS-1 downto 0);
		consumer_read_data : out meow(NUM_CONSUMERS-1 downto 0)(DATA_BITS-1  downto 0);
		mem_read_valid : out std_logic_vector(NUM_CHANNELS-1 downto 0);
		mem_read_address : out meow(NUM_CHANNELS-1 downto 0)(ADDR_BITS-1 downto 0)
	);
end;

architecture arch of mem_controller_instr is
	type controller_statetype is (IDLE, RR, RW);
	type controller_statetype_array is array(NUM_CHANNELS-1 downto 0) of controller_statetype;
	type consumer_enum is array(NUM_CHANNELS-1 downto 0) of integer range 0 to NUM_CONSUMERS-1;
	signal controller_state :  controller_statetype_array;
	signal current_consumer : consumer_enum;
	signal channel_serving_consumer : std_logic_vector(NUM_CONSUMERS-1 downto 0);
begin
	
	process(clk)
	begin
		if rising_edge(clk) then
			if reset='1' then
				mem_read_valid <= (others => '0');
				consumer_read_ready <= (others => '0');
				channel_serving_consumer <= (others => '0');	
				
				for i in 0 to NUM_CHANNELS-1 loop
					controller_state(i) <= IDLE;
					current_consumer(i) <= 0;
					mem_read_address(i) <= (others => '0');
				end loop;
				
				for i in 0 to NUM_CONSUMERS-1 loop
					consumer_read_data(i) <= (others => '0');
				end loop;
				
			else
				for i in 0 to NUM_CHANNELS-1 loop
					
					if controller_state(i) = IDLE then
						for j in 0 to NUM_CONSUMERS-1 loop
							if consumer_read_valid(j) = '1' and channel_serving_consumer(j) = '0' then
								channel_serving_consumer(j) <= '1';
								current_consumer(i) <= j;
								mem_read_valid(i) <= '1';
								mem_read_address(i) <= consumer_read_address(j);
								controller_state(i) <= RW;
								exit;
							end if;
						end loop;
						
					elsif controller_state(i) = RW then
						if mem_read_ready(i) = '1' then
							mem_read_valid(i) <= '0';
							consumer_read_ready(current_consumer(i)) <= '1';
							consumer_read_data(current_consumer(i)) <= mem_read_data(i);
							controller_state(i) <= RR;
						end if;
					
					
					elsif controller_state(i) = RR then
						if consumer_read_valid(current_consumer(i)) = '0' then
							channel_serving_consumer(current_consumer(i)) <= '0';
							consumer_read_ready(current_consumer(i)) <= '0';
							controller_state(i) <= IDLE;
						end if;
						
					end if;
				end loop;
			
			end if;
		end if;
	end process;
	
end arch;