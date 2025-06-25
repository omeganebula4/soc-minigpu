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

-- DATE "06/25/2025 23:00:19"

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

ENTITY 	rf IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	state : IN std_logic_vector(2 DOWNTO 0);
	write_en : IN std_logic;
	alu_out : IN std_logic_vector(7 DOWNTO 0);
	lsu_out : IN std_logic_vector(7 DOWNTO 0);
	immediate : IN std_logic_vector(7 DOWNTO 0);
	mux_in : IN std_logic_vector(1 DOWNTO 0);
	rs_address : IN std_logic_vector(3 DOWNTO 0);
	rt_address : IN std_logic_vector(3 DOWNTO 0);
	rd_address : IN std_logic_vector(3 DOWNTO 0);
	block_id : IN std_logic_vector(7 DOWNTO 0);
	rs_data : BUFFER std_logic_vector(7 DOWNTO 0);
	rt_data : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END rf;

-- Design Ports Information
-- rs_data[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_data[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_data[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_in[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux_in[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_en	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[3]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[5]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[5]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[6]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[7]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- block_id[7]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rf IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_write_en : std_logic;
SIGNAL ww_alu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lsu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_immediate : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mux_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rs_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rt_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rd_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_block_id : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rs_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rt_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \rs_data[0]~output_o\ : std_logic;
SIGNAL \rs_data[1]~output_o\ : std_logic;
SIGNAL \rs_data[2]~output_o\ : std_logic;
SIGNAL \rs_data[3]~output_o\ : std_logic;
SIGNAL \rs_data[4]~output_o\ : std_logic;
SIGNAL \rs_data[5]~output_o\ : std_logic;
SIGNAL \rs_data[6]~output_o\ : std_logic;
SIGNAL \rs_data[7]~output_o\ : std_logic;
SIGNAL \rt_data[0]~output_o\ : std_logic;
SIGNAL \rt_data[1]~output_o\ : std_logic;
SIGNAL \rt_data[2]~output_o\ : std_logic;
SIGNAL \rt_data[3]~output_o\ : std_logic;
SIGNAL \rt_data[4]~output_o\ : std_logic;
SIGNAL \rt_data[5]~output_o\ : std_logic;
SIGNAL \rt_data[6]~output_o\ : std_logic;
SIGNAL \rt_data[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rs_address[3]~input_o\ : std_logic;
SIGNAL \rs_address[1]~input_o\ : std_logic;
SIGNAL \immediate[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \mux_in[1]~input_o\ : std_logic;
SIGNAL \mux_in[0]~input_o\ : std_logic;
SIGNAL \lsu_out[0]~input_o\ : std_logic;
SIGNAL \alu_out[0]~input_o\ : std_logic;
SIGNAL \reg_file~0_combout\ : std_logic;
SIGNAL \reg_file~1_combout\ : std_logic;
SIGNAL \rd_address[1]~input_o\ : std_logic;
SIGNAL \rd_address[0]~input_o\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \rd_address[3]~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \state[1]~input_o\ : std_logic;
SIGNAL \rt_data[0]~8_combout\ : std_logic;
SIGNAL \state[2]~input_o\ : std_logic;
SIGNAL \state[0]~input_o\ : std_logic;
SIGNAL \write_en~input_o\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \rd_address[2]~input_o\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \reg_file[12][5]~15_combout\ : std_logic;
SIGNAL \reg_file[12][0]~q\ : std_logic;
SIGNAL \rs_address[0]~input_o\ : std_logic;
SIGNAL \block_id[0]~input_o\ : std_logic;
SIGNAL \reg_file[13][1]~14_combout\ : std_logic;
SIGNAL \reg_file[13][0]~q\ : std_logic;
SIGNAL \rs_data[0]~15_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \reg_file[10][1]~2_combout\ : std_logic;
SIGNAL \reg_file[10][0]~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \reg_file[11][1]~5_combout\ : std_logic;
SIGNAL \reg_file[11][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \reg_file[9][4]~3_combout\ : std_logic;
SIGNAL \reg_file[9][0]~q\ : std_logic;
SIGNAL \reg_file[8][4]~4_combout\ : std_logic;
SIGNAL \reg_file[8][0]~q\ : std_logic;
SIGNAL \rs_data[0]~8_combout\ : std_logic;
SIGNAL \rs_data[0]~9_combout\ : std_logic;
SIGNAL \rs_address[2]~input_o\ : std_logic;
SIGNAL \reg_file[6][0]~feeder_combout\ : std_logic;
SIGNAL \reg_file[6][1]~6_combout\ : std_logic;
SIGNAL \reg_file[6][0]~q\ : std_logic;
SIGNAL \reg_file[7][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \reg_file[7][6]~9_combout\ : std_logic;
SIGNAL \reg_file[7][0]~q\ : std_logic;
SIGNAL \reg_file[5][3]~7_combout\ : std_logic;
SIGNAL \reg_file[5][0]~q\ : std_logic;
SIGNAL \reg_file[4][5]~8_combout\ : std_logic;
SIGNAL \reg_file[4][0]~q\ : std_logic;
SIGNAL \rs_data[0]~10_combout\ : std_logic;
SIGNAL \rs_data[0]~11_combout\ : std_logic;
SIGNAL \reg_file[3][3]~13_combout\ : std_logic;
SIGNAL \reg_file[3][0]~q\ : std_logic;
SIGNAL \reg_file[2][5]~10_combout\ : std_logic;
SIGNAL \reg_file[2][0]~q\ : std_logic;
SIGNAL \reg_file[1][2]~11_combout\ : std_logic;
SIGNAL \reg_file[1][0]~q\ : std_logic;
SIGNAL \reg_file[0][4]~12_combout\ : std_logic;
SIGNAL \reg_file[0][0]~q\ : std_logic;
SIGNAL \rs_data[0]~12_combout\ : std_logic;
SIGNAL \rs_data[0]~13_combout\ : std_logic;
SIGNAL \rs_data[0]~14_combout\ : std_logic;
SIGNAL \rs_data[0]~16_combout\ : std_logic;
SIGNAL \rs_data[0]~reg0_q\ : std_logic;
SIGNAL \rt_data[0]~9_combout\ : std_logic;
SIGNAL \rs_data[0]~en_q\ : std_logic;
SIGNAL \immediate[1]~input_o\ : std_logic;
SIGNAL \alu_out[1]~input_o\ : std_logic;
SIGNAL \lsu_out[1]~input_o\ : std_logic;
SIGNAL \reg_file~16_combout\ : std_logic;
SIGNAL \reg_file~17_combout\ : std_logic;
SIGNAL \reg_file[12][1]~feeder_combout\ : std_logic;
SIGNAL \reg_file[12][1]~q\ : std_logic;
SIGNAL \block_id[1]~input_o\ : std_logic;
SIGNAL \reg_file[13][1]~q\ : std_logic;
SIGNAL \rs_data[1]~24_combout\ : std_logic;
SIGNAL \reg_file[7][1]~q\ : std_logic;
SIGNAL \reg_file[5][1]~q\ : std_logic;
SIGNAL \reg_file[6][1]~q\ : std_logic;
SIGNAL \reg_file[4][1]~q\ : std_logic;
SIGNAL \rs_data[1]~19_combout\ : std_logic;
SIGNAL \rs_data[1]~20_combout\ : std_logic;
SIGNAL \reg_file[3][1]~q\ : std_logic;
SIGNAL \reg_file[2][1]~q\ : std_logic;
SIGNAL \reg_file[0][1]~q\ : std_logic;
SIGNAL \reg_file[1][1]~q\ : std_logic;
SIGNAL \rs_data[1]~21_combout\ : std_logic;
SIGNAL \rs_data[1]~22_combout\ : std_logic;
SIGNAL \rs_data[1]~23_combout\ : std_logic;
SIGNAL \reg_file[10][1]~q\ : std_logic;
SIGNAL \reg_file[11][1]~q\ : std_logic;
SIGNAL \reg_file[9][1]~q\ : std_logic;
SIGNAL \reg_file[8][1]~q\ : std_logic;
SIGNAL \rs_data[1]~17_combout\ : std_logic;
SIGNAL \rs_data[1]~18_combout\ : std_logic;
SIGNAL \rs_data[1]~25_combout\ : std_logic;
SIGNAL \rs_data[1]~reg0_q\ : std_logic;
SIGNAL \rs_data[1]~en_q\ : std_logic;
SIGNAL \immediate[2]~input_o\ : std_logic;
SIGNAL \lsu_out[2]~input_o\ : std_logic;
SIGNAL \alu_out[2]~input_o\ : std_logic;
SIGNAL \reg_file~18_combout\ : std_logic;
SIGNAL \reg_file~19_combout\ : std_logic;
SIGNAL \reg_file[12][2]~q\ : std_logic;
SIGNAL \block_id[2]~input_o\ : std_logic;
SIGNAL \reg_file[13][2]~q\ : std_logic;
SIGNAL \reg_file[8][2]~q\ : std_logic;
SIGNAL \reg_file[9][2]~feeder_combout\ : std_logic;
SIGNAL \reg_file[9][2]~q\ : std_logic;
SIGNAL \rs_data[2]~26_combout\ : std_logic;
SIGNAL \rs_data[2]~27_combout\ : std_logic;
SIGNAL \reg_file[11][2]~q\ : std_logic;
SIGNAL \reg_file[10][2]~feeder_combout\ : std_logic;
SIGNAL \reg_file[10][2]~q\ : std_logic;
SIGNAL \rs_data[2]~33_combout\ : std_logic;
SIGNAL \reg_file[5][2]~q\ : std_logic;
SIGNAL \reg_file[4][2]~q\ : std_logic;
SIGNAL \reg_file[1][2]~q\ : std_logic;
SIGNAL \reg_file[0][2]~q\ : std_logic;
SIGNAL \rs_data[2]~30_combout\ : std_logic;
SIGNAL \rs_data[2]~31_combout\ : std_logic;
SIGNAL \reg_file[7][2]~q\ : std_logic;
SIGNAL \reg_file[3][2]~q\ : std_logic;
SIGNAL \reg_file[2][2]~feeder_combout\ : std_logic;
SIGNAL \reg_file[2][2]~q\ : std_logic;
SIGNAL \rs_data[2]~28_combout\ : std_logic;
SIGNAL \reg_file[6][2]~q\ : std_logic;
SIGNAL \rs_data[2]~29_combout\ : std_logic;
SIGNAL \rs_data[2]~32_combout\ : std_logic;
SIGNAL \rs_data[2]~34_combout\ : std_logic;
SIGNAL \rs_data[2]~reg0_q\ : std_logic;
SIGNAL \rs_data[2]~en_q\ : std_logic;
SIGNAL \immediate[3]~input_o\ : std_logic;
SIGNAL \lsu_out[3]~input_o\ : std_logic;
SIGNAL \alu_out[3]~input_o\ : std_logic;
SIGNAL \reg_file~20_combout\ : std_logic;
SIGNAL \reg_file~21_combout\ : std_logic;
SIGNAL \reg_file[12][3]~q\ : std_logic;
SIGNAL \block_id[3]~input_o\ : std_logic;
SIGNAL \reg_file[13][3]~q\ : std_logic;
SIGNAL \rs_data[3]~42_combout\ : std_logic;
SIGNAL \reg_file[9][3]~q\ : std_logic;
SIGNAL \reg_file[11][3]~q\ : std_logic;
SIGNAL \reg_file[8][3]~q\ : std_logic;
SIGNAL \reg_file[10][3]~q\ : std_logic;
SIGNAL \rs_data[3]~35_combout\ : std_logic;
SIGNAL \rs_data[3]~36_combout\ : std_logic;
SIGNAL \reg_file[6][3]~feeder_combout\ : std_logic;
SIGNAL \reg_file[6][3]~q\ : std_logic;
SIGNAL \reg_file[7][3]~q\ : std_logic;
SIGNAL \reg_file[4][3]~q\ : std_logic;
SIGNAL \reg_file[5][3]~q\ : std_logic;
SIGNAL \rs_data[3]~37_combout\ : std_logic;
SIGNAL \rs_data[3]~38_combout\ : std_logic;
SIGNAL \reg_file[3][3]~q\ : std_logic;
SIGNAL \reg_file[1][3]~q\ : std_logic;
SIGNAL \reg_file[2][3]~feeder_combout\ : std_logic;
SIGNAL \reg_file[2][3]~q\ : std_logic;
SIGNAL \reg_file[0][3]~q\ : std_logic;
SIGNAL \rs_data[3]~39_combout\ : std_logic;
SIGNAL \rs_data[3]~40_combout\ : std_logic;
SIGNAL \rs_data[3]~41_combout\ : std_logic;
SIGNAL \rs_data[3]~43_combout\ : std_logic;
SIGNAL \rs_data[3]~reg0_q\ : std_logic;
SIGNAL \rs_data[3]~en_q\ : std_logic;
SIGNAL \immediate[4]~input_o\ : std_logic;
SIGNAL \lsu_out[4]~input_o\ : std_logic;
SIGNAL \alu_out[4]~input_o\ : std_logic;
SIGNAL \reg_file~22_combout\ : std_logic;
SIGNAL \reg_file~23_combout\ : std_logic;
SIGNAL \reg_file[12][4]~q\ : std_logic;
SIGNAL \block_id[4]~input_o\ : std_logic;
SIGNAL \reg_file[13][4]~q\ : std_logic;
SIGNAL \rs_data[4]~51_combout\ : std_logic;
SIGNAL \reg_file[10][4]~q\ : std_logic;
SIGNAL \reg_file[11][4]~q\ : std_logic;
SIGNAL \reg_file[9][4]~feeder_combout\ : std_logic;
SIGNAL \reg_file[9][4]~q\ : std_logic;
SIGNAL \reg_file[8][4]~q\ : std_logic;
SIGNAL \rs_data[4]~44_combout\ : std_logic;
SIGNAL \rs_data[4]~45_combout\ : std_logic;
SIGNAL \reg_file[3][4]~q\ : std_logic;
SIGNAL \reg_file[2][4]~q\ : std_logic;
SIGNAL \reg_file[1][4]~q\ : std_logic;
SIGNAL \reg_file[0][4]~q\ : std_logic;
SIGNAL \rs_data[4]~48_combout\ : std_logic;
SIGNAL \rs_data[4]~49_combout\ : std_logic;
SIGNAL \reg_file[7][4]~q\ : std_logic;
SIGNAL \reg_file[5][4]~q\ : std_logic;
SIGNAL \reg_file[6][4]~q\ : std_logic;
SIGNAL \reg_file[4][4]~q\ : std_logic;
SIGNAL \rs_data[4]~46_combout\ : std_logic;
SIGNAL \rs_data[4]~47_combout\ : std_logic;
SIGNAL \rs_data[4]~50_combout\ : std_logic;
SIGNAL \rs_data[4]~52_combout\ : std_logic;
SIGNAL \rs_data[4]~reg0_q\ : std_logic;
SIGNAL \rs_data[4]~en_q\ : std_logic;
SIGNAL \block_id[5]~input_o\ : std_logic;
SIGNAL \reg_file[13][5]~q\ : std_logic;
SIGNAL \alu_out[5]~input_o\ : std_logic;
SIGNAL \lsu_out[5]~input_o\ : std_logic;
SIGNAL \reg_file~24_combout\ : std_logic;
SIGNAL \immediate[5]~input_o\ : std_logic;
SIGNAL \reg_file~25_combout\ : std_logic;
SIGNAL \reg_file[12][5]~feeder_combout\ : std_logic;
SIGNAL \reg_file[12][5]~q\ : std_logic;
SIGNAL \rs_data[5]~60_combout\ : std_logic;
SIGNAL \reg_file[7][5]~q\ : std_logic;
SIGNAL \reg_file[6][5]~q\ : std_logic;
SIGNAL \reg_file[4][5]~q\ : std_logic;
SIGNAL \reg_file[5][5]~q\ : std_logic;
SIGNAL \rs_data[5]~53_combout\ : std_logic;
SIGNAL \rs_data[5]~54_combout\ : std_logic;
SIGNAL \reg_file[3][5]~q\ : std_logic;
SIGNAL \reg_file[1][5]~q\ : std_logic;
SIGNAL \reg_file[0][5]~q\ : std_logic;
SIGNAL \reg_file[2][5]~q\ : std_logic;
SIGNAL \rs_data[5]~57_combout\ : std_logic;
SIGNAL \rs_data[5]~58_combout\ : std_logic;
SIGNAL \reg_file[10][5]~feeder_combout\ : std_logic;
SIGNAL \reg_file[10][5]~q\ : std_logic;
SIGNAL \reg_file[8][5]~q\ : std_logic;
SIGNAL \rs_data[5]~55_combout\ : std_logic;
SIGNAL \reg_file[9][5]~q\ : std_logic;
SIGNAL \reg_file[11][5]~q\ : std_logic;
SIGNAL \rs_data[5]~56_combout\ : std_logic;
SIGNAL \rs_data[5]~59_combout\ : std_logic;
SIGNAL \rs_data[5]~61_combout\ : std_logic;
SIGNAL \rs_data[5]~reg0_q\ : std_logic;
SIGNAL \rs_data[5]~enfeeder_combout\ : std_logic;
SIGNAL \rs_data[5]~en_q\ : std_logic;
SIGNAL \immediate[6]~input_o\ : std_logic;
SIGNAL \alu_out[6]~input_o\ : std_logic;
SIGNAL \lsu_out[6]~input_o\ : std_logic;
SIGNAL \reg_file~26_combout\ : std_logic;
SIGNAL \reg_file~27_combout\ : std_logic;
SIGNAL \reg_file[11][6]~feeder_combout\ : std_logic;
SIGNAL \reg_file[11][6]~q\ : std_logic;
SIGNAL \reg_file[10][6]~q\ : std_logic;
SIGNAL \reg_file[8][6]~q\ : std_logic;
SIGNAL \reg_file[9][6]~q\ : std_logic;
SIGNAL \rs_data[6]~62_combout\ : std_logic;
SIGNAL \rs_data[6]~63_combout\ : std_logic;
SIGNAL \reg_file[12][6]~q\ : std_logic;
SIGNAL \block_id[6]~input_o\ : std_logic;
SIGNAL \reg_file[13][6]~q\ : std_logic;
SIGNAL \rs_data[6]~69_combout\ : std_logic;
SIGNAL \reg_file[7][6]~q\ : std_logic;
SIGNAL \reg_file[5][6]~q\ : std_logic;
SIGNAL \reg_file[6][6]~q\ : std_logic;
SIGNAL \reg_file[4][6]~q\ : std_logic;
SIGNAL \rs_data[6]~64_combout\ : std_logic;
SIGNAL \rs_data[6]~65_combout\ : std_logic;
SIGNAL \reg_file[3][6]~q\ : std_logic;
SIGNAL \reg_file[1][6]~q\ : std_logic;
SIGNAL \reg_file[0][6]~q\ : std_logic;
SIGNAL \rs_data[6]~66_combout\ : std_logic;
SIGNAL \reg_file[2][6]~q\ : std_logic;
SIGNAL \rs_data[6]~67_combout\ : std_logic;
SIGNAL \rs_data[6]~68_combout\ : std_logic;
SIGNAL \rs_data[6]~70_combout\ : std_logic;
SIGNAL \rs_data[6]~reg0_q\ : std_logic;
SIGNAL \rs_data[6]~en_q\ : std_logic;
SIGNAL \alu_out[7]~input_o\ : std_logic;
SIGNAL \lsu_out[7]~input_o\ : std_logic;
SIGNAL \reg_file~28_combout\ : std_logic;
SIGNAL \immediate[7]~input_o\ : std_logic;
SIGNAL \reg_file~29_combout\ : std_logic;
SIGNAL \reg_file[12][7]~q\ : std_logic;
SIGNAL \block_id[7]~input_o\ : std_logic;
SIGNAL \reg_file[13][7]~q\ : std_logic;
SIGNAL \rs_data[7]~78_combout\ : std_logic;
SIGNAL \reg_file[6][7]~q\ : std_logic;
SIGNAL \reg_file[7][7]~feeder_combout\ : std_logic;
SIGNAL \reg_file[7][7]~q\ : std_logic;
SIGNAL \reg_file[4][7]~q\ : std_logic;
SIGNAL \reg_file[5][7]~q\ : std_logic;
SIGNAL \rs_data[7]~71_combout\ : std_logic;
SIGNAL \rs_data[7]~72_combout\ : std_logic;
SIGNAL \reg_file[9][7]~q\ : std_logic;
SIGNAL \reg_file[11][7]~q\ : std_logic;
SIGNAL \reg_file[10][7]~q\ : std_logic;
SIGNAL \reg_file[8][7]~q\ : std_logic;
SIGNAL \rs_data[7]~73_combout\ : std_logic;
SIGNAL \rs_data[7]~74_combout\ : std_logic;
SIGNAL \reg_file[3][7]~q\ : std_logic;
SIGNAL \reg_file[1][7]~q\ : std_logic;
SIGNAL \reg_file[2][7]~feeder_combout\ : std_logic;
SIGNAL \reg_file[2][7]~q\ : std_logic;
SIGNAL \reg_file[0][7]~q\ : std_logic;
SIGNAL \rs_data[7]~75_combout\ : std_logic;
SIGNAL \rs_data[7]~76_combout\ : std_logic;
SIGNAL \rs_data[7]~77_combout\ : std_logic;
SIGNAL \rs_data[7]~79_combout\ : std_logic;
SIGNAL \rs_data[7]~reg0_q\ : std_logic;
SIGNAL \rs_data[7]~en_q\ : std_logic;
SIGNAL \rt_address[0]~input_o\ : std_logic;
SIGNAL \rt_address[1]~input_o\ : std_logic;
SIGNAL \rt_data[0]~17_combout\ : std_logic;
SIGNAL \rt_address[3]~input_o\ : std_logic;
SIGNAL \rt_data[0]~10_combout\ : std_logic;
SIGNAL \rt_data[0]~11_combout\ : std_logic;
SIGNAL \rt_address[2]~input_o\ : std_logic;
SIGNAL \rt_data[0]~12_combout\ : std_logic;
SIGNAL \rt_data[0]~13_combout\ : std_logic;
SIGNAL \rt_data[0]~14_combout\ : std_logic;
SIGNAL \rt_data[0]~15_combout\ : std_logic;
SIGNAL \rt_data[0]~16_combout\ : std_logic;
SIGNAL \rt_data[0]~18_combout\ : std_logic;
SIGNAL \rt_data[0]~reg0_q\ : std_logic;
SIGNAL \rt_data[0]~en_q\ : std_logic;
SIGNAL \rt_data[1]~26_combout\ : std_logic;
SIGNAL \rt_data[1]~19_combout\ : std_logic;
SIGNAL \rt_data[1]~20_combout\ : std_logic;
SIGNAL \rt_data[1]~23_combout\ : std_logic;
SIGNAL \rt_data[1]~24_combout\ : std_logic;
SIGNAL \rt_data[1]~21_combout\ : std_logic;
SIGNAL \rt_data[1]~22_combout\ : std_logic;
SIGNAL \rt_data[1]~25_combout\ : std_logic;
SIGNAL \rt_data[1]~27_combout\ : std_logic;
SIGNAL \rt_data[1]~reg0_q\ : std_logic;
SIGNAL \rt_data[1]~en_q\ : std_logic;
SIGNAL \rt_data[2]~35_combout\ : std_logic;
SIGNAL \rt_data[2]~28_combout\ : std_logic;
SIGNAL \rt_data[2]~29_combout\ : std_logic;
SIGNAL \rt_data[2]~30_combout\ : std_logic;
SIGNAL \rt_data[2]~31_combout\ : std_logic;
SIGNAL \rt_data[2]~32_combout\ : std_logic;
SIGNAL \rt_data[2]~33_combout\ : std_logic;
SIGNAL \rt_data[2]~34_combout\ : std_logic;
SIGNAL \rt_data[2]~36_combout\ : std_logic;
SIGNAL \rt_data[2]~reg0_q\ : std_logic;
SIGNAL \rt_data[2]~en_q\ : std_logic;
SIGNAL \rt_data[3]~44_combout\ : std_logic;
SIGNAL \rt_data[3]~37_combout\ : std_logic;
SIGNAL \rt_data[3]~38_combout\ : std_logic;
SIGNAL \rt_data[3]~41_combout\ : std_logic;
SIGNAL \rt_data[3]~42_combout\ : std_logic;
SIGNAL \rt_data[3]~39_combout\ : std_logic;
SIGNAL \rt_data[3]~40_combout\ : std_logic;
SIGNAL \rt_data[3]~43_combout\ : std_logic;
SIGNAL \rt_data[3]~45_combout\ : std_logic;
SIGNAL \rt_data[3]~reg0_q\ : std_logic;
SIGNAL \rt_data[3]~enfeeder_combout\ : std_logic;
SIGNAL \rt_data[3]~en_q\ : std_logic;
SIGNAL \rt_data[4]~53_combout\ : std_logic;
SIGNAL \rt_data[4]~46_combout\ : std_logic;
SIGNAL \rt_data[4]~47_combout\ : std_logic;
SIGNAL \rt_data[4]~48_combout\ : std_logic;
SIGNAL \rt_data[4]~49_combout\ : std_logic;
SIGNAL \rt_data[4]~50_combout\ : std_logic;
SIGNAL \rt_data[4]~51_combout\ : std_logic;
SIGNAL \rt_data[4]~52_combout\ : std_logic;
SIGNAL \rt_data[4]~54_combout\ : std_logic;
SIGNAL \rt_data[4]~reg0_q\ : std_logic;
SIGNAL \rt_data[4]~en_q\ : std_logic;
SIGNAL \rt_data[5]~57_combout\ : std_logic;
SIGNAL \rt_data[5]~58_combout\ : std_logic;
SIGNAL \rt_data[5]~59_combout\ : std_logic;
SIGNAL \rt_data[5]~60_combout\ : std_logic;
SIGNAL \rt_data[5]~61_combout\ : std_logic;
SIGNAL \rt_data[5]~62_combout\ : std_logic;
SIGNAL \rt_data[5]~55_combout\ : std_logic;
SIGNAL \rt_data[5]~56_combout\ : std_logic;
SIGNAL \rt_data[5]~63_combout\ : std_logic;
SIGNAL \rt_data[5]~reg0_q\ : std_logic;
SIGNAL \rt_data[5]~en_q\ : std_logic;
SIGNAL \rt_data[6]~66_combout\ : std_logic;
SIGNAL \rt_data[6]~67_combout\ : std_logic;
SIGNAL \rt_data[6]~68_combout\ : std_logic;
SIGNAL \rt_data[6]~69_combout\ : std_logic;
SIGNAL \rt_data[6]~70_combout\ : std_logic;
SIGNAL \rt_data[6]~71_combout\ : std_logic;
SIGNAL \rt_data[6]~64_combout\ : std_logic;
SIGNAL \rt_data[6]~65_combout\ : std_logic;
SIGNAL \rt_data[6]~72_combout\ : std_logic;
SIGNAL \rt_data[6]~reg0_q\ : std_logic;
SIGNAL \rt_data[6]~en_q\ : std_logic;
SIGNAL \rt_data[7]~75_combout\ : std_logic;
SIGNAL \rt_data[7]~76_combout\ : std_logic;
SIGNAL \rt_data[7]~77_combout\ : std_logic;
SIGNAL \rt_data[7]~78_combout\ : std_logic;
SIGNAL \rt_data[7]~79_combout\ : std_logic;
SIGNAL \rt_data[7]~80_combout\ : std_logic;
SIGNAL \rt_data[7]~73_combout\ : std_logic;
SIGNAL \rt_data[7]~74_combout\ : std_logic;
SIGNAL \rt_data[7]~81_combout\ : std_logic;
SIGNAL \rt_data[7]~reg0_q\ : std_logic;
SIGNAL \rt_data[7]~en_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_en <= en;
ww_state <= state;
ww_write_en <= write_en;
ww_alu_out <= alu_out;
ww_lsu_out <= lsu_out;
ww_immediate <= immediate;
ww_mux_in <= mux_in;
ww_rs_address <= rs_address;
ww_rt_address <= rt_address;
ww_rd_address <= rd_address;
ww_block_id <= block_id;
rs_data <= ww_rs_data;
rt_data <= ww_rt_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N24
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

-- Location: IOOBUF_X13_Y25_N30
\rs_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[0]~reg0_q\,
	oe => \rs_data[0]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[0]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\rs_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[1]~reg0_q\,
	oe => \rs_data[1]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[1]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\rs_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[2]~reg0_q\,
	oe => \rs_data[2]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[2]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\rs_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[3]~reg0_q\,
	oe => \rs_data[3]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[3]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\rs_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[4]~reg0_q\,
	oe => \rs_data[4]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[4]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\rs_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[5]~reg0_q\,
	oe => \rs_data[5]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[5]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\rs_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[6]~reg0_q\,
	oe => \rs_data[6]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[6]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\rs_data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs_data[7]~reg0_q\,
	oe => \rs_data[7]~en_q\,
	devoe => ww_devoe,
	o => \rs_data[7]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\rt_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[0]~reg0_q\,
	oe => \rt_data[0]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[0]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\rt_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[1]~reg0_q\,
	oe => \rt_data[1]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\rt_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[2]~reg0_q\,
	oe => \rt_data[2]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\rt_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[3]~reg0_q\,
	oe => \rt_data[3]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[3]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\rt_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[4]~reg0_q\,
	oe => \rt_data[4]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[4]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\rt_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[5]~reg0_q\,
	oe => \rt_data[5]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[5]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\rt_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[6]~reg0_q\,
	oe => \rt_data[6]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[6]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\rt_data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rt_data[7]~reg0_q\,
	oe => \rt_data[7]~en_q\,
	devoe => ww_devoe,
	o => \rt_data[7]~output_o\);

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

-- Location: IOIBUF_X15_Y0_N22
\rs_address[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_address(3),
	o => \rs_address[3]~input_o\);

-- Location: IOIBUF_X10_Y16_N1
\rs_address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_address(1),
	o => \rs_address[1]~input_o\);

-- Location: IOIBUF_X1_Y10_N1
\immediate[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(0),
	o => \immediate[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
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

-- Location: IOIBUF_X10_Y15_N15
\mux_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_in(1),
	o => \mux_in[1]~input_o\);

-- Location: IOIBUF_X10_Y18_N1
\mux_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux_in(0),
	o => \mux_in[0]~input_o\);

-- Location: IOIBUF_X6_Y10_N1
\lsu_out[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(0),
	o => \lsu_out[0]~input_o\);

-- Location: IOIBUF_X6_Y10_N15
\alu_out[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(0),
	o => \alu_out[0]~input_o\);

-- Location: LCCOMB_X13_Y14_N20
\reg_file~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~0_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & (\lsu_out[0]~input_o\)) # (!\mux_in[0]~input_o\ & ((\alu_out[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \lsu_out[0]~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \alu_out[0]~input_o\,
	combout => \reg_file~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\reg_file~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~1_combout\ = (!\reset~input_o\ & ((\reg_file~0_combout\) # ((\immediate[0]~input_o\ & \mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[0]~input_o\,
	datab => \reset~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \reg_file~0_combout\,
	combout => \reg_file~1_combout\);

-- Location: IOIBUF_X6_Y10_N8
\rd_address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_address(1),
	o => \rd_address[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\rd_address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_address(0),
	o => \rd_address[0]~input_o\);

-- Location: LCCOMB_X11_Y13_N16
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\rd_address[1]~input_o\ & !\rd_address[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_address[1]~input_o\,
	datad => \rd_address[0]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: IOIBUF_X10_Y17_N8
\rd_address[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_address(3),
	o => \rd_address[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N8
\en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X13_Y25_N8
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

-- Location: LCCOMB_X13_Y21_N12
\rt_data[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~8_combout\ = (\en~input_o\ & \state[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => \state[1]~input_o\,
	combout => \rt_data[0]~8_combout\);

-- Location: IOIBUF_X10_Y22_N8
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

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: IOIBUF_X17_Y25_N8
\write_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_en,
	o => \write_en~input_o\);

-- Location: LCCOMB_X13_Y21_N2
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (((\state[0]~input_o\) # (!\write_en~input_o\)) # (!\state[2]~input_o\)) # (!\rt_data[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[0]~8_combout\,
	datab => \state[2]~input_o\,
	datac => \state[0]~input_o\,
	datad => \write_en~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: IOIBUF_X10_Y18_N8
\rd_address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_address(2),
	o => \rd_address[2]~input_o\);

-- Location: LCCOMB_X11_Y17_N10
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\Decoder0~1_combout\ & (\rd_address[2]~input_o\ & ((!\mux_in[1]~input_o\) # (!\mux_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \Decoder0~1_combout\,
	datad => \rd_address[2]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X11_Y17_N14
\reg_file[12][5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[12][5]~15_combout\ = (\reset~input_o\) # ((\Decoder0~4_combout\ & (\rd_address[3]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \rd_address[3]~input_o\,
	datac => \reset~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \reg_file[12][5]~15_combout\);

-- Location: FF_X13_Y14_N29
\reg_file[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file~1_combout\,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][0]~q\);

-- Location: IOIBUF_X10_Y15_N8
\rs_address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_address(0),
	o => \rs_address[0]~input_o\);

-- Location: IOIBUF_X31_Y14_N15
\block_id[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(0),
	o => \block_id[0]~input_o\);

-- Location: LCCOMB_X16_Y14_N18
\reg_file[13][1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[13][1]~14_combout\ = (\reset~input_o\) # (!\Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \Decoder0~1_combout\,
	combout => \reg_file[13][1]~14_combout\);

-- Location: FF_X16_Y14_N29
\reg_file[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[0]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][0]~q\);

-- Location: LCCOMB_X13_Y14_N14
\rs_data[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~15_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[13][0]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[12][0]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[13][0]~q\,
	combout => \rs_data[0]~15_combout\);

-- Location: LCCOMB_X11_Y13_N2
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\rd_address[1]~input_o\ & !\rd_address[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_address[1]~input_o\,
	datad => \rd_address[0]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X11_Y17_N16
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Decoder0~1_combout\ & (!\rd_address[2]~input_o\ & ((!\mux_in[1]~input_o\) # (!\mux_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \Decoder0~1_combout\,
	datad => \rd_address[2]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X11_Y17_N22
\reg_file[10][1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[10][1]~2_combout\ = (\reset~input_o\) # ((\Decoder0~0_combout\ & (\rd_address[3]~input_o\ & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~0_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \reg_file[10][1]~2_combout\);

-- Location: FF_X12_Y17_N1
\reg_file[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][0]~q\);

-- Location: LCCOMB_X11_Y13_N10
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\rd_address[1]~input_o\ & (\Decoder0~2_combout\ & \rd_address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[1]~input_o\,
	datab => \Decoder0~2_combout\,
	datad => \rd_address[0]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X13_Y17_N26
\reg_file[11][1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[11][1]~5_combout\ = (\reset~input_o\) # ((\rd_address[3]~input_o\ & \Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rd_address[3]~input_o\,
	datad => \Decoder0~5_combout\,
	combout => \reg_file[11][1]~5_combout\);

-- Location: FF_X13_Y17_N9
\reg_file[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][0]~q\);

-- Location: LCCOMB_X11_Y13_N28
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\rd_address[1]~input_o\ & (\Decoder0~2_combout\ & \rd_address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[1]~input_o\,
	datab => \Decoder0~2_combout\,
	datad => \rd_address[0]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X12_Y17_N16
\reg_file[9][4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[9][4]~3_combout\ = (\reset~input_o\) # ((\Decoder0~3_combout\ & \rd_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file[9][4]~3_combout\);

-- Location: FF_X12_Y13_N17
\reg_file[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][0]~q\);

-- Location: LCCOMB_X11_Y17_N20
\reg_file[8][4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[8][4]~4_combout\ = (\reset~input_o\) # ((\Decoder0~2_combout\ & (\rd_address[3]~input_o\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~2_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \Decoder0~4_combout\,
	combout => \reg_file[8][4]~4_combout\);

-- Location: FF_X11_Y13_N25
\reg_file[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][0]~q\);

-- Location: LCCOMB_X12_Y13_N16
\rs_data[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~8_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[9][0]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[9][0]~q\,
	datad => \reg_file[8][0]~q\,
	combout => \rs_data[0]~8_combout\);

-- Location: LCCOMB_X13_Y17_N8
\rs_data[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~9_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[0]~8_combout\ & ((\reg_file[11][0]~q\))) # (!\rs_data[0]~8_combout\ & (\reg_file[10][0]~q\)))) # (!\rs_address[1]~input_o\ & (((\rs_data[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[10][0]~q\,
	datac => \reg_file[11][0]~q\,
	datad => \rs_data[0]~8_combout\,
	combout => \rs_data[0]~9_combout\);

-- Location: IOIBUF_X6_Y10_N29
\rs_address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_address(2),
	o => \rs_address[2]~input_o\);

-- Location: LCCOMB_X14_Y14_N12
\reg_file[6][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[6][0]~feeder_combout\ = \reg_file~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~1_combout\,
	combout => \reg_file[6][0]~feeder_combout\);

-- Location: LCCOMB_X11_Y17_N0
\reg_file[6][1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[6][1]~6_combout\ = (\reset~input_o\) # ((\Decoder0~0_combout\ & (!\rd_address[3]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~0_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \reg_file[6][1]~6_combout\);

-- Location: FF_X14_Y14_N13
\reg_file[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[6][0]~feeder_combout\,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][0]~q\);

-- Location: LCCOMB_X15_Y12_N6
\reg_file[7][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[7][0]~feeder_combout\ = \reg_file~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~1_combout\,
	combout => \reg_file[7][0]~feeder_combout\);

-- Location: LCCOMB_X11_Y17_N26
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\rd_address[3]~input_o\ & \Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd_address[3]~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X11_Y13_N26
\reg_file[7][6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[7][6]~9_combout\ = (\reset~input_o\) # ((\Decoder0~7_combout\ & (\rd_address[1]~input_o\ & \rd_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~7_combout\,
	datac => \rd_address[1]~input_o\,
	datad => \rd_address[0]~input_o\,
	combout => \reg_file[7][6]~9_combout\);

-- Location: FF_X15_Y12_N7
\reg_file[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[7][0]~feeder_combout\,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][0]~q\);

-- Location: LCCOMB_X11_Y13_N12
\reg_file[5][3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[5][3]~7_combout\ = (\reset~input_o\) # ((\Decoder0~7_combout\ & (!\rd_address[1]~input_o\ & \rd_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~7_combout\,
	datac => \rd_address[1]~input_o\,
	datad => \rd_address[0]~input_o\,
	combout => \reg_file[5][3]~7_combout\);

-- Location: FF_X14_Y13_N25
\reg_file[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][0]~q\);

-- Location: LCCOMB_X11_Y17_N8
\reg_file[4][5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[4][5]~8_combout\ = (\reset~input_o\) # ((\Decoder0~4_combout\ & (!\rd_address[3]~input_o\ & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \rd_address[3]~input_o\,
	datac => \reset~input_o\,
	datad => \Decoder0~6_combout\,
	combout => \reg_file[4][5]~8_combout\);

-- Location: FF_X15_Y13_N29
\reg_file[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][0]~q\);

-- Location: LCCOMB_X14_Y13_N24
\rs_data[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~10_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[5][0]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[5][0]~q\,
	datad => \reg_file[4][0]~q\,
	combout => \rs_data[0]~10_combout\);

-- Location: LCCOMB_X14_Y14_N14
\rs_data[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~11_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[0]~10_combout\ & ((\reg_file[7][0]~q\))) # (!\rs_data[0]~10_combout\ & (\reg_file[6][0]~q\)))) # (!\rs_address[1]~input_o\ & (((\rs_data[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[6][0]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[7][0]~q\,
	datad => \rs_data[0]~10_combout\,
	combout => \rs_data[0]~11_combout\);

-- Location: LCCOMB_X12_Y17_N10
\reg_file[3][3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[3][3]~13_combout\ = (\reset~input_o\) # ((\Decoder0~5_combout\ & !\rd_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file[3][3]~13_combout\);

-- Location: FF_X13_Y13_N31
\reg_file[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][0]~q\);

-- Location: LCCOMB_X11_Y17_N6
\reg_file[2][5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[2][5]~10_combout\ = (\reset~input_o\) # ((\Decoder0~0_combout\ & (!\rd_address[3]~input_o\ & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~0_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \reg_file[2][5]~10_combout\);

-- Location: FF_X12_Y13_N27
\reg_file[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][0]~q\);

-- Location: LCCOMB_X12_Y17_N30
\reg_file[1][2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[1][2]~11_combout\ = (\reset~input_o\) # ((\Decoder0~3_combout\ & !\rd_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file[1][2]~11_combout\);

-- Location: FF_X13_Y13_N21
\reg_file[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][0]~q\);

-- Location: LCCOMB_X11_Y17_N24
\reg_file[0][4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[0][4]~12_combout\ = (\reset~input_o\) # ((\Decoder0~2_combout\ & (!\rd_address[3]~input_o\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Decoder0~2_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \Decoder0~4_combout\,
	combout => \reg_file[0][4]~12_combout\);

-- Location: FF_X14_Y13_N3
\reg_file[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][0]~q\);

-- Location: LCCOMB_X13_Y13_N20
\rs_data[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~12_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[1][0]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[1][0]~q\,
	datad => \reg_file[0][0]~q\,
	combout => \rs_data[0]~12_combout\);

-- Location: LCCOMB_X12_Y13_N26
\rs_data[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~13_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[0]~12_combout\ & (\reg_file[3][0]~q\)) # (!\rs_data[0]~12_combout\ & ((\reg_file[2][0]~q\))))) # (!\rs_address[1]~input_o\ & (((\rs_data[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[3][0]~q\,
	datac => \reg_file[2][0]~q\,
	datad => \rs_data[0]~12_combout\,
	combout => \rs_data[0]~13_combout\);

-- Location: LCCOMB_X13_Y14_N6
\rs_data[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~14_combout\ = (\rs_address[3]~input_o\ & (\rs_address[2]~input_o\)) # (!\rs_address[3]~input_o\ & ((\rs_address[2]~input_o\ & (\rs_data[0]~11_combout\)) # (!\rs_address[2]~input_o\ & ((\rs_data[0]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_address[2]~input_o\,
	datac => \rs_data[0]~11_combout\,
	datad => \rs_data[0]~13_combout\,
	combout => \rs_data[0]~14_combout\);

-- Location: LCCOMB_X13_Y14_N0
\rs_data[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[0]~16_combout\ = (\rs_address[3]~input_o\ & ((\rs_data[0]~14_combout\ & (\rs_data[0]~15_combout\)) # (!\rs_data[0]~14_combout\ & ((\rs_data[0]~9_combout\))))) # (!\rs_address[3]~input_o\ & (((\rs_data[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_data[0]~15_combout\,
	datac => \rs_data[0]~9_combout\,
	datad => \rs_data[0]~14_combout\,
	combout => \rs_data[0]~16_combout\);

-- Location: FF_X13_Y14_N1
\rs_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[0]~16_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[0]~reg0_q\);

-- Location: LCCOMB_X13_Y21_N30
\rt_data[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~9_combout\ = (\reset~input_o\) # ((\state[0]~input_o\ & (!\state[2]~input_o\ & \rt_data[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~input_o\,
	datab => \state[2]~input_o\,
	datac => \reset~input_o\,
	datad => \rt_data[0]~8_combout\,
	combout => \rt_data[0]~9_combout\);

-- Location: FF_X13_Y21_N9
\rs_data[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[0]~en_q\);

-- Location: IOIBUF_X10_Y19_N1
\immediate[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(1),
	o => \immediate[1]~input_o\);

-- Location: IOIBUF_X3_Y10_N8
\alu_out[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(1),
	o => \alu_out[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\lsu_out[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(1),
	o => \lsu_out[1]~input_o\);

-- Location: LCCOMB_X11_Y17_N28
\reg_file~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~16_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & ((\lsu_out[1]~input_o\))) # (!\mux_in[0]~input_o\ & (\alu_out[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \alu_out[1]~input_o\,
	datad => \lsu_out[1]~input_o\,
	combout => \reg_file~16_combout\);

-- Location: LCCOMB_X11_Y17_N2
\reg_file~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~17_combout\ = (!\reset~input_o\ & ((\reg_file~16_combout\) # ((\mux_in[1]~input_o\ & \immediate[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \immediate[1]~input_o\,
	datad => \reg_file~16_combout\,
	combout => \reg_file~17_combout\);

-- Location: LCCOMB_X15_Y14_N12
\reg_file[12][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[12][1]~feeder_combout\ = \reg_file~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~17_combout\,
	combout => \reg_file[12][1]~feeder_combout\);

-- Location: FF_X15_Y14_N13
\reg_file[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[12][1]~feeder_combout\,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][1]~q\);

-- Location: IOIBUF_X15_Y25_N15
\block_id[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(1),
	o => \block_id[1]~input_o\);

-- Location: FF_X16_Y14_N19
\reg_file[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[1]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][1]~q\);

-- Location: LCCOMB_X15_Y14_N30
\rs_data[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~24_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[13][1]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[12][1]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[13][1]~q\,
	combout => \rs_data[1]~24_combout\);

-- Location: FF_X11_Y13_N9
\reg_file[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][1]~q\);

-- Location: FF_X14_Y13_N17
\reg_file[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][1]~q\);

-- Location: FF_X15_Y13_N7
\reg_file[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][1]~q\);

-- Location: FF_X15_Y13_N21
\reg_file[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][1]~q\);

-- Location: LCCOMB_X15_Y13_N6
\rs_data[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~19_combout\ = (\rs_address[0]~input_o\ & (\rs_address[1]~input_o\)) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file[6][1]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[6][1]~q\,
	datad => \reg_file[4][1]~q\,
	combout => \rs_data[1]~19_combout\);

-- Location: LCCOMB_X14_Y13_N16
\rs_data[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~20_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[1]~19_combout\ & (\reg_file[7][1]~q\)) # (!\rs_data[1]~19_combout\ & ((\reg_file[5][1]~q\))))) # (!\rs_address[0]~input_o\ & (((\rs_data[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file[7][1]~q\,
	datac => \reg_file[5][1]~q\,
	datad => \rs_data[1]~19_combout\,
	combout => \rs_data[1]~20_combout\);

-- Location: FF_X13_Y13_N23
\reg_file[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][1]~q\);

