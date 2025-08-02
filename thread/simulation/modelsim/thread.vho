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

-- DATE "07/29/2025 00:45:54"

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

ENTITY 	lsu IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	state : IN std_logic_vector(2 DOWNTO 0);
	mem_read_en : IN std_logic;
	mem_write_en : IN std_logic;
	rs_out : IN std_logic_vector(7 DOWNTO 0);
	rt_out : IN std_logic_vector(7 DOWNTO 0);
	mem_read_ready : IN std_logic;
	mem_write_ready : IN std_logic;
	mem_read_data : IN std_logic_vector(7 DOWNTO 0);
	mem_read_add : OUT std_logic_vector(7 DOWNTO 0);
	mem_write_add : OUT std_logic_vector(7 DOWNTO 0);
	mem_write_data : OUT std_logic_vector(7 DOWNTO 0);
	lsu_out : OUT std_logic_vector(7 DOWNTO 0);
	\lsu_state.IDLE\ : OUT std_logic;
	\lsu_state.REQUESTING\ : OUT std_logic;
	\lsu_state.WAITING\ : OUT std_logic;
	\lsu_state.DONE\ : OUT std_logic
	);
END lsu;

-- Design Ports Information
-- mem_read_add[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[7]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[7]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[4]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[6]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_out[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_state.IDLE	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_state.REQUESTING	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_state.WAITING	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lsu_state.DONE	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_en	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[2]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_out[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_en	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[3]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[4]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_out[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_ready	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_ready	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lsu IS
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
SIGNAL ww_mem_read_en : std_logic;
SIGNAL ww_mem_write_en : std_logic;
SIGNAL ww_rs_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rt_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_read_ready : std_logic;
SIGNAL ww_mem_write_ready : std_logic;
SIGNAL ww_mem_read_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_read_add : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_write_add : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lsu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_lsu_state.IDLE\ : std_logic;
SIGNAL \ww_lsu_state.REQUESTING\ : std_logic;
SIGNAL \ww_lsu_state.WAITING\ : std_logic;
SIGNAL \ww_lsu_state.DONE\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \mem_read_add[0]~output_o\ : std_logic;
SIGNAL \mem_read_add[1]~output_o\ : std_logic;
SIGNAL \mem_read_add[2]~output_o\ : std_logic;
SIGNAL \mem_read_add[3]~output_o\ : std_logic;
SIGNAL \mem_read_add[4]~output_o\ : std_logic;
SIGNAL \mem_read_add[5]~output_o\ : std_logic;
SIGNAL \mem_read_add[6]~output_o\ : std_logic;
SIGNAL \mem_read_add[7]~output_o\ : std_logic;
SIGNAL \mem_write_add[0]~output_o\ : std_logic;
SIGNAL \mem_write_add[1]~output_o\ : std_logic;
SIGNAL \mem_write_add[2]~output_o\ : std_logic;
SIGNAL \mem_write_add[3]~output_o\ : std_logic;
SIGNAL \mem_write_add[4]~output_o\ : std_logic;
SIGNAL \mem_write_add[5]~output_o\ : std_logic;
SIGNAL \mem_write_add[6]~output_o\ : std_logic;
SIGNAL \mem_write_add[7]~output_o\ : std_logic;
SIGNAL \mem_write_data[0]~output_o\ : std_logic;
SIGNAL \mem_write_data[1]~output_o\ : std_logic;
SIGNAL \mem_write_data[2]~output_o\ : std_logic;
SIGNAL \mem_write_data[3]~output_o\ : std_logic;
SIGNAL \mem_write_data[4]~output_o\ : std_logic;
SIGNAL \mem_write_data[5]~output_o\ : std_logic;
SIGNAL \mem_write_data[6]~output_o\ : std_logic;
SIGNAL \mem_write_data[7]~output_o\ : std_logic;
SIGNAL \lsu_out[0]~output_o\ : std_logic;
SIGNAL \lsu_out[1]~output_o\ : std_logic;
SIGNAL \lsu_out[2]~output_o\ : std_logic;
SIGNAL \lsu_out[3]~output_o\ : std_logic;
SIGNAL \lsu_out[4]~output_o\ : std_logic;
SIGNAL \lsu_out[5]~output_o\ : std_logic;
SIGNAL \lsu_out[6]~output_o\ : std_logic;
SIGNAL \lsu_out[7]~output_o\ : std_logic;
SIGNAL \lsu_state.IDLE~output_o\ : std_logic;
SIGNAL \lsu_state.REQUESTING~output_o\ : std_logic;
SIGNAL \lsu_state.WAITING~output_o\ : std_logic;
SIGNAL \lsu_state.DONE~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rs_out[0]~input_o\ : std_logic;
SIGNAL \mem_read_add[0]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_read_en~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \mem_write_ready~input_o\ : std_logic;
SIGNAL \state[1]~input_o\ : std_logic;
SIGNAL \lsu_currentstate~14_combout\ : std_logic;
SIGNAL \lsu_currentstate.DONE~q\ : std_logic;
SIGNAL \lsu_currentstate~15_combout\ : std_logic;
SIGNAL \lsu_currentstate.IDLE~q\ : std_logic;
SIGNAL \lsu_currentstate~9_combout\ : std_logic;
SIGNAL \state[0]~input_o\ : std_logic;
SIGNAL \state[2]~input_o\ : std_logic;
SIGNAL \lsu_currentstate~8_combout\ : std_logic;
SIGNAL \lsu_currentstate~10_combout\ : std_logic;
SIGNAL \lsu_currentstate~13_combout\ : std_logic;
SIGNAL \lsu_currentstate.WAITING~q\ : std_logic;
SIGNAL \lsu_currentstate~11_combout\ : std_logic;
SIGNAL \lsu_currentstate~12_combout\ : std_logic;
SIGNAL \lsu_currentstate.REQUESTING~q\ : std_logic;
SIGNAL \mem_read_add[0]~1_combout\ : std_logic;
SIGNAL \mem_read_add[0]~reg0_q\ : std_logic;
SIGNAL \rs_out[1]~input_o\ : std_logic;
SIGNAL \mem_read_add[1]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_read_add[1]~reg0_q\ : std_logic;
SIGNAL \rs_out[2]~input_o\ : std_logic;
SIGNAL \mem_read_add[2]~reg0_q\ : std_logic;
SIGNAL \rs_out[3]~input_o\ : std_logic;
SIGNAL \mem_read_add[3]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_read_add[3]~reg0_q\ : std_logic;
SIGNAL \rs_out[4]~input_o\ : std_logic;
SIGNAL \mem_read_add[4]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_read_add[4]~reg0_q\ : std_logic;
SIGNAL \rs_out[5]~input_o\ : std_logic;
SIGNAL \mem_read_add[5]~reg0_q\ : std_logic;
SIGNAL \rs_out[6]~input_o\ : std_logic;
SIGNAL \mem_read_add[6]~reg0_q\ : std_logic;
SIGNAL \rs_out[7]~input_o\ : std_logic;
SIGNAL \mem_read_add[7]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_read_add[7]~reg0_q\ : std_logic;
SIGNAL \mem_write_en~input_o\ : std_logic;
SIGNAL \mem_write_add[0]~0_combout\ : std_logic;
SIGNAL \mem_write_add[0]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[1]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_add[1]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[2]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[3]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_add[3]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[4]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[5]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_add[5]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[6]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_add[6]~reg0_q\ : std_logic;
SIGNAL \mem_write_add[7]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_add[7]~reg0_q\ : std_logic;
SIGNAL \rt_out[0]~input_o\ : std_logic;
SIGNAL \mem_write_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_data[0]~reg0_q\ : std_logic;
SIGNAL \rt_out[1]~input_o\ : std_logic;
SIGNAL \mem_write_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_data[1]~reg0_q\ : std_logic;
SIGNAL \rt_out[2]~input_o\ : std_logic;
SIGNAL \mem_write_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_data[2]~reg0_q\ : std_logic;
SIGNAL \rt_out[3]~input_o\ : std_logic;
SIGNAL \mem_write_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_data[3]~reg0_q\ : std_logic;
SIGNAL \rt_out[4]~input_o\ : std_logic;
SIGNAL \mem_write_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_data[4]~reg0_q\ : std_logic;
SIGNAL \rt_out[5]~input_o\ : std_logic;
SIGNAL \mem_write_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \mem_write_data[5]~reg0_q\ : std_logic;
SIGNAL \rt_out[6]~input_o\ : std_logic;
SIGNAL \mem_write_data[6]~reg0_q\ : std_logic;
SIGNAL \rt_out[7]~input_o\ : std_logic;
SIGNAL \mem_write_data[7]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[0]~input_o\ : std_logic;
SIGNAL \mem_read_ready~input_o\ : std_logic;
SIGNAL \lsu_out[0]~0_combout\ : std_logic;
SIGNAL \lsu_out[0]~1_combout\ : std_logic;
SIGNAL \lsu_out[0]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[1]~input_o\ : std_logic;
SIGNAL \lsu_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \lsu_out[1]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[2]~input_o\ : std_logic;
SIGNAL \lsu_out[2]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[3]~input_o\ : std_logic;
SIGNAL \lsu_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \lsu_out[3]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[4]~input_o\ : std_logic;
SIGNAL \lsu_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \lsu_out[4]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[5]~input_o\ : std_logic;
SIGNAL \lsu_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \lsu_out[5]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[6]~input_o\ : std_logic;
SIGNAL \lsu_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \lsu_out[6]~reg0_q\ : std_logic;
SIGNAL \mem_read_data[7]~input_o\ : std_logic;
SIGNAL \lsu_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \lsu_out[7]~reg0_q\ : std_logic;

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
ww_mem_read_en <= mem_read_en;
ww_mem_write_en <= mem_write_en;
ww_rs_out <= rs_out;
ww_rt_out <= rt_out;
ww_mem_read_ready <= mem_read_ready;
ww_mem_write_ready <= mem_write_ready;
ww_mem_read_data <= mem_read_data;
mem_read_add <= ww_mem_read_add;
mem_write_add <= ww_mem_write_add;
mem_write_data <= ww_mem_write_data;
lsu_out <= ww_lsu_out;
\lsu_state.IDLE\ <= \ww_lsu_state.IDLE\;
\lsu_state.REQUESTING\ <= \ww_lsu_state.REQUESTING\;
\lsu_state.WAITING\ <= \ww_lsu_state.WAITING\;
\lsu_state.DONE\ <= \ww_lsu_state.DONE\;
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

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X31_Y4_N9
\mem_read_add[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[0]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[0]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\mem_read_add[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[1]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\mem_read_add[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[2]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\mem_read_add[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[3]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[3]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\mem_read_add[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[4]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[4]~output_o\);

-- Location: IOOBUF_X31_Y4_N23
\mem_read_add[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[5]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[5]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\mem_read_add[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[6]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[6]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\mem_read_add[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_read_add[7]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_read_add[7]~output_o\);

-- Location: IOOBUF_X31_Y4_N16
\mem_write_add[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[0]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\mem_write_add[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[1]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\mem_write_add[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[2]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\mem_write_add[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[3]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\mem_write_add[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[4]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\mem_write_add[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[5]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\mem_write_add[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[6]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[6]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\mem_write_add[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_add[7]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_add[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\mem_write_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\mem_write_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\mem_write_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[2]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\mem_write_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\mem_write_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\mem_write_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\mem_write_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\mem_write_data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_write_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \mem_write_data[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\lsu_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[0]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\lsu_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[1]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\lsu_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\lsu_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\lsu_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\lsu_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\lsu_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\lsu_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lsu_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \lsu_out[7]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\lsu_state.IDLE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsu_state.IDLE~output_o\);

-- Location: IOOBUF_X3_Y10_N2
\lsu_state.REQUESTING~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lsu_state.REQUESTING~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\lsu_state.WAITING~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lsu_state.WAITING~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\lsu_state.DONE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lsu_state.DONE~output_o\);

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

-- Location: IOIBUF_X19_Y0_N29
\rs_out[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(0),
	o => \rs_out[0]~input_o\);

-- Location: LCCOMB_X17_Y4_N20
\mem_read_add[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_read_add[0]~reg0feeder_combout\ = \rs_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[0]~input_o\,
	combout => \mem_read_add[0]~reg0feeder_combout\);

-- Location: IOIBUF_X31_Y5_N15
\mem_read_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_en,
	o => \mem_read_en~input_o\);

-- Location: IOIBUF_X11_Y0_N29
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

-- Location: IOIBUF_X6_Y0_N1
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

-- Location: IOIBUF_X6_Y0_N29
\mem_write_ready~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_write_ready,
	o => \mem_write_ready~input_o\);

-- Location: IOIBUF_X13_Y0_N8
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

-- Location: LCCOMB_X17_Y4_N30
\lsu_currentstate~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~14_combout\ = (!\reset~input_o\ & ((\lsu_currentstate~10_combout\ & ((\lsu_currentstate.DONE~q\))) # (!\lsu_currentstate~10_combout\ & (\lsu_currentstate.WAITING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \lsu_currentstate.WAITING~q\,
	datac => \lsu_currentstate.DONE~q\,
	datad => \lsu_currentstate~10_combout\,
	combout => \lsu_currentstate~14_combout\);

-- Location: FF_X17_Y4_N31
\lsu_currentstate.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_currentstate~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_currentstate.DONE~q\);

-- Location: LCCOMB_X17_Y4_N0
\lsu_currentstate~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~15_combout\ = (!\reset~input_o\ & ((\lsu_currentstate~10_combout\ & ((\lsu_currentstate.IDLE~q\))) # (!\lsu_currentstate~10_combout\ & (!\lsu_currentstate.DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \lsu_currentstate.DONE~q\,
	datac => \lsu_currentstate.IDLE~q\,
	datad => \lsu_currentstate~10_combout\,
	combout => \lsu_currentstate~15_combout\);

-- Location: FF_X17_Y4_N1
\lsu_currentstate.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_currentstate~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_currentstate.IDLE~q\);

-- Location: LCCOMB_X17_Y4_N8
\lsu_currentstate~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~9_combout\ = ((!\state[1]~input_o\ & ((\lsu_currentstate.DONE~q\) # (!\lsu_currentstate.IDLE~q\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~input_o\,
	datab => \en~input_o\,
	datac => \lsu_currentstate.DONE~q\,
	datad => \lsu_currentstate.IDLE~q\,
	combout => \lsu_currentstate~9_combout\);

-- Location: IOIBUF_X29_Y0_N8
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

-- Location: IOIBUF_X17_Y0_N29
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

-- Location: LCCOMB_X17_Y4_N18
\lsu_currentstate~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~8_combout\ = (\state[0]~input_o\ & ((\lsu_currentstate.DONE~q\) # ((\state[2]~input_o\ & !\lsu_currentstate.IDLE~q\)))) # (!\state[0]~input_o\ & (((!\state[2]~input_o\ & \lsu_currentstate.DONE~q\)) # (!\lsu_currentstate.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~input_o\,
	datab => \state[2]~input_o\,
	datac => \lsu_currentstate.DONE~q\,
	datad => \lsu_currentstate.IDLE~q\,
	combout => \lsu_currentstate~8_combout\);

-- Location: LCCOMB_X17_Y4_N10
\lsu_currentstate~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~10_combout\ = (\lsu_currentstate~9_combout\) # ((\lsu_currentstate~8_combout\) # ((!\mem_write_ready~input_o\ & \lsu_currentstate.WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_write_ready~input_o\,
	datab => \lsu_currentstate.WAITING~q\,
	datac => \lsu_currentstate~9_combout\,
	datad => \lsu_currentstate~8_combout\,
	combout => \lsu_currentstate~10_combout\);

-- Location: LCCOMB_X17_Y4_N16
\lsu_currentstate~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~13_combout\ = (!\reset~input_o\ & ((\lsu_currentstate~10_combout\ & ((\lsu_currentstate.WAITING~q\))) # (!\lsu_currentstate~10_combout\ & (\lsu_currentstate.REQUESTING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lsu_currentstate.REQUESTING~q\,
	datab => \reset~input_o\,
	datac => \lsu_currentstate.WAITING~q\,
	datad => \lsu_currentstate~10_combout\,
	combout => \lsu_currentstate~13_combout\);

-- Location: FF_X17_Y4_N17
\lsu_currentstate.WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_currentstate~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_currentstate.WAITING~q\);

-- Location: LCCOMB_X17_Y4_N24
\lsu_currentstate~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~11_combout\ = \lsu_currentstate.REQUESTING~q\ $ (\lsu_currentstate.WAITING~q\ $ (\lsu_currentstate.DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lsu_currentstate.REQUESTING~q\,
	datab => \lsu_currentstate.WAITING~q\,
	datad => \lsu_currentstate.DONE~q\,
	combout => \lsu_currentstate~11_combout\);

-- Location: LCCOMB_X17_Y4_N2
\lsu_currentstate~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_currentstate~12_combout\ = (!\reset~input_o\ & ((\lsu_currentstate~10_combout\ & ((\lsu_currentstate.REQUESTING~q\))) # (!\lsu_currentstate~10_combout\ & (!\lsu_currentstate~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \lsu_currentstate~11_combout\,
	datac => \lsu_currentstate.REQUESTING~q\,
	datad => \lsu_currentstate~10_combout\,
	combout => \lsu_currentstate~12_combout\);

-- Location: FF_X17_Y4_N3
\lsu_currentstate.REQUESTING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_currentstate~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_currentstate.REQUESTING~q\);

-- Location: LCCOMB_X17_Y4_N28
\mem_read_add[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_read_add[0]~1_combout\ = (\mem_read_en~input_o\ & (\en~input_o\ & (!\reset~input_o\ & \lsu_currentstate.REQUESTING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_read_en~input_o\,
	datab => \en~input_o\,
	datac => \reset~input_o\,
	datad => \lsu_currentstate.REQUESTING~q\,
	combout => \mem_read_add[0]~1_combout\);

-- Location: FF_X17_Y4_N21
\mem_read_add[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_read_add[0]~reg0feeder_combout\,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[0]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N8
\rs_out[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(1),
	o => \rs_out[1]~input_o\);

-- Location: LCCOMB_X17_Y4_N14
\mem_read_add[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_read_add[1]~reg0feeder_combout\ = \rs_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[1]~input_o\,
	combout => \mem_read_add[1]~reg0feeder_combout\);

-- Location: FF_X17_Y4_N15
\mem_read_add[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_read_add[1]~reg0feeder_combout\,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[1]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N8
\rs_out[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(2),
	o => \rs_out[2]~input_o\);

-- Location: FF_X17_Y4_N13
\mem_read_add[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_out[2]~input_o\,
	sload => VCC,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[2]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N15
\rs_out[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(3),
	o => \rs_out[3]~input_o\);

-- Location: LCCOMB_X18_Y4_N28
\mem_read_add[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_read_add[3]~reg0feeder_combout\ = \rs_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[3]~input_o\,
	combout => \mem_read_add[3]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N29
\mem_read_add[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_read_add[3]~reg0feeder_combout\,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[3]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N1
\rs_out[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(4),
	o => \rs_out[4]~input_o\);

-- Location: LCCOMB_X17_Y4_N26
\mem_read_add[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_read_add[4]~reg0feeder_combout\ = \rs_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[4]~input_o\,
	combout => \mem_read_add[4]~reg0feeder_combout\);

-- Location: FF_X17_Y4_N27
\mem_read_add[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_read_add[4]~reg0feeder_combout\,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[4]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N1
\rs_out[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(5),
	o => \rs_out[5]~input_o\);

-- Location: FF_X17_Y4_N25
\mem_read_add[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_out[5]~input_o\,
	sload => VCC,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[5]~reg0_q\);

-- Location: IOIBUF_X15_Y0_N29
\rs_out[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(6),
	o => \rs_out[6]~input_o\);

-- Location: FF_X17_Y4_N23
\mem_read_add[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_out[6]~input_o\,
	sload => VCC,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[6]~reg0_q\);

-- Location: IOIBUF_X17_Y0_N15
\rs_out[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs_out(7),
	o => \rs_out[7]~input_o\);

-- Location: LCCOMB_X17_Y4_N4
\mem_read_add[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_read_add[7]~reg0feeder_combout\ = \rs_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[7]~input_o\,
	combout => \mem_read_add[7]~reg0feeder_combout\);

-- Location: FF_X17_Y4_N5
\mem_read_add[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_read_add[7]~reg0feeder_combout\,
	ena => \mem_read_add[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_read_add[7]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N15
\mem_write_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_write_en,
	o => \mem_write_en~input_o\);

-- Location: LCCOMB_X17_Y4_N6
\mem_write_add[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_add[0]~0_combout\ = (!\reset~input_o\ & (\en~input_o\ & (\mem_write_en~input_o\ & \lsu_currentstate.REQUESTING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \en~input_o\,
	datac => \mem_write_en~input_o\,
	datad => \lsu_currentstate.REQUESTING~q\,
	combout => \mem_write_add[0]~0_combout\);

-- Location: FF_X18_Y4_N7
\mem_write_add[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_out[0]~input_o\,
	sload => VCC,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[0]~reg0_q\);

-- Location: LCCOMB_X18_Y4_N24
\mem_write_add[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_add[1]~reg0feeder_combout\ = \rs_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[1]~input_o\,
	combout => \mem_write_add[1]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N25
\mem_write_add[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_add[1]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[1]~reg0_q\);

-- Location: FF_X18_Y4_N3
\mem_write_add[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_out[2]~input_o\,
	sload => VCC,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[2]~reg0_q\);

-- Location: LCCOMB_X18_Y4_N8
\mem_write_add[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_add[3]~reg0feeder_combout\ = \rs_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[3]~input_o\,
	combout => \mem_write_add[3]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N9
\mem_write_add[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_add[3]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[3]~reg0_q\);

-- Location: FF_X18_Y4_N11
\mem_write_add[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rs_out[4]~input_o\,
	sload => VCC,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[4]~reg0_q\);

-- Location: LCCOMB_X18_Y4_N0
\mem_write_add[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_add[5]~reg0feeder_combout\ = \rs_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[5]~input_o\,
	combout => \mem_write_add[5]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N1
\mem_write_add[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_add[5]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[5]~reg0_q\);

-- Location: LCCOMB_X16_Y4_N16
\mem_write_add[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_add[6]~reg0feeder_combout\ = \rs_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[6]~input_o\,
	combout => \mem_write_add[6]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N17
\mem_write_add[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_add[6]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[6]~reg0_q\);

-- Location: LCCOMB_X18_Y4_N22
\mem_write_add[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_add[7]~reg0feeder_combout\ = \rs_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs_out[7]~input_o\,
	combout => \mem_write_add[7]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N23
\mem_write_add[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_add[7]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_add[7]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N15
\rt_out[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(0),
	o => \rt_out[0]~input_o\);

-- Location: LCCOMB_X18_Y4_N20
\mem_write_data[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_data[0]~reg0feeder_combout\ = \rt_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_out[0]~input_o\,
	combout => \mem_write_data[0]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N21
\mem_write_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_data[0]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[0]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N1
\rt_out[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(1),
	o => \rt_out[1]~input_o\);

-- Location: LCCOMB_X18_Y4_N26
\mem_write_data[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_data[1]~reg0feeder_combout\ = \rt_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_out[1]~input_o\,
	combout => \mem_write_data[1]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N27
\mem_write_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_data[1]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[1]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N15
\rt_out[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(2),
	o => \rt_out[2]~input_o\);

-- Location: LCCOMB_X18_Y4_N12
\mem_write_data[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_data[2]~reg0feeder_combout\ = \rt_out[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_out[2]~input_o\,
	combout => \mem_write_data[2]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N13
\mem_write_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_data[2]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[2]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N1
\rt_out[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(3),
	o => \rt_out[3]~input_o\);

-- Location: LCCOMB_X18_Y4_N30
\mem_write_data[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_data[3]~reg0feeder_combout\ = \rt_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_out[3]~input_o\,
	combout => \mem_write_data[3]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N31
\mem_write_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_data[3]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[3]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N15
\rt_out[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(4),
	o => \rt_out[4]~input_o\);

-- Location: LCCOMB_X16_Y4_N18
\mem_write_data[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_data[4]~reg0feeder_combout\ = \rt_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_out[4]~input_o\,
	combout => \mem_write_data[4]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N19
\mem_write_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_data[4]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[4]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N1
\rt_out[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(5),
	o => \rt_out[5]~input_o\);

-- Location: LCCOMB_X18_Y4_N16
\mem_write_data[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_write_data[5]~reg0feeder_combout\ = \rt_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt_out[5]~input_o\,
	combout => \mem_write_data[5]~reg0feeder_combout\);

-- Location: FF_X18_Y4_N17
\mem_write_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_write_data[5]~reg0feeder_combout\,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[5]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N1
\rt_out[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(6),
	o => \rt_out[6]~input_o\);

-- Location: FF_X16_Y4_N29
\mem_write_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_out[6]~input_o\,
	sload => VCC,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[6]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N29
\rt_out[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt_out(7),
	o => \rt_out[7]~input_o\);

-- Location: FF_X18_Y4_N19
\mem_write_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rt_out[7]~input_o\,
	sload => VCC,
	ena => \mem_write_add[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_write_data[7]~reg0_q\);

-- Location: IOIBUF_X6_Y10_N29
\mem_read_data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(0),
	o => \mem_read_data[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N29
\mem_read_ready~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_ready,
	o => \mem_read_ready~input_o\);

-- Location: LCCOMB_X16_Y4_N26
\lsu_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[0]~0_combout\ = (\mem_read_ready~input_o\ & (\en~input_o\ & (!\reset~input_o\ & \mem_read_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_read_ready~input_o\,
	datab => \en~input_o\,
	datac => \reset~input_o\,
	datad => \mem_read_en~input_o\,
	combout => \lsu_out[0]~0_combout\);

-- Location: LCCOMB_X16_Y4_N2
\lsu_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[0]~1_combout\ = (\lsu_out[0]~0_combout\ & \lsu_currentstate.WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lsu_out[0]~0_combout\,
	datad => \lsu_currentstate.WAITING~q\,
	combout => \lsu_out[0]~1_combout\);

-- Location: FF_X16_Y4_N3
\lsu_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem_read_data[0]~input_o\,
	sload => VCC,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[0]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N29
\mem_read_data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(1),
	o => \mem_read_data[1]~input_o\);

-- Location: LCCOMB_X16_Y4_N12
\lsu_out[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[1]~reg0feeder_combout\ = \mem_read_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_read_data[1]~input_o\,
	combout => \lsu_out[1]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N13
\lsu_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_out[1]~reg0feeder_combout\,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[1]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N15
\mem_read_data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(2),
	o => \mem_read_data[2]~input_o\);

-- Location: FF_X16_Y4_N15
\lsu_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem_read_data[2]~input_o\,
	sload => VCC,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[2]~reg0_q\);

-- Location: IOIBUF_X15_Y0_N22
\mem_read_data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(3),
	o => \mem_read_data[3]~input_o\);

-- Location: LCCOMB_X16_Y4_N20
\lsu_out[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[3]~reg0feeder_combout\ = \mem_read_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_read_data[3]~input_o\,
	combout => \lsu_out[3]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N21
\lsu_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_out[3]~reg0feeder_combout\,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[3]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N22
\mem_read_data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(4),
	o => \mem_read_data[4]~input_o\);

-- Location: LCCOMB_X16_Y4_N30
\lsu_out[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[4]~reg0feeder_combout\ = \mem_read_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_read_data[4]~input_o\,
	combout => \lsu_out[4]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N31
\lsu_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_out[4]~reg0feeder_combout\,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[4]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N22
\mem_read_data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(5),
	o => \mem_read_data[5]~input_o\);

-- Location: LCCOMB_X16_Y4_N8
\lsu_out[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[5]~reg0feeder_combout\ = \mem_read_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_read_data[5]~input_o\,
	combout => \lsu_out[5]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N9
\lsu_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_out[5]~reg0feeder_combout\,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[5]~reg0_q\);

-- Location: IOIBUF_X27_Y0_N8
\mem_read_data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(6),
	o => \mem_read_data[6]~input_o\);

-- Location: LCCOMB_X16_Y4_N22
\lsu_out[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[6]~reg0feeder_combout\ = \mem_read_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_read_data[6]~input_o\,
	combout => \lsu_out[6]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N23
\lsu_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_out[6]~reg0feeder_combout\,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[6]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N22
\mem_read_data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_read_data(7),
	o => \mem_read_data[7]~input_o\);

-- Location: LCCOMB_X16_Y4_N24
\lsu_out[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lsu_out[7]~reg0feeder_combout\ = \mem_read_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_read_data[7]~input_o\,
	combout => \lsu_out[7]~reg0feeder_combout\);

-- Location: FF_X16_Y4_N25
\lsu_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lsu_out[7]~reg0feeder_combout\,
	ena => \lsu_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lsu_out[7]~reg0_q\);

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

ww_mem_read_add(0) <= \mem_read_add[0]~output_o\;

ww_mem_read_add(1) <= \mem_read_add[1]~output_o\;

ww_mem_read_add(2) <= \mem_read_add[2]~output_o\;

ww_mem_read_add(3) <= \mem_read_add[3]~output_o\;

ww_mem_read_add(4) <= \mem_read_add[4]~output_o\;

ww_mem_read_add(5) <= \mem_read_add[5]~output_o\;

ww_mem_read_add(6) <= \mem_read_add[6]~output_o\;

ww_mem_read_add(7) <= \mem_read_add[7]~output_o\;

ww_mem_write_add(0) <= \mem_write_add[0]~output_o\;

ww_mem_write_add(1) <= \mem_write_add[1]~output_o\;

ww_mem_write_add(2) <= \mem_write_add[2]~output_o\;

ww_mem_write_add(3) <= \mem_write_add[3]~output_o\;

ww_mem_write_add(4) <= \mem_write_add[4]~output_o\;

ww_mem_write_add(5) <= \mem_write_add[5]~output_o\;

ww_mem_write_add(6) <= \mem_write_add[6]~output_o\;

ww_mem_write_add(7) <= \mem_write_add[7]~output_o\;

ww_mem_write_data(0) <= \mem_write_data[0]~output_o\;

ww_mem_write_data(1) <= \mem_write_data[1]~output_o\;

ww_mem_write_data(2) <= \mem_write_data[2]~output_o\;

ww_mem_write_data(3) <= \mem_write_data[3]~output_o\;

ww_mem_write_data(4) <= \mem_write_data[4]~output_o\;

ww_mem_write_data(5) <= \mem_write_data[5]~output_o\;

ww_mem_write_data(6) <= \mem_write_data[6]~output_o\;

ww_mem_write_data(7) <= \mem_write_data[7]~output_o\;

ww_lsu_out(0) <= \lsu_out[0]~output_o\;

ww_lsu_out(1) <= \lsu_out[1]~output_o\;

ww_lsu_out(2) <= \lsu_out[2]~output_o\;

ww_lsu_out(3) <= \lsu_out[3]~output_o\;

ww_lsu_out(4) <= \lsu_out[4]~output_o\;

ww_lsu_out(5) <= \lsu_out[5]~output_o\;

ww_lsu_out(6) <= \lsu_out[6]~output_o\;

ww_lsu_out(7) <= \lsu_out[7]~output_o\;

\ww_lsu_state.IDLE\ <= \lsu_state.IDLE~output_o\;

\ww_lsu_state.REQUESTING\ <= \lsu_state.REQUESTING~output_o\;

\ww_lsu_state.WAITING\ <= \lsu_state.WAITING~output_o\;

\ww_lsu_state.DONE\ <= \lsu_state.DONE~output_o\;
END structure;


