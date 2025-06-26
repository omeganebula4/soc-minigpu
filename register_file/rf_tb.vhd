library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is 
end entity;

architecture struct of testbench is

  -- Signals
  signal clock           : std_logic := '0';
  signal reset           : std_logic := '0';
  signal enable          : std_logic := '0';
  signal core_state      : std_logic_vector(2 downto 0) := (others => '0');
  signal reg_write_enable: std_logic := '0';
  signal alu_out         : std_logic_vector(7 downto 0) := (others => '0');
  signal lsu_out         : std_logic_vector(7 downto 0) := (others => '0');
  signal immediate       : std_logic_vector(7 downto 0) := (others => '0');
  signal reg_input_mux   : std_logic_vector(1 downto 0) := (others => '0');
  signal rs_address      : std_logic_vector(3 downto 0) := (others => '0');
  signal rt_address      : std_logic_vector(3 downto 0) := (others => '0');
  signal rd_address      : std_logic_vector(3 downto 0) := (others => '0');
  signal block_id        : std_logic_vector(7 downto 0) := (others => '0');
  signal rs_data         : std_logic_vector(7 downto 0);
  signal rt_data         : std_logic_vector(7 downto 0);

  component rf is
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
  end component;

  constant clk_period : time := 20 ns;

begin

  uut: rf port map (
    clock,
    reset,
    enable,
    core_state,
    reg_write_enable,
    alu_out,
    lsu_out,
    immediate,
    reg_input_mux,
    rs_address,
    rt_address,
    rd_address,
    block_id,
    rs_data,
    rt_data
  );

  -- Clock process
  clock_proc: process
  begin
    while true loop
      clock <= '1'; wait for clk_period / 2;
      clock <= '0'; wait for clk_period / 2;
    end loop;
  end process;

  -- Stimulus process
	  stim_proc: process
	  begin
		 -- 1. Reset Test
		 reset <= '1'; wait for clk_period;
		 
		 -- Check reset behavior
		 if rs_data = ("00000000") and rt_data = ("00000000") then
			report "Test 1: Reset behavior passed" severity note;
		 else
			report "Test 1: Reset behavior failed" severity error;
		 end if;
		 
		 reset <= '0'; wait for clk_period;


		 -- 2. BlockID Write Test
		 enable <= '1';
		 reg_write_enable <= '1';
		 core_state <= "110";
		 block_id <= "10101010";  -- Writing to register 13 internally
		 wait for clk_period;

		 rs_address <= "1101";  -- 13
		 core_state <= "011";  -- ReadFromRF
		 wait for clk_period;

		 if rs_data = "10101010" then
			report "Test 2: BlockID write to register[13] passed" severity note;
		 else
			report "Test 2: BlockID write failed" severity error;
		 end if;

		 -- 3. ALU write test
		 core_state <= "110"; -- WriteToRF
		 rd_address <= "0101"; -- 5
		 alu_out <= "00001111";
		 reg_input_mux <= "00"; -- ALU path
		 wait for clk_period;

		 rs_address <= "0101";
		 core_state <= "011";
		 wait for clk_period;

		 if rs_data = "00001111" then
			report "Test 3: ALU write to register[5] passed" severity note;
		 else
			report "Test 3: ALU write failed" severity error;
		 end if;

		 -- 4. LSU write test
		 core_state <= "110";
		 rd_address <= "0110";
		 lsu_out <= "11110000";
		 reg_input_mux <= "01"; -- LSU path
		 wait for clk_period;

		 rs_address <= "0110";
		 core_state <= "011";
		 wait for clk_period;

		 if rs_data = "11110000" then
			report "Test 4: LSU write to register[6] passed" severity note;
		 else
			report "Test 4: LSU write failed" severity error;
		 end if;

		 -- 5. Immediate write test
		 core_state <= "110";
		 rd_address <= "0111";
		 immediate <= "10100101";
		 reg_input_mux <= "10"; -- IMM path
		 wait for clk_period;

		 rs_address <= "0111";
		 core_state <= "011";
		 wait for clk_period;

		 if rs_data = "10100101" then
			report "Test 5: Immediate write to register[7] passed" severity note;
		 else
			report "Test 5: Immediate write failed" severity error;
		 end if;

		 wait for 20 ns;
		 report "All tests completed" severity note;
		 wait;
	  end process;

end architecture;