-- Location: FF_X12_Y13_N3
\reg_file[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][1]~q\);

-- Location: FF_X14_Y13_N15
\reg_file[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][1]~q\);

-- Location: FF_X13_Y13_N29
\reg_file[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][1]~q\);

-- Location: LCCOMB_X13_Y13_N28
\rs_data[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~21_combout\ = (\rs_address[1]~input_o\ & (((\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[1][1]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[0][1]~q\,
	datac => \reg_file[1][1]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \rs_data[1]~21_combout\);

-- Location: LCCOMB_X12_Y13_N2
\rs_data[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~22_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[1]~21_combout\ & (\reg_file[3][1]~q\)) # (!\rs_data[1]~21_combout\ & ((\reg_file[2][1]~q\))))) # (!\rs_address[1]~input_o\ & (((\rs_data[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[3][1]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[2][1]~q\,
	datad => \rs_data[1]~21_combout\,
	combout => \rs_data[1]~22_combout\);

-- Location: LCCOMB_X16_Y13_N30
\rs_data[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~23_combout\ = (\rs_address[2]~input_o\ & ((\rs_address[3]~input_o\) # ((\rs_data[1]~20_combout\)))) # (!\rs_address[2]~input_o\ & (!\rs_address[3]~input_o\ & ((\rs_data[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_data[1]~20_combout\,
	datad => \rs_data[1]~22_combout\,
	combout => \rs_data[1]~23_combout\);

-- Location: FF_X12_Y17_N27
\reg_file[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][1]~q\);

-- Location: FF_X13_Y17_N7
\reg_file[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][1]~q\);

-- Location: FF_X12_Y13_N25
\reg_file[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][1]~q\);

-- Location: FF_X11_Y13_N31
\reg_file[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][1]~q\);

-- Location: LCCOMB_X12_Y13_N24
\rs_data[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~17_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[9][1]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[9][1]~q\,
	datad => \reg_file[8][1]~q\,
	combout => \rs_data[1]~17_combout\);

-- Location: LCCOMB_X13_Y17_N6
\rs_data[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~18_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[1]~17_combout\ & ((\reg_file[11][1]~q\))) # (!\rs_data[1]~17_combout\ & (\reg_file[10][1]~q\)))) # (!\rs_address[1]~input_o\ & (((\rs_data[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[10][1]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[11][1]~q\,
	datad => \rs_data[1]~17_combout\,
	combout => \rs_data[1]~18_combout\);

