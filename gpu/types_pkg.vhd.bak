library IEEE;
use IEEE.STD_LOGIC_1164.all;

package types_pkg is
	constant NUM_THREADS : integer := 4;
	constant NUM_CORES : integer := 2;

   type lsu_statetype is (IDLE, REQUESTING, WAITING, DONE);
   type lsu_statetype_array is array (NUM_THREADS-1 downto 0) of lsu_statetype;
	
	type fetcher_statetype is (IDLE, FETCHING, FETCHED);
	
	type uwu is array (NUM_THREADS-1 downto 0) of std_logic_vector(7 downto 0);
	type owo is array (NUM_CORES-1 downto 0) of std_logic_vector(7 downto 0);
	type thread_num_type is array (NUM_CORES-1 downto 0) of integer;
	
	type meow is array (natural range <>) of std_logic_vector;
end package;

package body types_pkg is
end package body;