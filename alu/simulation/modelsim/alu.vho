-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/17/2025 12:41:07"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	op1 : IN std_logic_vector(7 DOWNTO 0);
	op2 : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	state : IN std_logic_vector(2 DOWNTO 0);
	oo : BUFFER std_logic_vector(7 DOWNTO 0);
	alu_nzp : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- oo[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[1]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oo[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_nzp[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_nzp[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_nzp[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_op1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_oo : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alu_nzp : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oo[0]~output_o\ : std_logic;
SIGNAL \oo[1]~output_o\ : std_logic;
SIGNAL \oo[2]~output_o\ : std_logic;
SIGNAL \oo[3]~output_o\ : std_logic;
SIGNAL \oo[4]~output_o\ : std_logic;
SIGNAL \oo[5]~output_o\ : std_logic;
SIGNAL \oo[6]~output_o\ : std_logic;
SIGNAL \oo[7]~output_o\ : std_logic;
SIGNAL \alu_nzp[0]~output_o\ : std_logic;
SIGNAL \alu_nzp[1]~output_o\ : std_logic;
SIGNAL \alu_nzp[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \op2[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \op1[0]~input_o\ : std_logic;
SIGNAL \oo[0]~9_cout\ : std_logic;
SIGNAL \oo[0]~10_combout\ : std_logic;
SIGNAL \op1[1]~input_o\ : std_logic;
SIGNAL \op1[2]~input_o\ : std_logic;
SIGNAL \op1[3]~input_o\ : std_logic;
SIGNAL \op1[4]~input_o\ : std_logic;
SIGNAL \op1[5]~input_o\ : std_logic;
SIGNAL \op1[6]~input_o\ : std_logic;
SIGNAL \op1[7]~input_o\ : std_logic;
SIGNAL \op2[1]~input_o\ : std_logic;
SIGNAL \op2[2]~input_o\ : std_logic;
SIGNAL \op2[3]~input_o\ : std_logic;
SIGNAL \op2[4]~input_o\ : std_logic;
SIGNAL \op2[5]~input_o\ : std_logic;
SIGNAL \op2[6]~input_o\ : std_logic;
SIGNAL \op2[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \oo~12_combout\ : std_logic;
SIGNAL \oo~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \oo~14_combout\ : std_logic;
SIGNAL \oo~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \state[0]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \state[2]~input_o\ : std_logic;
SIGNAL \state[1]~input_o\ : std_logic;
SIGNAL \oo[0]~16_combout\ : std_logic;
SIGNAL \oo[0]~17_combout\ : std_logic;
SIGNAL \oo[0]~reg0_q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \oo[0]~11\ : std_logic;
SIGNAL \oo[1]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \oo~20_combout\ : std_logic;
SIGNAL \oo~21_combout\ : std_logic;
SIGNAL \oo[1]~reg0_q\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \oo[1]~19\ : std_logic;
SIGNAL \oo[2]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \oo~24_combout\ : std_logic;
SIGNAL \oo~25_combout\ : std_logic;
SIGNAL \oo[2]~reg0_q\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \oo[2]~23\ : std_logic;
SIGNAL \oo[3]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \oo~28_combout\ : std_logic;
SIGNAL \oo~29_combout\ : std_logic;
SIGNAL \oo[3]~reg0_q\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \oo[3]~27\ : std_logic;
SIGNAL \oo[4]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \oo~32_combout\ : std_logic;
SIGNAL \oo~33_combout\ : std_logic;
SIGNAL \oo[4]~reg0_q\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \oo[4]~31\ : std_logic;
SIGNAL \oo[5]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \oo~36_combout\ : std_logic;
SIGNAL \oo~37_combout\ : std_logic;
SIGNAL \oo[5]~reg0_q\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \oo[5]~35\ : std_logic;
SIGNAL \oo[6]~38_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \oo~40_combout\ : std_logic;
SIGNAL \oo~41_combout\ : std_logic;
SIGNAL \oo[6]~reg0_q\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \oo[6]~39\ : std_logic;
SIGNAL \oo[7]~42_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \oo~44_combout\ : std_logic;
SIGNAL \oo~45_combout\ : std_logic;
SIGNAL \oo[7]~reg0_q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \alu_nzp~0_combout\ : std_logic;
SIGNAL \alu_nzp[0]~reg0_q\ : std_logic;
SIGNAL \alu_nzp~1_combout\ : std_logic;
SIGNAL \alu_nzp[1]~reg0_q\ : std_logic;
SIGNAL \alu_nzp~2_combout\ : std_logic;
SIGNAL \alu_nzp[2]~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_op1 <= op1;
ww_op2 <= op2;
ww_sel <= sel;
ww_state <= state;
oo <= ww_oo;
alu_nzp <= ww_alu_nzp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\op1[7]~input_o\ & \op1[6]~input_o\ & \op1[5]~input_o\ & \op1[4]~input_o\ & \op1[3]~input_o\ & \op1[2]~input_o\ & \op1[1]~input_o\ & \op1[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\op2[7]~input_o\ & \op2[6]~input_o\ & \op2[5]~input_o\ & \op2[4]~input_o\ & \op2[3]~input_o\ & \op2[2]~input_o\ & \op2[1]~input_o\ & \op2[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y17_N2
\oo[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[0]~output_o\);

-- Location: IOOBUF_X31_Y17_N23
\oo[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[1]~output_o\);

-- Location: IOOBUF_X31_Y21_N16
\oo[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[2]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[2]~output_o\);

-- Location: IOOBUF_X31_Y15_N16
\oo[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[3]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[3]~output_o\);

-- Location: IOOBUF_X31_Y17_N9
\oo[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[4]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[4]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\oo[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[5]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[5]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\oo[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[6]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[6]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\oo[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \oo[7]~reg0_q\,
	devoe => ww_devoe,
	o => \oo[7]~output_o\);

-- Location: IOOBUF_X22_Y25_N23
\alu_nzp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_nzp[0]~reg0_q\,
	devoe => ww_devoe,
	o => \alu_nzp[0]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\alu_nzp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_nzp[1]~reg0_q\,
	devoe => ww_devoe,
	o => \alu_nzp[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\alu_nzp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_nzp[2]~reg0_q\,
	devoe => ww_devoe,
	o => \alu_nzp[2]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y19_N1
\sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X31_Y19_N15
\op2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(0),
	o => \op2[0]~input_o\);

-- Location: LCCOMB_X27_Y19_N30
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \sel[0]~input_o\ $ (\op2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[0]~input_o\,
	datad => \op2[0]~input_o\,
	combout => \Add1~0_combout\);

-- Location: IOIBUF_X31_Y19_N8
\op1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(0),
	o => \op1[0]~input_o\);

-- Location: LCCOMB_X27_Y17_N10
\oo[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[0]~9_cout\ = CARRY(\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[0]~input_o\,
	datad => VCC,
	cout => \oo[0]~9_cout\);

-- Location: LCCOMB_X27_Y17_N12
\oo[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[0]~10_combout\ = (\Add1~0_combout\ & ((\op1[0]~input_o\ & (\oo[0]~9_cout\ & VCC)) # (!\op1[0]~input_o\ & (!\oo[0]~9_cout\)))) # (!\Add1~0_combout\ & ((\op1[0]~input_o\ & (!\oo[0]~9_cout\)) # (!\op1[0]~input_o\ & ((\oo[0]~9_cout\) # (GND)))))
-- \oo[0]~11\ = CARRY((\Add1~0_combout\ & (!\op1[0]~input_o\ & !\oo[0]~9_cout\)) # (!\Add1~0_combout\ & ((!\oo[0]~9_cout\) # (!\op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \op1[0]~input_o\,
	datad => VCC,
	cin => \oo[0]~9_cout\,
	combout => \oo[0]~10_combout\,
	cout => \oo[0]~11\);

-- Location: IOIBUF_X31_Y12_N1
\op1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(1),
	o => \op1[1]~input_o\);

-- Location: IOIBUF_X31_Y17_N15
\op1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(2),
	o => \op1[2]~input_o\);

-- Location: IOIBUF_X31_Y15_N8
\op1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(3),
	o => \op1[3]~input_o\);

-- Location: IOIBUF_X31_Y19_N22
\op1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(4),
	o => \op1[4]~input_o\);

-- Location: IOIBUF_X31_Y21_N22
\op1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(5),
	o => \op1[5]~input_o\);

-- Location: IOIBUF_X31_Y15_N1
\op1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(6),
	o => \op1[6]~input_o\);

-- Location: IOIBUF_X31_Y21_N8
\op1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(7),
	o => \op1[7]~input_o\);

-- Location: IOIBUF_X31_Y20_N22
\op2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(1),
	o => \op2[1]~input_o\);

-- Location: IOIBUF_X31_Y15_N22
\op2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(2),
	o => \op2[2]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\op2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(3),
	o => \op2[3]~input_o\);

-- Location: IOIBUF_X24_Y25_N8
\op2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(4),
	o => \op2[4]~input_o\);

-- Location: IOIBUF_X31_Y22_N8
\op2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(5),
	o => \op2[5]~input_o\);

-- Location: IOIBUF_X24_Y25_N1
\op2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(6),
	o => \op2[6]~input_o\);

-- Location: IOIBUF_X24_Y25_N15
\op2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(7),
	o => \op2[7]~input_o\);

-- Location: DSPMULT_X21_Y20_N0
\Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X21_Y20_N2
\Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X27_Y18_N8
\Div0|auto_generated|divider|my_abs_den|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ = (!\op2[1]~input_o\ & (!\op2[2]~input_o\ & (\op2[7]~input_o\ & !\op2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datab => \op2[2]~input_o\,
	datac => \op2[7]~input_o\,
	datad => \op2[0]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\);

-- Location: LCCOMB_X25_Y21_N26
\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\op2[7]~input_o\ & (!\op2[3]~input_o\ & !\op2[4]~input_o\)) # (!\op2[7]~input_o\ & (\op2[3]~input_o\ & \op2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op2[3]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datad => \op2[4]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\);

-- Location: LCCOMB_X25_Y21_N22
\Div0|auto_generated|divider|divider|sel[45]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(45) = (\op2[7]~input_o\ & (((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & !\op2[5]~input_o\)) # (!\op2[6]~input_o\))) # (!\op2[7]~input_o\ & ((\op2[6]~input_o\) # 
-- ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & \op2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op2[6]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \op2[5]~input_o\,
	combout => \Div0|auto_generated|divider|divider|sel\(45));

-- Location: LCCOMB_X25_Y21_N30
\Div0|auto_generated|divider|divider|sel[36]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(36) = (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # ((\op2[7]~input_o\ & ((!\op2[5]~input_o\) # (!\op2[6]~input_o\))) # (!\op2[7]~input_o\ & ((\op2[6]~input_o\) # (\op2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op2[6]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \op2[5]~input_o\,
	combout => \Div0|auto_generated|divider|divider|sel\(36));

-- Location: LCCOMB_X25_Y21_N18
\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ = \op2[7]~input_o\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ $ (\op2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datac => \op2[3]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\);

-- Location: LCCOMB_X27_Y20_N24
\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ = \op2[1]~input_o\ $ (((\op2[0]~input_o\ & \op2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datac => \op2[7]~input_o\,
	datad => \op2[1]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\);

-- Location: LCCOMB_X27_Y17_N0
\Div0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (\op1[7]~input_o\ & (!\op1[2]~input_o\ & (!\op1[1]~input_o\ & !\op1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[7]~input_o\,
	datab => \op1[2]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X27_Y17_N2
\Div0|auto_generated|divider|my_abs_num|cs1a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\op1[7]~input_o\ & (!\op1[3]~input_o\ & !\op1[4]~input_o\)) # (!\op1[7]~input_o\ & (\op1[3]~input_o\ & \op1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[7]~input_o\,
	datab => \op1[3]~input_o\,
	datac => \op1[4]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\);

-- Location: LCCOMB_X28_Y17_N26
\Div0|auto_generated|divider|my_abs_num|cs1a[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = \op1[6]~input_o\ $ (((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & (\op1[5]~input_o\)) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\op1[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datab => \op1[6]~input_o\,
	datac => \op1[5]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X25_Y20_N28
\Div0|auto_generated|divider|divider|add_sub_1|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\) # (!\op2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datac => \op2[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X27_Y18_N2
\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ = \op2[2]~input_o\ $ (((\op2[7]~input_o\ & ((\op2[1]~input_o\) # (\op2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datab => \op2[2]~input_o\,
	datac => \op2[7]~input_o\,
	datad => \op2[0]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\);

-- Location: LCCOMB_X25_Y21_N8
\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ = \op2[4]~input_o\ $ (((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\op2[3]~input_o\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & (\op2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op2[3]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	datad => \op2[4]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\);

-- Location: LCCOMB_X25_Y20_N0
\Div0|auto_generated|divider|divider|sel[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(9) = (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\) # ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # 
-- (\Div0|auto_generated|divider|divider|sel\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(36),
	combout => \Div0|auto_generated|divider|divider|sel\(9));

-- Location: LCCOMB_X28_Y17_N16
\Div0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\op1[6]~input_o\ & (\op1[5]~input_o\ & !\op1[7]~input_o\)) # (!\op1[6]~input_o\ & (!\op1[5]~input_o\ & \op1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datab => \op1[6]~input_o\,
	datac => \op1[5]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X25_Y20_N26
\Div0|auto_generated|divider|divider|StageOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # ((\Div0|auto_generated|divider|divider|sel\(9)) # 
-- (!\op2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(9),
	datac => \op2[0]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X25_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\Div0|auto_generated|divider|divider|sel\(9)) # (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X25_Y20_N2
\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\) # (!\op2[0]~input_o\)))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\) # 
-- (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\)) # (!\op2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \op2[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & (!\Div0|auto_generated|divider|divider|sel\(9) & 
-- \op2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(9),
	datac => \op2[0]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X28_Y17_N20
\Div0|auto_generated|divider|my_abs_num|cs1a[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ = \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (\op1[5]~input_o\ $ (\op1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datac => \op1[5]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\);

-- Location: LCCOMB_X23_Y20_N22
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\op2[0]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ $ (VCC))) # (!\op2[0]~input_o\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X23_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X23_Y20_N26
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X23_Y20_N28
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X27_Y20_N26
\Div0|auto_generated|divider|divider|sel[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(18) = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # (\Div0|auto_generated|divider|divider|sel\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(36),
	combout => \Div0|auto_generated|divider|divider|sel\(18));

-- Location: LCCOMB_X23_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[18]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Div0|auto_generated|divider|divider|sel\(18) & ((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\))) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(18),
	datad => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Div0|auto_generated|divider|divider|StageOut[17]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Div0|auto_generated|divider|divider|sel\(18) & (\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(18),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(18),
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X27_Y17_N28
\Div0|auto_generated|divider|my_abs_num|cs1a[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ = \op1[4]~input_o\ $ (((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\op1[3]~input_o\))) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\op1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[7]~input_o\,
	datab => \op1[3]~input_o\,
	datac => \op1[4]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\op2[0]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ $ (VCC))) # (!\op2[0]~input_o\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X23_Y20_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X23_Y20_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X23_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X23_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X27_Y20_N4
\Div0|auto_generated|divider|divider|sel[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(27) = (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # (\Div0|auto_generated|divider|divider|sel\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(36),
	combout => \Div0|auto_generated|divider|divider|sel\(27));

-- Location: LCCOMB_X23_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[27]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|sel\(27) & ((\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\))) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(27),
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[26]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(27),
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\);

-- Location: LCCOMB_X23_Y20_N20
\Div0|auto_generated|divider|divider|StageOut[25]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|sel\(27) & ((\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\))) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(27),
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Div0|auto_generated|divider|divider|StageOut[24]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(27),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LCCOMB_X27_Y17_N6
\Div0|auto_generated|divider|my_abs_num|cs1a[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ = \op1[7]~input_o\ $ (\Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (\op1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[7]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datad => \op1[3]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\);

-- Location: LCCOMB_X27_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\op2[0]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ $ (VCC))) # (!\op2[0]~input_o\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X27_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X27_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X27_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X27_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X27_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X27_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[36]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LCCOMB_X25_Y21_N4
\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ = \op2[7]~input_o\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ $ (\op2[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \op2[5]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\);

-- Location: LCCOMB_X27_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[35]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\);

-- Location: LCCOMB_X27_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[34]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(36),
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\);

-- Location: LCCOMB_X27_Y20_N8
\Div0|auto_generated|divider|divider|StageOut[33]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X27_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[32]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X27_Y17_N8
\Div0|auto_generated|divider|my_abs_num|cs1a[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ = \op1[2]~input_o\ $ (((\op1[7]~input_o\ & ((\op1[1]~input_o\) # (\op1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[7]~input_o\,
	datab => \op1[2]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op1[0]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\);

-- Location: LCCOMB_X27_Y19_N0
\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\op2[0]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ $ (VCC))) # (!\op2[0]~input_o\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X27_Y19_N2
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X27_Y19_N4
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X27_Y19_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X27_Y19_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X27_Y19_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X27_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X27_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[45]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: LCCOMB_X25_Y21_N24
\Div0|auto_generated|divider|my_abs_den|cs1a[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ = \op2[6]~input_o\ $ (((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & ((\op2[5]~input_o\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & (\op2[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op2[6]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \op2[5]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\);

-- Location: LCCOMB_X27_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[44]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\);

-- Location: LCCOMB_X27_Y19_N20
\Div0|auto_generated|divider|divider|StageOut[43]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LCCOMB_X27_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[42]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\);

-- Location: LCCOMB_X27_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[41]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\);

-- Location: LCCOMB_X27_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[40]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\);

-- Location: LCCOMB_X27_Y17_N4
\Div0|auto_generated|divider|my_abs_num|cs1a[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ = \op1[1]~input_o\ $ (((\op1[0]~input_o\ & \op1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op1[0]~input_o\,
	datac => \op1[1]~input_o\,
	datad => \op1[7]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\);

-- Location: LCCOMB_X25_Y19_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\op2[0]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ $ (VCC))) # (!\op2[0]~input_o\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[0]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X25_Y19_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X25_Y19_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X25_Y19_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X25_Y19_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X25_Y19_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X25_Y19_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X25_Y19_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X25_Y21_N28
\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & ((\op2[7]~input_o\ & (!\op2[6]~input_o\ & !\op2[5]~input_o\)) # (!\op2[7]~input_o\ & (\op2[6]~input_o\ & \op2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op2[6]~input_o\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \op2[5]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[54]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[53]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\)))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\);

-- Location: LCCOMB_X25_Y19_N20
\Div0|auto_generated|divider|divider|StageOut[52]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[51]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\);

-- Location: LCCOMB_X25_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[50]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\);

-- Location: LCCOMB_X25_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[49]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[48]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\)))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ 
-- & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\);

-- Location: LCCOMB_X25_Y20_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\op1[0]~input_o\) # (!\op2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[0]~input_o\,
	datab => \op2[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X25_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[48]~27_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X25_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[49]~26_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X25_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X25_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X25_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X25_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~22_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X25_Y20_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X25_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X25_Y21_N16
\oo~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~12_combout\ = (\sel[0]~input_o\ & (\op2[7]~input_o\ $ (!\op1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op1[7]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \oo~12_combout\);

-- Location: LCCOMB_X25_Y21_N10
\oo~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~13_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & \oo~12_combout\)) # (!\sel[0]~input_o\))) # (!\Mult0|auto_generated|mac_out2~dataout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\oo~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \sel[0]~input_o\,
	datad => \oo~12_combout\,
	combout => \oo~13_combout\);

-- Location: LCCOMB_X24_Y20_N14
\Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X25_Y21_N20
\oo~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~14_combout\ = (\sel[0]~input_o\ & (\op2[7]~input_o\ $ (\op1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op1[7]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \oo~14_combout\);

-- Location: LCCOMB_X25_Y21_N14
\oo~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~15_combout\ = (\oo~13_combout\) # ((\Div0|auto_generated|divider|op_1~0_combout\ & \oo~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oo~13_combout\,
	datac => \Div0|auto_generated|divider|op_1~0_combout\,
	datad => \oo~14_combout\,
	combout => \oo~15_combout\);

-- Location: IOIBUF_X31_Y20_N15
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X31_Y14_N22
\sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X22_Y25_N8
\state[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(0),
	o => \state[0]~input_o\);

-- Location: IOIBUF_X22_Y25_N1
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X24_Y25_N22
\state[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(2),
	o => \state[2]~input_o\);

-- Location: IOIBUF_X24_Y25_N29
\state[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_state(1),
	o => \state[1]~input_o\);

-- Location: LCCOMB_X23_Y21_N6
\oo[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[0]~16_combout\ = (((\state[1]~input_o\) # (!\state[2]~input_o\)) # (!\enable~input_o\)) # (!\state[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~input_o\,
	datab => \enable~input_o\,
	datac => \state[2]~input_o\,
	datad => \state[1]~input_o\,
	combout => \oo[0]~16_combout\);

-- Location: LCCOMB_X23_Y21_N16
\oo[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[0]~17_combout\ = (\reset~input_o\) # (!\oo[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oo[0]~16_combout\,
	datac => \reset~input_o\,
	combout => \oo[0]~17_combout\);

-- Location: FF_X27_Y17_N13
\oo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[0]~10_combout\,
	asdata => \oo~15_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[0]~reg0_q\);

-- Location: LCCOMB_X27_Y18_N4
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \sel[0]~input_o\ $ (\op2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[0]~input_o\,
	datad => \op2[1]~input_o\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X27_Y17_N14
\oo[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[1]~18_combout\ = ((\op1[1]~input_o\ $ (\Add1~1_combout\ $ (!\oo[0]~11\)))) # (GND)
-- \oo[1]~19\ = CARRY((\op1[1]~input_o\ & ((\Add1~1_combout\) # (!\oo[0]~11\))) # (!\op1[1]~input_o\ & (\Add1~1_combout\ & !\oo[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \Add1~1_combout\,
	datad => VCC,
	cin => \oo[0]~11\,
	combout => \oo[1]~18_combout\,
	cout => \oo[1]~19\);

-- Location: LCCOMB_X24_Y20_N16
\Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((!\Div0|auto_generated|divider|op_1~1\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\)) # (!\Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X25_Y21_N0
\oo~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~20_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT1\ & (((\oo~14_combout\ & \Div0|auto_generated|divider|op_1~2_combout\)) # (!\sel[0]~input_o\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\oo~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \oo~14_combout\,
	datac => \sel[0]~input_o\,
	datad => \Div0|auto_generated|divider|op_1~2_combout\,
	combout => \oo~20_combout\);

-- Location: LCCOMB_X25_Y19_N22
\oo~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~21_combout\ = (\oo~20_combout\) # ((\oo~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oo~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \oo~20_combout\,
	combout => \oo~21_combout\);

-- Location: FF_X27_Y17_N15
\oo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[1]~18_combout\,
	asdata => \oo~21_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[1]~reg0_q\);

-- Location: LCCOMB_X27_Y18_N30
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = \op2[2]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op2[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X27_Y17_N16
\oo[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[2]~22_combout\ = (\Add1~2_combout\ & ((\op1[2]~input_o\ & (\oo[1]~19\ & VCC)) # (!\op1[2]~input_o\ & (!\oo[1]~19\)))) # (!\Add1~2_combout\ & ((\op1[2]~input_o\ & (!\oo[1]~19\)) # (!\op1[2]~input_o\ & ((\oo[1]~19\) # (GND)))))
-- \oo[2]~23\ = CARRY((\Add1~2_combout\ & (!\op1[2]~input_o\ & !\oo[1]~19\)) # (!\Add1~2_combout\ & ((!\oo[1]~19\) # (!\op1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \op1[2]~input_o\,
	datad => VCC,
	cin => \oo[1]~19\,
	combout => \oo[2]~22_combout\,
	cout => \oo[2]~23\);

-- Location: LCCOMB_X24_Y20_N18
\Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|op_1~3\ & (((\Div0|auto_generated|divider|divider|sel\(45)) # (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))) # 
-- (!\Div0|auto_generated|divider|op_1~3\ & ((((\Div0|auto_generated|divider|divider|sel\(45)) # (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((!\Div0|auto_generated|divider|op_1~3\ & ((\Div0|auto_generated|divider|divider|sel\(45)) # (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X24_Y20_N8
\oo~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~24_combout\ = (\sel[0]~input_o\ & (\Div0|auto_generated|divider|op_1~4_combout\ & ((\oo~14_combout\)))) # (!\sel[0]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\) # ((\Div0|auto_generated|divider|op_1~4_combout\ & \oo~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Div0|auto_generated|divider|op_1~4_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \oo~14_combout\,
	combout => \oo~24_combout\);

-- Location: LCCOMB_X27_Y19_N28
\oo~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~25_combout\ = (\oo~24_combout\) # ((!\Div0|auto_generated|divider|divider|sel\(45) & (\oo~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \oo~12_combout\,
	datac => \oo~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \oo~25_combout\);

-- Location: FF_X27_Y17_N17
\oo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[2]~22_combout\,
	asdata => \oo~25_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[2]~reg0_q\);

-- Location: LCCOMB_X27_Y17_N30
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = \op2[3]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op2[3]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X27_Y17_N18
\oo[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[3]~26_combout\ = ((\Add1~3_combout\ $ (\op1[3]~input_o\ $ (!\oo[2]~23\)))) # (GND)
-- \oo[3]~27\ = CARRY((\Add1~3_combout\ & ((\op1[3]~input_o\) # (!\oo[2]~23\))) # (!\Add1~3_combout\ & (\op1[3]~input_o\ & !\oo[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \op1[3]~input_o\,
	datad => VCC,
	cin => \oo[2]~23\,
	combout => \oo[3]~26_combout\,
	cout => \oo[3]~27\);

-- Location: LCCOMB_X24_Y20_N20
\Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((!\Div0|auto_generated|divider|op_1~5\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(36) & (!\Div0|auto_generated|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|op_1~5\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~7\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & !\Div0|auto_generated|divider|divider|sel\(36))) # (!\Div0|auto_generated|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(36),
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X24_Y20_N10
\oo~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~28_combout\ = (\sel[0]~input_o\ & (\Div0|auto_generated|divider|op_1~6_combout\ & ((\oo~14_combout\)))) # (!\sel[0]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\) # ((\Div0|auto_generated|divider|op_1~6_combout\ & \oo~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Div0|auto_generated|divider|op_1~6_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \oo~14_combout\,
	combout => \oo~28_combout\);

-- Location: LCCOMB_X27_Y20_N28
\oo~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~29_combout\ = (\oo~28_combout\) # ((!\Div0|auto_generated|divider|divider|sel\(36) & (\oo~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \oo~28_combout\,
	datac => \oo~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \oo~29_combout\);

-- Location: FF_X27_Y17_N19
\oo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[3]~26_combout\,
	asdata => \oo~29_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[3]~reg0_q\);

-- Location: LCCOMB_X27_Y18_N0
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = \op2[4]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op2[4]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add1~4_combout\);

-- Location: LCCOMB_X27_Y17_N20
\oo[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[4]~30_combout\ = (\op1[4]~input_o\ & ((\Add1~4_combout\ & (\oo[3]~27\ & VCC)) # (!\Add1~4_combout\ & (!\oo[3]~27\)))) # (!\op1[4]~input_o\ & ((\Add1~4_combout\ & (!\oo[3]~27\)) # (!\Add1~4_combout\ & ((\oo[3]~27\) # (GND)))))
-- \oo[4]~31\ = CARRY((\op1[4]~input_o\ & (!\Add1~4_combout\ & !\oo[3]~27\)) # (!\op1[4]~input_o\ & ((!\oo[3]~27\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[4]~input_o\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \oo[3]~27\,
	combout => \oo[4]~30_combout\,
	cout => \oo[4]~31\);

-- Location: LCCOMB_X24_Y20_N22
\Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~8_combout\ = (\Div0|auto_generated|divider|op_1~7\ & (((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\Div0|auto_generated|divider|divider|sel\(27))))) # 
-- (!\Div0|auto_generated|divider|op_1~7\ & ((((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\Div0|auto_generated|divider|divider|sel\(27))))))
-- \Div0|auto_generated|divider|op_1~9\ = CARRY((!\Div0|auto_generated|divider|op_1~7\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\Div0|auto_generated|divider|divider|sel\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(27),
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X24_Y20_N4
\oo~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~32_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT4\ & (((\oo~14_combout\ & \Div0|auto_generated|divider|op_1~8_combout\)) # (!\sel[0]~input_o\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\oo~14_combout\ & 
-- (\Div0|auto_generated|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \oo~14_combout\,
	datac => \Div0|auto_generated|divider|op_1~8_combout\,
	datad => \sel[0]~input_o\,
	combout => \oo~32_combout\);

-- Location: LCCOMB_X27_Y20_N22
\oo~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~33_combout\ = (\oo~32_combout\) # ((\oo~12_combout\ & (!\Div0|auto_generated|divider|divider|sel\(27) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oo~12_combout\,
	datab => \oo~32_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(27),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \oo~33_combout\);

-- Location: FF_X27_Y17_N21
\oo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[4]~30_combout\,
	asdata => \oo~33_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[4]~reg0_q\);

-- Location: LCCOMB_X25_Y21_N2
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = \sel[0]~input_o\ $ (\op2[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[0]~input_o\,
	datad => \op2[5]~input_o\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X27_Y17_N22
\oo[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[5]~34_combout\ = ((\op1[5]~input_o\ $ (\Add1~5_combout\ $ (!\oo[4]~31\)))) # (GND)
-- \oo[5]~35\ = CARRY((\op1[5]~input_o\ & ((\Add1~5_combout\) # (!\oo[4]~31\))) # (!\op1[5]~input_o\ & (\Add1~5_combout\ & !\oo[4]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[5]~input_o\,
	datab => \Add1~5_combout\,
	datad => VCC,
	cin => \oo[4]~31\,
	combout => \oo[5]~34_combout\,
	cout => \oo[5]~35\);

-- Location: LCCOMB_X24_Y20_N24
\Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~10_combout\ = (\Div0|auto_generated|divider|divider|sel\(18) & (((!\Div0|auto_generated|divider|op_1~9\)))) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (!\Div0|auto_generated|divider|op_1~9\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Div0|auto_generated|divider|op_1~9\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~11\ = CARRY(((!\Div0|auto_generated|divider|divider|sel\(18) & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\Div0|auto_generated|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(18),
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X24_Y20_N30
\oo~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~36_combout\ = (\sel[0]~input_o\ & (\Div0|auto_generated|divider|op_1~10_combout\ & ((\oo~14_combout\)))) # (!\sel[0]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\) # ((\Div0|auto_generated|divider|op_1~10_combout\ & \oo~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Div0|auto_generated|divider|op_1~10_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \oo~14_combout\,
	combout => \oo~36_combout\);

-- Location: LCCOMB_X27_Y19_N22
\oo~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~37_combout\ = (\oo~36_combout\) # ((!\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & \oo~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(18),
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \oo~12_combout\,
	datad => \oo~36_combout\,
	combout => \oo~37_combout\);

-- Location: FF_X27_Y17_N23
\oo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[5]~34_combout\,
	asdata => \oo~37_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[5]~reg0_q\);

-- Location: LCCOMB_X27_Y18_N10
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \op2[6]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op2[6]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X27_Y17_N24
\oo[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[6]~38_combout\ = (\op1[6]~input_o\ & ((\Add1~6_combout\ & (\oo[5]~35\ & VCC)) # (!\Add1~6_combout\ & (!\oo[5]~35\)))) # (!\op1[6]~input_o\ & ((\Add1~6_combout\ & (!\oo[5]~35\)) # (!\Add1~6_combout\ & ((\oo[5]~35\) # (GND)))))
-- \oo[6]~39\ = CARRY((\op1[6]~input_o\ & (!\Add1~6_combout\ & !\oo[5]~35\)) # (!\op1[6]~input_o\ & ((!\oo[5]~35\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[6]~input_o\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \oo[5]~35\,
	combout => \oo[6]~38_combout\,
	cout => \oo[6]~39\);

-- Location: LCCOMB_X24_Y20_N26
\Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~12_combout\ = (\Div0|auto_generated|divider|op_1~11\ & (((\Div0|auto_generated|divider|divider|sel\(9)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\Div0|auto_generated|divider|op_1~11\ & ((((\Div0|auto_generated|divider|divider|sel\(9)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \Div0|auto_generated|divider|op_1~13\ = CARRY((!\Div0|auto_generated|divider|op_1~11\ & ((\Div0|auto_generated|divider|divider|sel\(9)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|op_1~12_combout\,
	cout => \Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X24_Y20_N0
\oo~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~40_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT6\ & (((\oo~14_combout\ & \Div0|auto_generated|divider|op_1~12_combout\)) # (!\sel[0]~input_o\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\oo~14_combout\ & 
-- (\Div0|auto_generated|divider|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \oo~14_combout\,
	datac => \Div0|auto_generated|divider|op_1~12_combout\,
	datad => \sel[0]~input_o\,
	combout => \oo~40_combout\);

-- Location: LCCOMB_X24_Y20_N2
\oo~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~41_combout\ = (\oo~40_combout\) # ((\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & (!\Div0|auto_generated|divider|divider|sel\(9) & \oo~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \oo~40_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(9),
	datad => \oo~12_combout\,
	combout => \oo~41_combout\);

-- Location: FF_X27_Y17_N25
\oo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[6]~38_combout\,
	asdata => \oo~41_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[6]~reg0_q\);

-- Location: LCCOMB_X25_Y21_N12
\Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = \op2[7]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \Add1~7_combout\);

-- Location: LCCOMB_X27_Y17_N26
\oo[7]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo[7]~42_combout\ = \Add1~7_combout\ $ (\oo[6]~39\ $ (!\op1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~7_combout\,
	datad => \op1[7]~input_o\,
	cin => \oo[6]~39\,
	combout => \oo[7]~42_combout\);

-- Location: LCCOMB_X25_Y20_N30
\Div0|auto_generated|divider|divider|sel[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(0) = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # ((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\) # 
-- (\Div0|auto_generated|divider|divider|sel\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(27),
	combout => \Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X24_Y18_N16
\Div0|auto_generated|divider|divider|add_sub_0|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\) # (!\op2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datac => \op2[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Div0|auto_generated|divider|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~14_combout\ = \Div0|auto_generated|divider|op_1~13\ $ (((\Div0|auto_generated|divider|divider|sel\(0)) # (!\Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(0),
	datad => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	cin => \Div0|auto_generated|divider|op_1~13\,
	combout => \Div0|auto_generated|divider|op_1~14_combout\);

-- Location: LCCOMB_X24_Y20_N12
\oo~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~44_combout\ = (\sel[0]~input_o\ & (\oo~14_combout\ & ((\Div0|auto_generated|divider|op_1~14_combout\)))) # (!\sel[0]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\) # ((\oo~14_combout\ & \Div0|auto_generated|divider|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \oo~14_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \Div0|auto_generated|divider|op_1~14_combout\,
	combout => \oo~44_combout\);

-- Location: LCCOMB_X24_Y20_N6
\oo~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \oo~45_combout\ = (\oo~44_combout\) # ((\Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ & (!\Div0|auto_generated|divider|divider|sel\(0) & \oo~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oo~44_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(0),
	datad => \oo~12_combout\,
	combout => \oo~45_combout\);

-- Location: FF_X27_Y17_N27
\oo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \oo[7]~42_combout\,
	asdata => \oo~45_combout\,
	sclr => \reset~input_o\,
	sload => \sel[1]~input_o\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oo[7]~reg0_q\);

-- Location: LCCOMB_X27_Y18_N12
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\op1[0]~input_o\ & (\op2[0]~input_o\ $ (VCC))) # (!\op1[0]~input_o\ & ((\op2[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\op2[0]~input_o\) # (!\op1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[0]~input_o\,
	datab => \op2[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y18_N14
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\op2[1]~input_o\ & ((\op1[1]~input_o\ & (!\Add0~1\)) # (!\op1[1]~input_o\ & (\Add0~1\ & VCC)))) # (!\op2[1]~input_o\ & ((\op1[1]~input_o\ & ((\Add0~1\) # (GND))) # (!\op1[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\op2[1]~input_o\ & (\op1[1]~input_o\ & !\Add0~1\)) # (!\op2[1]~input_o\ & ((\op1[1]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[1]~input_o\,
	datab => \op1[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y18_N16
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\op1[2]~input_o\ $ (\op2[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\op1[2]~input_o\ & (\op2[2]~input_o\ & !\Add0~3\)) # (!\op1[2]~input_o\ & ((\op2[2]~input_o\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[2]~input_o\,
	datab => \op2[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y18_N18
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\op1[3]~input_o\ & ((\op2[3]~input_o\ & (!\Add0~5\)) # (!\op2[3]~input_o\ & ((\Add0~5\) # (GND))))) # (!\op1[3]~input_o\ & ((\op2[3]~input_o\ & (\Add0~5\ & VCC)) # (!\op2[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\op1[3]~input_o\ & ((!\Add0~5\) # (!\op2[3]~input_o\))) # (!\op1[3]~input_o\ & (!\op2[3]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \op2[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y18_N20
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\op1[4]~input_o\ $ (\op2[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\op1[4]~input_o\ & (\op2[4]~input_o\ & !\Add0~7\)) # (!\op1[4]~input_o\ & ((\op2[4]~input_o\) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[4]~input_o\,
	datab => \op2[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y18_N22
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\op2[5]~input_o\ & ((\op1[5]~input_o\ & (!\Add0~9\)) # (!\op1[5]~input_o\ & (\Add0~9\ & VCC)))) # (!\op2[5]~input_o\ & ((\op1[5]~input_o\ & ((\Add0~9\) # (GND))) # (!\op1[5]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\op2[5]~input_o\ & (\op1[5]~input_o\ & !\Add0~9\)) # (!\op2[5]~input_o\ & ((\op1[5]~input_o\) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[5]~input_o\,
	datab => \op1[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y18_N24
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\op1[6]~input_o\ $ (\op2[6]~input_o\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\op1[6]~input_o\ & (\op2[6]~input_o\ & !\Add0~11\)) # (!\op1[6]~input_o\ & ((\op2[6]~input_o\) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[6]~input_o\,
	datab => \op2[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X27_Y18_N26
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \op2[7]~input_o\ $ (\op1[7]~input_o\ $ (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2[7]~input_o\,
	datab => \op1[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X27_Y18_N6
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\Add0~10_combout\ & (!\Add0~12_combout\ & (!\Add0~14_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X27_Y18_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\Add0~0_combout\ & (!\Add0~6_combout\ & (!\Add0~2_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\alu_nzp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_nzp~0_combout\ = (!\reset~input_o\ & (\Add0~14_combout\ $ (((!\Mux2~0_combout\) # (!\Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Mux2~1_combout\,
	datac => \reset~input_o\,
	datad => \Mux2~0_combout\,
	combout => \alu_nzp~0_combout\);

-- Location: FF_X23_Y21_N25
\alu_nzp[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu_nzp~0_combout\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_nzp[0]~reg0_q\);

-- Location: LCCOMB_X23_Y21_N2
\alu_nzp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_nzp~1_combout\ = (!\reset~input_o\ & (\Mux2~0_combout\ & \Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Mux2~1_combout\,
	combout => \alu_nzp~1_combout\);

-- Location: FF_X23_Y21_N3
\alu_nzp[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu_nzp~1_combout\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_nzp[1]~reg0_q\);

-- Location: LCCOMB_X23_Y21_N4
\alu_nzp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_nzp~2_combout\ = (!\reset~input_o\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \Add0~14_combout\,
	combout => \alu_nzp~2_combout\);

-- Location: FF_X23_Y21_N5
\alu_nzp[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu_nzp~2_combout\,
	ena => \oo[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_nzp[2]~reg0_q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_oo(0) <= \oo[0]~output_o\;

ww_oo(1) <= \oo[1]~output_o\;

ww_oo(2) <= \oo[2]~output_o\;

ww_oo(3) <= \oo[3]~output_o\;

ww_oo(4) <= \oo[4]~output_o\;

ww_oo(5) <= \oo[5]~output_o\;

ww_oo(6) <= \oo[6]~output_o\;

ww_oo(7) <= \oo[7]~output_o\;

ww_alu_nzp(0) <= \alu_nzp[0]~output_o\;

ww_alu_nzp(1) <= \alu_nzp[1]~output_o\;

ww_alu_nzp(2) <= \alu_nzp[2]~output_o\;
END structure;