-- Location: LCCOMB_X16_Y13_N24
\rs_data[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[1]~25_combout\ = (\rs_address[3]~input_o\ & ((\rs_data[1]~23_combout\ & (\rs_data[1]~24_combout\)) # (!\rs_data[1]~23_combout\ & ((\rs_data[1]~18_combout\))))) # (!\rs_address[3]~input_o\ & (((\rs_data[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_data[1]~24_combout\,
	datac => \rs_data[1]~23_combout\,
	datad => \rs_data[1]~18_combout\,
	combout => \rs_data[1]~25_combout\);

-- Location: FF_X16_Y13_N25
\rs_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[1]~25_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[1]~reg0_q\);

-- Location: FF_X13_Y21_N11
\rs_data[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[1]~en_q\);

-- Location: IOIBUF_X10_Y19_N8
\immediate[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(2),
	o => \immediate[2]~input_o\);

-- Location: IOIBUF_X6_Y10_N22
\lsu_out[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(2),
	o => \lsu_out[2]~input_o\);

-- Location: IOIBUF_X1_Y10_N29
\alu_out[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(2),
	o => \alu_out[2]~input_o\);

-- Location: LCCOMB_X11_Y12_N0
\reg_file~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~18_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & (\lsu_out[2]~input_o\)) # (!\mux_in[0]~input_o\ & ((\alu_out[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[1]~input_o\,
	datab => \lsu_out[2]~input_o\,
	datac => \mux_in[0]~input_o\,
	datad => \alu_out[2]~input_o\,
	combout => \reg_file~18_combout\);

