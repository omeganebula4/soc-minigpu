library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;

entity pc is
	port(clk : in std_logic;
		reset : in std_logic;
		en : in std_logic;
		state : in std_logic_vector(2 downto 0);
		nzp_write_en : in std_logic;
		nzp_instr : in std_logic_vector(2 downto 0);
		nzp_alu_out : in std_logic_vector(2 downto 0);
		immediate : in std_logic_vector(7 downto 0);
		pc_out_mux : in std_logic;
		current_pc : in unsigned(7 downto 0);
		new_pc : out unsigned(7 downto 0));
end;

architecture arch of pc is
	signal nzp_reg : std_logic_vector(2 downto 0) := "000";
begin
	process(clk)
	begin
		if rising_edge(clk) then
			
			if reset = '1' then
				nzp_reg <= "000";
				new_pc <= (others => '0');
				
			elsif en = '1' then
				if state = "101" then
					
					if pc_out_mux = '1' then
					
						if nzp_instr = nzp_alu_out then
							new_pc <= unsigned(immediate);
						else
							new_pc <= current_pc + 1;
						end if;
					
					else
						new_pc <= current_pc + 1;
					end if;
				
				elsif state = "110" then
					if nzp_write_en = '1' then
						nzp_reg <= nzp_alu_out;
					end if;
				end if;
			end if;
		end if;
	end process;
end arch;