library IEEE; use IEEE.STD_LOGIC_1164.all; use IEEE.numeric_std.all;

entity alu is
	port(clk : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		op1 : in std_logic_vector(7 downto 0);
		op2 : in std_logic_vector(7 downto 0);
		sel : in std_logic_vector(1 downto 0);
		state : in std_logic_vector(2 downto 0);
		oo : out std_logic_vector(7 downto 0);
		alu_nzp : out std_logic_vector(2 downto 0));
end;

architecture arch of alu is
begin
	process(clk)
		variable in1, in2, diff : signed(7 downto 0);
		variable res : signed(7 downto 0);
		variable prod : signed(15 downto 0);
	begin
		if rising_edge(clk) then
			-- High-Z output if input is invalid.
			-- oo <= (others => 'Z');
			-- alu_nzp <= (others => 'Z');

			if reset = '1' then
				oo <= "00000000";
				alu_nzp <= "000";
			elsif enable = '1' then
				if state = "101" then
					in1 := signed(op1);
					in2 := signed(op2);
					diff := in2 - in1;
					
					case diff is
						when "00000000" =>
							alu_nzp <= "010"; -- Zero
						when others =>
							if diff(7) = '0' then
								 alu_nzp <= "001"; -- Positive
							else
								 alu_nzp <= "100"; -- Negative
							end if;
					end case;
					
					case sel is
						when "00" =>
							res := in1+in2;
						when "01" =>
							res := in1-in2;
						when "10" =>
							prod := in1*in2;
							res := prod(7 downto 0);
						when "11" =>
							res := in1 / in2;
						when others =>
							res := (others => 'U');
					end case;
					
					oo <= std_logic_vector(res);
				
				end if;
			end if;
		end if;
	end process;
end;
						
					
					