-- Location: LCCOMB_X11_Y14_N26
\reg_file~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~19_combout\ = (!\reset~input_o\ & ((\reg_file~18_combout\) # ((\immediate[2]~input_o\ & \mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[2]~input_o\,
	datab => \reset~input_o\,
	datac => \reg_file~18_combout\,
	datad => \mux_in[1]~input_o\,
	combout => \reg_file~19_combout\);

-- Location: FF_X15_Y14_N25
\reg_file[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][2]~q\);

-- Location: IOIBUF_X31_Y14_N1
\block_id[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(2),
	o => \block_id[2]~input_o\);

-- Location: FF_X16_Y14_N9
\reg_file[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[2]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][2]~q\);

-- Location: FF_X11_Y14_N27
\reg_file[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file~19_combout\,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][2]~q\);

-- Location: LCCOMB_X11_Y14_N28
\reg_file[9][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[9][2]~feeder_combout\ = \reg_file~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~19_combout\,
	combout => \reg_file[9][2]~feeder_combout\);

-- Location: FF_X11_Y14_N29
\reg_file[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[9][2]~feeder_combout\,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][2]~q\);

-- Location: LCCOMB_X11_Y14_N24
\rs_data[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~26_combout\ = (\rs_address[2]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[2]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[9][2]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[8][2]~q\,
	datad => \reg_file[9][2]~q\,
	combout => \rs_data[2]~26_combout\);

-- Location: LCCOMB_X16_Y14_N30
\rs_data[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~27_combout\ = (\rs_address[2]~input_o\ & ((\rs_data[2]~26_combout\ & ((\reg_file[13][2]~q\))) # (!\rs_data[2]~26_combout\ & (\reg_file[12][2]~q\)))) # (!\rs_address[2]~input_o\ & (((\rs_data[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \reg_file[12][2]~q\,
	datac => \reg_file[13][2]~q\,
	datad => \rs_data[2]~26_combout\,
	combout => \rs_data[2]~27_combout\);

-- Location: FF_X15_Y14_N27
\reg_file[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][2]~q\);

-- Location: LCCOMB_X14_Y14_N8
\reg_file[10][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[10][2]~feeder_combout\ = \reg_file~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~19_combout\,
	combout => \reg_file[10][2]~feeder_combout\);

-- Location: FF_X14_Y14_N9
\reg_file[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[10][2]~feeder_combout\,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][2]~q\);

-- Location: LCCOMB_X15_Y14_N8
\rs_data[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~33_combout\ = (\rs_address[0]~input_o\ & (!\rs_address[2]~input_o\ & (\reg_file[11][2]~q\))) # (!\rs_address[0]~input_o\ & ((\rs_address[2]~input_o\) # ((\reg_file[10][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file[11][2]~q\,
	datad => \reg_file[10][2]~q\,
	combout => \rs_data[2]~33_combout\);

-- Location: FF_X14_Y13_N31
\reg_file[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][2]~q\);

-- Location: FF_X15_Y13_N17
\reg_file[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][2]~q\);

-- Location: FF_X13_Y13_N19
\reg_file[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][2]~q\);

-- Location: FF_X14_Y13_N29
\reg_file[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][2]~q\);

-- Location: LCCOMB_X13_Y13_N18
\rs_data[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~30_combout\ = (\rs_address[0]~input_o\ & ((\rs_address[2]~input_o\) # ((\reg_file[1][2]~q\)))) # (!\rs_address[0]~input_o\ & (!\rs_address[2]~input_o\ & ((\reg_file[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file[1][2]~q\,
	datad => \reg_file[0][2]~q\,
	combout => \rs_data[2]~30_combout\);

-- Location: LCCOMB_X15_Y13_N16
\rs_data[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~31_combout\ = (\rs_address[2]~input_o\ & ((\rs_data[2]~30_combout\ & (\reg_file[5][2]~q\)) # (!\rs_data[2]~30_combout\ & ((\reg_file[4][2]~q\))))) # (!\rs_address[2]~input_o\ & (((\rs_data[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \reg_file[5][2]~q\,
	datac => \reg_file[4][2]~q\,
	datad => \rs_data[2]~30_combout\,
	combout => \rs_data[2]~31_combout\);

-- Location: FF_X11_Y13_N11
\reg_file[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][2]~q\);

-- Location: FF_X13_Y13_N5
\reg_file[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][2]~q\);

-- Location: LCCOMB_X12_Y13_N8
\reg_file[2][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[2][2]~feeder_combout\ = \reg_file~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~19_combout\,
	combout => \reg_file[2][2]~feeder_combout\);

-- Location: FF_X12_Y13_N9
\reg_file[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[2][2]~feeder_combout\,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][2]~q\);

-- Location: LCCOMB_X13_Y13_N4
\rs_data[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~28_combout\ = (\rs_address[0]~input_o\ & ((\rs_address[2]~input_o\) # ((\reg_file[3][2]~q\)))) # (!\rs_address[0]~input_o\ & (!\rs_address[2]~input_o\ & ((\reg_file[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file[3][2]~q\,
	datad => \reg_file[2][2]~q\,
	combout => \rs_data[2]~28_combout\);

-- Location: FF_X15_Y13_N23
\reg_file[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][2]~q\);

-- Location: LCCOMB_X15_Y13_N22
\rs_data[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~29_combout\ = (\rs_data[2]~28_combout\ & ((\reg_file[7][2]~q\) # ((!\rs_address[2]~input_o\)))) # (!\rs_data[2]~28_combout\ & (((\reg_file[6][2]~q\ & \rs_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[7][2]~q\,
	datab => \rs_data[2]~28_combout\,
	datac => \reg_file[6][2]~q\,
	datad => \rs_address[2]~input_o\,
	combout => \rs_data[2]~29_combout\);

-- Location: LCCOMB_X16_Y13_N12
\rs_data[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~32_combout\ = (\rs_address[1]~input_o\ & ((\rs_address[3]~input_o\) # ((\rs_data[2]~29_combout\)))) # (!\rs_address[1]~input_o\ & (!\rs_address[3]~input_o\ & (\rs_data[2]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_data[2]~31_combout\,
	datad => \rs_data[2]~29_combout\,
	combout => \rs_data[2]~32_combout\);

-- Location: LCCOMB_X16_Y13_N26
\rs_data[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[2]~34_combout\ = (\rs_address[3]~input_o\ & ((\rs_data[2]~32_combout\ & ((\rs_data[2]~33_combout\))) # (!\rs_data[2]~32_combout\ & (\rs_data[2]~27_combout\)))) # (!\rs_address[3]~input_o\ & (((\rs_data[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_data[2]~27_combout\,
	datab => \rs_data[2]~33_combout\,
	datac => \rs_address[3]~input_o\,
	datad => \rs_data[2]~32_combout\,
	combout => \rs_data[2]~34_combout\);

-- Location: FF_X16_Y13_N27
\rs_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[2]~34_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[2]~reg0_q\);

-- Location: FF_X13_Y21_N5
\rs_data[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[2]~en_q\);

-- Location: IOIBUF_X10_Y22_N1
\immediate[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(3),
	o => \immediate[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\lsu_out[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(3),
	o => \lsu_out[3]~input_o\);

-- Location: IOIBUF_X19_Y25_N15
\alu_out[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(3),
	o => \alu_out[3]~input_o\);

-- Location: LCCOMB_X13_Y14_N30
\reg_file~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~20_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & (\lsu_out[3]~input_o\)) # (!\mux_in[0]~input_o\ & ((\alu_out[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \lsu_out[3]~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \alu_out[3]~input_o\,
	combout => \reg_file~20_combout\);

-- Location: LCCOMB_X13_Y14_N18
\reg_file~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~21_combout\ = (!\reset~input_o\ & ((\reg_file~20_combout\) # ((\immediate[3]~input_o\ & \mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[3]~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \reg_file~20_combout\,
	datad => \reset~input_o\,
	combout => \reg_file~21_combout\);

-- Location: FF_X13_Y14_N19
\reg_file[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file~21_combout\,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][3]~q\);

-- Location: IOIBUF_X1_Y10_N8
\block_id[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(3),
	o => \block_id[3]~input_o\);

-- Location: FF_X16_Y14_N11
\reg_file[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[3]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][3]~q\);

-- Location: LCCOMB_X13_Y14_N4
\rs_data[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~42_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[13][3]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[12][3]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[13][3]~q\,
	combout => \rs_data[3]~42_combout\);

-- Location: FF_X12_Y17_N17
\reg_file[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][3]~q\);

-- Location: FF_X13_Y17_N13
\reg_file[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][3]~q\);

-- Location: FF_X13_Y17_N17
\reg_file[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][3]~q\);

-- Location: FF_X12_Y17_N23
\reg_file[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][3]~q\);

-- Location: LCCOMB_X13_Y17_N18
\rs_data[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~35_combout\ = (\rs_address[1]~input_o\ & (((\rs_address[0]~input_o\) # (\reg_file[10][3]~q\)))) # (!\rs_address[1]~input_o\ & (\reg_file[8][3]~q\ & (!\rs_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[8][3]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[10][3]~q\,
	combout => \rs_data[3]~35_combout\);

-- Location: LCCOMB_X13_Y17_N12
\rs_data[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~36_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[3]~35_combout\ & ((\reg_file[11][3]~q\))) # (!\rs_data[3]~35_combout\ & (\reg_file[9][3]~q\)))) # (!\rs_address[0]~input_o\ & (((\rs_data[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[9][3]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[11][3]~q\,
	datad => \rs_data[3]~35_combout\,
	combout => \rs_data[3]~36_combout\);

-- Location: LCCOMB_X14_Y14_N26
\reg_file[6][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[6][3]~feeder_combout\ = \reg_file~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~21_combout\,
	combout => \reg_file[6][3]~feeder_combout\);

-- Location: FF_X14_Y14_N27
\reg_file[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[6][3]~feeder_combout\,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][3]~q\);

-- Location: FF_X11_Y13_N1
\reg_file[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][3]~q\);

-- Location: FF_X15_Y13_N31
\reg_file[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][3]~q\);

-- Location: FF_X14_Y13_N13
\reg_file[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][3]~q\);

