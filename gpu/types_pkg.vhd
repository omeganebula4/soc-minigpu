library IEEE;
use IEEE.STD_LOGIC_1164.all;

package types_pkg is
	constant NUM_THREADS : integer := 4;
	constant NUM_CORES : integer := 2;

	constant	DATA_MEM_ADDR_BITS : integer := 8;
	constant	DATA_MEM_DATA_BITS : integer := 8;
	constant	DATA_MEM_NUM_CHANNELS : integer := 4;
	constant	PROGRAM_MEM_ADDR_BITS : integer := 8;
	constant	PROGRAM_MEM_DATA_BITS : integer := 16;
	constant	PROGRAM_MEM_NUM_CHANNELS : integer := 1;

   type lsu_statetype is (IDLE, REQUESTING, WAITING, DONE);
   type lsu_statetype_array is array (NUM_THREADS-1 downto 0) of lsu_statetype;
	
	type fetcher_statetype is (IDLE, FETCHING, FETCHED);
	
	type uwu is array (NUM_THREADS-1 downto 0) of std_logic_vector(7 downto 0);
	type owo is array (NUM_CORES-1 downto 0) of std_logic_vector(7 downto 0);
	type thread_num_type is array (NUM_CORES-1 downto 0) of integer;
	
	type meow is array (natural range <>) of std_logic_vector;
end package;

package body types_pkg is
    function clog2(val: natural) return natural is
        variable i: natural := 0;
        variable p: natural := 1;
    begin
        if val = 0 then return 0; end if;
        -- Keep doubling p until it is >= val
        while p < val loop
            p := p * 2;
            i := i + 1;
        end loop;
        return i;
    end function clog2;
end package body;