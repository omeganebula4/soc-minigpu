library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;
library work; use work.types_pkg.all;

entity decoder is
	port(clk : in std_logic;
		reset : in std_logic;
		state : in std_logic_vector(2 downto 0);
		instruction : in std_logic_vector(15 downto 0);
		
		rs_address : out std_logic_vector(3 downto 0);
		rt_address : out std_logic_vector(3 downto 0);
		rd_address : out std_logic_vector(3 downto 0);
		nzp_instr : out std_logic_vector(2 downto 0);
		immediate : out std_logic_vector(7 downto 0);
		mem_read_en : out std_logic;
		mem_write_en : out std_logic;
		reg_write_en : out std_logic;
		nzp_write_en : out std_logic;
		reg_input_mux : out std_logic_vector(1 downto 0);
		alu_select : out std_logic_vector(1 downto 0);
		pc_out_mux : out std_logic;
		decoded_ret : out std_logic);
end entity;

architecture arch of decoder is

begin
	process(clk)
		variable operator : std_logic_vector(3 downto 0);
	begin
		if rising_edge(clk) then
		
			if reset = '1' then
				rs_address <= (others => '0');
				rt_address <= (others => '0');
				rd_address <= (others => '0');
				nzp_instr <= (others => '0');
				immediate <= (others => '0');
				mem_read_en <= '0';
				mem_write_en <= '0';
				reg_write_en <= '0';
				nzp_write_en <= '0';
				reg_input_mux <= (others => '0');
				alu_select <= (others => '0');
				pc_out_mux <= '0';
				decoded_ret <= '0';
				
			elsif state = "010" then
				operator := instruction(15 downto 12);
				rd_address <= instruction(11 downto 8);
				rs_address <= instruction(7 downto 4);
				rt_address <= instruction(3 downto 0);
				immediate <= instruction(7 downto 0);
				nzp_instr <= instruction(11 downto 9);
				reg_write_en <= '0';
				mem_read_en <= '0';
				mem_write_en <= '0';
				nzp_write_en <= '0';
				reg_input_mux <= "00";
				alu_select <= "00";
				pc_out_mux <= '0';
				decoded_ret <= '0';
				
				case operator is
					when "0001" =>
						pc_out_mux <= '1';
					when "0010" =>
						nzp_write_en <= '1';
					when "0011" =>
						reg_write_en <= '1';
						reg_input_mux <= "00";
						alu_select <= "00";
					when "0100" =>
						reg_write_en <= '1';
						reg_input_mux <= "00";
						alu_select <= "01";
					when "0101" =>
						reg_write_en <= '1';
						reg_input_mux <= "00";
						alu_select <= "10";
					when "0110" =>
						reg_write_en <= '1';
						reg_input_mux <= "00";
						alu_select <= "11";
					when "0111" =>
						reg_write_en <= '1';
						reg_input_mux <= 	"01";
						mem_read_en <= '1';
					when "1000" =>
						mem_write_en <= '1';
					when "1001" =>
						reg_write_en <= '1';
						reg_input_mux <= "10";
					when "1111" =>
						decoded_ret <= '1';
					when others =>
						null;
				end case;
				
			end if;

		end if;
	end process;
end;