-- Location: LCCOMB_X14_Y13_N12
\rs_data[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~37_combout\ = (\rs_address[0]~input_o\ & (((\reg_file[5][3]~q\) # (\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & (\reg_file[4][3]~q\ & ((!\rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[4][3]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[5][3]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \rs_data[3]~37_combout\);

-- Location: LCCOMB_X14_Y14_N20
\rs_data[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~38_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[3]~37_combout\ & ((\reg_file[7][3]~q\))) # (!\rs_data[3]~37_combout\ & (\reg_file[6][3]~q\)))) # (!\rs_address[1]~input_o\ & (((\rs_data[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[6][3]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[7][3]~q\,
	datad => \rs_data[3]~37_combout\,
	combout => \rs_data[3]~38_combout\);

-- Location: FF_X13_Y13_N11
\reg_file[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][3]~q\);

-- Location: FF_X13_Y13_N17
\reg_file[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][3]~q\);

-- Location: LCCOMB_X12_Y13_N6
\reg_file[2][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[2][3]~feeder_combout\ = \reg_file~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~21_combout\,
	combout => \reg_file[2][3]~feeder_combout\);

-- Location: FF_X12_Y13_N7
\reg_file[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[2][3]~feeder_combout\,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][3]~q\);

-- Location: FF_X14_Y13_N11
\reg_file[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][3]~q\);

-- Location: LCCOMB_X12_Y13_N28
\rs_data[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~39_combout\ = (\rs_address[0]~input_o\ & (((\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file[2][3]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[2][3]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[0][3]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \rs_data[3]~39_combout\);

-- Location: LCCOMB_X13_Y13_N16
\rs_data[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~40_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[3]~39_combout\ & (\reg_file[3][3]~q\)) # (!\rs_data[3]~39_combout\ & ((\reg_file[1][3]~q\))))) # (!\rs_address[0]~input_o\ & (((\rs_data[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[3][3]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[1][3]~q\,
	datad => \rs_data[3]~39_combout\,
	combout => \rs_data[3]~40_combout\);

-- Location: LCCOMB_X13_Y14_N12
\rs_data[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~41_combout\ = (\rs_address[3]~input_o\ & (\rs_address[2]~input_o\)) # (!\rs_address[3]~input_o\ & ((\rs_address[2]~input_o\ & (\rs_data[3]~38_combout\)) # (!\rs_address[2]~input_o\ & ((\rs_data[3]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_address[2]~input_o\,
	datac => \rs_data[3]~38_combout\,
	datad => \rs_data[3]~40_combout\,
	combout => \rs_data[3]~41_combout\);

-- Location: LCCOMB_X13_Y14_N26
\rs_data[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[3]~43_combout\ = (\rs_address[3]~input_o\ & ((\rs_data[3]~41_combout\ & (\rs_data[3]~42_combout\)) # (!\rs_data[3]~41_combout\ & ((\rs_data[3]~36_combout\))))) # (!\rs_address[3]~input_o\ & (((\rs_data[3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_data[3]~42_combout\,
	datac => \rs_data[3]~36_combout\,
	datad => \rs_data[3]~41_combout\,
	combout => \rs_data[3]~43_combout\);

-- Location: FF_X13_Y14_N27
\rs_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[3]~43_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[3]~reg0_q\);

-- Location: FF_X13_Y21_N23
\rs_data[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[3]~en_q\);

-- Location: IOIBUF_X10_Y15_N22
\immediate[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(4),
	o => \immediate[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\lsu_out[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(4),
	o => \lsu_out[4]~input_o\);

-- Location: IOIBUF_X3_Y10_N29
\alu_out[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(4),
	o => \alu_out[4]~input_o\);

-- Location: LCCOMB_X13_Y14_N16
\reg_file~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~22_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & (\lsu_out[4]~input_o\)) # (!\mux_in[0]~input_o\ & ((\alu_out[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \lsu_out[4]~input_o\,
	datad => \alu_out[4]~input_o\,
	combout => \reg_file~22_combout\);

-- Location: LCCOMB_X13_Y14_N8
\reg_file~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~23_combout\ = (!\reset~input_o\ & ((\reg_file~22_combout\) # ((\immediate[4]~input_o\ & \mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[4]~input_o\,
	datab => \reset~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \reg_file~22_combout\,
	combout => \reg_file~23_combout\);

-- Location: FF_X13_Y14_N9
\reg_file[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file~23_combout\,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][4]~q\);

-- Location: IOIBUF_X1_Y10_N22
\block_id[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(4),
	o => \block_id[4]~input_o\);

-- Location: FF_X16_Y14_N25
\reg_file[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[4]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][4]~q\);

-- Location: LCCOMB_X13_Y14_N2
\rs_data[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~51_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[13][4]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[12][4]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[13][4]~q\,
	combout => \rs_data[4]~51_combout\);

-- Location: FF_X12_Y17_N5
\reg_file[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][4]~q\);

-- Location: FF_X13_Y17_N29
\reg_file[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][4]~q\);

-- Location: LCCOMB_X14_Y17_N4
\reg_file[9][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[9][4]~feeder_combout\ = \reg_file~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~23_combout\,
	combout => \reg_file[9][4]~feeder_combout\);

-- Location: FF_X14_Y17_N5
\reg_file[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[9][4]~feeder_combout\,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][4]~q\);

-- Location: FF_X13_Y17_N23
\reg_file[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][4]~q\);

-- Location: LCCOMB_X14_Y17_N22
\rs_data[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~44_combout\ = (\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\) # ((\reg_file[9][4]~q\)))) # (!\rs_address[0]~input_o\ & (!\rs_address[1]~input_o\ & ((\reg_file[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[9][4]~q\,
	datad => \reg_file[8][4]~q\,
	combout => \rs_data[4]~44_combout\);

-- Location: LCCOMB_X13_Y17_N28
\rs_data[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~45_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[4]~44_combout\ & ((\reg_file[11][4]~q\))) # (!\rs_data[4]~44_combout\ & (\reg_file[10][4]~q\)))) # (!\rs_address[1]~input_o\ & (((\rs_data[4]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[10][4]~q\,
	datac => \reg_file[11][4]~q\,
	datad => \rs_data[4]~44_combout\,
	combout => \rs_data[4]~45_combout\);

-- Location: FF_X13_Y13_N3
\reg_file[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][4]~q\);

-- Location: FF_X12_Y13_N19
\reg_file[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][4]~q\);

-- Location: FF_X13_Y13_N25
\reg_file[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][4]~q\);

-- Location: FF_X14_Y13_N23
\reg_file[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][4]~q\);

-- Location: LCCOMB_X13_Y13_N24
\rs_data[4]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~48_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[1][4]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[1][4]~q\,
	datad => \reg_file[0][4]~q\,
	combout => \rs_data[4]~48_combout\);

-- Location: LCCOMB_X12_Y13_N18
\rs_data[4]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~49_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[4]~48_combout\ & (\reg_file[3][4]~q\)) # (!\rs_data[4]~48_combout\ & ((\reg_file[2][4]~q\))))) # (!\rs_address[1]~input_o\ & (((\rs_data[4]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[3][4]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[2][4]~q\,
	datad => \rs_data[4]~48_combout\,
	combout => \rs_data[4]~49_combout\);

-- Location: FF_X11_Y13_N3
\reg_file[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][4]~q\);

-- Location: FF_X14_Y13_N5
\reg_file[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][4]~q\);

-- Location: FF_X15_Y13_N5
\reg_file[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][4]~q\);

-- Location: FF_X15_Y13_N3
\reg_file[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][4]~q\);

-- Location: LCCOMB_X15_Y13_N4
\rs_data[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~46_combout\ = (\rs_address[0]~input_o\ & (\rs_address[1]~input_o\)) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file[6][4]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[6][4]~q\,
	datad => \reg_file[4][4]~q\,
	combout => \rs_data[4]~46_combout\);

-- Location: LCCOMB_X14_Y13_N4
\rs_data[4]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~47_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[4]~46_combout\ & (\reg_file[7][4]~q\)) # (!\rs_data[4]~46_combout\ & ((\reg_file[5][4]~q\))))) # (!\rs_address[0]~input_o\ & (((\rs_data[4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file[7][4]~q\,
	datac => \reg_file[5][4]~q\,
	datad => \rs_data[4]~46_combout\,
	combout => \rs_data[4]~47_combout\);

-- Location: LCCOMB_X13_Y14_N10
\rs_data[4]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~50_combout\ = (\rs_address[3]~input_o\ & (\rs_address[2]~input_o\)) # (!\rs_address[3]~input_o\ & ((\rs_address[2]~input_o\ & ((\rs_data[4]~47_combout\))) # (!\rs_address[2]~input_o\ & (\rs_data[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_address[2]~input_o\,
	datac => \rs_data[4]~49_combout\,
	datad => \rs_data[4]~47_combout\,
	combout => \rs_data[4]~50_combout\);

-- Location: LCCOMB_X13_Y14_N24
\rs_data[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[4]~52_combout\ = (\rs_address[3]~input_o\ & ((\rs_data[4]~50_combout\ & (\rs_data[4]~51_combout\)) # (!\rs_data[4]~50_combout\ & ((\rs_data[4]~45_combout\))))) # (!\rs_address[3]~input_o\ & (((\rs_data[4]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[3]~input_o\,
	datab => \rs_data[4]~51_combout\,
	datac => \rs_data[4]~45_combout\,
	datad => \rs_data[4]~50_combout\,
	combout => \rs_data[4]~52_combout\);

-- Location: FF_X13_Y14_N25
\rs_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[4]~52_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[4]~reg0_q\);

-- Location: FF_X13_Y21_N21
\rs_data[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[4]~en_q\);

-- Location: IOIBUF_X17_Y25_N29
\block_id[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(5),
	o => \block_id[5]~input_o\);

-- Location: FF_X16_Y14_N7
\reg_file[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[5]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][5]~q\);

-- Location: IOIBUF_X15_Y25_N22
\alu_out[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(5),
	o => \alu_out[5]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\lsu_out[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(5),
	o => \lsu_out[5]~input_o\);

-- Location: LCCOMB_X12_Y17_N18
\reg_file~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~24_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & ((\lsu_out[5]~input_o\))) # (!\mux_in[0]~input_o\ & (\alu_out[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[1]~input_o\,
	datab => \mux_in[0]~input_o\,
	datac => \alu_out[5]~input_o\,
	datad => \lsu_out[5]~input_o\,
	combout => \reg_file~24_combout\);

-- Location: IOIBUF_X17_Y25_N15
\immediate[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(5),
	o => \immediate[5]~input_o\);

-- Location: LCCOMB_X16_Y13_N8
\reg_file~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~25_combout\ = (!\reset~input_o\ & ((\reg_file~24_combout\) # ((\mux_in[1]~input_o\ & \immediate[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file~24_combout\,
	datab => \reset~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \immediate[5]~input_o\,
	combout => \reg_file~25_combout\);

-- Location: LCCOMB_X16_Y13_N28
\reg_file[12][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[12][5]~feeder_combout\ = \reg_file~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file~25_combout\,
	combout => \reg_file[12][5]~feeder_combout\);

-- Location: FF_X16_Y13_N29
\reg_file[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[12][5]~feeder_combout\,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][5]~q\);

-- Location: LCCOMB_X16_Y13_N10
\rs_data[5]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~60_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[13][5]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[13][5]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[12][5]~q\,
	combout => \rs_data[5]~60_combout\);

-- Location: FF_X11_Y13_N17
\reg_file[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][5]~q\);

-- Location: FF_X15_Y13_N1
\reg_file[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][5]~q\);

-- Location: FF_X15_Y13_N15
\reg_file[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][5]~q\);

-- Location: FF_X14_Y13_N9
\reg_file[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][5]~q\);

-- Location: LCCOMB_X14_Y13_N8
\rs_data[5]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~53_combout\ = (\rs_address[1]~input_o\ & (((\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[5][5]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[4][5]~q\,
	datac => \reg_file[5][5]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \rs_data[5]~53_combout\);

-- Location: LCCOMB_X11_Y13_N14
\rs_data[5]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~54_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[5]~53_combout\ & (\reg_file[7][5]~q\)) # (!\rs_data[5]~53_combout\ & ((\reg_file[6][5]~q\))))) # (!\rs_address[1]~input_o\ & (((\rs_data[5]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[7][5]~q\,
	datac => \reg_file[6][5]~q\,
	datad => \rs_data[5]~53_combout\,
	combout => \rs_data[5]~54_combout\);

-- Location: FF_X13_Y13_N27
\reg_file[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][5]~q\);

-- Location: FF_X13_Y13_N1
\reg_file[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][5]~q\);

-- Location: FF_X14_Y13_N19
\reg_file[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][5]~q\);

-- Location: FF_X12_Y13_N11
\reg_file[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][5]~q\);

-- Location: LCCOMB_X12_Y13_N10
\rs_data[5]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~57_combout\ = (\rs_address[0]~input_o\ & (((\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & ((\reg_file[2][5]~q\))) # (!\rs_address[1]~input_o\ & (\reg_file[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[0][5]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[2][5]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \rs_data[5]~57_combout\);

-- Location: LCCOMB_X12_Y13_N20
\rs_data[5]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~58_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[5]~57_combout\ & (\reg_file[3][5]~q\)) # (!\rs_data[5]~57_combout\ & ((\reg_file[1][5]~q\))))) # (!\rs_address[0]~input_o\ & (((\rs_data[5]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[3][5]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[1][5]~q\,
	datad => \rs_data[5]~57_combout\,
	combout => \rs_data[5]~58_combout\);

-- Location: LCCOMB_X12_Y17_N14
\reg_file[10][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[10][5]~feeder_combout\ = \reg_file~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~25_combout\,
	combout => \reg_file[10][5]~feeder_combout\);

-- Location: FF_X12_Y17_N15
\reg_file[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[10][5]~feeder_combout\,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][5]~q\);

-- Location: FF_X13_Y17_N27
\reg_file[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][5]~q\);

-- Location: LCCOMB_X12_Y17_N8
\rs_data[5]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~55_combout\ = (\rs_address[0]~input_o\ & (\rs_address[1]~input_o\)) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file[10][5]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[10][5]~q\,
	datad => \reg_file[8][5]~q\,
	combout => \rs_data[5]~55_combout\);

-- Location: FF_X12_Y13_N13
\reg_file[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][5]~q\);

-- Location: FF_X13_Y17_N21
\reg_file[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][5]~q\);

-- Location: LCCOMB_X12_Y13_N12
\rs_data[5]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~56_combout\ = (\rs_data[5]~55_combout\ & (((\reg_file[11][5]~q\)) # (!\rs_address[0]~input_o\))) # (!\rs_data[5]~55_combout\ & (\rs_address[0]~input_o\ & (\reg_file[9][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_data[5]~55_combout\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[9][5]~q\,
	datad => \reg_file[11][5]~q\,
	combout => \rs_data[5]~56_combout\);

-- Location: LCCOMB_X16_Y13_N18
\rs_data[5]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~59_combout\ = (\rs_address[2]~input_o\ & (\rs_address[3]~input_o\)) # (!\rs_address[2]~input_o\ & ((\rs_address[3]~input_o\ & ((\rs_data[5]~56_combout\))) # (!\rs_address[3]~input_o\ & (\rs_data[5]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_data[5]~58_combout\,
	datad => \rs_data[5]~56_combout\,
	combout => \rs_data[5]~59_combout\);

-- Location: LCCOMB_X16_Y13_N0
\rs_data[5]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~61_combout\ = (\rs_address[2]~input_o\ & ((\rs_data[5]~59_combout\ & (\rs_data[5]~60_combout\)) # (!\rs_data[5]~59_combout\ & ((\rs_data[5]~54_combout\))))) # (!\rs_address[2]~input_o\ & (((\rs_data[5]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_data[5]~60_combout\,
	datab => \rs_address[2]~input_o\,
	datac => \rs_data[5]~54_combout\,
	datad => \rs_data[5]~59_combout\,
	combout => \rs_data[5]~61_combout\);

-- Location: FF_X16_Y13_N1
\rs_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[5]~61_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[5]~reg0_q\);

-- Location: LCCOMB_X14_Y20_N24
\rs_data[5]~enfeeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[5]~enfeeder_combout\ = \rt_data[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_data[0]~9_combout\,
	combout => \rs_data[5]~enfeeder_combout\);

-- Location: FF_X14_Y20_N25
\rs_data[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[5]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[5]~en_q\);

-- Location: IOIBUF_X10_Y20_N15
\immediate[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(6),
	o => \immediate[6]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\alu_out[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(6),
	o => \alu_out[6]~input_o\);

-- Location: IOIBUF_X10_Y17_N1
\lsu_out[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(6),
	o => \lsu_out[6]~input_o\);

-- Location: LCCOMB_X11_Y17_N12
\reg_file~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~26_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & ((\lsu_out[6]~input_o\))) # (!\mux_in[0]~input_o\ & (\alu_out[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_in[0]~input_o\,
	datab => \alu_out[6]~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \lsu_out[6]~input_o\,
	combout => \reg_file~26_combout\);

-- Location: LCCOMB_X11_Y17_N30
\reg_file~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~27_combout\ = (!\reset~input_o\ & ((\reg_file~26_combout\) # ((\immediate[6]~input_o\ & \mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \immediate[6]~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \reg_file~26_combout\,
	combout => \reg_file~27_combout\);

-- Location: LCCOMB_X13_Y17_N30
\reg_file[11][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[11][6]~feeder_combout\ = \reg_file~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~27_combout\,
	combout => \reg_file[11][6]~feeder_combout\);

-- Location: FF_X13_Y17_N31
\reg_file[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[11][6]~feeder_combout\,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][6]~q\);

-- Location: FF_X12_Y17_N11
\reg_file[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][6]~q\);

-- Location: FF_X14_Y17_N15
\reg_file[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][6]~q\);

-- Location: FF_X14_Y17_N17
\reg_file[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][6]~q\);

-- Location: LCCOMB_X14_Y17_N12
\rs_data[6]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~62_combout\ = (\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\) # ((\reg_file[9][6]~q\)))) # (!\rs_address[0]~input_o\ & (!\rs_address[1]~input_o\ & (\reg_file[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[8][6]~q\,
	datad => \reg_file[9][6]~q\,
	combout => \rs_data[6]~62_combout\);

-- Location: LCCOMB_X14_Y17_N10
\rs_data[6]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~63_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[6]~62_combout\ & (\reg_file[11][6]~q\)) # (!\rs_data[6]~62_combout\ & ((\reg_file[10][6]~q\))))) # (!\rs_address[1]~input_o\ & (((\rs_data[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[11][6]~q\,
	datac => \reg_file[10][6]~q\,
	datad => \rs_data[6]~62_combout\,
	combout => \rs_data[6]~63_combout\);

-- Location: FF_X16_Y12_N25
\reg_file[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][6]~q\);

-- Location: IOIBUF_X15_Y0_N1
\block_id[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(6),
	o => \block_id[6]~input_o\);

-- Location: FF_X15_Y12_N9
\reg_file[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[6]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][6]~q\);

-- Location: LCCOMB_X16_Y12_N10
\rs_data[6]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~69_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[13][6]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[12][6]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[13][6]~q\,
	combout => \rs_data[6]~69_combout\);

-- Location: FF_X11_Y13_N29
\reg_file[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][6]~q\);

-- Location: FF_X14_Y13_N21
\reg_file[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][6]~q\);

-- Location: FF_X15_Y13_N25
\reg_file[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][6]~q\);

-- Location: FF_X15_Y13_N11
\reg_file[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][6]~q\);

-- Location: LCCOMB_X15_Y13_N24
\rs_data[6]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~64_combout\ = (\rs_address[0]~input_o\ & (\rs_address[1]~input_o\)) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file[6][6]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[6][6]~q\,
	datad => \reg_file[4][6]~q\,
	combout => \rs_data[6]~64_combout\);

-- Location: LCCOMB_X14_Y13_N20
\rs_data[6]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~65_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[6]~64_combout\ & (\reg_file[7][6]~q\)) # (!\rs_data[6]~64_combout\ & ((\reg_file[5][6]~q\))))) # (!\rs_address[0]~input_o\ & (((\rs_data[6]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[7][6]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[5][6]~q\,
	datad => \rs_data[6]~64_combout\,
	combout => \rs_data[6]~65_combout\);

-- Location: FF_X13_Y13_N7
\reg_file[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][6]~q\);

-- Location: FF_X13_Y13_N13
\reg_file[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][6]~q\);

-- Location: FF_X14_Y13_N7
\reg_file[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][6]~q\);

-- Location: LCCOMB_X13_Y13_N12
\rs_data[6]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~66_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file[1][6]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file[1][6]~q\,
	datad => \reg_file[0][6]~q\,
	combout => \rs_data[6]~66_combout\);

-- Location: FF_X12_Y13_N15
\reg_file[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][6]~q\);

-- Location: LCCOMB_X12_Y13_N14
\rs_data[6]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~67_combout\ = (\rs_data[6]~66_combout\ & ((\reg_file[3][6]~q\) # ((!\rs_address[1]~input_o\)))) # (!\rs_data[6]~66_combout\ & (((\reg_file[2][6]~q\ & \rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[3][6]~q\,
	datab => \rs_data[6]~66_combout\,
	datac => \reg_file[2][6]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \rs_data[6]~67_combout\);

-- Location: LCCOMB_X16_Y13_N20
\rs_data[6]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~68_combout\ = (\rs_address[2]~input_o\ & ((\rs_address[3]~input_o\) # ((\rs_data[6]~65_combout\)))) # (!\rs_address[2]~input_o\ & (!\rs_address[3]~input_o\ & ((\rs_data[6]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_data[6]~65_combout\,
	datad => \rs_data[6]~67_combout\,
	combout => \rs_data[6]~68_combout\);

-- Location: LCCOMB_X16_Y13_N2
\rs_data[6]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[6]~70_combout\ = (\rs_address[3]~input_o\ & ((\rs_data[6]~68_combout\ & ((\rs_data[6]~69_combout\))) # (!\rs_data[6]~68_combout\ & (\rs_data[6]~63_combout\)))) # (!\rs_address[3]~input_o\ & (((\rs_data[6]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_data[6]~63_combout\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_data[6]~69_combout\,
	datad => \rs_data[6]~68_combout\,
	combout => \rs_data[6]~70_combout\);

-- Location: FF_X16_Y13_N3
\rs_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[6]~70_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[6]~reg0_q\);

-- Location: FF_X13_Y21_N7
\rs_data[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[6]~en_q\);

-- Location: IOIBUF_X3_Y10_N1
\alu_out[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_out(7),
	o => \alu_out[7]~input_o\);

-- Location: IOIBUF_X17_Y25_N1
\lsu_out[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lsu_out(7),
	o => \lsu_out[7]~input_o\);

-- Location: LCCOMB_X16_Y13_N22
\reg_file~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~28_combout\ = (!\mux_in[1]~input_o\ & ((\mux_in[0]~input_o\ & ((\lsu_out[7]~input_o\))) # (!\mux_in[0]~input_o\ & (\alu_out[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out[7]~input_o\,
	datab => \mux_in[1]~input_o\,
	datac => \mux_in[0]~input_o\,
	datad => \lsu_out[7]~input_o\,
	combout => \reg_file~28_combout\);

-- Location: IOIBUF_X10_Y20_N8
\immediate[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(7),
	o => \immediate[7]~input_o\);

-- Location: LCCOMB_X16_Y13_N4
\reg_file~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file~29_combout\ = (!\reset~input_o\ & ((\reg_file~28_combout\) # ((\mux_in[1]~input_o\ & \immediate[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file~28_combout\,
	datab => \reset~input_o\,
	datac => \mux_in[1]~input_o\,
	datad => \immediate[7]~input_o\,
	combout => \reg_file~29_combout\);

-- Location: FF_X16_Y13_N5
\reg_file[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file~29_combout\,
	ena => \reg_file[12][5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[12][7]~q\);

-- Location: IOIBUF_X10_Y22_N15
\block_id[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_block_id(7),
	o => \block_id[7]~input_o\);

-- Location: FF_X16_Y14_N21
\reg_file[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \block_id[7]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file[13][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[13][7]~q\);

-- Location: LCCOMB_X16_Y13_N14
\rs_data[7]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~78_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file[13][7]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file[12][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[12][7]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file[13][7]~q\,
	combout => \rs_data[7]~78_combout\);

-- Location: FF_X15_Y13_N9
\reg_file[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[6][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[6][7]~q\);

-- Location: LCCOMB_X17_Y13_N4
\reg_file[7][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[7][7]~feeder_combout\ = \reg_file~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~29_combout\,
	combout => \reg_file[7][7]~feeder_combout\);

-- Location: FF_X17_Y13_N5
\reg_file[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[7][7]~feeder_combout\,
	ena => \reg_file[7][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[7][7]~q\);

-- Location: FF_X15_Y13_N27
\reg_file[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[4][7]~q\);

-- Location: FF_X14_Y13_N1
\reg_file[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[5][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[5][7]~q\);

-- Location: LCCOMB_X15_Y13_N12
\rs_data[7]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~71_combout\ = (\rs_address[0]~input_o\ & (((\reg_file[5][7]~q\) # (\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & (\reg_file[4][7]~q\ & ((!\rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file[4][7]~q\,
	datac => \reg_file[5][7]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \rs_data[7]~71_combout\);

-- Location: LCCOMB_X17_Y13_N30
\rs_data[7]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~72_combout\ = (\rs_address[1]~input_o\ & ((\rs_data[7]~71_combout\ & ((\reg_file[7][7]~q\))) # (!\rs_data[7]~71_combout\ & (\reg_file[6][7]~q\)))) # (!\rs_address[1]~input_o\ & (((\rs_data[7]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[6][7]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[7][7]~q\,
	datad => \rs_data[7]~71_combout\,
	combout => \rs_data[7]~72_combout\);

-- Location: FF_X12_Y17_N25
\reg_file[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[9][4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[9][7]~q\);

-- Location: FF_X13_Y17_N15
\reg_file[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[11][1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[11][7]~q\);

-- Location: FF_X12_Y17_N31
\reg_file[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[10][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[10][7]~q\);

-- Location: FF_X13_Y17_N5
\reg_file[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[8][7]~q\);

-- Location: LCCOMB_X12_Y17_N20
\rs_data[7]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~73_combout\ = (\rs_address[0]~input_o\ & (\rs_address[1]~input_o\)) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file[10][7]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file[10][7]~q\,
	datad => \reg_file[8][7]~q\,
	combout => \rs_data[7]~73_combout\);

-- Location: LCCOMB_X12_Y17_N6
\rs_data[7]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~74_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[7]~73_combout\ & ((\reg_file[11][7]~q\))) # (!\rs_data[7]~73_combout\ & (\reg_file[9][7]~q\)))) # (!\rs_address[0]~input_o\ & (((\rs_data[7]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file[9][7]~q\,
	datac => \reg_file[11][7]~q\,
	datad => \rs_data[7]~73_combout\,
	combout => \rs_data[7]~74_combout\);

-- Location: FF_X13_Y13_N15
\reg_file[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[3][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[3][7]~q\);

-- Location: FF_X13_Y13_N9
\reg_file[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[1][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[1][7]~q\);

-- Location: LCCOMB_X12_Y13_N4
\reg_file[2][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file[2][7]~feeder_combout\ = \reg_file~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file~29_combout\,
	combout => \reg_file[2][7]~feeder_combout\);

-- Location: FF_X12_Y13_N5
\reg_file[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file[2][7]~feeder_combout\,
	ena => \reg_file[2][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[2][7]~q\);

-- Location: FF_X14_Y13_N27
\reg_file[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file[0][4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file[0][7]~q\);

-- Location: LCCOMB_X12_Y13_N30
\rs_data[7]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~75_combout\ = (\rs_address[1]~input_o\ & ((\reg_file[2][7]~q\) # ((\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & (((\reg_file[0][7]~q\ & !\rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file[2][7]~q\,
	datac => \reg_file[0][7]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \rs_data[7]~75_combout\);

-- Location: LCCOMB_X13_Y13_N8
\rs_data[7]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~76_combout\ = (\rs_address[0]~input_o\ & ((\rs_data[7]~75_combout\ & (\reg_file[3][7]~q\)) # (!\rs_data[7]~75_combout\ & ((\reg_file[1][7]~q\))))) # (!\rs_address[0]~input_o\ & (((\rs_data[7]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file[3][7]~q\,
	datac => \reg_file[1][7]~q\,
	datad => \rs_data[7]~75_combout\,
	combout => \rs_data[7]~76_combout\);

-- Location: LCCOMB_X16_Y13_N6
\rs_data[7]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~77_combout\ = (\rs_address[2]~input_o\ & (\rs_address[3]~input_o\)) # (!\rs_address[2]~input_o\ & ((\rs_address[3]~input_o\ & (\rs_data[7]~74_combout\)) # (!\rs_address[3]~input_o\ & ((\rs_data[7]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_data[7]~74_combout\,
	datad => \rs_data[7]~76_combout\,
	combout => \rs_data[7]~77_combout\);

-- Location: LCCOMB_X16_Y13_N16
\rs_data[7]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rs_data[7]~79_combout\ = (\rs_address[2]~input_o\ & ((\rs_data[7]~77_combout\ & (\rs_data[7]~78_combout\)) # (!\rs_data[7]~77_combout\ & ((\rs_data[7]~72_combout\))))) # (!\rs_address[2]~input_o\ & (((\rs_data[7]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_data[7]~78_combout\,
	datac => \rs_data[7]~72_combout\,
	datad => \rs_data[7]~77_combout\,
	combout => \rs_data[7]~79_combout\);

-- Location: FF_X16_Y13_N17
\rs_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs_data[7]~79_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[7]~reg0_q\);

-- Location: FF_X13_Y21_N17
\rs_data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs_data[7]~en_q\);

-- Location: IOIBUF_X10_Y21_N1
\rt_address[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_address(0),
	o => \rt_address[0]~input_o\);

-- Location: IOIBUF_X10_Y16_N8
\rt_address[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_address(1),
	o => \rt_address[1]~input_o\);

-- Location: LCCOMB_X16_Y14_N16
\rt_data[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~17_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[13][0]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[13][0]~q\,
	datac => \rt_address[1]~input_o\,
	datad => \reg_file[12][0]~q\,
	combout => \rt_data[0]~17_combout\);

-- Location: IOIBUF_X1_Y10_N15
\rt_address[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_address(3),
	o => \rt_address[3]~input_o\);

-- Location: LCCOMB_X11_Y13_N22
\rt_data[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~10_combout\ = (\rt_address[0]~input_o\ & (((\rt_address[1]~input_o\) # (\reg_file[9][0]~q\)))) # (!\rt_address[0]~input_o\ & (\reg_file[8][0]~q\ & (!\rt_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[8][0]~q\,
	datac => \rt_address[1]~input_o\,
	datad => \reg_file[9][0]~q\,
	combout => \rt_data[0]~10_combout\);

-- Location: LCCOMB_X12_Y17_N0
\rt_data[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~11_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[0]~10_combout\ & (\reg_file[11][0]~q\)) # (!\rt_data[0]~10_combout\ & ((\reg_file[10][0]~q\))))) # (!\rt_address[1]~input_o\ & (((\rt_data[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file[11][0]~q\,
	datac => \reg_file[10][0]~q\,
	datad => \rt_data[0]~10_combout\,
	combout => \rt_data[0]~11_combout\);

-- Location: IOIBUF_X10_Y15_N1
\rt_address[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_address(2),
	o => \rt_address[2]~input_o\);

-- Location: LCCOMB_X15_Y13_N28
\rt_data[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~12_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[5][0]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[4][0]~q\,
	datad => \reg_file[5][0]~q\,
	combout => \rt_data[0]~12_combout\);

-- Location: LCCOMB_X15_Y13_N18
\rt_data[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~13_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[0]~12_combout\ & ((\reg_file[7][0]~q\))) # (!\rt_data[0]~12_combout\ & (\reg_file[6][0]~q\)))) # (!\rt_address[1]~input_o\ & (((\rt_data[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[6][0]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[7][0]~q\,
	datad => \rt_data[0]~12_combout\,
	combout => \rt_data[0]~13_combout\);

-- Location: LCCOMB_X14_Y13_N2
\rt_data[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~14_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[1][0]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][0]~q\,
	datad => \reg_file[1][0]~q\,
	combout => \rt_data[0]~14_combout\);

-- Location: LCCOMB_X13_Y13_N30
\rt_data[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~15_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[0]~14_combout\ & ((\reg_file[3][0]~q\))) # (!\rt_data[0]~14_combout\ & (\reg_file[2][0]~q\)))) # (!\rt_address[1]~input_o\ & (((\rt_data[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file[2][0]~q\,
	datac => \reg_file[3][0]~q\,
	datad => \rt_data[0]~14_combout\,
	combout => \rt_data[0]~15_combout\);

-- Location: LCCOMB_X12_Y14_N12
\rt_data[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~16_combout\ = (\rt_address[3]~input_o\ & (\rt_address[2]~input_o\)) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\rt_data[0]~13_combout\)) # (!\rt_address[2]~input_o\ & ((\rt_data[0]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[0]~13_combout\,
	datad => \rt_data[0]~15_combout\,
	combout => \rt_data[0]~16_combout\);

-- Location: LCCOMB_X12_Y14_N24
\rt_data[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[0]~18_combout\ = (\rt_address[3]~input_o\ & ((\rt_data[0]~16_combout\ & (\rt_data[0]~17_combout\)) # (!\rt_data[0]~16_combout\ & ((\rt_data[0]~11_combout\))))) # (!\rt_address[3]~input_o\ & (((\rt_data[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[0]~17_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_data[0]~11_combout\,
	datad => \rt_data[0]~16_combout\,
	combout => \rt_data[0]~18_combout\);

-- Location: FF_X12_Y14_N25
\rt_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[0]~18_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[0]~reg0_q\);

-- Location: FF_X13_Y21_N15
\rt_data[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[0]~en_q\);

-- Location: LCCOMB_X16_Y14_N14
\rt_data[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~26_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[13][1]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[12][1]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \rt_address[0]~input_o\,
	datad => \reg_file[13][1]~q\,
	combout => \rt_data[1]~26_combout\);

-- Location: LCCOMB_X11_Y13_N4
\rt_data[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~19_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\) # ((\reg_file[9][1]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[1]~input_o\ & (\reg_file[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[8][1]~q\,
	datad => \reg_file[9][1]~q\,
	combout => \rt_data[1]~19_combout\);

-- Location: LCCOMB_X12_Y17_N28
\rt_data[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~20_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[1]~19_combout\ & (\reg_file[11][1]~q\)) # (!\rt_data[1]~19_combout\ & ((\reg_file[10][1]~q\))))) # (!\rt_address[1]~input_o\ & (((\rt_data[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[11][1]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[10][1]~q\,
	datad => \rt_data[1]~19_combout\,
	combout => \rt_data[1]~20_combout\);

-- Location: LCCOMB_X14_Y13_N14
\rt_data[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~23_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[1][1]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][1]~q\,
	datad => \reg_file[1][1]~q\,
	combout => \rt_data[1]~23_combout\);

-- Location: LCCOMB_X13_Y13_N22
\rt_data[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~24_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[1]~23_combout\ & ((\reg_file[3][1]~q\))) # (!\rt_data[1]~23_combout\ & (\reg_file[2][1]~q\)))) # (!\rt_address[1]~input_o\ & (((\rt_data[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[2][1]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[3][1]~q\,
	datad => \rt_data[1]~23_combout\,
	combout => \rt_data[1]~24_combout\);

-- Location: LCCOMB_X15_Y13_N20
\rt_data[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~21_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[6][1]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[4][1]~q\,
	datad => \reg_file[6][1]~q\,
	combout => \rt_data[1]~21_combout\);

-- Location: LCCOMB_X12_Y13_N0
\rt_data[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~22_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[1]~21_combout\ & (\reg_file[7][1]~q\)) # (!\rt_data[1]~21_combout\ & ((\reg_file[5][1]~q\))))) # (!\rt_address[0]~input_o\ & (\rt_data[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_data[1]~21_combout\,
	datac => \reg_file[7][1]~q\,
	datad => \reg_file[5][1]~q\,
	combout => \rt_data[1]~22_combout\);

-- Location: LCCOMB_X12_Y14_N18
\rt_data[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~25_combout\ = (\rt_address[3]~input_o\ & (\rt_address[2]~input_o\)) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & ((\rt_data[1]~22_combout\))) # (!\rt_address[2]~input_o\ & (\rt_data[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[1]~24_combout\,
	datad => \rt_data[1]~22_combout\,
	combout => \rt_data[1]~25_combout\);

-- Location: LCCOMB_X12_Y14_N26
\rt_data[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[1]~27_combout\ = (\rt_address[3]~input_o\ & ((\rt_data[1]~25_combout\ & (\rt_data[1]~26_combout\)) # (!\rt_data[1]~25_combout\ & ((\rt_data[1]~20_combout\))))) # (!\rt_address[3]~input_o\ & (((\rt_data[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_data[1]~26_combout\,
	datac => \rt_data[1]~20_combout\,
	datad => \rt_data[1]~25_combout\,
	combout => \rt_data[1]~27_combout\);

-- Location: FF_X12_Y14_N27
\rt_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[1]~27_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[1]~reg0_q\);

-- Location: FF_X13_Y21_N25
\rt_data[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[1]~en_q\);

-- Location: LCCOMB_X15_Y14_N26
\rt_data[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~35_combout\ = (\rt_address[2]~input_o\ & (!\rt_address[0]~input_o\)) # (!\rt_address[2]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[11][2]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[10][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[11][2]~q\,
	datad => \reg_file[10][2]~q\,
	combout => \rt_data[2]~35_combout\);

-- Location: LCCOMB_X11_Y14_N30
\rt_data[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~28_combout\ = (\rt_address[2]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[2]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[9][2]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[8][2]~q\,
	datad => \reg_file[9][2]~q\,
	combout => \rt_data[2]~28_combout\);

-- Location: LCCOMB_X15_Y14_N10
\rt_data[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~29_combout\ = (\rt_address[2]~input_o\ & ((\rt_data[2]~28_combout\ & ((\reg_file[13][2]~q\))) # (!\rt_data[2]~28_combout\ & (\reg_file[12][2]~q\)))) # (!\rt_address[2]~input_o\ & (((\rt_data[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \reg_file[12][2]~q\,
	datac => \reg_file[13][2]~q\,
	datad => \rt_data[2]~28_combout\,
	combout => \rt_data[2]~29_combout\);

-- Location: LCCOMB_X12_Y13_N22
\rt_data[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~30_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[2]~input_o\) # ((\reg_file[3][2]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[2]~input_o\ & (\reg_file[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \reg_file[2][2]~q\,
	datad => \reg_file[3][2]~q\,
	combout => \rt_data[2]~30_combout\);

-- Location: LCCOMB_X11_Y13_N6
\rt_data[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~31_combout\ = (\rt_address[2]~input_o\ & ((\rt_data[2]~30_combout\ & (\reg_file[7][2]~q\)) # (!\rt_data[2]~30_combout\ & ((\reg_file[6][2]~q\))))) # (!\rt_address[2]~input_o\ & (((\rt_data[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[7][2]~q\,
	datab => \rt_address[2]~input_o\,
	datac => \reg_file[6][2]~q\,
	datad => \rt_data[2]~30_combout\,
	combout => \rt_data[2]~31_combout\);

-- Location: LCCOMB_X14_Y13_N28
\rt_data[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~32_combout\ = (\rt_address[2]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[2]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[1][2]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][2]~q\,
	datad => \reg_file[1][2]~q\,
	combout => \rt_data[2]~32_combout\);

-- Location: LCCOMB_X14_Y13_N30
\rt_data[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~33_combout\ = (\rt_address[2]~input_o\ & ((\rt_data[2]~32_combout\ & ((\reg_file[5][2]~q\))) # (!\rt_data[2]~32_combout\ & (\reg_file[4][2]~q\)))) # (!\rt_address[2]~input_o\ & (((\rt_data[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \reg_file[4][2]~q\,
	datac => \reg_file[5][2]~q\,
	datad => \rt_data[2]~32_combout\,
	combout => \rt_data[2]~33_combout\);

-- Location: LCCOMB_X12_Y14_N28
\rt_data[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~34_combout\ = (\rt_address[3]~input_o\ & (\rt_address[1]~input_o\)) # (!\rt_address[3]~input_o\ & ((\rt_address[1]~input_o\ & (\rt_data[2]~31_combout\)) # (!\rt_address[1]~input_o\ & ((\rt_data[2]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \rt_data[2]~31_combout\,
	datad => \rt_data[2]~33_combout\,
	combout => \rt_data[2]~34_combout\);

-- Location: LCCOMB_X12_Y14_N8
\rt_data[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[2]~36_combout\ = (\rt_address[3]~input_o\ & ((\rt_data[2]~34_combout\ & (\rt_data[2]~35_combout\)) # (!\rt_data[2]~34_combout\ & ((\rt_data[2]~29_combout\))))) # (!\rt_address[3]~input_o\ & (((\rt_data[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[2]~35_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_data[2]~29_combout\,
	datad => \rt_data[2]~34_combout\,
	combout => \rt_data[2]~36_combout\);

-- Location: FF_X12_Y14_N9
\rt_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[2]~36_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[2]~reg0_q\);

-- Location: FF_X13_Y21_N19
\rt_data[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[2]~en_q\);

-- Location: LCCOMB_X16_Y14_N10
\rt_data[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~44_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[13][3]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[13][3]~q\,
	datad => \reg_file[12][3]~q\,
	combout => \rt_data[3]~44_combout\);

-- Location: LCCOMB_X12_Y17_N2
\rt_data[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~37_combout\ = (\rt_address[0]~input_o\ & (\rt_address[1]~input_o\)) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & (\reg_file[10][3]~q\)) # (!\rt_address[1]~input_o\ & ((\reg_file[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[10][3]~q\,
	datad => \reg_file[8][3]~q\,
	combout => \rt_data[3]~37_combout\);

-- Location: LCCOMB_X12_Y17_N12
\rt_data[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~38_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[3]~37_combout\ & ((\reg_file[11][3]~q\))) # (!\rt_data[3]~37_combout\ & (\reg_file[9][3]~q\)))) # (!\rt_address[0]~input_o\ & (((\rt_data[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[9][3]~q\,
	datac => \reg_file[11][3]~q\,
	datad => \rt_data[3]~37_combout\,
	combout => \rt_data[3]~38_combout\);

-- Location: LCCOMB_X14_Y13_N10
\rt_data[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~41_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[2][3]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][3]~q\,
	datad => \reg_file[2][3]~q\,
	combout => \rt_data[3]~41_combout\);

-- Location: LCCOMB_X13_Y13_N10
\rt_data[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~42_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[3]~41_combout\ & ((\reg_file[3][3]~q\))) # (!\rt_data[3]~41_combout\ & (\reg_file[1][3]~q\)))) # (!\rt_address[0]~input_o\ & (((\rt_data[3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[1][3]~q\,
	datac => \reg_file[3][3]~q\,
	datad => \rt_data[3]~41_combout\,
	combout => \rt_data[3]~42_combout\);

-- Location: LCCOMB_X15_Y13_N30
\rt_data[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~39_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[5][3]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[4][3]~q\,
	datad => \reg_file[5][3]~q\,
	combout => \rt_data[3]~39_combout\);

-- Location: LCCOMB_X11_Y14_N20
\rt_data[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~40_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[3]~39_combout\ & (\reg_file[7][3]~q\)) # (!\rt_data[3]~39_combout\ & ((\reg_file[6][3]~q\))))) # (!\rt_address[1]~input_o\ & (((\rt_data[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file[7][3]~q\,
	datac => \reg_file[6][3]~q\,
	datad => \rt_data[3]~39_combout\,
	combout => \rt_data[3]~40_combout\);

-- Location: LCCOMB_X12_Y14_N2
\rt_data[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~43_combout\ = (\rt_address[3]~input_o\ & (\rt_address[2]~input_o\)) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & ((\rt_data[3]~40_combout\))) # (!\rt_address[2]~input_o\ & (\rt_data[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[3]~42_combout\,
	datad => \rt_data[3]~40_combout\,
	combout => \rt_data[3]~43_combout\);

-- Location: LCCOMB_X12_Y14_N30
\rt_data[3]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~45_combout\ = (\rt_address[3]~input_o\ & ((\rt_data[3]~43_combout\ & (\rt_data[3]~44_combout\)) # (!\rt_data[3]~43_combout\ & ((\rt_data[3]~38_combout\))))) # (!\rt_address[3]~input_o\ & (((\rt_data[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[3]~44_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_data[3]~38_combout\,
	datad => \rt_data[3]~43_combout\,
	combout => \rt_data[3]~45_combout\);

-- Location: FF_X12_Y14_N31
\rt_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[3]~45_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[3]~reg0_q\);

-- Location: LCCOMB_X14_Y20_N22
\rt_data[3]~enfeeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[3]~enfeeder_combout\ = \rt_data[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_data[0]~9_combout\,
	combout => \rt_data[3]~enfeeder_combout\);

-- Location: FF_X14_Y20_N23
\rt_data[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[3]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[3]~en_q\);

-- Location: LCCOMB_X16_Y14_N12
\rt_data[4]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~53_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[13][4]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[12][4]~q\,
	datad => \reg_file[13][4]~q\,
	combout => \rt_data[4]~53_combout\);

-- Location: LCCOMB_X13_Y17_N22
\rt_data[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~46_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[9][4]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[8][4]~q\,
	datad => \reg_file[9][4]~q\,
	combout => \rt_data[4]~46_combout\);

-- Location: LCCOMB_X12_Y17_N4
\rt_data[4]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~47_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[4]~46_combout\ & (\reg_file[11][4]~q\)) # (!\rt_data[4]~46_combout\ & ((\reg_file[10][4]~q\))))) # (!\rt_address[1]~input_o\ & (((\rt_data[4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[11][4]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[10][4]~q\,
	datad => \rt_data[4]~46_combout\,
	combout => \rt_data[4]~47_combout\);

-- Location: LCCOMB_X15_Y13_N2
\rt_data[4]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~48_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[6][4]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[4][4]~q\,
	datad => \reg_file[6][4]~q\,
	combout => \rt_data[4]~48_combout\);

-- Location: LCCOMB_X11_Y13_N20
\rt_data[4]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~49_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[4]~48_combout\ & (\reg_file[7][4]~q\)) # (!\rt_data[4]~48_combout\ & ((\reg_file[5][4]~q\))))) # (!\rt_address[0]~input_o\ & (((\rt_data[4]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[7][4]~q\,
	datac => \reg_file[5][4]~q\,
	datad => \rt_data[4]~48_combout\,
	combout => \rt_data[4]~49_combout\);

-- Location: LCCOMB_X14_Y13_N22
\rt_data[4]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~50_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[1][4]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][4]~q\,
	datad => \reg_file[1][4]~q\,
	combout => \rt_data[4]~50_combout\);

-- Location: LCCOMB_X13_Y13_N2
\rt_data[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~51_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[4]~50_combout\ & ((\reg_file[3][4]~q\))) # (!\rt_data[4]~50_combout\ & (\reg_file[2][4]~q\)))) # (!\rt_address[1]~input_o\ & (((\rt_data[4]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[2][4]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[3][4]~q\,
	datad => \rt_data[4]~50_combout\,
	combout => \rt_data[4]~51_combout\);

-- Location: LCCOMB_X12_Y14_N20
\rt_data[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~52_combout\ = (\rt_address[3]~input_o\ & (\rt_address[2]~input_o\)) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\rt_data[4]~49_combout\)) # (!\rt_address[2]~input_o\ & ((\rt_data[4]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[4]~49_combout\,
	datad => \rt_data[4]~51_combout\,
	combout => \rt_data[4]~52_combout\);

-- Location: LCCOMB_X12_Y14_N16
\rt_data[4]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[4]~54_combout\ = (\rt_address[3]~input_o\ & ((\rt_data[4]~52_combout\ & (\rt_data[4]~53_combout\)) # (!\rt_data[4]~52_combout\ & ((\rt_data[4]~47_combout\))))) # (!\rt_address[3]~input_o\ & (((\rt_data[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[4]~53_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_data[4]~47_combout\,
	datad => \rt_data[4]~52_combout\,
	combout => \rt_data[4]~54_combout\);

-- Location: FF_X12_Y14_N17
\rt_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[4]~54_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[4]~reg0_q\);

-- Location: FF_X13_Y21_N29
\rt_data[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[4]~en_q\);

-- Location: LCCOMB_X13_Y17_N0
\rt_data[5]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~57_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[10][5]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[8][5]~q\,
	datad => \reg_file[10][5]~q\,
	combout => \rt_data[5]~57_combout\);

-- Location: LCCOMB_X13_Y17_N20
\rt_data[5]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~58_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[5]~57_combout\ & ((\reg_file[11][5]~q\))) # (!\rt_data[5]~57_combout\ & (\reg_file[9][5]~q\)))) # (!\rt_address[0]~input_o\ & (((\rt_data[5]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[9][5]~q\,
	datac => \reg_file[11][5]~q\,
	datad => \rt_data[5]~57_combout\,
	combout => \rt_data[5]~58_combout\);

-- Location: LCCOMB_X14_Y13_N18
\rt_data[5]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~59_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[2][5]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][5]~q\,
	datad => \reg_file[2][5]~q\,
	combout => \rt_data[5]~59_combout\);

-- Location: LCCOMB_X13_Y13_N0
\rt_data[5]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~60_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[5]~59_combout\ & (\reg_file[3][5]~q\)) # (!\rt_data[5]~59_combout\ & ((\reg_file[1][5]~q\))))) # (!\rt_address[0]~input_o\ & (((\rt_data[5]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[3][5]~q\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[1][5]~q\,
	datad => \rt_data[5]~59_combout\,
	combout => \rt_data[5]~60_combout\);

-- Location: LCCOMB_X12_Y14_N6
\rt_data[5]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~61_combout\ = (\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\) # ((\rt_data[5]~58_combout\)))) # (!\rt_address[3]~input_o\ & (!\rt_address[2]~input_o\ & ((\rt_data[5]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[5]~58_combout\,
	datad => \rt_data[5]~60_combout\,
	combout => \rt_data[5]~61_combout\);

-- Location: LCCOMB_X16_Y14_N6
\rt_data[5]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~62_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[13][5]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[13][5]~q\,
	datad => \reg_file[12][5]~q\,
	combout => \rt_data[5]~62_combout\);

-- Location: LCCOMB_X15_Y13_N14
\rt_data[5]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~55_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[5][5]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[4][5]~q\,
	datad => \reg_file[5][5]~q\,
	combout => \rt_data[5]~55_combout\);

-- Location: LCCOMB_X15_Y13_N0
\rt_data[5]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~56_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[5]~55_combout\ & ((\reg_file[7][5]~q\))) # (!\rt_data[5]~55_combout\ & (\reg_file[6][5]~q\)))) # (!\rt_address[1]~input_o\ & (\rt_data[5]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_data[5]~55_combout\,
	datac => \reg_file[6][5]~q\,
	datad => \reg_file[7][5]~q\,
	combout => \rt_data[5]~56_combout\);

-- Location: LCCOMB_X12_Y14_N22
\rt_data[5]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[5]~63_combout\ = (\rt_data[5]~61_combout\ & ((\rt_data[5]~62_combout\) # ((!\rt_address[2]~input_o\)))) # (!\rt_data[5]~61_combout\ & (((\rt_data[5]~56_combout\ & \rt_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[5]~61_combout\,
	datab => \rt_data[5]~62_combout\,
	datac => \rt_data[5]~56_combout\,
	datad => \rt_address[2]~input_o\,
	combout => \rt_data[5]~63_combout\);

-- Location: FF_X12_Y14_N23
\rt_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[5]~63_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[5]~reg0_q\);

-- Location: FF_X13_Y21_N27
\rt_data[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[5]~en_q\);

-- Location: LCCOMB_X15_Y13_N10
\rt_data[6]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~66_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[6][6]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[4][6]~q\,
	datad => \reg_file[6][6]~q\,
	combout => \rt_data[6]~66_combout\);

-- Location: LCCOMB_X11_Y13_N18
\rt_data[6]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~67_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[6]~66_combout\ & (\reg_file[7][6]~q\)) # (!\rt_data[6]~66_combout\ & ((\reg_file[5][6]~q\))))) # (!\rt_address[0]~input_o\ & (((\rt_data[6]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[7][6]~q\,
	datac => \reg_file[5][6]~q\,
	datad => \rt_data[6]~66_combout\,
	combout => \rt_data[6]~67_combout\);

-- Location: LCCOMB_X14_Y13_N6
\rt_data[6]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~68_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[1][6]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][6]~q\,
	datad => \reg_file[1][6]~q\,
	combout => \rt_data[6]~68_combout\);

-- Location: LCCOMB_X13_Y13_N6
\rt_data[6]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~69_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[6]~68_combout\ & ((\reg_file[3][6]~q\))) # (!\rt_data[6]~68_combout\ & (\reg_file[2][6]~q\)))) # (!\rt_address[1]~input_o\ & (((\rt_data[6]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[2][6]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[3][6]~q\,
	datad => \rt_data[6]~68_combout\,
	combout => \rt_data[6]~69_combout\);

-- Location: LCCOMB_X12_Y14_N0
\rt_data[6]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~70_combout\ = (\rt_address[3]~input_o\ & (\rt_address[2]~input_o\)) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\rt_data[6]~67_combout\)) # (!\rt_address[2]~input_o\ & ((\rt_data[6]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[6]~67_combout\,
	datad => \rt_data[6]~69_combout\,
	combout => \rt_data[6]~70_combout\);

-- Location: LCCOMB_X15_Y12_N12
\rt_data[6]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~71_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[13][6]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[13][6]~q\,
	datad => \reg_file[12][6]~q\,
	combout => \rt_data[6]~71_combout\);

-- Location: LCCOMB_X13_Y17_N10
\rt_data[6]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~64_combout\ = (\rt_address[1]~input_o\ & (\rt_address[0]~input_o\)) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file[9][6]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[8][6]~q\,
	datad => \reg_file[9][6]~q\,
	combout => \rt_data[6]~64_combout\);

-- Location: LCCOMB_X13_Y17_N24
\rt_data[6]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~65_combout\ = (\rt_address[1]~input_o\ & ((\rt_data[6]~64_combout\ & ((\reg_file[11][6]~q\))) # (!\rt_data[6]~64_combout\ & (\reg_file[10][6]~q\)))) # (!\rt_address[1]~input_o\ & (((\rt_data[6]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file[10][6]~q\,
	datac => \reg_file[11][6]~q\,
	datad => \rt_data[6]~64_combout\,
	combout => \rt_data[6]~65_combout\);

-- Location: LCCOMB_X12_Y14_N4
\rt_data[6]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[6]~72_combout\ = (\rt_address[3]~input_o\ & ((\rt_data[6]~70_combout\ & (\rt_data[6]~71_combout\)) # (!\rt_data[6]~70_combout\ & ((\rt_data[6]~65_combout\))))) # (!\rt_address[3]~input_o\ & (\rt_data[6]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_data[6]~70_combout\,
	datac => \rt_data[6]~71_combout\,
	datad => \rt_data[6]~65_combout\,
	combout => \rt_data[6]~72_combout\);

-- Location: FF_X12_Y14_N5
\rt_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[6]~72_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[6]~reg0_q\);

-- Location: FF_X13_Y21_N1
\rt_data[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_data[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[6]~en_q\);

-- Location: LCCOMB_X13_Y17_N2
\rt_data[7]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~75_combout\ = (\rt_address[1]~input_o\ & (((\rt_address[0]~input_o\) # (\reg_file[10][7]~q\)))) # (!\rt_address[1]~input_o\ & (\reg_file[8][7]~q\ & (!\rt_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file[8][7]~q\,
	datac => \rt_address[0]~input_o\,
	datad => \reg_file[10][7]~q\,
	combout => \rt_data[7]~75_combout\);

-- Location: LCCOMB_X13_Y17_N14
\rt_data[7]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~76_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[7]~75_combout\ & ((\reg_file[11][7]~q\))) # (!\rt_data[7]~75_combout\ & (\reg_file[9][7]~q\)))) # (!\rt_address[0]~input_o\ & (((\rt_data[7]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[9][7]~q\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[11][7]~q\,
	datad => \rt_data[7]~75_combout\,
	combout => \rt_data[7]~76_combout\);

-- Location: LCCOMB_X14_Y13_N26
\rt_data[7]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~77_combout\ = (\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\) # ((\reg_file[2][7]~q\)))) # (!\rt_address[1]~input_o\ & (!\rt_address[0]~input_o\ & (\reg_file[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file[0][7]~q\,
	datad => \reg_file[2][7]~q\,
	combout => \rt_data[7]~77_combout\);

-- Location: LCCOMB_X13_Y13_N14
\rt_data[7]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~78_combout\ = (\rt_address[0]~input_o\ & ((\rt_data[7]~77_combout\ & ((\reg_file[3][7]~q\))) # (!\rt_data[7]~77_combout\ & (\reg_file[1][7]~q\)))) # (!\rt_address[0]~input_o\ & (((\rt_data[7]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file[1][7]~q\,
	datac => \reg_file[3][7]~q\,
	datad => \rt_data[7]~77_combout\,
	combout => \rt_data[7]~78_combout\);

-- Location: LCCOMB_X12_Y14_N10
\rt_data[7]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~79_combout\ = (\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\) # ((\rt_data[7]~76_combout\)))) # (!\rt_address[3]~input_o\ & (!\rt_address[2]~input_o\ & ((\rt_data[7]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[7]~76_combout\,
	datad => \rt_data[7]~78_combout\,
	combout => \rt_data[7]~79_combout\);

-- Location: LCCOMB_X16_Y14_N20
\rt_data[7]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~80_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[13][7]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[13][7]~q\,
	datad => \reg_file[12][7]~q\,
	combout => \rt_data[7]~80_combout\);

-- Location: LCCOMB_X15_Y13_N26
\rt_data[7]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~73_combout\ = (\rt_address[1]~input_o\ & (((\rt_address[0]~input_o\)))) # (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file[5][7]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file[5][7]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file[4][7]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \rt_data[7]~73_combout\);

-- Location: LCCOMB_X15_Y13_N8
\rt_data[7]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~74_combout\ = (\rt_data[7]~73_combout\ & ((\reg_file[7][7]~q\) # ((!\rt_address[1]~input_o\)))) # (!\rt_data[7]~73_combout\ & (((\reg_file[6][7]~q\ & \rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[7]~73_combout\,
	datab => \reg_file[7][7]~q\,
	datac => \reg_file[6][7]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \rt_data[7]~74_combout\);

-- Location: LCCOMB_X12_Y14_N14
\rt_data[7]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rt_data[7]~81_combout\ = (\rt_data[7]~79_combout\ & (((\rt_data[7]~80_combout\)) # (!\rt_address[2]~input_o\))) # (!\rt_data[7]~79_combout\ & (\rt_address[2]~input_o\ & ((\rt_data[7]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_data[7]~79_combout\,
	datab => \rt_address[2]~input_o\,
	datac => \rt_data[7]~80_combout\,
	datad => \rt_data[7]~74_combout\,
	combout => \rt_data[7]~81_combout\);

-- Location: FF_X12_Y14_N15
\rt_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[7]~81_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[7]~reg0_q\);

-- Location: FF_X13_Y21_N31
\rt_data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rt_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rt_data[7]~en_q\);

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

ww_rs_data(0) <= \rs_data[0]~output_o\;

ww_rs_data(1) <= \rs_data[1]~output_o\;

ww_rs_data(2) <= \rs_data[2]~output_o\;

ww_rs_data(3) <= \rs_data[3]~output_o\;

ww_rs_data(4) <= \rs_data[4]~output_o\;

ww_rs_data(5) <= \rs_data[5]~output_o\;

ww_rs_data(6) <= \rs_data[6]~output_o\;

ww_rs_data(7) <= \rs_data[7]~output_o\;

ww_rt_data(0) <= \rt_data[0]~output_o\;

ww_rt_data(1) <= \rt_data[1]~output_o\;

ww_rt_data(2) <= \rt_data[2]~output_o\;

ww_rt_data(3) <= \rt_data[3]~output_o\;

ww_rt_data(4) <= \rt_data[4]~output_o\;

ww_rt_data(5) <= \rt_data[5]~output_o\;

ww_rt_data(6) <= \rt_data[6]~output_o\;

ww_rt_data(7) <= \rt_data[7]~output_o\;
END structure;


