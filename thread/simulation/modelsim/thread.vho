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

-- DATE "06/26/2025 19:03:21"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	thread IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	reg_write_en : IN std_logic;
	mem_read_en : IN std_logic;
	mem_write_en : IN std_logic;
	nzp_write_en : IN std_logic;
	state : IN std_logic_vector(2 DOWNTO 0);
	alu_select : IN std_logic_vector(1 DOWNTO 0);
	rs_address : IN std_logic_vector(3 DOWNTO 0);
	rt_address : IN std_logic_vector(3 DOWNTO 0);
	rd_address : IN std_logic_vector(3 DOWNTO 0);
	immediate : IN std_logic_vector(7 DOWNTO 0);
	reg_mux_in : IN std_logic_vector(1 DOWNTO 0);
	nzp_instr : IN std_logic_vector(2 DOWNTO 0);
	reg_block_id : IN std_logic_vector(7 DOWNTO 0);
	pc_out_mux : IN std_logic;
	mem_read_ready : IN std_logic;
	mem_write_ready : IN std_logic;
	mem_read_data : IN std_logic_vector(7 DOWNTO 0);
	current_pc : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	new_pc : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	mem_read_add : OUT std_logic_vector(7 DOWNTO 0);
	mem_write_add : OUT std_logic_vector(7 DOWNTO 0);
	mem_write_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END thread;

-- Design Ports Information
-- new_pc[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[4]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[5]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_add[7]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_add[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_data[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nzp_instr[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nzp_instr[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out_mux	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nzp_instr[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_en	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_en	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nzp_write_en	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_address[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_ready	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write_ready	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt_address[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_mux_in[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_mux_in[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_address[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_write_en	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[5]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_block_id[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_select[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_select[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read_data[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF thread IS
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
SIGNAL ww_reg_write_en : std_logic;
SIGNAL ww_mem_read_en : std_logic;
SIGNAL ww_mem_write_en : std_logic;
SIGNAL ww_nzp_write_en : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rs_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rt_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rd_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_immediate : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_mux_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nzp_instr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reg_block_id : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pc_out_mux : std_logic;
SIGNAL ww_mem_read_ready : std_logic;
SIGNAL ww_mem_write_ready : std_logic;
SIGNAL ww_mem_read_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_current_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_new_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_read_add : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_write_add : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu0|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \alu0|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \alu0|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \new_pc[0]~output_o\ : std_logic;
SIGNAL \new_pc[1]~output_o\ : std_logic;
SIGNAL \new_pc[2]~output_o\ : std_logic;
SIGNAL \new_pc[3]~output_o\ : std_logic;
SIGNAL \new_pc[4]~output_o\ : std_logic;
SIGNAL \new_pc[5]~output_o\ : std_logic;
SIGNAL \new_pc[6]~output_o\ : std_logic;
SIGNAL \new_pc[7]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_pc[0]~input_o\ : std_logic;
SIGNAL \counter|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rs_address[1]~input_o\ : std_logic;
SIGNAL \reg_mux_in[1]~input_o\ : std_logic;
SIGNAL \immediate[7]~input_o\ : std_logic;
SIGNAL \reg_mux_in[0]~input_o\ : std_logic;
SIGNAL \mem_read_data[7]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~9_combout\ : std_logic;
SIGNAL \load_store|lsu_state~0_combout\ : std_logic;
SIGNAL \state[2]~input_o\ : std_logic;
SIGNAL \state[0]~input_o\ : std_logic;
SIGNAL \state[1]~input_o\ : std_logic;
SIGNAL \load_store|Equal1~0_combout\ : std_logic;
SIGNAL \load_store|lsu_state[1]~3_combout\ : std_logic;
SIGNAL \mem_read_en~input_o\ : std_logic;
SIGNAL \mem_write_en~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \load_store|lsu_state[1]~4_combout\ : std_logic;
SIGNAL \mem_read_ready~input_o\ : std_logic;
SIGNAL \mem_write_ready~input_o\ : std_logic;
SIGNAL \load_store|lsu_state[1]~1_combout\ : std_logic;
SIGNAL \reg_file|Decoder0~0_combout\ : std_logic;
SIGNAL \load_store|lsu_state[1]~2_combout\ : std_logic;
SIGNAL \load_store|lsu_state[1]~5_combout\ : std_logic;
SIGNAL \load_store|lsu_state~6_combout\ : std_logic;
SIGNAL \load_store|lsu_out[7]~1_combout\ : std_logic;
SIGNAL \load_store|lsu_out[7]~2_combout\ : std_logic;
SIGNAL \alu_select[0]~input_o\ : std_logic;
SIGNAL \alu_select[1]~input_o\ : std_logic;
SIGNAL \rt_address[0]~input_o\ : std_logic;
SIGNAL \rd_address[0]~input_o\ : std_logic;
SIGNAL \rd_address[1]~input_o\ : std_logic;
SIGNAL \reg_file|Decoder0~1_combout\ : std_logic;
SIGNAL \rd_address[2]~input_o\ : std_logic;
SIGNAL \reg_write_en~input_o\ : std_logic;
SIGNAL \reg_file|Decoder0~2_combout\ : std_logic;
SIGNAL \reg_file|Decoder0~3_combout\ : std_logic;
SIGNAL \rd_address[3]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[2][6]~10_combout\ : std_logic;
SIGNAL \reg_file|reg_file[2][7]~q\ : std_logic;
SIGNAL \rt_address[1]~input_o\ : std_logic;
SIGNAL \reg_file|rt_data~67_combout\ : std_logic;
SIGNAL \reg_file|Decoder0~6_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][6]~13_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][7]~q\ : std_logic;
SIGNAL \reg_file|Decoder0~4_combout\ : std_logic;
SIGNAL \reg_file|reg_file[1][6]~11_combout\ : std_logic;
SIGNAL \reg_file|reg_file[1][7]~q\ : std_logic;
SIGNAL \reg_file|rt_data~68_combout\ : std_logic;
SIGNAL \rt_address[3]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[9][7]~3_combout\ : std_logic;
SIGNAL \reg_file|reg_file[9][7]~q\ : std_logic;
SIGNAL \reg_file|reg_file[10][5]~2_combout\ : std_logic;
SIGNAL \reg_file|reg_file[10][7]~q\ : std_logic;
SIGNAL \reg_file|Decoder0~5_combout\ : std_logic;
SIGNAL \reg_file|reg_file[8][4]~4_combout\ : std_logic;
SIGNAL \reg_file|reg_file[8][7]~q\ : std_logic;
SIGNAL \reg_file|rt_data~65_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][5]~5_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][7]~q\ : std_logic;
SIGNAL \reg_file|rt_data~66_combout\ : std_logic;
SIGNAL \rt_address[2]~input_o\ : std_logic;
SIGNAL \reg_file|rt_data~69_combout\ : std_logic;
SIGNAL \reg_file|Decoder0~7_combout\ : std_logic;
SIGNAL \reg_file|Decoder0~8_combout\ : std_logic;
SIGNAL \reg_file|reg_file[5][2]~7_combout\ : std_logic;
SIGNAL \reg_file|reg_file[5][7]~q\ : std_logic;
SIGNAL \reg_file|reg_file[4][5]~8_combout\ : std_logic;
SIGNAL \reg_file|reg_file[4][7]~q\ : std_logic;
SIGNAL \reg_file|rt_data~63_combout\ : std_logic;
SIGNAL \reg_file|reg_file[7][4]~9_combout\ : std_logic;
SIGNAL \reg_file|reg_file[7][7]~q\ : std_logic;
SIGNAL \reg_file|reg_file[6][2]~6_combout\ : std_logic;
SIGNAL \reg_file|reg_file[6][7]~q\ : std_logic;
SIGNAL \reg_file|rt_data~64_combout\ : std_logic;
SIGNAL \reg_block_id[7]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][2]~14_combout\ : std_logic;
SIGNAL \reg_file|reg_file[13][7]~q\ : std_logic;
SIGNAL \reg_file|reg_file[12][0]~15_combout\ : std_logic;
SIGNAL \reg_file|reg_file[12][7]~q\ : std_logic;
SIGNAL \reg_file|rt_data~70_combout\ : std_logic;
SIGNAL \reg_file|rt_data~71_combout\ : std_logic;
SIGNAL \reg_file|rt_data[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[0]~9_combout\ : std_logic;
SIGNAL \reg_file|rt_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Add1~48_combout\ : std_logic;
SIGNAL \immediate[6]~input_o\ : std_logic;
SIGNAL \mem_read_data[6]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~8_combout\ : std_logic;
SIGNAL \rs_address[0]~input_o\ : std_logic;
SIGNAL \reg_block_id[0]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][0]~q\ : std_logic;
SIGNAL \immediate[0]~input_o\ : std_logic;
SIGNAL \reg_file|rt_data~7_combout\ : std_logic;
SIGNAL \reg_file|reg_file[6][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[7][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[4][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[5][0]~q\ : std_logic;
SIGNAL \reg_file|rt_data~2_combout\ : std_logic;
SIGNAL \reg_file|rt_data~3_combout\ : std_logic;
SIGNAL \reg_file|reg_file[1][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[0][7]~12_combout\ : std_logic;
SIGNAL \reg_file|reg_file[0][0]~q\ : std_logic;
SIGNAL \reg_file|rt_data~4_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][0]~q\ : std_logic;
SIGNAL \reg_file|rt_data~5_combout\ : std_logic;
SIGNAL \reg_file|rt_data~6_combout\ : std_logic;
SIGNAL \reg_file|reg_file[8][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[9][0]~q\ : std_logic;
SIGNAL \reg_file|rt_data~0_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][0]~q\ : std_logic;
SIGNAL \reg_file|reg_file[10][0]~q\ : std_logic;
SIGNAL \reg_file|rt_data~1_combout\ : std_logic;
SIGNAL \reg_file|rt_data~8_combout\ : std_logic;
SIGNAL \reg_file|rt_data[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \immediate[1]~input_o\ : std_logic;
SIGNAL \alu0|Add1~8_combout\ : std_logic;
SIGNAL \rs_address[2]~input_o\ : std_logic;
SIGNAL \alu0|Add1~25_combout\ : std_logic;
SIGNAL \reg_file|reg_file[5][3]~q\ : std_logic;
SIGNAL \reg_file|reg_file[4][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~29_combout\ : std_logic;
SIGNAL \reg_file|reg_file[6][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~30_combout\ : std_logic;
SIGNAL \reg_file|reg_file[0][3]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~31_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][3]~q\ : std_logic;
SIGNAL \reg_file|reg_file[1][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~32_combout\ : std_logic;
SIGNAL \reg_file|rt_data~33_combout\ : std_logic;
SIGNAL \reg_file|reg_file[9][3]~q\ : std_logic;
SIGNAL \reg_file|reg_file[8][3]~q\ : std_logic;
SIGNAL \reg_file|reg_file[10][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~27_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~28_combout\ : std_logic;
SIGNAL \reg_file|reg_file[12][3]~q\ : std_logic;
SIGNAL \reg_block_id[3]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][3]~q\ : std_logic;
SIGNAL \reg_file|rt_data~34_combout\ : std_logic;
SIGNAL \reg_file|rt_data~35_combout\ : std_logic;
SIGNAL \reg_file|rt_data[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rt_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \immediate[2]~input_o\ : std_logic;
SIGNAL \mem_read_data[2]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~4_combout\ : std_logic;
SIGNAL \immediate[5]~input_o\ : std_logic;
SIGNAL \mem_read_data[5]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~7_combout\ : std_logic;
SIGNAL \rs_address[3]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[7][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[5][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[4][4]~q\ : std_logic;
SIGNAL \reg_file|rs_data~39_combout\ : std_logic;
SIGNAL \reg_file|rs_data~40_combout\ : std_logic;
SIGNAL \reg_file|reg_file[0][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[1][4]~q\ : std_logic;
SIGNAL \reg_file|rs_data~41_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][4]~q\ : std_logic;
SIGNAL \reg_file|rs_data~42_combout\ : std_logic;
SIGNAL \reg_file|rs_data~43_combout\ : std_logic;
SIGNAL \reg_block_id[4]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[12][4]~q\ : std_logic;
SIGNAL \reg_file|rs_data~44_combout\ : std_logic;
SIGNAL \reg_file|reg_file[9][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[8][4]~q\ : std_logic;
SIGNAL \reg_file|rs_data~37_combout\ : std_logic;
SIGNAL \reg_file|reg_file[10][4]~q\ : std_logic;
SIGNAL \reg_file|reg_file[11][4]~q\ : std_logic;
SIGNAL \reg_file|rs_data~38_combout\ : std_logic;
SIGNAL \reg_file|rs_data~45_combout\ : std_logic;
SIGNAL \reg_file|rs_data[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg_file|rs_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_file|reg_file[12][1]~q\ : std_logic;
SIGNAL \reg_block_id[1]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~17_combout\ : std_logic;
SIGNAL \reg_file|reg_file[8][1]~q\ : std_logic;
SIGNAL \reg_file|reg_file[9][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~10_combout\ : std_logic;
SIGNAL \reg_file|reg_file[10][1]~q\ : std_logic;
SIGNAL \reg_file|reg_file[11][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~11_combout\ : std_logic;
SIGNAL \reg_file|reg_file[4][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~12_combout\ : std_logic;
SIGNAL \reg_file|reg_file[5][1]~q\ : std_logic;
SIGNAL \reg_file|reg_file[7][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~13_combout\ : std_logic;
SIGNAL \reg_file|reg_file[1][1]~q\ : std_logic;
SIGNAL \reg_file|reg_file[0][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~14_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][1]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][1]~q\ : std_logic;
SIGNAL \reg_file|rs_data~15_combout\ : std_logic;
SIGNAL \reg_file|rs_data~16_combout\ : std_logic;
SIGNAL \reg_file|rs_data~18_combout\ : std_logic;
SIGNAL \reg_file|rs_data[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_file|reg_file[7][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[6][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[3][2]~q\ : std_logic;
SIGNAL \reg_file|rs_data~21_combout\ : std_logic;
SIGNAL \reg_file|rs_data~22_combout\ : std_logic;
SIGNAL \reg_file|reg_file[5][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[0][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[1][2]~q\ : std_logic;
SIGNAL \reg_file|rs_data~23_combout\ : std_logic;
SIGNAL \reg_file|rs_data~24_combout\ : std_logic;
SIGNAL \reg_file|rs_data~25_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[10][2]~q\ : std_logic;
SIGNAL \reg_file|rs_data~26_combout\ : std_logic;
SIGNAL \reg_block_id[2]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[8][2]~q\ : std_logic;
SIGNAL \reg_file|reg_file[9][2]~q\ : std_logic;
SIGNAL \reg_file|rs_data~19_combout\ : std_logic;
SIGNAL \reg_file|reg_file[12][2]~q\ : std_logic;
SIGNAL \reg_file|rs_data~20_combout\ : std_logic;
SIGNAL \reg_file|rs_data~27_combout\ : std_logic;
SIGNAL \reg_file|rs_data[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ : std_logic;
SIGNAL \reg_file|reg_file[6][5]~q\ : std_logic;
SIGNAL \reg_file|reg_file[7][5]~q\ : std_logic;
SIGNAL \reg_file|reg_file[5][5]~q\ : std_logic;
SIGNAL \reg_file|reg_file[4][5]~q\ : std_logic;
SIGNAL \reg_file|rt_data~45_combout\ : std_logic;
SIGNAL \reg_file|rt_data~46_combout\ : std_logic;
SIGNAL \reg_file|reg_file[0][5]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][5]~q\ : std_logic;
SIGNAL \reg_file|rt_data~49_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][5]~q\ : std_logic;
SIGNAL \reg_file|reg_file[1][5]~q\ : std_logic;
SIGNAL \reg_file|rt_data~50_combout\ : std_logic;
SIGNAL \reg_file|reg_file[8][5]~q\ : std_logic;
SIGNAL \reg_file|reg_file[10][5]~q\ : std_logic;
SIGNAL \reg_file|rt_data~47_combout\ : std_logic;
SIGNAL \reg_file|reg_file[9][5]~q\ : std_logic;
SIGNAL \reg_file|rt_data~48_combout\ : std_logic;
SIGNAL \reg_file|rt_data~51_combout\ : std_logic;
SIGNAL \reg_file|reg_file[12][5]~q\ : std_logic;
SIGNAL \reg_block_id[5]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][5]~q\ : std_logic;
SIGNAL \reg_file|rt_data~52_combout\ : std_logic;
SIGNAL \reg_file|rt_data~53_combout\ : std_logic;
SIGNAL \reg_file|rt_data[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rt_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_file|rt_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_file|rt_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg_file|rt_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu0|Add1~35_combout\ : std_logic;
SIGNAL \alu0|Add1~10_combout\ : std_logic;
SIGNAL \alu0|Add1~36_combout\ : std_logic;
SIGNAL \alu0|Add1~30_combout\ : std_logic;
SIGNAL \alu0|Add1~27\ : std_logic;
SIGNAL \alu0|Add1~32\ : std_logic;
SIGNAL \alu0|Add1~37_combout\ : std_logic;
SIGNAL \reg_file|reg_file[4][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[6][6]~q\ : std_logic;
SIGNAL \reg_file|rs_data~57_combout\ : std_logic;
SIGNAL \reg_file|reg_file[5][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[7][6]~q\ : std_logic;
SIGNAL \reg_file|rs_data~58_combout\ : std_logic;
SIGNAL \reg_file|reg_file[3][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[2][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[0][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[1][6]~q\ : std_logic;
SIGNAL \reg_file|rs_data~59_combout\ : std_logic;
SIGNAL \reg_file|rs_data~60_combout\ : std_logic;
SIGNAL \reg_file|rs_data~61_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[9][6]~q\ : std_logic;
SIGNAL \reg_file|reg_file[8][6]~q\ : std_logic;
SIGNAL \reg_file|rs_data~55_combout\ : std_logic;
SIGNAL \reg_file|rs_data~56_combout\ : std_logic;
SIGNAL \reg_file|reg_file[12][6]~q\ : std_logic;
SIGNAL \reg_block_id[6]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file[13][6]~q\ : std_logic;
SIGNAL \reg_file|rs_data~62_combout\ : std_logic;
SIGNAL \reg_file|rs_data~63_combout\ : std_logic;
SIGNAL \reg_file|rs_data[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \alu0|Add1~39_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \reg_file|rs_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \alu0|Add1~40_combout\ : std_logic;
SIGNAL \counter|new_pc[2]~2_combout\ : std_logic;
SIGNAL \counter|new_pc[2]~3_combout\ : std_logic;
SIGNAL \reg_file|reg_file~24_combout\ : std_logic;
SIGNAL \reg_file|reg_file~25_combout\ : std_logic;
SIGNAL \reg_file|reg_file[11][5]~q\ : std_logic;
SIGNAL \reg_file|rs_data~48_combout\ : std_logic;
SIGNAL \reg_file|rs_data~49_combout\ : std_logic;
SIGNAL \reg_file|rs_data~50_combout\ : std_logic;
SIGNAL \reg_file|rs_data~51_combout\ : std_logic;
SIGNAL \reg_file|rs_data~52_combout\ : std_logic;
SIGNAL \reg_file|rs_data~46_combout\ : std_logic;
SIGNAL \reg_file|rs_data~47_combout\ : std_logic;
SIGNAL \reg_file|rs_data~53_combout\ : std_logic;
SIGNAL \reg_file|rs_data~54_combout\ : std_logic;
SIGNAL \reg_file|rs_data[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Add1~53_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \alu0|Add1~31_combout\ : std_logic;
SIGNAL \alu0|Add1~33_combout\ : std_logic;
SIGNAL \alu0|Add1~34_combout\ : std_logic;
SIGNAL \mem_read_data[4]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~6_combout\ : std_logic;
SIGNAL \reg_file|reg_file~22_combout\ : std_logic;
SIGNAL \immediate[4]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file~23_combout\ : std_logic;
SIGNAL \reg_file|reg_file[6][4]~q\ : std_logic;
SIGNAL \reg_file|rt_data~38_combout\ : std_logic;
SIGNAL \reg_file|rt_data~39_combout\ : std_logic;
SIGNAL \reg_file|rt_data~40_combout\ : std_logic;
SIGNAL \reg_file|rt_data~41_combout\ : std_logic;
SIGNAL \reg_file|rt_data~42_combout\ : std_logic;
SIGNAL \reg_file|rt_data~43_combout\ : std_logic;
SIGNAL \reg_file|rt_data~36_combout\ : std_logic;
SIGNAL \reg_file|rt_data~37_combout\ : std_logic;
SIGNAL \reg_file|rt_data~44_combout\ : std_logic;
SIGNAL \reg_file|rt_data[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \alu0|Add1~19_combout\ : std_logic;
SIGNAL \alu0|Add1~13_combout\ : std_logic;
SIGNAL \alu0|Add1~2_combout\ : std_logic;
SIGNAL \alu0|Add1~4_cout\ : std_logic;
SIGNAL \alu0|Add1~6\ : std_logic;
SIGNAL \alu0|Add1~15\ : std_logic;
SIGNAL \alu0|Add1~20_combout\ : std_logic;
SIGNAL \alu0|Add1~22_combout\ : std_logic;
SIGNAL \alu0|Add1~18_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \alu0|Add1~23_combout\ : std_logic;
SIGNAL \reg_file|reg_file~18_combout\ : std_logic;
SIGNAL \reg_file|reg_file~19_combout\ : std_logic;
SIGNAL \reg_file|reg_file[4][2]~q\ : std_logic;
SIGNAL \reg_file|rt_data~22_combout\ : std_logic;
SIGNAL \reg_file|rt_data~23_combout\ : std_logic;
SIGNAL \reg_file|rt_data~20_combout\ : std_logic;
SIGNAL \reg_file|rt_data~21_combout\ : std_logic;
SIGNAL \reg_file|rt_data~24_combout\ : std_logic;
SIGNAL \reg_file|rt_data~25_combout\ : std_logic;
SIGNAL \reg_file|rt_data~18_combout\ : std_logic;
SIGNAL \reg_file|rt_data~19_combout\ : std_logic;
SIGNAL \reg_file|rt_data~26_combout\ : std_logic;
SIGNAL \reg_file|rt_data[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rt_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Add1~21\ : std_logic;
SIGNAL \alu0|Add1~26_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \alu0|Add1~28_combout\ : std_logic;
SIGNAL \alu0|Add1~24_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \alu0|Add1~29_combout\ : std_logic;
SIGNAL \mem_read_data[3]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~5_combout\ : std_logic;
SIGNAL \reg_file|reg_file~20_combout\ : std_logic;
SIGNAL \immediate[3]~input_o\ : std_logic;
SIGNAL \reg_file|reg_file~21_combout\ : std_logic;
SIGNAL \reg_file|reg_file[7][3]~q\ : std_logic;
SIGNAL \reg_file|rs_data~30_combout\ : std_logic;
SIGNAL \reg_file|rs_data~31_combout\ : std_logic;
SIGNAL \reg_file|rs_data~32_combout\ : std_logic;
SIGNAL \reg_file|rs_data~33_combout\ : std_logic;
SIGNAL \reg_file|rs_data~34_combout\ : std_logic;
SIGNAL \reg_file|rs_data~35_combout\ : std_logic;
SIGNAL \reg_file|rs_data~28_combout\ : std_logic;
SIGNAL \reg_file|rs_data~29_combout\ : std_logic;
SIGNAL \reg_file|rs_data~36_combout\ : std_logic;
SIGNAL \reg_file|rs_data[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ : std_logic;
SIGNAL \alu0|Add1~12_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \alu0|Add1~14_combout\ : std_logic;
SIGNAL \alu0|Add1~16_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \alu0|Add1~17_combout\ : std_logic;
SIGNAL \mem_read_data[1]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~3_combout\ : std_logic;
SIGNAL \reg_file|reg_file~16_combout\ : std_logic;
SIGNAL \reg_file|reg_file~17_combout\ : std_logic;
SIGNAL \reg_file|reg_file[6][1]~q\ : std_logic;
SIGNAL \reg_file|rt_data~11_combout\ : std_logic;
SIGNAL \reg_file|rt_data~12_combout\ : std_logic;
SIGNAL \reg_file|rt_data~13_combout\ : std_logic;
SIGNAL \reg_file|rt_data~14_combout\ : std_logic;
SIGNAL \reg_file|rt_data~15_combout\ : std_logic;
SIGNAL \reg_file|rt_data~9_combout\ : std_logic;
SIGNAL \reg_file|rt_data~10_combout\ : std_logic;
SIGNAL \reg_file|rt_data~16_combout\ : std_logic;
SIGNAL \reg_file|rt_data~17_combout\ : std_logic;
SIGNAL \reg_file|rt_data[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \alu0|Add1~5_combout\ : std_logic;
SIGNAL \alu0|Add1~7_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \alu0|Add1~9_combout\ : std_logic;
SIGNAL \alu0|Add1~11_combout\ : std_logic;
SIGNAL \mem_read_data[0]~input_o\ : std_logic;
SIGNAL \load_store|lsu_out~0_combout\ : std_logic;
SIGNAL \reg_file|reg_file~0_combout\ : std_logic;
SIGNAL \reg_file|reg_file~1_combout\ : std_logic;
SIGNAL \reg_file|reg_file[12][0]~q\ : std_logic;
SIGNAL \reg_file|rs_data~7_combout\ : std_logic;
SIGNAL \reg_file|rs_data~2_combout\ : std_logic;
SIGNAL \reg_file|rs_data~3_combout\ : std_logic;
SIGNAL \reg_file|rs_data~4_combout\ : std_logic;
SIGNAL \reg_file|rs_data~5_combout\ : std_logic;
SIGNAL \reg_file|rs_data~6_combout\ : std_logic;
SIGNAL \reg_file|rs_data~0_combout\ : std_logic;
SIGNAL \reg_file|rs_data~1_combout\ : std_logic;
SIGNAL \reg_file|rs_data~8_combout\ : std_logic;
SIGNAL \reg_file|rs_data[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reg_file|rs_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \alu0|Add1~41_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \alu0|Add1~42_combout\ : std_logic;
SIGNAL \alu0|Add1~38\ : std_logic;
SIGNAL \alu0|Add1~43_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \alu0|Add1~45_combout\ : std_logic;
SIGNAL \alu0|Add1~46_combout\ : std_logic;
SIGNAL \reg_file|reg_file~26_combout\ : std_logic;
SIGNAL \reg_file|reg_file~27_combout\ : std_logic;
SIGNAL \reg_file|reg_file[10][6]~q\ : std_logic;
SIGNAL \reg_file|rt_data~54_combout\ : std_logic;
SIGNAL \reg_file|rt_data~55_combout\ : std_logic;
SIGNAL \reg_file|rt_data~61_combout\ : std_logic;
SIGNAL \reg_file|rt_data~58_combout\ : std_logic;
SIGNAL \reg_file|rt_data~59_combout\ : std_logic;
SIGNAL \reg_file|rt_data~56_combout\ : std_logic;
SIGNAL \reg_file|rt_data~57_combout\ : std_logic;
SIGNAL \reg_file|rt_data~60_combout\ : std_logic;
SIGNAL \reg_file|rt_data~62_combout\ : std_logic;
SIGNAL \reg_file|rt_data[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rt_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Add1~44\ : std_logic;
SIGNAL \alu0|Add1~49_combout\ : std_logic;
SIGNAL \alu0|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \alu0|Add1~51_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \alu0|Add1~47_combout\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \alu0|Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \alu0|Add1~52_combout\ : std_logic;
SIGNAL \reg_file|reg_file~28_combout\ : std_logic;
SIGNAL \reg_file|reg_file~29_combout\ : std_logic;
SIGNAL \reg_file|reg_file[0][7]~q\ : std_logic;
SIGNAL \reg_file|rs_data~68_combout\ : std_logic;
SIGNAL \reg_file|rs_data~69_combout\ : std_logic;
SIGNAL \reg_file|rs_data~66_combout\ : std_logic;
SIGNAL \reg_file|rs_data~67_combout\ : std_logic;
SIGNAL \reg_file|rs_data~70_combout\ : std_logic;
SIGNAL \reg_file|rs_data~71_combout\ : std_logic;
SIGNAL \reg_file|rs_data~64_combout\ : std_logic;
SIGNAL \reg_file|rs_data~65_combout\ : std_logic;
SIGNAL \reg_file|rs_data~72_combout\ : std_logic;
SIGNAL \reg_file|rs_data[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg_file|rs_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \alu0|Add0~1\ : std_logic;
SIGNAL \alu0|Add0~3\ : std_logic;
SIGNAL \alu0|Add0~5\ : std_logic;
SIGNAL \alu0|Add0~7\ : std_logic;
SIGNAL \alu0|Add0~9\ : std_logic;
SIGNAL \alu0|Add0~11\ : std_logic;
SIGNAL \alu0|Add0~13\ : std_logic;
SIGNAL \alu0|Add0~14_combout\ : std_logic;
SIGNAL \counter|nzp_reg~3_combout\ : std_logic;
SIGNAL \nzp_write_en~input_o\ : std_logic;
SIGNAL \counter|nzp_reg[0]~1_combout\ : std_logic;
SIGNAL \alu0|Add0~12_combout\ : std_logic;
SIGNAL \alu0|Add0~8_combout\ : std_logic;
SIGNAL \alu0|Add0~10_combout\ : std_logic;
SIGNAL \alu0|Mux2~1_combout\ : std_logic;
SIGNAL \alu0|Add0~6_combout\ : std_logic;
SIGNAL \alu0|Add0~2_combout\ : std_logic;
SIGNAL \alu0|Add0~4_combout\ : std_logic;
SIGNAL \alu0|Add0~0_combout\ : std_logic;
SIGNAL \alu0|Mux2~0_combout\ : std_logic;
SIGNAL \alu0|alu_nzp[1]~0_combout\ : std_logic;
SIGNAL \alu0|alu_nzp[1]~1_combout\ : std_logic;
SIGNAL \counter|nzp_reg~0_combout\ : std_logic;
SIGNAL \nzp_instr[0]~input_o\ : std_logic;
SIGNAL \alu0|Mux2~2_combout\ : std_logic;
SIGNAL \counter|nzp_reg~2_combout\ : std_logic;
SIGNAL \nzp_instr[1]~input_o\ : std_logic;
SIGNAL \counter|new_pc~0_combout\ : std_logic;
SIGNAL \nzp_instr[2]~input_o\ : std_logic;
SIGNAL \pc_out_mux~input_o\ : std_logic;
SIGNAL \counter|new_pc~1_combout\ : std_logic;
SIGNAL \counter|Add0~2_combout\ : std_logic;
SIGNAL \current_pc[1]~input_o\ : std_logic;
SIGNAL \counter|Add0~1\ : std_logic;
SIGNAL \counter|Add0~3_combout\ : std_logic;
SIGNAL \counter|Add0~5_combout\ : std_logic;
SIGNAL \current_pc[2]~input_o\ : std_logic;
SIGNAL \counter|Add0~4\ : std_logic;
SIGNAL \counter|Add0~6_combout\ : std_logic;
SIGNAL \counter|Add0~8_combout\ : std_logic;
SIGNAL \current_pc[3]~input_o\ : std_logic;
SIGNAL \counter|Add0~7\ : std_logic;
SIGNAL \counter|Add0~9_combout\ : std_logic;
SIGNAL \counter|Add0~11_combout\ : std_logic;
SIGNAL \current_pc[4]~input_o\ : std_logic;
SIGNAL \counter|Add0~10\ : std_logic;
SIGNAL \counter|Add0~12_combout\ : std_logic;
SIGNAL \counter|Add0~14_combout\ : std_logic;
SIGNAL \current_pc[5]~input_o\ : std_logic;
SIGNAL \counter|Add0~13\ : std_logic;
SIGNAL \counter|Add0~15_combout\ : std_logic;
SIGNAL \counter|Add0~17_combout\ : std_logic;
SIGNAL \current_pc[6]~input_o\ : std_logic;
SIGNAL \counter|Add0~16\ : std_logic;
SIGNAL \counter|Add0~18_combout\ : std_logic;
SIGNAL \counter|Add0~20_combout\ : std_logic;
SIGNAL \current_pc[7]~input_o\ : std_logic;
SIGNAL \counter|Add0~19\ : std_logic;
SIGNAL \counter|Add0~21_combout\ : std_logic;
SIGNAL \counter|Add0~23_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~0_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[0]~feeder_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[6]~1_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[6]~2_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~3_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[1]~feeder_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~4_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[2]~feeder_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~5_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[3]~feeder_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~6_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~7_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~8_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[6]~feeder_combout\ : std_logic;
SIGNAL \load_store|mem_read_add~9_combout\ : std_logic;
SIGNAL \load_store|mem_read_add[7]~feeder_combout\ : std_logic;
SIGNAL \load_store|mem_write_data[1]~0_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~1_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~2_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~3_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~4_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~5_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~6_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~7_combout\ : std_logic;
SIGNAL \load_store|mem_write_data~8_combout\ : std_logic;
SIGNAL \load_store|lsu_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu0|alu_nzp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \counter|new_pc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \load_store|lsu_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \counter|nzp_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \alu0|oo\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \load_store|mem_read_add\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \load_store|mem_write_add\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \load_store|mem_write_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu0|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);

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
ww_reg_write_en <= reg_write_en;
ww_mem_read_en <= mem_read_en;
ww_mem_write_en <= mem_write_en;
ww_nzp_write_en <= nzp_write_en;
ww_state <= state;
ww_alu_select <= alu_select;
ww_rs_address <= rs_address;
ww_rt_address <= rt_address;
ww_rd_address <= rd_address;
ww_immediate <= immediate;
ww_reg_mux_in <= reg_mux_in;
ww_nzp_instr <= nzp_instr;
ww_reg_block_id <= reg_block_id;
ww_pc_out_mux <= pc_out_mux;
ww_mem_read_ready <= mem_read_ready;
ww_mem_write_ready <= mem_write_ready;
ww_mem_read_data <= mem_read_data;
ww_current_pc <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(current_pc);
new_pc <= IEEE.NUMERIC_STD.UNSIGNED(ww_new_pc);
mem_read_add <= ww_mem_read_add;
mem_write_add <= ww_mem_write_add;
mem_write_data <= ww_mem_write_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\alu0|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\alu0|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \alu0|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \alu0|Mult0|auto_generated|mac_mult1~dataout\ & \alu0|Mult0|auto_generated|mac_mult1~1\ & \alu0|Mult0|auto_generated|mac_mult1~0\);

\alu0|Mult0|auto_generated|mac_out2~0\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\alu0|Mult0|auto_generated|mac_out2~1\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\alu0|Mult0|auto_generated|mac_out2~dataout\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\alu0|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\alu0|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\reg_file|rt_data[7]~SCLR_LUT_combout\ & \reg_file|rt_data[6]~SCLR_LUT_combout\ & \reg_file|rt_data[5]~SCLR_LUT_combout\ & \reg_file|rt_data[4]~SCLR_LUT_combout\ & \reg_file|rt_data[3]~SCLR_LUT_combout\
& \reg_file|rt_data[2]~SCLR_LUT_combout\ & \reg_file|rt_data[1]~SCLR_LUT_combout\ & \reg_file|rt_data[0]~SCLR_LUT_combout\ & gnd);

\alu0|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\reg_file|rs_data[7]~SCLR_LUT_combout\ & \reg_file|rs_data[6]~SCLR_LUT_combout\ & \reg_file|rs_data[5]~SCLR_LUT_combout\ & \reg_file|rs_data[4]~SCLR_LUT_combout\ & \reg_file|rs_data[3]~SCLR_LUT_combout\
& \reg_file|rs_data[2]~SCLR_LUT_combout\ & \reg_file|rs_data[1]~SCLR_LUT_combout\ & \reg_file|rs_data[0]~SCLR_LUT_combout\ & gnd);

\alu0|Mult0|auto_generated|mac_mult1~0\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\alu0|Mult0|auto_generated|mac_mult1~1\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\alu0|Mult0|auto_generated|mac_mult1~dataout\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\alu0|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

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

-- Location: IOOBUF_X27_Y25_N9
\new_pc[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(0),
	devoe => ww_devoe,
	o => \new_pc[0]~output_o\);

-- Location: IOOBUF_X27_Y25_N16
\new_pc[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(1),
	devoe => ww_devoe,
	o => \new_pc[1]~output_o\);

-- Location: IOOBUF_X27_Y25_N2
\new_pc[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(2),
	devoe => ww_devoe,
	o => \new_pc[2]~output_o\);

-- Location: IOOBUF_X27_Y25_N30
\new_pc[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(3),
	devoe => ww_devoe,
	o => \new_pc[3]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\new_pc[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(4),
	devoe => ww_devoe,
	o => \new_pc[4]~output_o\);

-- Location: IOOBUF_X31_Y21_N2
\new_pc[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(5),
	devoe => ww_devoe,
	o => \new_pc[5]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\new_pc[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(6),
	devoe => ww_devoe,
	o => \new_pc[6]~output_o\);

-- Location: IOOBUF_X27_Y25_N23
\new_pc[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter|new_pc\(7),
	devoe => ww_devoe,
	o => \new_pc[7]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\mem_read_add[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(0),
	devoe => ww_devoe,
	o => \mem_read_add[0]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\mem_read_add[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(1),
	devoe => ww_devoe,
	o => \mem_read_add[1]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\mem_read_add[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(2),
	devoe => ww_devoe,
	o => \mem_read_add[2]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\mem_read_add[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(3),
	devoe => ww_devoe,
	o => \mem_read_add[3]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\mem_read_add[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(4),
	devoe => ww_devoe,
	o => \mem_read_add[4]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\mem_read_add[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(5),
	devoe => ww_devoe,
	o => \mem_read_add[5]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\mem_read_add[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(6),
	devoe => ww_devoe,
	o => \mem_read_add[6]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\mem_read_add[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_read_add\(7),
	devoe => ww_devoe,
	o => \mem_read_add[7]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\mem_write_add[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(0),
	devoe => ww_devoe,
	o => \mem_write_add[0]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\mem_write_add[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(1),
	devoe => ww_devoe,
	o => \mem_write_add[1]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\mem_write_add[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(2),
	devoe => ww_devoe,
	o => \mem_write_add[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\mem_write_add[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(3),
	devoe => ww_devoe,
	o => \mem_write_add[3]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\mem_write_add[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(4),
	devoe => ww_devoe,
	o => \mem_write_add[4]~output_o\);

-- Location: IOOBUF_X31_Y9_N2
\mem_write_add[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(5),
	devoe => ww_devoe,
	o => \mem_write_add[5]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\mem_write_add[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(6),
	devoe => ww_devoe,
	o => \mem_write_add[6]~output_o\);

-- Location: IOOBUF_X31_Y17_N2
\mem_write_add[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_add\(7),
	devoe => ww_devoe,
	o => \mem_write_add[7]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\mem_write_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(0),
	devoe => ww_devoe,
	o => \mem_write_data[0]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\mem_write_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(1),
	devoe => ww_devoe,
	o => \mem_write_data[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\mem_write_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(2),
	devoe => ww_devoe,
	o => \mem_write_data[2]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\mem_write_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(3),
	devoe => ww_devoe,
	o => \mem_write_data[3]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\mem_write_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(4),
	devoe => ww_devoe,
	o => \mem_write_data[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\mem_write_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(5),
	devoe => ww_devoe,
	o => \mem_write_data[5]~output_o\);

-- Location: IOOBUF_X31_Y19_N9
\mem_write_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(6),
	devoe => ww_devoe,
	o => \mem_write_data[6]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\mem_write_data[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load_store|mem_write_data\(7),
	devoe => ww_devoe,
	o => \mem_write_data[7]~output_o\);

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

-- Location: IOIBUF_X29_Y25_N22
\current_pc[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(0),
	o => \current_pc[0]~input_o\);

-- Location: LCCOMB_X28_Y21_N10
\counter|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~0_combout\ = \current_pc[0]~input_o\ $ (VCC)
-- \counter|Add0~1\ = CARRY(\current_pc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_pc[0]~input_o\,
	datad => VCC,
	combout => \counter|Add0~0_combout\,
	cout => \counter|Add0~1\);

-- Location: IOIBUF_X31_Y12_N22
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

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: IOIBUF_X22_Y25_N29
\reg_mux_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_mux_in(1),
	o => \reg_mux_in[1]~input_o\);

-- Location: IOIBUF_X24_Y25_N8
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

-- Location: IOIBUF_X24_Y25_N1
\reg_mux_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_mux_in(0),
	o => \reg_mux_in[0]~input_o\);

-- Location: IOIBUF_X31_Y17_N22
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

-- Location: LCCOMB_X24_Y17_N8
\load_store|lsu_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~9_combout\ = (!\reset~input_o\ & \mem_read_data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \mem_read_data[7]~input_o\,
	combout => \load_store|lsu_out~9_combout\);

-- Location: LCCOMB_X29_Y17_N4
\load_store|lsu_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state~0_combout\ = (!\reset~input_o\ & !\load_store|lsu_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \load_store|lsu_state\(0),
	combout => \load_store|lsu_state~0_combout\);

-- Location: IOIBUF_X31_Y12_N8
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

-- Location: IOIBUF_X31_Y11_N1
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

-- Location: IOIBUF_X31_Y12_N15
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

-- Location: LCCOMB_X30_Y17_N20
\load_store|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|Equal1~0_combout\ = (!\state[2]~input_o\ & (\state[0]~input_o\ & \state[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[2]~input_o\,
	datac => \state[0]~input_o\,
	datad => \state[1]~input_o\,
	combout => \load_store|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y17_N10
\load_store|lsu_state[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state[1]~3_combout\ = (!\load_store|lsu_state\(1) & (!\load_store|lsu_state\(0) & !\load_store|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load_store|lsu_state\(1),
	datab => \load_store|lsu_state\(0),
	datac => \load_store|Equal1~0_combout\,
	combout => \load_store|lsu_state[1]~3_combout\);

-- Location: IOIBUF_X31_Y14_N22
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

-- Location: IOIBUF_X31_Y13_N1
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

-- Location: IOIBUF_X31_Y17_N15
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

-- Location: LCCOMB_X29_Y17_N20
\load_store|lsu_state[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state[1]~4_combout\ = ((!\mem_read_en~input_o\ & !\mem_write_en~input_o\)) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_read_en~input_o\,
	datac => \mem_write_en~input_o\,
	datad => \en~input_o\,
	combout => \load_store|lsu_state[1]~4_combout\);

-- Location: IOIBUF_X31_Y14_N15
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

-- Location: IOIBUF_X31_Y14_N1
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

-- Location: LCCOMB_X29_Y17_N26
\load_store|lsu_state[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state[1]~1_combout\ = (\mem_read_ready~input_o\ & (((!\mem_read_en~input_o\ & !\mem_write_ready~input_o\)))) # (!\mem_read_ready~input_o\ & (((!\mem_write_ready~input_o\)) # (!\mem_write_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_write_en~input_o\,
	datab => \mem_read_ready~input_o\,
	datac => \mem_read_en~input_o\,
	datad => \mem_write_ready~input_o\,
	combout => \load_store|lsu_state[1]~1_combout\);

-- Location: LCCOMB_X30_Y17_N24
\reg_file|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~0_combout\ = (\state[2]~input_o\ & (!\state[0]~input_o\ & \state[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[2]~input_o\,
	datac => \state[0]~input_o\,
	datad => \state[1]~input_o\,
	combout => \reg_file|Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\load_store|lsu_state[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state[1]~2_combout\ = (\load_store|lsu_state\(1) & ((\load_store|lsu_state\(0) & ((!\reg_file|Decoder0~0_combout\))) # (!\load_store|lsu_state\(0) & (\load_store|lsu_state[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load_store|lsu_state\(1),
	datab => \load_store|lsu_state\(0),
	datac => \load_store|lsu_state[1]~1_combout\,
	datad => \reg_file|Decoder0~0_combout\,
	combout => \load_store|lsu_state[1]~2_combout\);

-- Location: LCCOMB_X29_Y17_N18
\load_store|lsu_state[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state[1]~5_combout\ = (\reset~input_o\) # ((!\load_store|lsu_state[1]~3_combout\ & (!\load_store|lsu_state[1]~4_combout\ & !\load_store|lsu_state[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load_store|lsu_state[1]~3_combout\,
	datab => \load_store|lsu_state[1]~4_combout\,
	datac => \reset~input_o\,
	datad => \load_store|lsu_state[1]~2_combout\,
	combout => \load_store|lsu_state[1]~5_combout\);

-- Location: FF_X29_Y17_N5
\load_store|lsu_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_state~0_combout\,
	ena => \load_store|lsu_state[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_state\(0));

-- Location: LCCOMB_X29_Y17_N6
\load_store|lsu_state~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_state~6_combout\ = (!\reset~input_o\ & (\load_store|lsu_state\(0) $ (\load_store|lsu_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load_store|lsu_state\(0),
	datac => \load_store|lsu_state\(1),
	datad => \reset~input_o\,
	combout => \load_store|lsu_state~6_combout\);

-- Location: FF_X29_Y17_N7
\load_store|lsu_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_state~6_combout\,
	ena => \load_store|lsu_state[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_state\(1));

-- Location: LCCOMB_X29_Y17_N24
\load_store|lsu_out[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out[7]~1_combout\ = ((\load_store|lsu_state\(0)) # ((!\mem_read_ready~input_o\) # (!\mem_read_en~input_o\))) # (!\load_store|lsu_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load_store|lsu_state\(1),
	datab => \load_store|lsu_state\(0),
	datac => \mem_read_en~input_o\,
	datad => \mem_read_ready~input_o\,
	combout => \load_store|lsu_out[7]~1_combout\);

-- Location: LCCOMB_X29_Y17_N22
\load_store|lsu_out[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out[7]~2_combout\ = (\reset~input_o\) # ((!\load_store|lsu_out[7]~1_combout\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load_store|lsu_out[7]~1_combout\,
	datac => \reset~input_o\,
	datad => \en~input_o\,
	combout => \load_store|lsu_out[7]~2_combout\);

-- Location: FF_X24_Y17_N9
\load_store|lsu_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~9_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(7));

-- Location: IOIBUF_X10_Y18_N8
\alu_select[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_select(0),
	o => \alu_select[0]~input_o\);

-- Location: IOIBUF_X15_Y25_N1
\alu_select[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_select(1),
	o => \alu_select[1]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
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

-- Location: IOIBUF_X15_Y25_N29
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

-- Location: IOIBUF_X17_Y25_N15
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

-- Location: LCCOMB_X22_Y21_N6
\reg_file|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~1_combout\ = (!\rd_address[0]~input_o\ & \rd_address[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[0]~input_o\,
	datad => \rd_address[1]~input_o\,
	combout => \reg_file|Decoder0~1_combout\);

-- Location: IOIBUF_X10_Y20_N1
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

-- Location: IOIBUF_X31_Y15_N8
\reg_write_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_write_en,
	o => \reg_write_en~input_o\);

-- Location: LCCOMB_X30_Y17_N4
\reg_file|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~2_combout\ = ((!\en~input_o\) # (!\reg_write_en~input_o\)) # (!\reg_file|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|Decoder0~0_combout\,
	datac => \reg_write_en~input_o\,
	datad => \en~input_o\,
	combout => \reg_file|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y20_N24
\reg_file|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~3_combout\ = (!\rd_address[2]~input_o\ & (!\reg_file|Decoder0~2_combout\ & ((!\reg_mux_in[1]~input_o\) # (!\reg_mux_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \rd_address[2]~input_o\,
	datac => \reg_file|Decoder0~2_combout\,
	datad => \reg_mux_in[1]~input_o\,
	combout => \reg_file|Decoder0~3_combout\);

-- Location: IOIBUF_X19_Y25_N8
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

-- Location: LCCOMB_X22_Y21_N16
\reg_file|reg_file[2][6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[2][6]~10_combout\ = (\reset~input_o\) # ((\reg_file|Decoder0~1_combout\ & (\reg_file|Decoder0~3_combout\ & !\rd_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|Decoder0~1_combout\,
	datab => \reg_file|Decoder0~3_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[2][6]~10_combout\);

-- Location: FF_X19_Y20_N1
\reg_file|reg_file[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][7]~q\);

-- Location: IOIBUF_X10_Y20_N8
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

-- Location: LCCOMB_X19_Y20_N14
\reg_file|rt_data~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~67_combout\ = (\rt_address[0]~input_o\ & (((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & (\reg_file|reg_file[2][7]~q\)) # (!\rt_address[1]~input_o\ & ((\reg_file|reg_file[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[2][7]~q\,
	datac => \reg_file|reg_file[0][7]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~67_combout\);

-- Location: LCCOMB_X19_Y22_N16
\reg_file|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~6_combout\ = (\rd_address[1]~input_o\ & (\rd_address[0]~input_o\ & \reg_file|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_address[1]~input_o\,
	datac => \rd_address[0]~input_o\,
	datad => \reg_file|Decoder0~3_combout\,
	combout => \reg_file|Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y21_N26
\reg_file|reg_file[3][6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[3][6]~13_combout\ = (\reset~input_o\) # ((!\rd_address[3]~input_o\ & \reg_file|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[3]~input_o\,
	datac => \reg_file|Decoder0~6_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[3][6]~13_combout\);

-- Location: FF_X20_Y20_N29
\reg_file|reg_file[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][7]~q\);

-- Location: LCCOMB_X18_Y20_N18
\reg_file|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~4_combout\ = (\rd_address[0]~input_o\ & (!\rd_address[1]~input_o\ & \reg_file|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[0]~input_o\,
	datab => \rd_address[1]~input_o\,
	datad => \reg_file|Decoder0~3_combout\,
	combout => \reg_file|Decoder0~4_combout\);

-- Location: LCCOMB_X18_Y20_N6
\reg_file|reg_file[1][6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[1][6]~11_combout\ = (\reset~input_o\) # ((!\rd_address[3]~input_o\ & \reg_file|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \rd_address[3]~input_o\,
	datad => \reg_file|Decoder0~4_combout\,
	combout => \reg_file|reg_file[1][6]~11_combout\);

-- Location: FF_X20_Y20_N11
\reg_file|reg_file[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][7]~q\);

-- Location: LCCOMB_X20_Y20_N28
\reg_file|rt_data~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~68_combout\ = (\reg_file|rt_data~67_combout\ & (((\reg_file|reg_file[3][7]~q\)) # (!\rt_address[0]~input_o\))) # (!\reg_file|rt_data~67_combout\ & (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~67_combout\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[3][7]~q\,
	datad => \reg_file|reg_file[1][7]~q\,
	combout => \reg_file|rt_data~68_combout\);

-- Location: IOIBUF_X17_Y25_N22
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

-- Location: LCCOMB_X18_Y20_N28
\reg_file|reg_file[9][7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[9][7]~3_combout\ = (\reset~input_o\) # ((\rd_address[3]~input_o\ & \reg_file|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \rd_address[3]~input_o\,
	datad => \reg_file|Decoder0~4_combout\,
	combout => \reg_file|reg_file[9][7]~3_combout\);

-- Location: FF_X24_Y21_N5
\reg_file|reg_file[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][7]~q\);

-- Location: LCCOMB_X22_Y21_N28
\reg_file|reg_file[10][5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[10][5]~2_combout\ = (\reset~input_o\) # ((\reg_file|Decoder0~1_combout\ & (\reg_file|Decoder0~3_combout\ & \rd_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|Decoder0~1_combout\,
	datab => \reg_file|Decoder0~3_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[10][5]~2_combout\);

-- Location: FF_X23_Y21_N29
\reg_file|reg_file[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][7]~q\);

-- Location: LCCOMB_X22_Y20_N8
\reg_file|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~5_combout\ = (!\rd_address[0]~input_o\ & !\rd_address[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd_address[0]~input_o\,
	datad => \rd_address[1]~input_o\,
	combout => \reg_file|Decoder0~5_combout\);

-- Location: LCCOMB_X19_Y20_N4
\reg_file|reg_file[8][4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[8][4]~4_combout\ = (\reset~input_o\) # ((\rd_address[3]~input_o\ & (\reg_file|Decoder0~5_combout\ & \reg_file|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[3]~input_o\,
	datab => \reset~input_o\,
	datac => \reg_file|Decoder0~5_combout\,
	datad => \reg_file|Decoder0~3_combout\,
	combout => \reg_file|reg_file[8][4]~4_combout\);

-- Location: FF_X23_Y21_N27
\reg_file|reg_file[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][7]~q\);

-- Location: LCCOMB_X23_Y21_N26
\reg_file|rt_data~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~65_combout\ = (\rt_address[0]~input_o\ & (((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & (\reg_file|reg_file[10][7]~q\)) # (!\rt_address[1]~input_o\ & ((\reg_file|reg_file[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[10][7]~q\,
	datac => \reg_file|reg_file[8][7]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~65_combout\);

-- Location: LCCOMB_X22_Y21_N10
\reg_file|reg_file[11][5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[11][5]~5_combout\ = (\reset~input_o\) # ((\rd_address[3]~input_o\ & \reg_file|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[3]~input_o\,
	datac => \reg_file|Decoder0~6_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[11][5]~5_combout\);

-- Location: FF_X22_Y21_N15
\reg_file|reg_file[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][7]~q\);

-- Location: LCCOMB_X22_Y21_N14
\reg_file|rt_data~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~66_combout\ = (\reg_file|rt_data~65_combout\ & (((\reg_file|reg_file[11][7]~q\) # (!\rt_address[0]~input_o\)))) # (!\reg_file|rt_data~65_combout\ & (\reg_file|reg_file[9][7]~q\ & ((\rt_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[9][7]~q\,
	datab => \reg_file|rt_data~65_combout\,
	datac => \reg_file|reg_file[11][7]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \reg_file|rt_data~66_combout\);

-- Location: IOIBUF_X10_Y19_N1
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

-- Location: LCCOMB_X22_Y21_N20
\reg_file|rt_data~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~69_combout\ = (\rt_address[3]~input_o\ & (((\reg_file|rt_data~66_combout\) # (\rt_address[2]~input_o\)))) # (!\rt_address[3]~input_o\ & (\reg_file|rt_data~68_combout\ & ((!\rt_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~68_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \reg_file|rt_data~66_combout\,
	datad => \rt_address[2]~input_o\,
	combout => \reg_file|rt_data~69_combout\);

-- Location: LCCOMB_X23_Y20_N10
\reg_file|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~7_combout\ = (\rd_address[2]~input_o\ & (!\reg_file|Decoder0~2_combout\ & ((!\reg_mux_in[1]~input_o\) # (!\reg_mux_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \rd_address[2]~input_o\,
	datac => \reg_file|Decoder0~2_combout\,
	datad => \reg_mux_in[1]~input_o\,
	combout => \reg_file|Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y20_N6
\reg_file|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|Decoder0~8_combout\ = (!\rd_address[3]~input_o\ & \reg_file|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd_address[3]~input_o\,
	datad => \reg_file|Decoder0~7_combout\,
	combout => \reg_file|Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y21_N4
\reg_file|reg_file[5][2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[5][2]~7_combout\ = (\reset~input_o\) # ((!\rd_address[1]~input_o\ & (\reg_file|Decoder0~8_combout\ & \rd_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rd_address[1]~input_o\,
	datac => \reg_file|Decoder0~8_combout\,
	datad => \rd_address[0]~input_o\,
	combout => \reg_file|reg_file[5][2]~7_combout\);

-- Location: FF_X18_Y21_N9
\reg_file|reg_file[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][7]~q\);

-- Location: LCCOMB_X23_Y20_N8
\reg_file|reg_file[4][5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[4][5]~8_combout\ = (\reset~input_o\) # ((\reg_file|Decoder0~7_combout\ & (\reg_file|Decoder0~5_combout\ & !\rd_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|Decoder0~7_combout\,
	datab => \reg_file|Decoder0~5_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[4][5]~8_combout\);

-- Location: FF_X18_Y21_N19
\reg_file|reg_file[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][7]~q\);

-- Location: LCCOMB_X18_Y21_N18
\reg_file|rt_data~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~63_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[5][7]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[4][7]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[5][7]~q\,
	datac => \reg_file|reg_file[4][7]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~63_combout\);

-- Location: LCCOMB_X22_Y21_N22
\reg_file|reg_file[7][4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[7][4]~9_combout\ = (\reset~input_o\) # ((\rd_address[1]~input_o\ & (\reg_file|Decoder0~8_combout\ & \rd_address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rd_address[1]~input_o\,
	datac => \reg_file|Decoder0~8_combout\,
	datad => \rd_address[0]~input_o\,
	combout => \reg_file|reg_file[7][4]~9_combout\);

-- Location: FF_X22_Y20_N13
\reg_file|reg_file[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][7]~q\);

-- Location: LCCOMB_X23_Y20_N0
\reg_file|reg_file[6][2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[6][2]~6_combout\ = (\reset~input_o\) # ((\reg_file|Decoder0~7_combout\ & (!\rd_address[3]~input_o\ & \reg_file|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|Decoder0~7_combout\,
	datab => \rd_address[3]~input_o\,
	datac => \reg_file|Decoder0~1_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[6][2]~6_combout\);

-- Location: FF_X22_Y20_N3
\reg_file|reg_file[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][7]~q\);

-- Location: LCCOMB_X22_Y20_N12
\reg_file|rt_data~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~64_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~63_combout\ & (\reg_file|reg_file[7][7]~q\)) # (!\reg_file|rt_data~63_combout\ & ((\reg_file|reg_file[6][7]~q\))))) # (!\rt_address[1]~input_o\ & 
-- (\reg_file|rt_data~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|rt_data~63_combout\,
	datac => \reg_file|reg_file[7][7]~q\,
	datad => \reg_file|reg_file[6][7]~q\,
	combout => \reg_file|rt_data~64_combout\);

-- Location: IOIBUF_X19_Y25_N1
\reg_block_id[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(7),
	o => \reg_block_id[7]~input_o\);

-- Location: LCCOMB_X30_Y17_N22
\reg_file|reg_file[13][2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[13][2]~14_combout\ = (\reset~input_o\) # ((\reg_file|Decoder0~0_combout\ & (\reg_write_en~input_o\ & \en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|Decoder0~0_combout\,
	datab => \reset~input_o\,
	datac => \reg_write_en~input_o\,
	datad => \en~input_o\,
	combout => \reg_file|reg_file[13][2]~14_combout\);

-- Location: FF_X24_Y18_N25
\reg_file|reg_file[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[7]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][7]~q\);

-- Location: LCCOMB_X23_Y20_N30
\reg_file|reg_file[12][0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[12][0]~15_combout\ = (\reset~input_o\) # ((\reg_file|Decoder0~7_combout\ & (\reg_file|Decoder0~5_combout\ & \rd_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|Decoder0~7_combout\,
	datab => \reg_file|Decoder0~5_combout\,
	datac => \rd_address[3]~input_o\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file[12][0]~15_combout\);

-- Location: FF_X24_Y21_N11
\reg_file|reg_file[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~29_combout\,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][7]~q\);

-- Location: LCCOMB_X24_Y18_N24
\reg_file|rt_data~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~70_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file|reg_file[13][7]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file|reg_file[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[13][7]~q\,
	datad => \reg_file|reg_file[12][7]~q\,
	combout => \reg_file|rt_data~70_combout\);

-- Location: LCCOMB_X24_Y18_N20
\reg_file|rt_data~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~71_combout\ = (\reg_file|rt_data~69_combout\ & (((\reg_file|rt_data~70_combout\) # (!\rt_address[2]~input_o\)))) # (!\reg_file|rt_data~69_combout\ & (\reg_file|rt_data~64_combout\ & (\rt_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~69_combout\,
	datab => \reg_file|rt_data~64_combout\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~70_combout\,
	combout => \reg_file|rt_data~71_combout\);

-- Location: LCCOMB_X24_Y18_N28
\reg_file|rt_data[7]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[7]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rt_data~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rt_data~71_combout\,
	combout => \reg_file|rt_data[7]~SCLR_LUT_combout\);

-- Location: LCCOMB_X30_Y17_N14
\reg_file|rs_data[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[0]~9_combout\ = (\reset~input_o\) # ((\load_store|Equal1~0_combout\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load_store|Equal1~0_combout\,
	datac => \reset~input_o\,
	datad => \en~input_o\,
	combout => \reg_file|rs_data[0]~9_combout\);

-- Location: FF_X25_Y14_N11
\reg_file|rt_data[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rt_data[7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y17_N26
\alu0|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~48_combout\ = \reg_file|rs_data[7]~_Duplicate_1_q\ $ (\alu_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~48_combout\);

-- Location: IOIBUF_X24_Y25_N22
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

-- Location: IOIBUF_X31_Y17_N8
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

-- Location: LCCOMB_X24_Y17_N10
\load_store|lsu_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~8_combout\ = (!\reset~input_o\ & \mem_read_data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \mem_read_data[6]~input_o\,
	combout => \load_store|lsu_out~8_combout\);

-- Location: FF_X24_Y17_N11
\load_store|lsu_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~8_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(6));

-- Location: IOIBUF_X19_Y25_N22
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

-- Location: IOIBUF_X31_Y15_N15
\reg_block_id[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(0),
	o => \reg_block_id[0]~input_o\);

-- Location: FF_X24_Y18_N5
\reg_file|reg_file[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[0]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][0]~q\);

-- Location: IOIBUF_X31_Y21_N15
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

-- Location: LCCOMB_X24_Y18_N4
\reg_file|rt_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~7_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file|reg_file[13][0]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file|reg_file[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[13][0]~q\,
	datad => \reg_file|reg_file[12][0]~q\,
	combout => \reg_file|rt_data~7_combout\);

-- Location: FF_X19_Y21_N17
\reg_file|reg_file[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][0]~q\);

-- Location: FF_X19_Y21_N7
\reg_file|reg_file[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][0]~q\);

-- Location: FF_X18_Y21_N11
\reg_file|reg_file[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][0]~q\);

-- Location: FF_X18_Y21_N1
\reg_file|reg_file[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][0]~q\);

-- Location: LCCOMB_X18_Y21_N10
\reg_file|rt_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~2_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\) # ((\reg_file|reg_file[5][0]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[1]~input_o\ & (\reg_file|reg_file[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[4][0]~q\,
	datad => \reg_file|reg_file[5][0]~q\,
	combout => \reg_file|rt_data~2_combout\);

-- Location: LCCOMB_X19_Y21_N6
\reg_file|rt_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~3_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~2_combout\ & ((\reg_file|reg_file[7][0]~q\))) # (!\reg_file|rt_data~2_combout\ & (\reg_file|reg_file[6][0]~q\)))) # (!\rt_address[1]~input_o\ & 
-- (((\reg_file|rt_data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|reg_file[6][0]~q\,
	datac => \reg_file|reg_file[7][0]~q\,
	datad => \reg_file|rt_data~2_combout\,
	combout => \reg_file|rt_data~3_combout\);

-- Location: FF_X18_Y20_N25
\reg_file|reg_file[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][0]~q\);

-- Location: LCCOMB_X19_Y20_N26
\reg_file|reg_file[0][7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file[0][7]~12_combout\ = (\reset~input_o\) # ((!\rd_address[3]~input_o\ & (\reg_file|Decoder0~5_combout\ & \reg_file|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_address[3]~input_o\,
	datab => \reset~input_o\,
	datac => \reg_file|Decoder0~5_combout\,
	datad => \reg_file|Decoder0~3_combout\,
	combout => \reg_file|reg_file[0][7]~12_combout\);

-- Location: FF_X18_Y20_N15
\reg_file|reg_file[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][0]~q\);

-- Location: LCCOMB_X18_Y20_N14
\reg_file|rt_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~4_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][0]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[0][0]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[1][0]~q\,
	datac => \reg_file|reg_file[0][0]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~4_combout\);

-- Location: FF_X19_Y18_N25
\reg_file|reg_file[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][0]~q\);

-- Location: FF_X19_Y20_N25
\reg_file|reg_file[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][0]~q\);

-- Location: LCCOMB_X19_Y18_N24
\reg_file|rt_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~5_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~4_combout\ & (\reg_file|reg_file[3][0]~q\)) # (!\reg_file|rt_data~4_combout\ & ((\reg_file|reg_file[2][0]~q\))))) # (!\rt_address[1]~input_o\ & (\reg_file|rt_data~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|rt_data~4_combout\,
	datac => \reg_file|reg_file[3][0]~q\,
	datad => \reg_file|reg_file[2][0]~q\,
	combout => \reg_file|rt_data~5_combout\);

-- Location: LCCOMB_X22_Y18_N28
\reg_file|rt_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~6_combout\ = (\rt_address[3]~input_o\ & (((\rt_address[2]~input_o\)))) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\reg_file|rt_data~3_combout\)) # (!\rt_address[2]~input_o\ & ((\reg_file|rt_data~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \reg_file|rt_data~3_combout\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~5_combout\,
	combout => \reg_file|rt_data~6_combout\);

-- Location: FF_X23_Y21_N15
\reg_file|reg_file[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][0]~q\);

-- Location: FF_X24_Y21_N29
\reg_file|reg_file[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][0]~q\);

-- Location: LCCOMB_X23_Y21_N14
\reg_file|rt_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~0_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\) # ((\reg_file|reg_file[9][0]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[1]~input_o\ & (\reg_file|reg_file[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[8][0]~q\,
	datad => \reg_file|reg_file[9][0]~q\,
	combout => \reg_file|rt_data~0_combout\);

-- Location: FF_X22_Y21_N25
\reg_file|reg_file[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][0]~q\);

-- Location: FF_X23_Y21_N5
\reg_file|reg_file[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][0]~q\);

-- Location: LCCOMB_X22_Y21_N24
\reg_file|rt_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~1_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~0_combout\ & (\reg_file|reg_file[11][0]~q\)) # (!\reg_file|rt_data~0_combout\ & ((\reg_file|reg_file[10][0]~q\))))) # (!\rt_address[1]~input_o\ & (\reg_file|rt_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|rt_data~0_combout\,
	datac => \reg_file|reg_file[11][0]~q\,
	datad => \reg_file|reg_file[10][0]~q\,
	combout => \reg_file|rt_data~1_combout\);

-- Location: LCCOMB_X22_Y18_N22
\reg_file|rt_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~8_combout\ = (\reg_file|rt_data~6_combout\ & ((\reg_file|rt_data~7_combout\) # ((!\rt_address[3]~input_o\)))) # (!\reg_file|rt_data~6_combout\ & (((\rt_address[3]~input_o\ & \reg_file|rt_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~7_combout\,
	datab => \reg_file|rt_data~6_combout\,
	datac => \rt_address[3]~input_o\,
	datad => \reg_file|rt_data~1_combout\,
	combout => \reg_file|rt_data~8_combout\);

-- Location: LCCOMB_X25_Y14_N4
\reg_file|rt_data[0]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[0]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rt_data~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rt_data~8_combout\,
	combout => \reg_file|rt_data[0]~SCLR_LUT_combout\);

-- Location: IOIBUF_X31_Y21_N22
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

-- Location: LCCOMB_X22_Y18_N30
\alu0|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~8_combout\ = (\alu_select[1]~input_o\ & (\alu_select[0]~input_o\ & (\reg_file|rs_data[7]~_Duplicate_1_q\ $ (!\reg_file|rt_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datac => \alu_select[1]~input_o\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~8_combout\);

-- Location: IOIBUF_X10_Y21_N8
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

-- Location: LCCOMB_X18_Y17_N4
\alu0|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~25_combout\ = \alu_select[0]~input_o\ $ (\reg_file|rs_data[3]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datad => \reg_file|rs_data[3]~_Duplicate_1_q\,
	combout => \alu0|Add1~25_combout\);

-- Location: FF_X18_Y21_N25
\reg_file|reg_file[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][3]~q\);

-- Location: FF_X18_Y21_N23
\reg_file|reg_file[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][3]~q\);

-- Location: LCCOMB_X18_Y21_N22
\reg_file|rt_data~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~29_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[5][3]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[4][3]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[5][3]~q\,
	datac => \reg_file|reg_file[4][3]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~29_combout\);

-- Location: FF_X19_Y21_N21
\reg_file|reg_file[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][3]~q\);

-- Location: LCCOMB_X19_Y21_N30
\reg_file|rt_data~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~30_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~29_combout\ & (\reg_file|reg_file[7][3]~q\)) # (!\reg_file|rt_data~29_combout\ & ((\reg_file|reg_file[6][3]~q\))))) # (!\rt_address[1]~input_o\ & 
-- (\reg_file|rt_data~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|rt_data~29_combout\,
	datac => \reg_file|reg_file[7][3]~q\,
	datad => \reg_file|reg_file[6][3]~q\,
	combout => \reg_file|rt_data~30_combout\);

-- Location: FF_X19_Y20_N17
\reg_file|reg_file[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][3]~q\);

-- Location: FF_X19_Y20_N19
\reg_file|reg_file[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][3]~q\);

-- Location: LCCOMB_X19_Y20_N16
\reg_file|rt_data~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~31_combout\ = (\rt_address[0]~input_o\ & (\rt_address[1]~input_o\)) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & ((\reg_file|reg_file[2][3]~q\))) # (!\rt_address[1]~input_o\ & (\reg_file|reg_file[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[0][3]~q\,
	datad => \reg_file|reg_file[2][3]~q\,
	combout => \reg_file|rt_data~31_combout\);

-- Location: FF_X20_Y20_N21
\reg_file|reg_file[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][3]~q\);

-- Location: FF_X20_Y20_N19
\reg_file|reg_file[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][3]~q\);

-- Location: LCCOMB_X20_Y20_N20
\reg_file|rt_data~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~32_combout\ = (\reg_file|rt_data~31_combout\ & (((\reg_file|reg_file[3][3]~q\)) # (!\rt_address[0]~input_o\))) # (!\reg_file|rt_data~31_combout\ & (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~31_combout\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[3][3]~q\,
	datad => \reg_file|reg_file[1][3]~q\,
	combout => \reg_file|rt_data~32_combout\);

-- Location: LCCOMB_X20_Y20_N6
\reg_file|rt_data~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~33_combout\ = (\rt_address[3]~input_o\ & (((\rt_address[2]~input_o\)))) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\reg_file|rt_data~30_combout\)) # (!\rt_address[2]~input_o\ & ((\reg_file|rt_data~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~30_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~32_combout\,
	combout => \reg_file|rt_data~33_combout\);

-- Location: FF_X20_Y21_N25
\reg_file|reg_file[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][3]~q\);

-- Location: FF_X23_Y21_N11
\reg_file|reg_file[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][3]~q\);

-- Location: FF_X23_Y21_N13
\reg_file|reg_file[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][3]~q\);

-- Location: LCCOMB_X23_Y21_N10
\reg_file|rt_data~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~27_combout\ = (\rt_address[0]~input_o\ & (\rt_address[1]~input_o\)) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & ((\reg_file|reg_file[10][3]~q\))) # (!\rt_address[1]~input_o\ & (\reg_file|reg_file[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[8][3]~q\,
	datad => \reg_file|reg_file[10][3]~q\,
	combout => \reg_file|rt_data~27_combout\);

-- Location: FF_X22_Y21_N19
\reg_file|reg_file[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][3]~q\);

-- Location: LCCOMB_X22_Y21_N18
\reg_file|rt_data~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~28_combout\ = (\reg_file|rt_data~27_combout\ & (((\reg_file|reg_file[11][3]~q\) # (!\rt_address[0]~input_o\)))) # (!\reg_file|rt_data~27_combout\ & (\reg_file|reg_file[9][3]~q\ & ((\rt_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[9][3]~q\,
	datab => \reg_file|rt_data~27_combout\,
	datac => \reg_file|reg_file[11][3]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \reg_file|rt_data~28_combout\);

-- Location: FF_X23_Y20_N3
\reg_file|reg_file[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~21_combout\,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][3]~q\);

-- Location: IOIBUF_X31_Y22_N1
\reg_block_id[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(3),
	o => \reg_block_id[3]~input_o\);

-- Location: FF_X24_Y18_N23
\reg_file|reg_file[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[3]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][3]~q\);

-- Location: LCCOMB_X24_Y18_N22
\reg_file|rt_data~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~34_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file|reg_file[13][3]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file|reg_file[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|reg_file[12][3]~q\,
	datac => \reg_file|reg_file[13][3]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \reg_file|rt_data~34_combout\);

-- Location: LCCOMB_X24_Y18_N30
\reg_file|rt_data~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~35_combout\ = (\reg_file|rt_data~33_combout\ & (((\reg_file|rt_data~34_combout\) # (!\rt_address[3]~input_o\)))) # (!\reg_file|rt_data~33_combout\ & (\reg_file|rt_data~28_combout\ & (\rt_address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~33_combout\,
	datab => \reg_file|rt_data~28_combout\,
	datac => \rt_address[3]~input_o\,
	datad => \reg_file|rt_data~34_combout\,
	combout => \reg_file|rt_data~35_combout\);

-- Location: LCCOMB_X24_Y17_N18
\reg_file|rt_data[3]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[3]~SCLR_LUT_combout\ = (\reg_file|rt_data~35_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rt_data~35_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|rt_data[3]~SCLR_LUT_combout\);

-- Location: FF_X25_Y14_N23
\reg_file|rt_data[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rt_data[3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[3]~_Duplicate_1_q\);

-- Location: IOIBUF_X22_Y25_N22
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

-- Location: IOIBUF_X31_Y15_N1
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

-- Location: LCCOMB_X24_Y17_N4
\load_store|lsu_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~4_combout\ = (!\reset~input_o\ & \mem_read_data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \mem_read_data[2]~input_o\,
	combout => \load_store|lsu_out~4_combout\);

-- Location: FF_X24_Y17_N5
\load_store|lsu_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~4_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(2));

-- Location: IOIBUF_X22_Y25_N1
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

-- Location: IOIBUF_X31_Y13_N8
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

-- Location: LCCOMB_X27_Y17_N0
\load_store|lsu_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~7_combout\ = (!\reset~input_o\ & \mem_read_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mem_read_data[5]~input_o\,
	combout => \load_store|lsu_out~7_combout\);

-- Location: FF_X27_Y17_N1
\load_store|lsu_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~7_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(5));

-- Location: IOIBUF_X19_Y25_N15
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

-- Location: FF_X19_Y21_N11
\reg_file|reg_file[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][4]~q\);

-- Location: FF_X18_Y21_N13
\reg_file|reg_file[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][4]~q\);

-- Location: FF_X18_Y21_N31
\reg_file|reg_file[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][4]~q\);

-- Location: LCCOMB_X19_Y21_N28
\reg_file|rs_data~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~39_combout\ = (\rs_address[0]~input_o\ & (\rs_address[1]~input_o\)) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & (\reg_file|reg_file[6][4]~q\)) # (!\rs_address[1]~input_o\ & ((\reg_file|reg_file[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[6][4]~q\,
	datad => \reg_file|reg_file[4][4]~q\,
	combout => \reg_file|rs_data~39_combout\);

-- Location: LCCOMB_X18_Y21_N12
\reg_file|rs_data~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~40_combout\ = (\rs_address[0]~input_o\ & ((\reg_file|rs_data~39_combout\ & (\reg_file|reg_file[7][4]~q\)) # (!\reg_file|rs_data~39_combout\ & ((\reg_file|reg_file[5][4]~q\))))) # (!\rs_address[0]~input_o\ & 
-- (((\reg_file|rs_data~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[7][4]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][4]~q\,
	datad => \reg_file|rs_data~39_combout\,
	combout => \reg_file|rs_data~40_combout\);

-- Location: FF_X18_Y20_N31
\reg_file|reg_file[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][4]~q\);

-- Location: FF_X18_Y20_N9
\reg_file|reg_file[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][4]~q\);

-- Location: LCCOMB_X18_Y20_N8
\reg_file|rs_data~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~41_combout\ = (\rs_address[1]~input_o\ & (((\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[1][4]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[0][4]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[1][4]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~41_combout\);

-- Location: FF_X19_Y18_N27
\reg_file|reg_file[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][4]~q\);

-- Location: FF_X19_Y20_N31
\reg_file|reg_file[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][4]~q\);

-- Location: LCCOMB_X19_Y20_N30
\reg_file|rs_data~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~42_combout\ = (\reg_file|rs_data~41_combout\ & ((\reg_file|reg_file[3][4]~q\) # ((!\rs_address[1]~input_o\)))) # (!\reg_file|rs_data~41_combout\ & (((\reg_file|reg_file[2][4]~q\ & \rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~41_combout\,
	datab => \reg_file|reg_file[3][4]~q\,
	datac => \reg_file|reg_file[2][4]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~42_combout\);

-- Location: LCCOMB_X20_Y21_N30
\reg_file|rs_data~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~43_combout\ = (\rs_address[2]~input_o\ & ((\rs_address[3]~input_o\) # ((\reg_file|rs_data~40_combout\)))) # (!\rs_address[2]~input_o\ & (!\rs_address[3]~input_o\ & ((\reg_file|rs_data~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \reg_file|rs_data~40_combout\,
	datad => \reg_file|rs_data~42_combout\,
	combout => \reg_file|rs_data~43_combout\);

-- Location: IOIBUF_X15_Y25_N22
\reg_block_id[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(4),
	o => \reg_block_id[4]~input_o\);

-- Location: FF_X23_Y20_N21
\reg_file|reg_file[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[4]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][4]~q\);

-- Location: FF_X23_Y20_N13
\reg_file|reg_file[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~23_combout\,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][4]~q\);

-- Location: LCCOMB_X22_Y20_N24
\reg_file|rs_data~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~44_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[13][4]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[13][4]~q\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file|reg_file[12][4]~q\,
	combout => \reg_file|rs_data~44_combout\);

-- Location: FF_X24_Y21_N9
\reg_file|reg_file[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][4]~q\);

-- Location: FF_X23_Y21_N19
\reg_file|reg_file[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][4]~q\);

-- Location: LCCOMB_X24_Y21_N8
\reg_file|rs_data~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~37_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[9][4]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[9][4]~q\,
	datad => \reg_file|reg_file[8][4]~q\,
	combout => \reg_file|rs_data~37_combout\);

-- Location: FF_X23_Y21_N9
\reg_file|reg_file[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][4]~q\);

-- Location: FF_X22_Y21_N13
\reg_file|reg_file[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][4]~q\);

-- Location: LCCOMB_X23_Y21_N8
\reg_file|rs_data~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~38_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~37_combout\ & ((\reg_file|reg_file[11][4]~q\))) # (!\reg_file|rs_data~37_combout\ & (\reg_file|reg_file[10][4]~q\)))) # (!\rs_address[1]~input_o\ & 
-- (\reg_file|rs_data~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|rs_data~37_combout\,
	datac => \reg_file|reg_file[10][4]~q\,
	datad => \reg_file|reg_file[11][4]~q\,
	combout => \reg_file|rs_data~38_combout\);

-- Location: LCCOMB_X19_Y20_N8
\reg_file|rs_data~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~45_combout\ = (\reg_file|rs_data~43_combout\ & ((\reg_file|rs_data~44_combout\) # ((!\rs_address[3]~input_o\)))) # (!\reg_file|rs_data~43_combout\ & (((\rs_address[3]~input_o\ & \reg_file|rs_data~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~43_combout\,
	datab => \reg_file|rs_data~44_combout\,
	datac => \rs_address[3]~input_o\,
	datad => \reg_file|rs_data~38_combout\,
	combout => \reg_file|rs_data~45_combout\);

-- Location: LCCOMB_X19_Y20_N20
\reg_file|rs_data[4]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[4]~SCLR_LUT_combout\ = (\reg_file|rs_data~45_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data~45_combout\,
	datac => \reset~input_o\,
	combout => \reg_file|rs_data[4]~SCLR_LUT_combout\);

-- Location: LCCOMB_X22_Y14_N28
\reg_file|rs_data[4]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[4]~_Duplicate_1feeder_combout\ = \reg_file|rs_data[4]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|rs_data[4]~SCLR_LUT_combout\,
	combout => \reg_file|rs_data[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y14_N29
\reg_file|rs_data[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|rs_data[4]~_Duplicate_1feeder_combout\,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[4]~_Duplicate_1_q\);

-- Location: FF_X24_Y21_N27
\reg_file|reg_file[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~17_combout\,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][1]~q\);

-- Location: IOIBUF_X24_Y25_N15
\reg_block_id[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(1),
	o => \reg_block_id[1]~input_o\);

-- Location: FF_X24_Y18_N19
\reg_file|reg_file[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[1]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][1]~q\);

-- Location: LCCOMB_X24_Y18_N14
\reg_file|rs_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~17_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[13][1]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|reg_file[12][1]~q\,
	datac => \rs_address[1]~input_o\,
	datad => \reg_file|reg_file[13][1]~q\,
	combout => \reg_file|rs_data~17_combout\);

-- Location: FF_X23_Y21_N23
\reg_file|reg_file[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][1]~q\);

-- Location: FF_X24_Y21_N25
\reg_file|reg_file[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][1]~q\);

-- Location: LCCOMB_X24_Y21_N24
\reg_file|rs_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~10_combout\ = (\rs_address[1]~input_o\ & (((\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[9][1]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[8][1]~q\,
	datac => \reg_file|reg_file[9][1]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~10_combout\);

-- Location: FF_X23_Y21_N1
\reg_file|reg_file[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][1]~q\);

-- Location: FF_X22_Y21_N3
\reg_file|reg_file[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][1]~q\);

-- Location: LCCOMB_X23_Y21_N0
\reg_file|rs_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~11_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~10_combout\ & ((\reg_file|reg_file[11][1]~q\))) # (!\reg_file|rs_data~10_combout\ & (\reg_file|reg_file[10][1]~q\)))) # (!\rs_address[1]~input_o\ & 
-- (\reg_file|rs_data~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|rs_data~10_combout\,
	datac => \reg_file|reg_file[10][1]~q\,
	datad => \reg_file|reg_file[11][1]~q\,
	combout => \reg_file|rs_data~11_combout\);

-- Location: FF_X18_Y21_N15
\reg_file|reg_file[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][1]~q\);

-- Location: LCCOMB_X19_Y21_N24
\reg_file|rs_data~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~12_combout\ = (\rs_address[1]~input_o\ & (((\reg_file|reg_file[6][1]~q\) # (\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & (\reg_file|reg_file[4][1]~q\ & ((!\rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[4][1]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[6][1]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~12_combout\);

-- Location: FF_X18_Y21_N17
\reg_file|reg_file[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][1]~q\);

-- Location: FF_X19_Y21_N19
\reg_file|reg_file[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][1]~q\);

-- Location: LCCOMB_X18_Y21_N16
\reg_file|rs_data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~13_combout\ = (\reg_file|rs_data~12_combout\ & (((\reg_file|reg_file[7][1]~q\)) # (!\rs_address[0]~input_o\))) # (!\reg_file|rs_data~12_combout\ & (\rs_address[0]~input_o\ & (\reg_file|reg_file[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~12_combout\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][1]~q\,
	datad => \reg_file|reg_file[7][1]~q\,
	combout => \reg_file|rs_data~13_combout\);

-- Location: FF_X18_Y20_N13
\reg_file|reg_file[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][1]~q\);

-- Location: FF_X18_Y20_N23
\reg_file|reg_file[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][1]~q\);

-- Location: LCCOMB_X18_Y20_N12
\reg_file|rs_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~14_combout\ = (\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\) # ((\reg_file|reg_file[1][1]~q\)))) # (!\rs_address[0]~input_o\ & (!\rs_address[1]~input_o\ & ((\reg_file|reg_file[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[1][1]~q\,
	datad => \reg_file|reg_file[0][1]~q\,
	combout => \reg_file|rs_data~14_combout\);

-- Location: FF_X24_Y20_N25
\reg_file|reg_file[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][1]~q\);

-- Location: FF_X19_Y20_N23
\reg_file|reg_file[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][1]~q\);

-- Location: LCCOMB_X19_Y20_N22
\reg_file|rs_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~15_combout\ = (\reg_file|rs_data~14_combout\ & ((\reg_file|reg_file[3][1]~q\) # ((!\rs_address[1]~input_o\)))) # (!\reg_file|rs_data~14_combout\ & (((\reg_file|reg_file[2][1]~q\ & \rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~14_combout\,
	datab => \reg_file|reg_file[3][1]~q\,
	datac => \reg_file|reg_file[2][1]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~15_combout\);

-- Location: LCCOMB_X19_Y21_N8
\reg_file|rs_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~16_combout\ = (\rs_address[2]~input_o\ & ((\reg_file|rs_data~13_combout\) # ((\rs_address[3]~input_o\)))) # (!\rs_address[2]~input_o\ & (((\reg_file|rs_data~15_combout\ & !\rs_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~13_combout\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file|rs_data~15_combout\,
	datad => \rs_address[3]~input_o\,
	combout => \reg_file|rs_data~16_combout\);

-- Location: LCCOMB_X20_Y21_N22
\reg_file|rs_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~18_combout\ = (\rs_address[3]~input_o\ & ((\reg_file|rs_data~16_combout\ & (\reg_file|rs_data~17_combout\)) # (!\reg_file|rs_data~16_combout\ & ((\reg_file|rs_data~11_combout\))))) # (!\rs_address[3]~input_o\ & 
-- (((\reg_file|rs_data~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~17_combout\,
	datab => \rs_address[3]~input_o\,
	datac => \reg_file|rs_data~11_combout\,
	datad => \reg_file|rs_data~16_combout\,
	combout => \reg_file|rs_data~18_combout\);

-- Location: LCCOMB_X20_Y17_N4
\reg_file|rs_data[1]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[1]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rs_data~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \reg_file|rs_data~18_combout\,
	combout => \reg_file|rs_data[1]~SCLR_LUT_combout\);

-- Location: FF_X22_Y14_N11
\reg_file|rs_data[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rs_data[1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[1]~_Duplicate_1_q\);

-- Location: FF_X19_Y21_N13
\reg_file|reg_file[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][2]~q\);

-- Location: FF_X19_Y21_N23
\reg_file|reg_file[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][2]~q\);

-- Location: FF_X19_Y20_N29
\reg_file|reg_file[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][2]~q\);

-- Location: FF_X20_Y20_N5
\reg_file|reg_file[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][2]~q\);

-- Location: LCCOMB_X20_Y20_N4
\reg_file|rs_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~21_combout\ = (\rs_address[2]~input_o\ & (((\rs_address[0]~input_o\)))) # (!\rs_address[2]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[3][2]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \reg_file|reg_file[2][2]~q\,
	datac => \reg_file|reg_file[3][2]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~21_combout\);

-- Location: LCCOMB_X19_Y21_N22
\reg_file|rs_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~22_combout\ = (\rs_address[2]~input_o\ & ((\reg_file|rs_data~21_combout\ & (\reg_file|reg_file[7][2]~q\)) # (!\reg_file|rs_data~21_combout\ & ((\reg_file|reg_file[6][2]~q\))))) # (!\rs_address[2]~input_o\ & 
-- (((\reg_file|rs_data~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[7][2]~q\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file|reg_file[6][2]~q\,
	datad => \reg_file|rs_data~21_combout\,
	combout => \reg_file|rs_data~22_combout\);

-- Location: FF_X18_Y21_N27
\reg_file|reg_file[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][2]~q\);

-- Location: FF_X18_Y20_N27
\reg_file|reg_file[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][2]~q\);

-- Location: FF_X18_Y20_N17
\reg_file|reg_file[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][2]~q\);

-- Location: LCCOMB_X18_Y20_N16
\reg_file|rs_data~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~23_combout\ = (\rs_address[2]~input_o\ & (((\rs_address[0]~input_o\)))) # (!\rs_address[2]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[1][2]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[0][2]~q\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file|reg_file[1][2]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~23_combout\);

-- Location: LCCOMB_X18_Y21_N20
\reg_file|rs_data~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~24_combout\ = (\rs_address[2]~input_o\ & ((\reg_file|rs_data~23_combout\ & (\reg_file|reg_file[5][2]~q\)) # (!\reg_file|rs_data~23_combout\ & ((\reg_file|reg_file[4][2]~q\))))) # (!\rs_address[2]~input_o\ & 
-- (((\reg_file|rs_data~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[5][2]~q\,
	datab => \rs_address[2]~input_o\,
	datac => \reg_file|reg_file[4][2]~q\,
	datad => \reg_file|rs_data~23_combout\,
	combout => \reg_file|rs_data~24_combout\);

-- Location: LCCOMB_X19_Y21_N14
\reg_file|rs_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~25_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~22_combout\) # ((\rs_address[3]~input_o\)))) # (!\rs_address[1]~input_o\ & (((\reg_file|rs_data~24_combout\ & !\rs_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~22_combout\,
	datab => \reg_file|rs_data~24_combout\,
	datac => \rs_address[1]~input_o\,
	datad => \rs_address[3]~input_o\,
	combout => \reg_file|rs_data~25_combout\);

-- Location: FF_X22_Y21_N9
\reg_file|reg_file[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][2]~q\);

-- Location: FF_X23_Y21_N31
\reg_file|reg_file[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~19_combout\,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][2]~q\);

-- Location: LCCOMB_X20_Y21_N16
\reg_file|rs_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~26_combout\ = (\rs_address[2]~input_o\ & (((!\rs_address[0]~input_o\)))) # (!\rs_address[2]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[11][2]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[10][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[11][2]~q\,
	datab => \rs_address[2]~input_o\,
	datac => \rs_address[0]~input_o\,
	datad => \reg_file|reg_file[10][2]~q\,
	combout => \reg_file|rs_data~26_combout\);

-- Location: IOIBUF_X19_Y25_N29
\reg_block_id[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(2),
	o => \reg_block_id[2]~input_o\);

-- Location: FF_X24_Y18_N17
\reg_file|reg_file[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[2]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][2]~q\);

-- Location: FF_X23_Y21_N21
\reg_file|reg_file[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][2]~q\);

-- Location: FF_X20_Y21_N19
\reg_file|reg_file[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][2]~q\);

-- Location: LCCOMB_X20_Y21_N18
\reg_file|rs_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~19_combout\ = (\rs_address[0]~input_o\ & (((\reg_file|reg_file[9][2]~q\) # (\rs_address[2]~input_o\)))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[8][2]~q\ & ((!\rs_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|reg_file[8][2]~q\,
	datac => \reg_file|reg_file[9][2]~q\,
	datad => \rs_address[2]~input_o\,
	combout => \reg_file|rs_data~19_combout\);

-- Location: FF_X20_Y21_N21
\reg_file|reg_file[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][2]~q\);

-- Location: LCCOMB_X20_Y21_N20
\reg_file|rs_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~20_combout\ = (\reg_file|rs_data~19_combout\ & ((\reg_file|reg_file[13][2]~q\) # ((!\rs_address[2]~input_o\)))) # (!\reg_file|rs_data~19_combout\ & (((\reg_file|reg_file[12][2]~q\ & \rs_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[13][2]~q\,
	datab => \reg_file|rs_data~19_combout\,
	datac => \reg_file|reg_file[12][2]~q\,
	datad => \rs_address[2]~input_o\,
	combout => \reg_file|rs_data~20_combout\);

-- Location: LCCOMB_X20_Y21_N14
\reg_file|rs_data~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~27_combout\ = (\reg_file|rs_data~25_combout\ & ((\reg_file|rs_data~26_combout\) # ((!\rs_address[3]~input_o\)))) # (!\reg_file|rs_data~25_combout\ & (((\rs_address[3]~input_o\ & \reg_file|rs_data~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~25_combout\,
	datab => \reg_file|rs_data~26_combout\,
	datac => \rs_address[3]~input_o\,
	datad => \reg_file|rs_data~20_combout\,
	combout => \reg_file|rs_data~27_combout\);

-- Location: LCCOMB_X20_Y17_N2
\reg_file|rs_data[2]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[2]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rs_data~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \reg_file|rs_data~27_combout\,
	combout => \reg_file|rs_data[2]~SCLR_LUT_combout\);

-- Location: FF_X22_Y14_N9
\reg_file|rs_data[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rs_data[2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y14_N12
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ = (!\reg_file|rs_data[1]~_Duplicate_1_q\ & (!\reg_file|rs_data[2]~_Duplicate_1_q\ & (\reg_file|rs_data[7]~_Duplicate_1_q\ & !\reg_file|rs_data[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[1]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[2]~_Duplicate_1_q\,
	datac => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \reg_file|rs_data[0]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ = \reg_file|rs_data[4]~_Duplicate_1_q\ $ (((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\reg_file|rs_data[3]~_Duplicate_1_q\))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & (\reg_file|rs_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[4]~_Duplicate_1_q\,
	datac => \reg_file|rs_data[3]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\);

-- Location: LCCOMB_X22_Y14_N24
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ = \reg_file|rs_data[3]~_Duplicate_1_q\ $ (\reg_file|rs_data[7]~_Duplicate_1_q\ $ (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[3]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\);

-- Location: LCCOMB_X22_Y14_N22
\alu0|Div0|auto_generated|divider|divider|sel[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|sel\(18) = (\alu0|Div0|auto_generated|divider|divider|sel\(36)) # ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) # (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|sel\(18));

-- Location: LCCOMB_X22_Y14_N8
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ = \reg_file|rs_data[2]~_Duplicate_1_q\ $ (((\reg_file|rs_data[7]~_Duplicate_1_q\ & ((\reg_file|rs_data[1]~_Duplicate_1_q\) # (\reg_file|rs_data[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[1]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datac => \reg_file|rs_data[2]~_Duplicate_1_q\,
	datad => \reg_file|rs_data[7]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\);

-- Location: FF_X22_Y20_N15
\reg_file|reg_file[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][5]~q\);

-- Location: FF_X22_Y20_N21
\reg_file|reg_file[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][5]~q\);

-- Location: FF_X18_Y21_N5
\reg_file|reg_file[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][5]~q\);

-- Location: FF_X18_Y21_N7
\reg_file|reg_file[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][5]~q\);

-- Location: LCCOMB_X18_Y21_N6
\reg_file|rt_data~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~45_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[5][5]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[4][5]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[5][5]~q\,
	datac => \reg_file|reg_file[4][5]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~45_combout\);

-- Location: LCCOMB_X22_Y20_N20
\reg_file|rt_data~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~46_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~45_combout\ & ((\reg_file|reg_file[7][5]~q\))) # (!\reg_file|rt_data~45_combout\ & (\reg_file|reg_file[6][5]~q\)))) # (!\rt_address[1]~input_o\ & 
-- (((\reg_file|rt_data~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|reg_file[6][5]~q\,
	datac => \reg_file|reg_file[7][5]~q\,
	datad => \reg_file|rt_data~45_combout\,
	combout => \reg_file|rt_data~46_combout\);

-- Location: FF_X19_Y20_N13
\reg_file|reg_file[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][5]~q\);

-- Location: FF_X19_Y20_N11
\reg_file|reg_file[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][5]~q\);

-- Location: LCCOMB_X19_Y20_N12
\reg_file|rt_data~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~49_combout\ = (\rt_address[0]~input_o\ & (\rt_address[1]~input_o\)) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & ((\reg_file|reg_file[2][5]~q\))) # (!\rt_address[1]~input_o\ & (\reg_file|reg_file[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[0][5]~q\,
	datad => \reg_file|reg_file[2][5]~q\,
	combout => \reg_file|rt_data~49_combout\);

-- Location: FF_X20_Y20_N23
\reg_file|reg_file[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][5]~q\);

-- Location: FF_X18_Y20_N21
\reg_file|reg_file[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][5]~q\);

-- Location: LCCOMB_X20_Y20_N22
\reg_file|rt_data~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~50_combout\ = (\reg_file|rt_data~49_combout\ & (((\reg_file|reg_file[3][5]~q\)) # (!\rt_address[0]~input_o\))) # (!\reg_file|rt_data~49_combout\ & (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~49_combout\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[3][5]~q\,
	datad => \reg_file|reg_file[1][5]~q\,
	combout => \reg_file|rt_data~50_combout\);

-- Location: FF_X23_Y21_N7
\reg_file|reg_file[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][5]~q\);

-- Location: FF_X23_Y21_N25
\reg_file|reg_file[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][5]~q\);

-- Location: LCCOMB_X23_Y21_N6
\reg_file|rt_data~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~47_combout\ = (\rt_address[0]~input_o\ & (\rt_address[1]~input_o\)) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & ((\reg_file|reg_file[10][5]~q\))) # (!\rt_address[1]~input_o\ & (\reg_file|reg_file[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[8][5]~q\,
	datad => \reg_file|reg_file[10][5]~q\,
	combout => \reg_file|rt_data~47_combout\);

-- Location: FF_X24_Y21_N19
\reg_file|reg_file[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][5]~q\);

-- Location: LCCOMB_X22_Y21_N30
\reg_file|rt_data~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~48_combout\ = (\reg_file|rt_data~47_combout\ & (((\reg_file|reg_file[11][5]~q\) # (!\rt_address[0]~input_o\)))) # (!\reg_file|rt_data~47_combout\ & (\reg_file|reg_file[9][5]~q\ & ((\rt_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~47_combout\,
	datab => \reg_file|reg_file[9][5]~q\,
	datac => \reg_file|reg_file[11][5]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \reg_file|rt_data~48_combout\);

-- Location: LCCOMB_X20_Y20_N8
\reg_file|rt_data~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~51_combout\ = (\rt_address[3]~input_o\ & (((\rt_address[2]~input_o\) # (\reg_file|rt_data~48_combout\)))) # (!\rt_address[3]~input_o\ & (\reg_file|rt_data~50_combout\ & (!\rt_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~50_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~48_combout\,
	combout => \reg_file|rt_data~51_combout\);

-- Location: FF_X23_Y20_N23
\reg_file|reg_file[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~25_combout\,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][5]~q\);

-- Location: IOIBUF_X10_Y20_N22
\reg_block_id[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(5),
	o => \reg_block_id[5]~input_o\);

-- Location: FF_X23_Y20_N15
\reg_file|reg_file[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[5]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][5]~q\);

-- Location: LCCOMB_X23_Y20_N14
\reg_file|rt_data~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~52_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & ((\reg_file|reg_file[13][5]~q\))) # (!\rt_address[0]~input_o\ & (\reg_file|reg_file[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[12][5]~q\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[13][5]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \reg_file|rt_data~52_combout\);

-- Location: LCCOMB_X20_Y20_N2
\reg_file|rt_data~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~53_combout\ = (\reg_file|rt_data~51_combout\ & (((\reg_file|rt_data~52_combout\) # (!\rt_address[2]~input_o\)))) # (!\reg_file|rt_data~51_combout\ & (\reg_file|rt_data~46_combout\ & (\rt_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~46_combout\,
	datab => \reg_file|rt_data~51_combout\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~52_combout\,
	combout => \reg_file|rt_data~53_combout\);

-- Location: LCCOMB_X20_Y20_N16
\reg_file|rt_data[5]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[5]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rt_data~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rt_data~53_combout\,
	combout => \reg_file|rt_data[5]~SCLR_LUT_combout\);

-- Location: FF_X25_Y14_N31
\reg_file|rt_data[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rt_data[5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[5]~_Duplicate_1_q\);

-- Location: FF_X25_Y14_N21
\reg_file|rt_data[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rt_data[4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[4]~_Duplicate_1_q\);

-- Location: FF_X25_Y14_N5
\reg_file|rt_data[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|rt_data[0]~SCLR_LUT_combout\,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[0]~_Duplicate_1_q\);

-- Location: FF_X25_Y14_N27
\reg_file|rt_data[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|rt_data[1]~SCLR_LUT_combout\,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y14_N16
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (!\reg_file|rt_data[2]~_Duplicate_1_q\ & (!\reg_file|rt_data[0]~_Duplicate_1_q\ & (!\reg_file|rt_data[1]~_Duplicate_1_q\ & \reg_file|rt_data[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[2]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[0]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[1]~_Duplicate_1_q\,
	datad => \reg_file|rt_data[7]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\reg_file|rt_data[7]~_Duplicate_1_q\ & (!\reg_file|rt_data[4]~_Duplicate_1_q\ & !\reg_file|rt_data[3]~_Duplicate_1_q\)) 
-- # (!\reg_file|rt_data[7]~_Duplicate_1_q\ & (\reg_file|rt_data[4]~_Duplicate_1_q\ & \reg_file|rt_data[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[4]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[3]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\);

-- Location: LCCOMB_X25_Y14_N30
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = \reg_file|rt_data[6]~_Duplicate_1_q\ $ (((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\reg_file|rt_data[5]~_Duplicate_1_q\))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & (\reg_file|rt_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[6]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[5]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X25_Y14_N28
\alu0|Div0|auto_generated|divider|divider|add_sub_1|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => \reg_file|rs_data[0]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X22_Y14_N4
\alu0|Div0|auto_generated|divider|divider|sel[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|sel\(9) = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\) # ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\) 
-- # (\alu0|Div0|auto_generated|divider|divider|sel\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	combout => \alu0|Div0|auto_generated|divider|divider|sel\(9));

-- Location: LCCOMB_X25_Y14_N8
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\reg_file|rt_data[7]~_Duplicate_1_q\ & (!\reg_file|rt_data[6]~_Duplicate_1_q\ & !\reg_file|rt_data[5]~_Duplicate_1_q\)) 
-- # (!\reg_file|rt_data[7]~_Duplicate_1_q\ & (\reg_file|rt_data[6]~_Duplicate_1_q\ & \reg_file|rt_data[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[6]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[5]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X25_Y14_N6
\alu0|Div0|auto_generated|divider|divider|StageOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # ((\alu0|Div0|auto_generated|divider|divider|sel\(9)) 
-- # (!\reg_file|rs_data[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\alu0|Div0|auto_generated|divider|divider|StageOut[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\alu0|Div0|auto_generated|divider|divider|sel\(9)) # (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ 
-- $ (\alu0|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	datad => \alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X25_Y14_N24
\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ $ (((\reg_file|rs_data[0]~_Duplicate_1_q\ & (!\alu0|Div0|auto_generated|divider|divider|sel\(9) & 
-- \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datac => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X25_Y14_N14
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ = \reg_file|rt_data[7]~_Duplicate_1_q\ $ (\reg_file|rt_data[5]~_Duplicate_1_q\ $ (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[5]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\);

-- Location: LCCOMB_X24_Y14_N20
\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\reg_file|rs_data[0]~_Duplicate_1_q\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ $ (VCC))) # (!\reg_file|rs_data[0]~_Duplicate_1_q\ & 
-- ((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\) # (GND)))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datad => VCC,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X24_Y14_N22
\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X24_Y14_N24
\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X24_Y14_N26
\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X24_Y13_N24
\alu0|Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~35_combout\ = (\alu0|Add1~8_combout\ & (!\alu0|Div0|auto_generated|divider|divider|sel\(18) & !\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~8_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|sel\(18),
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \alu0|Add1~35_combout\);

-- Location: LCCOMB_X22_Y18_N0
\alu0|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~10_combout\ = (\alu_select[1]~input_o\ & (\alu_select[0]~input_o\ & (\reg_file|rs_data[7]~_Duplicate_1_q\ $ (\reg_file|rt_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datac => \alu_select[1]~input_o\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~10_combout\);

-- Location: LCCOMB_X23_Y17_N18
\alu0|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~36_combout\ = \reg_file|rs_data[5]~_Duplicate_1_q\ $ (\alu_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~36_combout\);

-- Location: LCCOMB_X18_Y17_N26
\alu0|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~30_combout\ = \alu_select[0]~input_o\ $ (\reg_file|rs_data[4]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datac => \reg_file|rs_data[4]~_Duplicate_1_q\,
	combout => \alu0|Add1~30_combout\);

-- Location: LCCOMB_X22_Y17_N14
\alu0|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~26_combout\ = ((\alu0|Add1~25_combout\ $ (\reg_file|rt_data[3]~_Duplicate_1_q\ $ (!\alu0|Add1~21\)))) # (GND)
-- \alu0|Add1~27\ = CARRY((\alu0|Add1~25_combout\ & ((\reg_file|rt_data[3]~_Duplicate_1_q\) # (!\alu0|Add1~21\))) # (!\alu0|Add1~25_combout\ & (\reg_file|rt_data[3]~_Duplicate_1_q\ & !\alu0|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~25_combout\,
	datab => \reg_file|rt_data[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add1~21\,
	combout => \alu0|Add1~26_combout\,
	cout => \alu0|Add1~27\);

-- Location: LCCOMB_X22_Y17_N16
\alu0|Add1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~31_combout\ = (\reg_file|rt_data[4]~_Duplicate_1_q\ & ((\alu0|Add1~30_combout\ & (\alu0|Add1~27\ & VCC)) # (!\alu0|Add1~30_combout\ & (!\alu0|Add1~27\)))) # (!\reg_file|rt_data[4]~_Duplicate_1_q\ & ((\alu0|Add1~30_combout\ & (!\alu0|Add1~27\)) 
-- # (!\alu0|Add1~30_combout\ & ((\alu0|Add1~27\) # (GND)))))
-- \alu0|Add1~32\ = CARRY((\reg_file|rt_data[4]~_Duplicate_1_q\ & (!\alu0|Add1~30_combout\ & !\alu0|Add1~27\)) # (!\reg_file|rt_data[4]~_Duplicate_1_q\ & ((!\alu0|Add1~27\) # (!\alu0|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[4]~_Duplicate_1_q\,
	datab => \alu0|Add1~30_combout\,
	datad => VCC,
	cin => \alu0|Add1~27\,
	combout => \alu0|Add1~31_combout\,
	cout => \alu0|Add1~32\);

-- Location: LCCOMB_X22_Y17_N18
\alu0|Add1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~37_combout\ = ((\reg_file|rt_data[5]~_Duplicate_1_q\ $ (\alu0|Add1~36_combout\ $ (!\alu0|Add1~32\)))) # (GND)
-- \alu0|Add1~38\ = CARRY((\reg_file|rt_data[5]~_Duplicate_1_q\ & ((\alu0|Add1~36_combout\) # (!\alu0|Add1~32\))) # (!\reg_file|rt_data[5]~_Duplicate_1_q\ & (\alu0|Add1~36_combout\ & !\alu0|Add1~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[5]~_Duplicate_1_q\,
	datab => \alu0|Add1~36_combout\,
	datad => VCC,
	cin => \alu0|Add1~32\,
	combout => \alu0|Add1~37_combout\,
	cout => \alu0|Add1~38\);

-- Location: FF_X18_Y21_N3
\reg_file|reg_file[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][6]~q\);

-- Location: FF_X19_Y21_N5
\reg_file|reg_file[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][6]~q\);

-- Location: LCCOMB_X19_Y21_N4
\reg_file|rs_data~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~57_combout\ = (\rs_address[1]~input_o\ & (((\reg_file|reg_file[6][6]~q\) # (\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & (\reg_file|reg_file[4][6]~q\ & ((!\rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[4][6]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[6][6]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~57_combout\);

-- Location: FF_X18_Y21_N29
\reg_file|reg_file[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[5][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[5][6]~q\);

-- Location: FF_X19_Y21_N27
\reg_file|reg_file[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][6]~q\);

-- Location: LCCOMB_X18_Y21_N28
\reg_file|rs_data~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~58_combout\ = (\reg_file|rs_data~57_combout\ & (((\reg_file|reg_file[7][6]~q\)) # (!\rs_address[0]~input_o\))) # (!\reg_file|rs_data~57_combout\ & (\rs_address[0]~input_o\ & (\reg_file|reg_file[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~57_combout\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][6]~q\,
	datad => \reg_file|reg_file[7][6]~q\,
	combout => \reg_file|rs_data~58_combout\);

-- Location: FF_X20_Y20_N13
\reg_file|reg_file[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[3][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[3][6]~q\);

-- Location: FF_X19_Y20_N7
\reg_file|reg_file[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[2][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[2][6]~q\);

-- Location: FF_X18_Y20_N5
\reg_file|reg_file[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][6]~q\);

-- Location: FF_X18_Y20_N11
\reg_file|reg_file[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[1][6]~q\);

-- Location: LCCOMB_X18_Y20_N10
\reg_file|rs_data~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~59_combout\ = (\rs_address[0]~input_o\ & (((\reg_file|reg_file[1][6]~q\) # (\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[0][6]~q\ & ((!\rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|reg_file[0][6]~q\,
	datac => \reg_file|reg_file[1][6]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~59_combout\);

-- Location: LCCOMB_X19_Y20_N6
\reg_file|rs_data~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~60_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~59_combout\ & (\reg_file|reg_file[3][6]~q\)) # (!\reg_file|rs_data~59_combout\ & ((\reg_file|reg_file[2][6]~q\))))) # (!\rs_address[1]~input_o\ & 
-- (((\reg_file|rs_data~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[3][6]~q\,
	datac => \reg_file|reg_file[2][6]~q\,
	datad => \reg_file|rs_data~59_combout\,
	combout => \reg_file|rs_data~60_combout\);

-- Location: LCCOMB_X22_Y20_N22
\reg_file|rs_data~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~61_combout\ = (\rs_address[3]~input_o\ & (((\rs_address[2]~input_o\)))) # (!\rs_address[3]~input_o\ & ((\rs_address[2]~input_o\ & (\reg_file|rs_data~58_combout\)) # (!\rs_address[2]~input_o\ & ((\reg_file|rs_data~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~58_combout\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_address[2]~input_o\,
	datad => \reg_file|rs_data~60_combout\,
	combout => \reg_file|rs_data~61_combout\);

-- Location: FF_X22_Y21_N1
\reg_file|reg_file[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][6]~q\);

-- Location: FF_X24_Y21_N17
\reg_file|reg_file[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[9][7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[9][6]~q\);

-- Location: FF_X23_Y21_N3
\reg_file|reg_file[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[8][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[8][6]~q\);

-- Location: LCCOMB_X24_Y21_N16
\reg_file|rs_data~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~55_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[9][6]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[9][6]~q\,
	datad => \reg_file|reg_file[8][6]~q\,
	combout => \reg_file|rs_data~55_combout\);

-- Location: LCCOMB_X23_Y21_N16
\reg_file|rs_data~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~56_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~55_combout\ & (\reg_file|reg_file[11][6]~q\)) # (!\reg_file|rs_data~55_combout\ & ((\reg_file|reg_file[10][6]~q\))))) # (!\rs_address[1]~input_o\ & 
-- (((\reg_file|rs_data~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[11][6]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[10][6]~q\,
	datad => \reg_file|rs_data~55_combout\,
	combout => \reg_file|rs_data~56_combout\);

-- Location: FF_X24_Y21_N3
\reg_file|reg_file[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|reg_file~27_combout\,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][6]~q\);

-- Location: IOIBUF_X22_Y25_N8
\reg_block_id[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_block_id(6),
	o => \reg_block_id[6]~input_o\);

-- Location: FF_X23_Y20_N5
\reg_file|reg_file[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_block_id[6]~input_o\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \reg_file|reg_file[13][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[13][6]~q\);

-- Location: LCCOMB_X23_Y20_N18
\reg_file|rs_data~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~62_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[13][6]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|reg_file[12][6]~q\,
	datac => \reg_file|reg_file[13][6]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~62_combout\);

-- Location: LCCOMB_X22_Y20_N16
\reg_file|rs_data~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~63_combout\ = (\reg_file|rs_data~61_combout\ & (((\reg_file|rs_data~62_combout\)) # (!\rs_address[3]~input_o\))) # (!\reg_file|rs_data~61_combout\ & (\rs_address[3]~input_o\ & (\reg_file|rs_data~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~61_combout\,
	datab => \rs_address[3]~input_o\,
	datac => \reg_file|rs_data~56_combout\,
	datad => \reg_file|rs_data~62_combout\,
	combout => \reg_file|rs_data~63_combout\);

-- Location: LCCOMB_X22_Y20_N18
\reg_file|rs_data[6]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[6]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rs_data~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rs_data~63_combout\,
	combout => \reg_file|rs_data[6]~SCLR_LUT_combout\);

-- Location: DSPMULT_X21_Y17_N0
\alu0|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => \reg_file|rs_data[0]~9_combout\,
	dataa => \alu0|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \alu0|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X21_Y17_N2
\alu0|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \alu0|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y17_N2
\alu0|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~39_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & ((\alu0|Mult0|auto_generated|mac_out2~DATAOUT5\)))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu0|Add1~37_combout\,
	datac => \alu_select[1]~input_o\,
	datad => \alu0|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \alu0|Add1~39_combout\);

-- Location: LCCOMB_X24_Y14_N14
\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(18) & (\alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(18),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X24_Y14_N18
\alu0|Div0|auto_generated|divider|divider|StageOut[17]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(18) & (((\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)))) # (!\alu0|Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(18),
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X24_Y14_N16
\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(18) & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(18),
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X25_Y14_N20
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ = \reg_file|rt_data[4]~_Duplicate_1_q\ $ (((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\reg_file|rt_data[3]~_Duplicate_1_q\))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\reg_file|rt_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[3]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[4]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\);

-- Location: LCCOMB_X24_Y14_N4
\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ & ((GND) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ & (\reg_file|rs_data[0]~_Duplicate_1_q\ $ (GND)))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X24_Y14_N6
\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X24_Y14_N8
\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X24_Y14_N10
\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X24_Y14_N12
\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X22_Y14_N10
\alu0|Div0|auto_generated|divider|divider|sel[27]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|sel\(27) = (\alu0|Div0|auto_generated|divider|divider|sel\(36)) # (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|sel\(27));

-- Location: LCCOMB_X24_Y14_N2
\alu0|Div0|auto_generated|divider|divider|StageOut[27]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\alu0|Div0|auto_generated|divider|divider|sel\(27) & (\alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|sel\(27) & ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(27),
	datac => \alu0|Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LCCOMB_X23_Y14_N30
\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(27) & (\alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(27),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\);

-- Location: LCCOMB_X24_Y14_N0
\alu0|Div0|auto_generated|divider|divider|StageOut[25]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(27) & (\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(27),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\);

-- Location: LCCOMB_X24_Y14_N30
\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(27) & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(27),
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LCCOMB_X25_Y14_N22
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ = \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (\reg_file|rt_data[3]~_Duplicate_1_q\ $ (\reg_file|rt_data[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => \reg_file|rt_data[3]~_Duplicate_1_q\,
	datad => \reg_file|rt_data[7]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\);

-- Location: LCCOMB_X23_Y14_N16
\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\reg_file|rs_data[0]~_Duplicate_1_q\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\ $ (VCC))) # (!\reg_file|rs_data[0]~_Duplicate_1_q\ & 
-- ((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\) # (GND)))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datad => VCC,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X23_Y14_N18
\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X23_Y14_N20
\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X23_Y14_N22
\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X23_Y14_N24
\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X23_Y14_N26
\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: FF_X22_Y14_N25
\reg_file|rs_data[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rs_data[6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y17_N20
\alu0|Div0|auto_generated|divider|divider|sel[45]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|sel\(45) = (\reg_file|rs_data[7]~_Duplicate_1_q\ & (((!\reg_file|rs_data[5]~_Duplicate_1_q\ & \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\)) # (!\reg_file|rs_data[6]~_Duplicate_1_q\))) # 
-- (!\reg_file|rs_data[7]~_Duplicate_1_q\ & ((\reg_file|rs_data[6]~_Duplicate_1_q\) # ((\reg_file|rs_data[5]~_Duplicate_1_q\ & \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datac => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \reg_file|rs_data[6]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|divider|sel\(45));

-- Location: LCCOMB_X23_Y17_N10
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ = \reg_file|rs_data[5]~_Duplicate_1_q\ $ (\reg_file|rs_data[7]~_Duplicate_1_q\ $ (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datac => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\);

-- Location: LCCOMB_X23_Y14_N28
\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(36) & (\alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LCCOMB_X23_Y14_N14
\alu0|Div0|auto_generated|divider|divider|StageOut[35]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(36) & (\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\);

-- Location: LCCOMB_X22_Y14_N30
\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(36) & (\alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\);

-- Location: LCCOMB_X22_Y14_N16
\alu0|Div0|auto_generated|divider|divider|StageOut[33]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(36) & (((\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\)))) # (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X22_Y14_N6
\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(36) & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[3]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X25_Y14_N12
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ = \reg_file|rt_data[2]~_Duplicate_1_q\ $ (((\reg_file|rt_data[7]~_Duplicate_1_q\ & ((\reg_file|rt_data[0]~_Duplicate_1_q\) # (\reg_file|rt_data[1]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[0]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[1]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[2]~_Duplicate_1_q\,
	datad => \reg_file|rt_data[7]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\);

-- Location: LCCOMB_X23_Y14_N0
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\reg_file|rs_data[0]~_Duplicate_1_q\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\ $ (VCC))) # (!\reg_file|rs_data[0]~_Duplicate_1_q\ & 
-- ((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\) # (GND)))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\,
	datad => VCC,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X23_Y14_N2
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X23_Y14_N4
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ $ (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X23_Y14_N6
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X23_Y14_N8
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X23_Y14_N10
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X23_Y14_N12
\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X23_Y17_N2
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ = \reg_file|rs_data[6]~_Duplicate_1_q\ $ (((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & ((\reg_file|rs_data[5]~_Duplicate_1_q\))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & (\reg_file|rs_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datac => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datad => \reg_file|rs_data[6]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\);

-- Location: LCCOMB_X23_Y16_N20
\alu0|Div0|auto_generated|divider|divider|StageOut[45]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(45) & (\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: LCCOMB_X23_Y16_N18
\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(45) & (\alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\);

-- Location: LCCOMB_X23_Y16_N24
\alu0|Div0|auto_generated|divider|divider|StageOut[43]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(45) & (\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LCCOMB_X23_Y16_N22
\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(45) & (\alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\);

-- Location: LCCOMB_X23_Y16_N28
\alu0|Div0|auto_generated|divider|divider|StageOut[41]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(45) & (((\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\)))) # (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\);

-- Location: LCCOMB_X23_Y16_N30
\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(45) & (((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\)))) # (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[2]~7_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\);

-- Location: LCCOMB_X22_Y16_N16
\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ = \reg_file|rt_data[1]~_Duplicate_1_q\ $ (((\reg_file|rt_data[7]~_Duplicate_1_q\ & \reg_file|rt_data[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datac => \reg_file|rt_data[0]~_Duplicate_1_q\,
	datad => \reg_file|rt_data[1]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\);

-- Location: LCCOMB_X23_Y16_N0
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ & ((GND) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\ & (\reg_file|rs_data[0]~_Duplicate_1_q\ $ (GND)))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X23_Y16_N2
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X23_Y16_N4
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X23_Y16_N6
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X23_Y16_N8
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X23_Y16_N10
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X23_Y16_N12
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ $ (\alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ $ 
-- (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X23_Y16_N14
\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X23_Y16_N16
\alu0|Div0|auto_generated|divider|divider|StageOut[54]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\);

-- Location: LCCOMB_X24_Y16_N30
\alu0|Div0|auto_generated|divider|divider|StageOut[53]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\)))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\);

-- Location: LCCOMB_X24_Y16_N4
\alu0|Div0|auto_generated|divider|divider|StageOut[52]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\);

-- Location: LCCOMB_X24_Y16_N6
\alu0|Div0|auto_generated|divider|divider|StageOut[51]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\);

-- Location: LCCOMB_X24_Y16_N0
\alu0|Div0|auto_generated|divider|divider|StageOut[50]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\);

-- Location: LCCOMB_X24_Y16_N28
\alu0|Div0|auto_generated|divider|divider|StageOut[49]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (((\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\)))) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\);

-- Location: LCCOMB_X23_Y16_N26
\alu0|Div0|auto_generated|divider|divider|StageOut[48]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\)) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[1]~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\);

-- Location: LCCOMB_X24_Y16_N10
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\reg_file|rt_data[0]~_Duplicate_1_q\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X24_Y16_N12
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X24_Y16_N14
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\ & ((\alu0|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~5_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X24_Y16_N16
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[3]~4_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X24_Y16_N18
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X24_Y16_N20
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\ & (!\alu0|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[5]~7_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X24_Y16_N22
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ & ((!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\))) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ & (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~8_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X24_Y16_N24
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\alu0|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- !\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)) # (!\alu0|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X24_Y16_N26
\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X25_Y16_N14
\alu0|Div0|auto_generated|divider|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~0_combout\ = \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ $ (VCC)
-- \alu0|Div0|auto_generated|divider|op_1~1\ = CARRY(\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => VCC,
	combout => \alu0|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X25_Y16_N16
\alu0|Div0|auto_generated|divider|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~2_combout\ = (\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((!\alu0|Div0|auto_generated|divider|op_1~1\)))) # 
-- (!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\alu0|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\alu0|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \alu0|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & !\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\)) # (!\alu0|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|op_1~1\,
	combout => \alu0|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X25_Y16_N18
\alu0|Div0|auto_generated|divider|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~4_combout\ = (\alu0|Div0|auto_generated|divider|op_1~3\ & (((\alu0|Div0|auto_generated|divider|divider|sel\(45)) # (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))) # 
-- (!\alu0|Div0|auto_generated|divider|op_1~3\ & ((((\alu0|Div0|auto_generated|divider|divider|sel\(45)) # (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))))
-- \alu0|Div0|auto_generated|divider|op_1~5\ = CARRY((!\alu0|Div0|auto_generated|divider|op_1~3\ & ((\alu0|Div0|auto_generated|divider|divider|sel\(45)) # (\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|op_1~3\,
	combout => \alu0|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X25_Y16_N20
\alu0|Div0|auto_generated|divider|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~6_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(36) & (((!\alu0|Div0|auto_generated|divider|op_1~5\)))) # (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (!\alu0|Div0|auto_generated|divider|op_1~5\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|op_1~5\) # (GND)))))
-- \alu0|Div0|auto_generated|divider|op_1~7\ = CARRY(((!\alu0|Div0|auto_generated|divider|divider|sel\(36) & !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)) # (!\alu0|Div0|auto_generated|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|op_1~5\,
	combout => \alu0|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X25_Y16_N22
\alu0|Div0|auto_generated|divider|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~8_combout\ = (\alu0|Div0|auto_generated|divider|op_1~7\ & (((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\alu0|Div0|auto_generated|divider|divider|sel\(27))))) # 
-- (!\alu0|Div0|auto_generated|divider|op_1~7\ & ((((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\alu0|Div0|auto_generated|divider|divider|sel\(27))))))
-- \alu0|Div0|auto_generated|divider|op_1~9\ = CARRY((!\alu0|Div0|auto_generated|divider|op_1~7\ & ((\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\alu0|Div0|auto_generated|divider|divider|sel\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(27),
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|op_1~7\,
	combout => \alu0|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X25_Y16_N24
\alu0|Div0|auto_generated|divider|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~10_combout\ = (\alu0|Div0|auto_generated|divider|divider|sel\(18) & (((!\alu0|Div0|auto_generated|divider|op_1~9\)))) # (!\alu0|Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (!\alu0|Div0|auto_generated|divider|op_1~9\)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\alu0|Div0|auto_generated|divider|op_1~9\) 
-- # (GND)))))
-- \alu0|Div0|auto_generated|divider|op_1~11\ = CARRY(((!\alu0|Div0|auto_generated|divider|divider|sel\(18) & !\alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\alu0|Div0|auto_generated|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(18),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|op_1~9\,
	combout => \alu0|Div0|auto_generated|divider|op_1~10_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X24_Y16_N8
\alu0|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~40_combout\ = (\alu0|Add1~35_combout\) # ((\alu0|Add1~39_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~35_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Add1~39_combout\,
	datad => \alu0|Div0|auto_generated|divider|op_1~10_combout\,
	combout => \alu0|Add1~40_combout\);

-- Location: LCCOMB_X30_Y17_N18
\counter|new_pc[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|new_pc[2]~2_combout\ = (\state[1]~input_o\) # (((!\en~input_o\) # (!\state[0]~input_o\)) # (!\state[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~input_o\,
	datab => \state[2]~input_o\,
	datac => \state[0]~input_o\,
	datad => \en~input_o\,
	combout => \counter|new_pc[2]~2_combout\);

-- Location: LCCOMB_X30_Y17_N8
\counter|new_pc[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|new_pc[2]~3_combout\ = (\reset~input_o\) # (!\counter|new_pc[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \counter|new_pc[2]~2_combout\,
	combout => \counter|new_pc[2]~3_combout\);

-- Location: FF_X24_Y16_N9
\alu0|oo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~40_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(5));

-- Location: LCCOMB_X23_Y20_N26
\reg_file|reg_file~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~24_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & (\load_store|lsu_out\(5))) # (!\reg_mux_in[0]~input_o\ & ((\alu0|oo\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \load_store|lsu_out\(5),
	datac => \alu0|oo\(5),
	datad => \reg_mux_in[0]~input_o\,
	combout => \reg_file|reg_file~24_combout\);

-- Location: LCCOMB_X23_Y20_N22
\reg_file|reg_file~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~25_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~24_combout\) # ((\reg_mux_in[1]~input_o\ & \immediate[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \immediate[5]~input_o\,
	datac => \reg_file|reg_file~24_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file~25_combout\);

-- Location: FF_X22_Y21_N31
\reg_file|reg_file[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~25_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[11][5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[11][5]~q\);

-- Location: LCCOMB_X23_Y21_N24
\reg_file|rs_data~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~48_combout\ = (\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\) # ((\reg_file|reg_file[10][5]~q\)))) # (!\rs_address[1]~input_o\ & (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[10][5]~q\,
	datad => \reg_file|reg_file[8][5]~q\,
	combout => \reg_file|rs_data~48_combout\);

-- Location: LCCOMB_X24_Y21_N18
\reg_file|rs_data~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~49_combout\ = (\rs_address[0]~input_o\ & ((\reg_file|rs_data~48_combout\ & (\reg_file|reg_file[11][5]~q\)) # (!\reg_file|rs_data~48_combout\ & ((\reg_file|reg_file[9][5]~q\))))) # (!\rs_address[0]~input_o\ & 
-- (((\reg_file|rs_data~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[11][5]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[9][5]~q\,
	datad => \reg_file|rs_data~48_combout\,
	combout => \reg_file|rs_data~49_combout\);

-- Location: LCCOMB_X19_Y20_N10
\reg_file|rs_data~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~50_combout\ = (\rs_address[1]~input_o\ & (((\reg_file|reg_file[2][5]~q\) # (\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & (\reg_file|reg_file[0][5]~q\ & ((!\rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[0][5]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[2][5]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~50_combout\);

-- Location: LCCOMB_X18_Y20_N20
\reg_file|rs_data~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~51_combout\ = (\rs_address[0]~input_o\ & ((\reg_file|rs_data~50_combout\ & ((\reg_file|reg_file[3][5]~q\))) # (!\reg_file|rs_data~50_combout\ & (\reg_file|reg_file[1][5]~q\)))) # (!\rs_address[0]~input_o\ & 
-- (\reg_file|rs_data~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|rs_data~50_combout\,
	datac => \reg_file|reg_file[1][5]~q\,
	datad => \reg_file|reg_file[3][5]~q\,
	combout => \reg_file|rs_data~51_combout\);

-- Location: LCCOMB_X22_Y20_N26
\reg_file|rs_data~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~52_combout\ = (\rs_address[3]~input_o\ & ((\reg_file|rs_data~49_combout\) # ((\rs_address[2]~input_o\)))) # (!\rs_address[3]~input_o\ & (((!\rs_address[2]~input_o\ & \reg_file|rs_data~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~49_combout\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_address[2]~input_o\,
	datad => \reg_file|rs_data~51_combout\,
	combout => \reg_file|rs_data~52_combout\);

-- Location: LCCOMB_X18_Y21_N4
\reg_file|rs_data~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~46_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[5][5]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][5]~q\,
	datad => \reg_file|reg_file[4][5]~q\,
	combout => \reg_file|rs_data~46_combout\);

-- Location: LCCOMB_X22_Y20_N14
\reg_file|rs_data~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~47_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~46_combout\ & ((\reg_file|reg_file[7][5]~q\))) # (!\reg_file|rs_data~46_combout\ & (\reg_file|reg_file[6][5]~q\)))) # (!\rs_address[1]~input_o\ & 
-- (\reg_file|rs_data~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|rs_data~46_combout\,
	datac => \reg_file|reg_file[6][5]~q\,
	datad => \reg_file|reg_file[7][5]~q\,
	combout => \reg_file|rs_data~47_combout\);

-- Location: LCCOMB_X23_Y20_N28
\reg_file|rs_data~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~53_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[13][5]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[12][5]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[13][5]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~53_combout\);

-- Location: LCCOMB_X22_Y20_N4
\reg_file|rs_data~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~54_combout\ = (\reg_file|rs_data~52_combout\ & (((\reg_file|rs_data~53_combout\) # (!\rs_address[2]~input_o\)))) # (!\reg_file|rs_data~52_combout\ & (\reg_file|rs_data~47_combout\ & (\rs_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~52_combout\,
	datab => \reg_file|rs_data~47_combout\,
	datac => \rs_address[2]~input_o\,
	datad => \reg_file|rs_data~53_combout\,
	combout => \reg_file|rs_data~54_combout\);

-- Location: LCCOMB_X22_Y14_N26
\reg_file|rs_data[5]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[5]~SCLR_LUT_combout\ = (\reg_file|rs_data~54_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data~54_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|rs_data[5]~SCLR_LUT_combout\);

-- Location: FF_X22_Y14_N3
\reg_file|rs_data[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rs_data[5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y14_N20
\alu0|Div0|auto_generated|divider|divider|sel[36]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|sel\(36) = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # ((\reg_file|rs_data[7]~_Duplicate_1_q\ & ((!\reg_file|rs_data[6]~_Duplicate_1_q\) # (!\reg_file|rs_data[5]~_Duplicate_1_q\))) # 
-- (!\reg_file|rs_data[7]~_Duplicate_1_q\ & ((\reg_file|rs_data[5]~_Duplicate_1_q\) # (\reg_file|rs_data[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datac => \reg_file|rs_data[6]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|sel\(36));

-- Location: LCCOMB_X24_Y13_N14
\alu0|Add1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~53_combout\ = (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & (!\alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\ & \alu0|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~3_combout\,
	datad => \alu0|Add1~8_combout\,
	combout => \alu0|Add1~53_combout\);

-- Location: LCCOMB_X22_Y17_N4
\alu0|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~33_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & (\alu0|Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu0|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \alu_select[1]~input_o\,
	datad => \alu0|Add1~31_combout\,
	combout => \alu0|Add1~33_combout\);

-- Location: LCCOMB_X25_Y16_N4
\alu0|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~34_combout\ = (\alu0|Add1~53_combout\) # ((\alu0|Add1~33_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~53_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Div0|auto_generated|divider|op_1~8_combout\,
	datad => \alu0|Add1~33_combout\,
	combout => \alu0|Add1~34_combout\);

-- Location: FF_X25_Y16_N5
\alu0|oo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~34_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(4));

-- Location: IOIBUF_X24_Y25_N29
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

-- Location: LCCOMB_X24_Y17_N12
\load_store|lsu_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~6_combout\ = (\mem_read_data[4]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_read_data[4]~input_o\,
	datad => \reset~input_o\,
	combout => \load_store|lsu_out~6_combout\);

-- Location: FF_X24_Y17_N13
\load_store|lsu_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~6_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(4));

-- Location: LCCOMB_X23_Y20_N16
\reg_file|reg_file~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~22_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & ((\load_store|lsu_out\(4)))) # (!\reg_mux_in[0]~input_o\ & (\alu0|oo\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \alu0|oo\(4),
	datac => \load_store|lsu_out\(4),
	datad => \reg_mux_in[1]~input_o\,
	combout => \reg_file|reg_file~22_combout\);

-- Location: IOIBUF_X31_Y22_N15
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

-- Location: LCCOMB_X23_Y20_N12
\reg_file|reg_file~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~23_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~22_combout\) # ((\immediate[4]~input_o\ & \reg_mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg_file|reg_file~22_combout\,
	datac => \immediate[4]~input_o\,
	datad => \reg_mux_in[1]~input_o\,
	combout => \reg_file|reg_file~23_combout\);

-- Location: FF_X19_Y21_N29
\reg_file|reg_file[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~23_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][4]~q\);

-- Location: LCCOMB_X18_Y21_N30
\reg_file|rt_data~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~38_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|reg_file[6][4]~q\) # ((\rt_address[0]~input_o\)))) # (!\rt_address[1]~input_o\ & (((\reg_file|reg_file[4][4]~q\ & !\rt_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|reg_file[6][4]~q\,
	datac => \reg_file|reg_file[4][4]~q\,
	datad => \rt_address[0]~input_o\,
	combout => \reg_file|rt_data~38_combout\);

-- Location: LCCOMB_X19_Y21_N10
\reg_file|rt_data~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~39_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|rt_data~38_combout\ & (\reg_file|reg_file[7][4]~q\)) # (!\reg_file|rt_data~38_combout\ & ((\reg_file|reg_file[5][4]~q\))))) # (!\rt_address[0]~input_o\ & 
-- (\reg_file|rt_data~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|rt_data~38_combout\,
	datac => \reg_file|reg_file[7][4]~q\,
	datad => \reg_file|reg_file[5][4]~q\,
	combout => \reg_file|rt_data~39_combout\);

-- Location: LCCOMB_X18_Y20_N30
\reg_file|rt_data~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~40_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][4]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[0][4]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[1][4]~q\,
	datac => \reg_file|reg_file[0][4]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~40_combout\);

-- Location: LCCOMB_X19_Y18_N26
\reg_file|rt_data~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~41_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~40_combout\ & (\reg_file|reg_file[3][4]~q\)) # (!\reg_file|rt_data~40_combout\ & ((\reg_file|reg_file[2][4]~q\))))) # (!\rt_address[1]~input_o\ & 
-- (\reg_file|rt_data~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|rt_data~40_combout\,
	datac => \reg_file|reg_file[3][4]~q\,
	datad => \reg_file|reg_file[2][4]~q\,
	combout => \reg_file|rt_data~41_combout\);

-- Location: LCCOMB_X22_Y18_N12
\reg_file|rt_data~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~42_combout\ = (\rt_address[3]~input_o\ & (((\rt_address[2]~input_o\)))) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\reg_file|rt_data~39_combout\)) # (!\rt_address[2]~input_o\ & ((\reg_file|rt_data~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \reg_file|rt_data~39_combout\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~41_combout\,
	combout => \reg_file|rt_data~42_combout\);

-- Location: LCCOMB_X23_Y20_N20
\reg_file|rt_data~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~43_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file|reg_file[13][4]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file|reg_file[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[13][4]~q\,
	datad => \reg_file|reg_file[12][4]~q\,
	combout => \reg_file|rt_data~43_combout\);

-- Location: LCCOMB_X23_Y21_N18
\reg_file|rt_data~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~36_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\) # ((\reg_file|reg_file[9][4]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[1]~input_o\ & (\reg_file|reg_file[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[8][4]~q\,
	datad => \reg_file|reg_file[9][4]~q\,
	combout => \reg_file|rt_data~36_combout\);

-- Location: LCCOMB_X22_Y21_N12
\reg_file|rt_data~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~37_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~36_combout\ & (\reg_file|reg_file[11][4]~q\)) # (!\reg_file|rt_data~36_combout\ & ((\reg_file|reg_file[10][4]~q\))))) # (!\rt_address[1]~input_o\ & 
-- (\reg_file|rt_data~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|rt_data~36_combout\,
	datac => \reg_file|reg_file[11][4]~q\,
	datad => \reg_file|reg_file[10][4]~q\,
	combout => \reg_file|rt_data~37_combout\);

-- Location: LCCOMB_X22_Y18_N18
\reg_file|rt_data~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~44_combout\ = (\reg_file|rt_data~42_combout\ & ((\reg_file|rt_data~43_combout\) # ((!\rt_address[3]~input_o\)))) # (!\reg_file|rt_data~42_combout\ & (((\rt_address[3]~input_o\ & \reg_file|rt_data~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~42_combout\,
	datab => \reg_file|rt_data~43_combout\,
	datac => \rt_address[3]~input_o\,
	datad => \reg_file|rt_data~37_combout\,
	combout => \reg_file|rt_data~44_combout\);

-- Location: LCCOMB_X25_Y14_N10
\reg_file|rt_data[4]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[4]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rt_data~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \reg_file|rt_data~44_combout\,
	combout => \reg_file|rt_data[4]~SCLR_LUT_combout\);

-- Location: LCCOMB_X18_Y17_N22
\alu0|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~19_combout\ = \alu_select[0]~input_o\ $ (\reg_file|rs_data[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datad => \reg_file|rs_data[2]~_Duplicate_1_q\,
	combout => \alu0|Add1~19_combout\);

-- Location: LCCOMB_X23_Y17_N4
\alu0|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~13_combout\ = \reg_file|rs_data[1]~_Duplicate_1_q\ $ (\alu_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rs_data[1]~_Duplicate_1_q\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~13_combout\);

-- Location: LCCOMB_X18_Y17_N16
\alu0|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~2_combout\ = \alu_select[0]~input_o\ $ (\reg_file|rs_data[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datac => \reg_file|rs_data[0]~_Duplicate_1_q\,
	combout => \alu0|Add1~2_combout\);

-- Location: LCCOMB_X22_Y17_N6
\alu0|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~4_cout\ = CARRY(\alu_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datad => VCC,
	cout => \alu0|Add1~4_cout\);

-- Location: LCCOMB_X22_Y17_N8
\alu0|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~5_combout\ = (\reg_file|rt_data[0]~_Duplicate_1_q\ & ((\alu0|Add1~2_combout\ & (\alu0|Add1~4_cout\ & VCC)) # (!\alu0|Add1~2_combout\ & (!\alu0|Add1~4_cout\)))) # (!\reg_file|rt_data[0]~_Duplicate_1_q\ & ((\alu0|Add1~2_combout\ & 
-- (!\alu0|Add1~4_cout\)) # (!\alu0|Add1~2_combout\ & ((\alu0|Add1~4_cout\) # (GND)))))
-- \alu0|Add1~6\ = CARRY((\reg_file|rt_data[0]~_Duplicate_1_q\ & (!\alu0|Add1~2_combout\ & !\alu0|Add1~4_cout\)) # (!\reg_file|rt_data[0]~_Duplicate_1_q\ & ((!\alu0|Add1~4_cout\) # (!\alu0|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[0]~_Duplicate_1_q\,
	datab => \alu0|Add1~2_combout\,
	datad => VCC,
	cin => \alu0|Add1~4_cout\,
	combout => \alu0|Add1~5_combout\,
	cout => \alu0|Add1~6\);

-- Location: LCCOMB_X22_Y17_N10
\alu0|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~14_combout\ = ((\alu0|Add1~13_combout\ $ (\reg_file|rt_data[1]~_Duplicate_1_q\ $ (!\alu0|Add1~6\)))) # (GND)
-- \alu0|Add1~15\ = CARRY((\alu0|Add1~13_combout\ & ((\reg_file|rt_data[1]~_Duplicate_1_q\) # (!\alu0|Add1~6\))) # (!\alu0|Add1~13_combout\ & (\reg_file|rt_data[1]~_Duplicate_1_q\ & !\alu0|Add1~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~13_combout\,
	datab => \reg_file|rt_data[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add1~6\,
	combout => \alu0|Add1~14_combout\,
	cout => \alu0|Add1~15\);

-- Location: LCCOMB_X22_Y17_N12
\alu0|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~20_combout\ = (\reg_file|rt_data[2]~_Duplicate_1_q\ & ((\alu0|Add1~19_combout\ & (\alu0|Add1~15\ & VCC)) # (!\alu0|Add1~19_combout\ & (!\alu0|Add1~15\)))) # (!\reg_file|rt_data[2]~_Duplicate_1_q\ & ((\alu0|Add1~19_combout\ & (!\alu0|Add1~15\)) 
-- # (!\alu0|Add1~19_combout\ & ((\alu0|Add1~15\) # (GND)))))
-- \alu0|Add1~21\ = CARRY((\reg_file|rt_data[2]~_Duplicate_1_q\ & (!\alu0|Add1~19_combout\ & !\alu0|Add1~15\)) # (!\reg_file|rt_data[2]~_Duplicate_1_q\ & ((!\alu0|Add1~15\) # (!\alu0|Add1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[2]~_Duplicate_1_q\,
	datab => \alu0|Add1~19_combout\,
	datad => VCC,
	cin => \alu0|Add1~15\,
	combout => \alu0|Add1~20_combout\,
	cout => \alu0|Add1~21\);

-- Location: LCCOMB_X22_Y17_N30
\alu0|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~22_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & (\alu0|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu0|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \alu_select[1]~input_o\,
	datad => \alu0|Add1~20_combout\,
	combout => \alu0|Add1~22_combout\);

-- Location: LCCOMB_X22_Y16_N26
\alu0|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~18_combout\ = (\alu0|Add1~8_combout\ & (!\alu0|Div0|auto_generated|divider|divider|sel\(45) & !\alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(45),
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \alu0|Add1~18_combout\);

-- Location: LCCOMB_X25_Y16_N8
\alu0|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~23_combout\ = (\alu0|Add1~22_combout\) # ((\alu0|Add1~18_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~22_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Add1~18_combout\,
	datad => \alu0|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \alu0|Add1~23_combout\);

-- Location: FF_X25_Y16_N9
\alu0|oo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~23_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(2));

-- Location: LCCOMB_X24_Y21_N30
\reg_file|reg_file~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~18_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & (\load_store|lsu_out\(2))) # (!\reg_mux_in[0]~input_o\ & ((\alu0|oo\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \load_store|lsu_out\(2),
	datac => \reg_mux_in[1]~input_o\,
	datad => \alu0|oo\(2),
	combout => \reg_file|reg_file~18_combout\);

-- Location: LCCOMB_X23_Y21_N30
\reg_file|reg_file~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~19_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~18_combout\) # ((\immediate[2]~input_o\ & \reg_mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[2]~input_o\,
	datab => \reg_mux_in[1]~input_o\,
	datac => \reg_file|reg_file~18_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|reg_file~19_combout\);

-- Location: FF_X18_Y21_N21
\reg_file|reg_file[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~19_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[4][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[4][2]~q\);

-- Location: LCCOMB_X18_Y20_N26
\reg_file|rt_data~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~22_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[2]~input_o\) # ((\reg_file|reg_file[1][2]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[2]~input_o\ & (\reg_file|reg_file[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \reg_file|reg_file[0][2]~q\,
	datad => \reg_file|reg_file[1][2]~q\,
	combout => \reg_file|rt_data~22_combout\);

-- Location: LCCOMB_X18_Y21_N26
\reg_file|rt_data~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~23_combout\ = (\rt_address[2]~input_o\ & ((\reg_file|rt_data~22_combout\ & ((\reg_file|reg_file[5][2]~q\))) # (!\reg_file|rt_data~22_combout\ & (\reg_file|reg_file[4][2]~q\)))) # (!\rt_address[2]~input_o\ & 
-- (((\reg_file|rt_data~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \reg_file|reg_file[4][2]~q\,
	datac => \reg_file|reg_file[5][2]~q\,
	datad => \reg_file|rt_data~22_combout\,
	combout => \reg_file|rt_data~23_combout\);

-- Location: LCCOMB_X19_Y20_N28
\reg_file|rt_data~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~20_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[3][2]~q\) # ((\rt_address[2]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[2][2]~q\ & !\rt_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[3][2]~q\,
	datac => \reg_file|reg_file[2][2]~q\,
	datad => \rt_address[2]~input_o\,
	combout => \reg_file|rt_data~20_combout\);

-- Location: LCCOMB_X19_Y21_N12
\reg_file|rt_data~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~21_combout\ = (\rt_address[2]~input_o\ & ((\reg_file|rt_data~20_combout\ & ((\reg_file|reg_file[7][2]~q\))) # (!\reg_file|rt_data~20_combout\ & (\reg_file|reg_file[6][2]~q\)))) # (!\rt_address[2]~input_o\ & 
-- (((\reg_file|rt_data~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[6][2]~q\,
	datab => \rt_address[2]~input_o\,
	datac => \reg_file|reg_file[7][2]~q\,
	datad => \reg_file|rt_data~20_combout\,
	combout => \reg_file|rt_data~21_combout\);

-- Location: LCCOMB_X24_Y18_N26
\reg_file|rt_data~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~24_combout\ = (\rt_address[3]~input_o\ & (((\rt_address[1]~input_o\)))) # (!\rt_address[3]~input_o\ & ((\rt_address[1]~input_o\ & ((\reg_file|rt_data~21_combout\))) # (!\rt_address[1]~input_o\ & (\reg_file|rt_data~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~23_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \rt_address[1]~input_o\,
	datad => \reg_file|rt_data~21_combout\,
	combout => \reg_file|rt_data~24_combout\);

-- Location: LCCOMB_X22_Y21_N8
\reg_file|rt_data~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~25_combout\ = (\rt_address[0]~input_o\ & (!\rt_address[2]~input_o\ & (\reg_file|reg_file[11][2]~q\))) # (!\rt_address[0]~input_o\ & ((\rt_address[2]~input_o\) # ((\reg_file|reg_file[10][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \reg_file|reg_file[11][2]~q\,
	datad => \reg_file|reg_file[10][2]~q\,
	combout => \reg_file|rt_data~25_combout\);

-- Location: LCCOMB_X23_Y21_N20
\reg_file|rt_data~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~18_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[2]~input_o\) # ((\reg_file|reg_file[9][2]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[2]~input_o\ & (\reg_file|reg_file[8][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[2]~input_o\,
	datac => \reg_file|reg_file[8][2]~q\,
	datad => \reg_file|reg_file[9][2]~q\,
	combout => \reg_file|rt_data~18_combout\);

-- Location: LCCOMB_X24_Y18_N16
\reg_file|rt_data~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~19_combout\ = (\rt_address[2]~input_o\ & ((\reg_file|rt_data~18_combout\ & ((\reg_file|reg_file[13][2]~q\))) # (!\reg_file|rt_data~18_combout\ & (\reg_file|reg_file[12][2]~q\)))) # (!\rt_address[2]~input_o\ & 
-- (((\reg_file|rt_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[2]~input_o\,
	datab => \reg_file|reg_file[12][2]~q\,
	datac => \reg_file|reg_file[13][2]~q\,
	datad => \reg_file|rt_data~18_combout\,
	combout => \reg_file|rt_data~19_combout\);

-- Location: LCCOMB_X24_Y18_N0
\reg_file|rt_data~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~26_combout\ = (\reg_file|rt_data~24_combout\ & ((\reg_file|rt_data~25_combout\) # ((!\rt_address[3]~input_o\)))) # (!\reg_file|rt_data~24_combout\ & (((\rt_address[3]~input_o\ & \reg_file|rt_data~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~24_combout\,
	datab => \reg_file|rt_data~25_combout\,
	datac => \rt_address[3]~input_o\,
	datad => \reg_file|rt_data~19_combout\,
	combout => \reg_file|rt_data~26_combout\);

-- Location: LCCOMB_X24_Y18_N2
\reg_file|rt_data[2]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[2]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rt_data~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rt_data~26_combout\,
	combout => \reg_file|rt_data[2]~SCLR_LUT_combout\);

-- Location: FF_X25_Y14_N13
\reg_file|rt_data[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rt_data[2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y17_N0
\alu0|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~28_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & ((\alu0|Mult0|auto_generated|mac_out2~DATAOUT3\)))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu_select[1]~input_o\,
	datac => \alu0|Add1~26_combout\,
	datad => \alu0|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \alu0|Add1~28_combout\);

-- Location: LCCOMB_X22_Y16_N24
\alu0|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~24_combout\ = (\alu0|Add1~8_combout\ & (!\alu0|Div0|auto_generated|divider|divider|sel\(36) & !\alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~8_combout\,
	datab => \alu0|Div0|auto_generated|divider|divider|sel\(36),
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \alu0|Add1~24_combout\);

-- Location: LCCOMB_X25_Y16_N30
\alu0|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~29_combout\ = (\alu0|Add1~28_combout\) # ((\alu0|Add1~24_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~28_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Add1~24_combout\,
	datad => \alu0|Div0|auto_generated|divider|op_1~6_combout\,
	combout => \alu0|Add1~29_combout\);

-- Location: FF_X25_Y16_N31
\alu0|oo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~29_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(3));

-- Location: IOIBUF_X17_Y25_N8
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

-- Location: LCCOMB_X24_Y17_N2
\load_store|lsu_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~5_combout\ = (\mem_read_data[3]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_read_data[3]~input_o\,
	datad => \reset~input_o\,
	combout => \load_store|lsu_out~5_combout\);

-- Location: FF_X24_Y17_N3
\load_store|lsu_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~5_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(3));

-- Location: LCCOMB_X24_Y20_N26
\reg_file|reg_file~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~20_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & ((\load_store|lsu_out\(3)))) # (!\reg_mux_in[0]~input_o\ & (\alu0|oo\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \reg_mux_in[0]~input_o\,
	datac => \alu0|oo\(3),
	datad => \load_store|lsu_out\(3),
	combout => \reg_file|reg_file~20_combout\);

-- Location: IOIBUF_X31_Y19_N1
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

-- Location: LCCOMB_X23_Y20_N2
\reg_file|reg_file~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~21_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~20_combout\) # ((\immediate[3]~input_o\ & \reg_mux_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg_file|reg_file~20_combout\,
	datac => \immediate[3]~input_o\,
	datad => \reg_mux_in[1]~input_o\,
	combout => \reg_file|reg_file~21_combout\);

-- Location: FF_X19_Y21_N31
\reg_file|reg_file[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~21_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[7][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[7][3]~q\);

-- Location: LCCOMB_X18_Y21_N24
\reg_file|rs_data~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~30_combout\ = (\rs_address[0]~input_o\ & (((\reg_file|reg_file[5][3]~q\) # (\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[4][3]~q\ & ((!\rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[4][3]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][3]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~30_combout\);

-- Location: LCCOMB_X19_Y21_N20
\reg_file|rs_data~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~31_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~30_combout\ & (\reg_file|reg_file[7][3]~q\)) # (!\reg_file|rs_data~30_combout\ & ((\reg_file|reg_file[6][3]~q\))))) # (!\rs_address[1]~input_o\ & 
-- (((\reg_file|rs_data~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[7][3]~q\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[6][3]~q\,
	datad => \reg_file|rs_data~30_combout\,
	combout => \reg_file|rs_data~31_combout\);

-- Location: LCCOMB_X19_Y20_N18
\reg_file|rs_data~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~32_combout\ = (\rs_address[1]~input_o\ & (((\reg_file|reg_file[2][3]~q\) # (\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & (\reg_file|reg_file[0][3]~q\ & ((!\rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[0][3]~q\,
	datac => \reg_file|reg_file[2][3]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~32_combout\);

-- Location: LCCOMB_X20_Y20_N18
\reg_file|rs_data~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~33_combout\ = (\reg_file|rs_data~32_combout\ & ((\reg_file|reg_file[3][3]~q\) # ((!\rs_address[0]~input_o\)))) # (!\reg_file|rs_data~32_combout\ & (((\reg_file|reg_file[1][3]~q\ & \rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[3][3]~q\,
	datab => \reg_file|rs_data~32_combout\,
	datac => \reg_file|reg_file[1][3]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~33_combout\);

-- Location: LCCOMB_X20_Y21_N10
\reg_file|rs_data~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~34_combout\ = (\rs_address[2]~input_o\ & ((\reg_file|rs_data~31_combout\) # ((\rs_address[3]~input_o\)))) # (!\rs_address[2]~input_o\ & (((!\rs_address[3]~input_o\ & \reg_file|rs_data~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \reg_file|rs_data~31_combout\,
	datac => \rs_address[3]~input_o\,
	datad => \reg_file|rs_data~33_combout\,
	combout => \reg_file|rs_data~34_combout\);

-- Location: LCCOMB_X24_Y18_N12
\reg_file|rs_data~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~35_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[13][3]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[13][3]~q\,
	datad => \reg_file|reg_file[12][3]~q\,
	combout => \reg_file|rs_data~35_combout\);

-- Location: LCCOMB_X23_Y21_N12
\reg_file|rs_data~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~28_combout\ = (\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\) # ((\reg_file|reg_file[10][3]~q\)))) # (!\rs_address[1]~input_o\ & (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[10][3]~q\,
	datad => \reg_file|reg_file[8][3]~q\,
	combout => \reg_file|rs_data~28_combout\);

-- Location: LCCOMB_X20_Y21_N24
\reg_file|rs_data~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~29_combout\ = (\rs_address[0]~input_o\ & ((\reg_file|rs_data~28_combout\ & (\reg_file|reg_file[11][3]~q\)) # (!\reg_file|rs_data~28_combout\ & ((\reg_file|reg_file[9][3]~q\))))) # (!\rs_address[0]~input_o\ & 
-- (((\reg_file|rs_data~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|reg_file[11][3]~q\,
	datac => \reg_file|reg_file[9][3]~q\,
	datad => \reg_file|rs_data~28_combout\,
	combout => \reg_file|rs_data~29_combout\);

-- Location: LCCOMB_X20_Y21_N12
\reg_file|rs_data~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~36_combout\ = (\reg_file|rs_data~34_combout\ & ((\reg_file|rs_data~35_combout\) # ((!\rs_address[3]~input_o\)))) # (!\reg_file|rs_data~34_combout\ & (((\rs_address[3]~input_o\ & \reg_file|rs_data~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~34_combout\,
	datab => \reg_file|rs_data~35_combout\,
	datac => \rs_address[3]~input_o\,
	datad => \reg_file|rs_data~29_combout\,
	combout => \reg_file|rs_data~36_combout\);

-- Location: LCCOMB_X20_Y17_N12
\reg_file|rs_data[3]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[3]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rs_data~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \reg_file|rs_data~36_combout\,
	combout => \reg_file|rs_data[3]~SCLR_LUT_combout\);

-- Location: FF_X22_Y14_N27
\reg_file|rs_data[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rs_data[3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y14_N18
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\ & ((\reg_file|rs_data[3]~_Duplicate_1_q\ & (\reg_file|rs_data[4]~_Duplicate_1_q\ & !\reg_file|rs_data[7]~_Duplicate_1_q\)) # 
-- (!\reg_file|rs_data[3]~_Duplicate_1_q\ & (!\reg_file|rs_data[4]~_Duplicate_1_q\ & \reg_file|rs_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[3]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[4]~_Duplicate_1_q\,
	datac => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[2]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & ((\reg_file|rs_data[7]~_Duplicate_1_q\ & (!\reg_file|rs_data[5]~_Duplicate_1_q\ & !\reg_file|rs_data[6]~_Duplicate_1_q\)) 
-- # (!\reg_file|rs_data[7]~_Duplicate_1_q\ & (\reg_file|rs_data[5]~_Duplicate_1_q\ & \reg_file|rs_data[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datac => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datad => \reg_file|rs_data[6]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\);

-- Location: LCCOMB_X25_Y16_N6
\alu0|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~12_combout\ = (\alu0|Add1~8_combout\ & (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & !\alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu0|Add1~8_combout\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \alu0|Add1~12_combout\);

-- Location: LCCOMB_X22_Y17_N24
\alu0|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~16_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & (\alu0|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu0|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \alu_select[1]~input_o\,
	datad => \alu0|Add1~14_combout\,
	combout => \alu0|Add1~16_combout\);

-- Location: LCCOMB_X25_Y16_N10
\alu0|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~17_combout\ = (\alu0|Add1~12_combout\) # ((\alu0|Add1~16_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~12_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Add1~16_combout\,
	datad => \alu0|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \alu0|Add1~17_combout\);

-- Location: FF_X25_Y16_N11
\alu0|oo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~17_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(1));

-- Location: IOIBUF_X31_Y11_N22
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

-- Location: LCCOMB_X27_Y17_N10
\load_store|lsu_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~3_combout\ = (!\reset~input_o\ & \mem_read_data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mem_read_data[1]~input_o\,
	combout => \load_store|lsu_out~3_combout\);

-- Location: FF_X27_Y17_N11
\load_store|lsu_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~3_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(1));

-- Location: LCCOMB_X24_Y21_N20
\reg_file|reg_file~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~16_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & ((\load_store|lsu_out\(1)))) # (!\reg_mux_in[0]~input_o\ & (\alu0|oo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \alu0|oo\(1),
	datac => \reg_mux_in[1]~input_o\,
	datad => \load_store|lsu_out\(1),
	combout => \reg_file|reg_file~16_combout\);

-- Location: LCCOMB_X24_Y21_N26
\reg_file|reg_file~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~17_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~16_combout\) # ((\reg_mux_in[1]~input_o\ & \immediate[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \reset~input_o\,
	datac => \immediate[1]~input_o\,
	datad => \reg_file|reg_file~16_combout\,
	combout => \reg_file|reg_file~17_combout\);

-- Location: FF_X19_Y21_N25
\reg_file|reg_file[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~17_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[6][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[6][1]~q\);

-- Location: LCCOMB_X18_Y21_N14
\reg_file|rt_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~11_combout\ = (\rt_address[0]~input_o\ & (((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & (\reg_file|reg_file[6][1]~q\)) # (!\rt_address[1]~input_o\ & ((\reg_file|reg_file[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[6][1]~q\,
	datac => \reg_file|reg_file[4][1]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~11_combout\);

-- Location: LCCOMB_X19_Y21_N18
\reg_file|rt_data~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~12_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|rt_data~11_combout\ & (\reg_file|reg_file[7][1]~q\)) # (!\reg_file|rt_data~11_combout\ & ((\reg_file|reg_file[5][1]~q\))))) # (!\rt_address[0]~input_o\ & 
-- (\reg_file|rt_data~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|rt_data~11_combout\,
	datac => \reg_file|reg_file[7][1]~q\,
	datad => \reg_file|reg_file[5][1]~q\,
	combout => \reg_file|rt_data~12_combout\);

-- Location: LCCOMB_X18_Y20_N22
\reg_file|rt_data~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~13_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][1]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[0][1]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[1][1]~q\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[0][1]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~13_combout\);

-- Location: LCCOMB_X24_Y20_N24
\reg_file|rt_data~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~14_combout\ = (\reg_file|rt_data~13_combout\ & (((\reg_file|reg_file[3][1]~q\)) # (!\rt_address[1]~input_o\))) # (!\reg_file|rt_data~13_combout\ & (\rt_address[1]~input_o\ & ((\reg_file|reg_file[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~13_combout\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[3][1]~q\,
	datad => \reg_file|reg_file[2][1]~q\,
	combout => \reg_file|rt_data~14_combout\);

-- Location: LCCOMB_X22_Y18_N4
\reg_file|rt_data~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~15_combout\ = (\rt_address[3]~input_o\ & (((\rt_address[2]~input_o\)))) # (!\rt_address[3]~input_o\ & ((\rt_address[2]~input_o\ & (\reg_file|rt_data~12_combout\)) # (!\rt_address[2]~input_o\ & ((\reg_file|rt_data~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \reg_file|rt_data~12_combout\,
	datac => \rt_address[2]~input_o\,
	datad => \reg_file|rt_data~14_combout\,
	combout => \reg_file|rt_data~15_combout\);

-- Location: LCCOMB_X23_Y21_N22
\reg_file|rt_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~9_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[9][1]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[8][1]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[9][1]~q\,
	datac => \reg_file|reg_file[8][1]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~9_combout\);

-- Location: LCCOMB_X22_Y21_N2
\reg_file|rt_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~10_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~9_combout\ & ((\reg_file|reg_file[11][1]~q\))) # (!\reg_file|rt_data~9_combout\ & (\reg_file|reg_file[10][1]~q\)))) # (!\rt_address[1]~input_o\ & 
-- (((\reg_file|rt_data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|reg_file[10][1]~q\,
	datac => \reg_file|reg_file[11][1]~q\,
	datad => \reg_file|rt_data~9_combout\,
	combout => \reg_file|rt_data~10_combout\);

-- Location: LCCOMB_X24_Y18_N18
\reg_file|rt_data~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~16_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file|reg_file[13][1]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file|reg_file[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[13][1]~q\,
	datad => \reg_file|reg_file[12][1]~q\,
	combout => \reg_file|rt_data~16_combout\);

-- Location: LCCOMB_X22_Y18_N10
\reg_file|rt_data~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~17_combout\ = (\rt_address[3]~input_o\ & ((\reg_file|rt_data~15_combout\ & ((\reg_file|rt_data~16_combout\))) # (!\reg_file|rt_data~15_combout\ & (\reg_file|rt_data~10_combout\)))) # (!\rt_address[3]~input_o\ & 
-- (\reg_file|rt_data~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[3]~input_o\,
	datab => \reg_file|rt_data~15_combout\,
	datac => \reg_file|rt_data~10_combout\,
	datad => \reg_file|rt_data~16_combout\,
	combout => \reg_file|rt_data~17_combout\);

-- Location: LCCOMB_X25_Y14_N26
\reg_file|rt_data[1]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[1]~SCLR_LUT_combout\ = (\reg_file|rt_data~17_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rt_data~17_combout\,
	datac => \reset~input_o\,
	combout => \reg_file|rt_data[1]~SCLR_LUT_combout\);

-- Location: LCCOMB_X22_Y18_N24
\alu0|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~7_combout\ = (\alu_select[1]~input_o\ & (\alu0|Mult0|auto_generated|mac_out2~dataout\ & ((!\alu_select[0]~input_o\)))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Mult0|auto_generated|mac_out2~dataout\,
	datab => \alu0|Add1~5_combout\,
	datac => \alu_select[1]~input_o\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~7_combout\);

-- Location: LCCOMB_X24_Y16_N2
\alu0|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~9_combout\ = (!\alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & \alu0|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \alu0|Add1~8_combout\,
	combout => \alu0|Add1~9_combout\);

-- Location: LCCOMB_X25_Y16_N0
\alu0|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~11_combout\ = (\alu0|Add1~7_combout\) # ((\alu0|Add1~9_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~7_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \alu0|Add1~9_combout\,
	combout => \alu0|Add1~11_combout\);

-- Location: FF_X25_Y16_N1
\alu0|oo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~11_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(0));

-- Location: IOIBUF_X31_Y19_N15
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

-- Location: LCCOMB_X27_Y17_N24
\load_store|lsu_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|lsu_out~0_combout\ = (!\reset~input_o\ & \mem_read_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \mem_read_data[0]~input_o\,
	combout => \load_store|lsu_out~0_combout\);

-- Location: FF_X27_Y17_N25
\load_store|lsu_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|lsu_out~0_combout\,
	ena => \load_store|lsu_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|lsu_out\(0));

-- Location: LCCOMB_X24_Y21_N12
\reg_file|reg_file~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~0_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & ((\load_store|lsu_out\(0)))) # (!\reg_mux_in[0]~input_o\ & (\alu0|oo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \alu0|oo\(0),
	datac => \reg_mux_in[1]~input_o\,
	datad => \load_store|lsu_out\(0),
	combout => \reg_file|reg_file~0_combout\);

-- Location: LCCOMB_X24_Y21_N14
\reg_file|reg_file~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~1_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~0_combout\) # ((\reg_mux_in[1]~input_o\ & \immediate[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \reset~input_o\,
	datac => \immediate[0]~input_o\,
	datad => \reg_file|reg_file~0_combout\,
	combout => \reg_file|reg_file~1_combout\);

-- Location: FF_X24_Y21_N23
\reg_file|reg_file[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~1_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[12][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[12][0]~q\);

-- Location: LCCOMB_X20_Y21_N26
\reg_file|rs_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~7_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[13][0]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[13][0]~q\,
	datad => \reg_file|reg_file[12][0]~q\,
	combout => \reg_file|rs_data~7_combout\);

-- Location: LCCOMB_X18_Y21_N0
\reg_file|rs_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~2_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[5][0]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][0]~q\,
	datad => \reg_file|reg_file[4][0]~q\,
	combout => \reg_file|rs_data~2_combout\);

-- Location: LCCOMB_X19_Y21_N16
\reg_file|rs_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~3_combout\ = (\reg_file|rs_data~2_combout\ & (((\reg_file|reg_file[7][0]~q\)) # (!\rs_address[1]~input_o\))) # (!\reg_file|rs_data~2_combout\ & (\rs_address[1]~input_o\ & (\reg_file|reg_file[6][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~2_combout\,
	datab => \rs_address[1]~input_o\,
	datac => \reg_file|reg_file[6][0]~q\,
	datad => \reg_file|reg_file[7][0]~q\,
	combout => \reg_file|rs_data~3_combout\);

-- Location: LCCOMB_X18_Y20_N24
\reg_file|rs_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~4_combout\ = (\rs_address[0]~input_o\ & (((\reg_file|reg_file[1][0]~q\) # (\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[0][0]~q\ & ((!\rs_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|reg_file[0][0]~q\,
	datac => \reg_file|reg_file[1][0]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~4_combout\);

-- Location: LCCOMB_X19_Y20_N24
\reg_file|rs_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~5_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~4_combout\ & (\reg_file|reg_file[3][0]~q\)) # (!\reg_file|rs_data~4_combout\ & ((\reg_file|reg_file[2][0]~q\))))) # (!\rs_address[1]~input_o\ & 
-- (((\reg_file|rs_data~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[3][0]~q\,
	datac => \reg_file|reg_file[2][0]~q\,
	datad => \reg_file|rs_data~4_combout\,
	combout => \reg_file|rs_data~5_combout\);

-- Location: LCCOMB_X20_Y21_N8
\reg_file|rs_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~6_combout\ = (\rs_address[2]~input_o\ & ((\rs_address[3]~input_o\) # ((\reg_file|rs_data~3_combout\)))) # (!\rs_address[2]~input_o\ & (!\rs_address[3]~input_o\ & ((\reg_file|rs_data~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[2]~input_o\,
	datab => \rs_address[3]~input_o\,
	datac => \reg_file|rs_data~3_combout\,
	datad => \reg_file|rs_data~5_combout\,
	combout => \reg_file|rs_data~6_combout\);

-- Location: LCCOMB_X24_Y21_N28
\reg_file|rs_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~0_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[9][0]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[9][0]~q\,
	datad => \reg_file|reg_file[8][0]~q\,
	combout => \reg_file|rs_data~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\reg_file|rs_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~1_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~0_combout\ & (\reg_file|reg_file[11][0]~q\)) # (!\reg_file|rs_data~0_combout\ & ((\reg_file|reg_file[10][0]~q\))))) # (!\rs_address[1]~input_o\ & 
-- (((\reg_file|rs_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[11][0]~q\,
	datac => \reg_file|reg_file[10][0]~q\,
	datad => \reg_file|rs_data~0_combout\,
	combout => \reg_file|rs_data~1_combout\);

-- Location: LCCOMB_X20_Y21_N28
\reg_file|rs_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~8_combout\ = (\reg_file|rs_data~6_combout\ & ((\reg_file|rs_data~7_combout\) # ((!\rs_address[3]~input_o\)))) # (!\reg_file|rs_data~6_combout\ & (((\rs_address[3]~input_o\ & \reg_file|rs_data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~7_combout\,
	datab => \reg_file|rs_data~6_combout\,
	datac => \rs_address[3]~input_o\,
	datad => \reg_file|rs_data~1_combout\,
	combout => \reg_file|rs_data~8_combout\);

-- Location: LCCOMB_X19_Y17_N20
\reg_file|rs_data[0]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[0]~SCLR_LUT_combout\ = (\reg_file|rs_data~8_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data~8_combout\,
	datad => \reset~input_o\,
	combout => \reg_file|rs_data[0]~SCLR_LUT_combout\);

-- Location: LCCOMB_X22_Y14_N0
\reg_file|rs_data[0]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[0]~_Duplicate_1feeder_combout\ = \reg_file|rs_data[0]~SCLR_LUT_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_file|rs_data[0]~SCLR_LUT_combout\,
	combout => \reg_file|rs_data[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X22_Y14_N1
\reg_file|rs_data[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_file|rs_data[0]~_Duplicate_1feeder_combout\,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y14_N2
\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ = \reg_file|rs_data[1]~_Duplicate_1_q\ $ (((\reg_file|rs_data[7]~_Duplicate_1_q\ & \reg_file|rs_data[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datad => \reg_file|rs_data[1]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\);

-- Location: LCCOMB_X25_Y14_N18
\alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\)))) # (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (((\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\) # 
-- (\alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\)) # (!\reg_file|rs_data[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datac => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X25_Y14_N0
\alu0|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~41_combout\ = (\alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & (\alu0|Add1~8_combout\ & !\alu0|Div0|auto_generated|divider|divider|sel\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \alu0|Add1~8_combout\,
	datad => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	combout => \alu0|Add1~41_combout\);

-- Location: LCCOMB_X25_Y16_N26
\alu0|Div0|auto_generated|divider|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~12_combout\ = (\alu0|Div0|auto_generated|divider|op_1~11\ & (((\alu0|Div0|auto_generated|divider|divider|sel\(9)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\alu0|Div0|auto_generated|divider|op_1~11\ & ((((\alu0|Div0|auto_generated|divider|divider|sel\(9)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \alu0|Div0|auto_generated|divider|op_1~13\ = CARRY((!\alu0|Div0|auto_generated|divider|op_1~11\ & ((\alu0|Div0|auto_generated|divider|divider|sel\(9)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	datab => \alu0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \alu0|Div0|auto_generated|divider|op_1~11\,
	combout => \alu0|Div0|auto_generated|divider|op_1~12_combout\,
	cout => \alu0|Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X23_Y17_N16
\alu0|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~42_combout\ = \reg_file|rs_data[6]~_Duplicate_1_q\ $ (\alu_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data[6]~_Duplicate_1_q\,
	datad => \alu_select[0]~input_o\,
	combout => \alu0|Add1~42_combout\);

-- Location: LCCOMB_X22_Y17_N20
\alu0|Add1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~43_combout\ = (\reg_file|rt_data[6]~_Duplicate_1_q\ & ((\alu0|Add1~42_combout\ & (\alu0|Add1~38\ & VCC)) # (!\alu0|Add1~42_combout\ & (!\alu0|Add1~38\)))) # (!\reg_file|rt_data[6]~_Duplicate_1_q\ & ((\alu0|Add1~42_combout\ & (!\alu0|Add1~38\)) 
-- # (!\alu0|Add1~42_combout\ & ((\alu0|Add1~38\) # (GND)))))
-- \alu0|Add1~44\ = CARRY((\reg_file|rt_data[6]~_Duplicate_1_q\ & (!\alu0|Add1~42_combout\ & !\alu0|Add1~38\)) # (!\reg_file|rt_data[6]~_Duplicate_1_q\ & ((!\alu0|Add1~38\) # (!\alu0|Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[6]~_Duplicate_1_q\,
	datab => \alu0|Add1~42_combout\,
	datad => VCC,
	cin => \alu0|Add1~38\,
	combout => \alu0|Add1~43_combout\,
	cout => \alu0|Add1~44\);

-- Location: LCCOMB_X22_Y17_N28
\alu0|Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~45_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & ((\alu0|Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu0|Add1~43_combout\,
	datac => \alu_select[1]~input_o\,
	datad => \alu0|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \alu0|Add1~45_combout\);

-- Location: LCCOMB_X25_Y16_N2
\alu0|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~46_combout\ = (\alu0|Add1~41_combout\) # ((\alu0|Add1~45_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~41_combout\,
	datab => \alu0|Add1~10_combout\,
	datac => \alu0|Div0|auto_generated|divider|op_1~12_combout\,
	datad => \alu0|Add1~45_combout\,
	combout => \alu0|Add1~46_combout\);

-- Location: FF_X25_Y16_N3
\alu0|oo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~46_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(6));

-- Location: LCCOMB_X24_Y21_N0
\reg_file|reg_file~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~26_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & (\load_store|lsu_out\(6))) # (!\reg_mux_in[0]~input_o\ & ((\alu0|oo\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \load_store|lsu_out\(6),
	datac => \reg_mux_in[1]~input_o\,
	datad => \alu0|oo\(6),
	combout => \reg_file|reg_file~26_combout\);

-- Location: LCCOMB_X24_Y21_N2
\reg_file|reg_file~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~27_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~26_combout\) # ((\reg_mux_in[1]~input_o\ & \immediate[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \reset~input_o\,
	datac => \immediate[6]~input_o\,
	datad => \reg_file|reg_file~26_combout\,
	combout => \reg_file|reg_file~27_combout\);

-- Location: FF_X23_Y21_N17
\reg_file|reg_file[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~27_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[10][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[10][6]~q\);

-- Location: LCCOMB_X23_Y21_N2
\reg_file|rt_data~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~54_combout\ = (\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\) # ((\reg_file|reg_file[9][6]~q\)))) # (!\rt_address[0]~input_o\ & (!\rt_address[1]~input_o\ & (\reg_file|reg_file[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[8][6]~q\,
	datad => \reg_file|reg_file[9][6]~q\,
	combout => \reg_file|rt_data~54_combout\);

-- Location: LCCOMB_X22_Y21_N0
\reg_file|rt_data~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~55_combout\ = (\rt_address[1]~input_o\ & ((\reg_file|rt_data~54_combout\ & ((\reg_file|reg_file[11][6]~q\))) # (!\reg_file|rt_data~54_combout\ & (\reg_file|reg_file[10][6]~q\)))) # (!\rt_address[1]~input_o\ & 
-- (((\reg_file|rt_data~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[1]~input_o\,
	datab => \reg_file|reg_file[10][6]~q\,
	datac => \reg_file|reg_file[11][6]~q\,
	datad => \reg_file|rt_data~54_combout\,
	combout => \reg_file|rt_data~55_combout\);

-- Location: LCCOMB_X23_Y20_N4
\reg_file|rt_data~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~61_combout\ = (!\rt_address[1]~input_o\ & ((\rt_address[0]~input_o\ & (\reg_file|reg_file[13][6]~q\)) # (!\rt_address[0]~input_o\ & ((\reg_file|reg_file[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \rt_address[1]~input_o\,
	datac => \reg_file|reg_file[13][6]~q\,
	datad => \reg_file|reg_file[12][6]~q\,
	combout => \reg_file|rt_data~61_combout\);

-- Location: LCCOMB_X18_Y20_N4
\reg_file|rt_data~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~58_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|reg_file[1][6]~q\) # ((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & (((\reg_file|reg_file[0][6]~q\ & !\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[1][6]~q\,
	datab => \rt_address[0]~input_o\,
	datac => \reg_file|reg_file[0][6]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~58_combout\);

-- Location: LCCOMB_X20_Y20_N12
\reg_file|rt_data~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~59_combout\ = (\reg_file|rt_data~58_combout\ & (((\reg_file|reg_file[3][6]~q\) # (!\rt_address[1]~input_o\)))) # (!\reg_file|rt_data~58_combout\ & (\reg_file|reg_file[2][6]~q\ & ((\rt_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[2][6]~q\,
	datab => \reg_file|rt_data~58_combout\,
	datac => \reg_file|reg_file[3][6]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~59_combout\);

-- Location: LCCOMB_X18_Y21_N2
\reg_file|rt_data~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~56_combout\ = (\rt_address[0]~input_o\ & (((\rt_address[1]~input_o\)))) # (!\rt_address[0]~input_o\ & ((\rt_address[1]~input_o\ & (\reg_file|reg_file[6][6]~q\)) # (!\rt_address[1]~input_o\ & ((\reg_file|reg_file[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[6][6]~q\,
	datac => \reg_file|reg_file[4][6]~q\,
	datad => \rt_address[1]~input_o\,
	combout => \reg_file|rt_data~56_combout\);

-- Location: LCCOMB_X19_Y21_N26
\reg_file|rt_data~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~57_combout\ = (\rt_address[0]~input_o\ & ((\reg_file|rt_data~56_combout\ & ((\reg_file|reg_file[7][6]~q\))) # (!\reg_file|rt_data~56_combout\ & (\reg_file|reg_file[5][6]~q\)))) # (!\rt_address[0]~input_o\ & 
-- (((\reg_file|rt_data~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt_address[0]~input_o\,
	datab => \reg_file|reg_file[5][6]~q\,
	datac => \reg_file|reg_file[7][6]~q\,
	datad => \reg_file|rt_data~56_combout\,
	combout => \reg_file|rt_data~57_combout\);

-- Location: LCCOMB_X20_Y20_N24
\reg_file|rt_data~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~60_combout\ = (\rt_address[2]~input_o\ & (((\reg_file|rt_data~57_combout\) # (\rt_address[3]~input_o\)))) # (!\rt_address[2]~input_o\ & (\reg_file|rt_data~59_combout\ & ((!\rt_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~59_combout\,
	datab => \reg_file|rt_data~57_combout\,
	datac => \rt_address[2]~input_o\,
	datad => \rt_address[3]~input_o\,
	combout => \reg_file|rt_data~60_combout\);

-- Location: LCCOMB_X20_Y20_N26
\reg_file|rt_data~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data~62_combout\ = (\rt_address[3]~input_o\ & ((\reg_file|rt_data~60_combout\ & ((\reg_file|rt_data~61_combout\))) # (!\reg_file|rt_data~60_combout\ & (\reg_file|rt_data~55_combout\)))) # (!\rt_address[3]~input_o\ & 
-- (((\reg_file|rt_data~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~55_combout\,
	datab => \rt_address[3]~input_o\,
	datac => \reg_file|rt_data~61_combout\,
	datad => \reg_file|rt_data~60_combout\,
	combout => \reg_file|rt_data~62_combout\);

-- Location: LCCOMB_X20_Y20_N30
\reg_file|rt_data[6]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rt_data[6]~SCLR_LUT_combout\ = (\reg_file|rt_data~62_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data~62_combout\,
	datac => \reset~input_o\,
	combout => \reg_file|rt_data[6]~SCLR_LUT_combout\);

-- Location: FF_X25_Y14_N1
\reg_file|rt_data[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rt_data[6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rt_data[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y17_N22
\alu0|Add1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~49_combout\ = \reg_file|rt_data[7]~_Duplicate_1_q\ $ (\alu0|Add1~44\ $ (!\alu0|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rt_data[7]~_Duplicate_1_q\,
	datad => \alu0|Add1~48_combout\,
	cin => \alu0|Add1~44\,
	combout => \alu0|Add1~49_combout\);

-- Location: LCCOMB_X22_Y17_N26
\alu0|Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~51_combout\ = (\alu_select[1]~input_o\ & (!\alu_select[0]~input_o\ & ((\alu0|Mult0|auto_generated|mac_out2~DATAOUT7\)))) # (!\alu_select[1]~input_o\ & (((\alu0|Add1~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_select[0]~input_o\,
	datab => \alu_select[1]~input_o\,
	datac => \alu0|Add1~49_combout\,
	datad => \alu0|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \alu0|Add1~51_combout\);

-- Location: LCCOMB_X25_Y13_N16
\alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\) # (!\reg_file|rs_data[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datad => \alu0|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\alu0|Add1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~47_combout\ = (!\alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\ & (\alu0|Add1~8_combout\ & (!\alu0|Div0|auto_generated|divider|divider|sel\(9) & \alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|my_abs_den|cs1a[1]~6_combout\,
	datab => \alu0|Add1~8_combout\,
	datac => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	combout => \alu0|Add1~47_combout\);

-- Location: LCCOMB_X25_Y15_N10
\alu0|Div0|auto_generated|divider|divider|sel[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|divider|sel\(0) = (\alu0|Div0|auto_generated|divider|divider|sel\(9)) # (\reg_file|rs_data[1]~_Duplicate_1_q\ $ (((\reg_file|rs_data[0]~_Duplicate_1_q\ & \reg_file|rs_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[1]~_Duplicate_1_q\,
	datac => \alu0|Div0|auto_generated|divider|divider|sel\(9),
	datad => \reg_file|rs_data[7]~_Duplicate_1_q\,
	combout => \alu0|Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X25_Y16_N28
\alu0|Div0|auto_generated|divider|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Div0|auto_generated|divider|op_1~14_combout\ = \alu0|Div0|auto_generated|divider|op_1~13\ $ (((\alu0|Div0|auto_generated|divider|divider|sel\(0)) # (!\alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Div0|auto_generated|divider|divider|sel\(0),
	datad => \alu0|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	cin => \alu0|Div0|auto_generated|divider|op_1~13\,
	combout => \alu0|Div0|auto_generated|divider|op_1~14_combout\);

-- Location: LCCOMB_X25_Y16_N12
\alu0|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add1~52_combout\ = (\alu0|Add1~51_combout\) # ((\alu0|Add1~47_combout\) # ((\alu0|Add1~10_combout\ & \alu0|Div0|auto_generated|divider|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add1~51_combout\,
	datab => \alu0|Add1~47_combout\,
	datac => \alu0|Add1~10_combout\,
	datad => \alu0|Div0|auto_generated|divider|op_1~14_combout\,
	combout => \alu0|Add1~52_combout\);

-- Location: FF_X25_Y16_N13
\alu0|oo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add1~52_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|oo\(7));

-- Location: LCCOMB_X24_Y21_N6
\reg_file|reg_file~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~28_combout\ = (!\reg_mux_in[1]~input_o\ & ((\reg_mux_in[0]~input_o\ & (\load_store|lsu_out\(7))) # (!\reg_mux_in[0]~input_o\ & ((\alu0|oo\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[0]~input_o\,
	datab => \load_store|lsu_out\(7),
	datac => \reg_mux_in[1]~input_o\,
	datad => \alu0|oo\(7),
	combout => \reg_file|reg_file~28_combout\);

-- Location: LCCOMB_X24_Y21_N10
\reg_file|reg_file~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|reg_file~29_combout\ = (!\reset~input_o\ & ((\reg_file|reg_file~28_combout\) # ((\reg_mux_in[1]~input_o\ & \immediate[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_mux_in[1]~input_o\,
	datab => \reset~input_o\,
	datac => \immediate[7]~input_o\,
	datad => \reg_file|reg_file~28_combout\,
	combout => \reg_file|reg_file~29_combout\);

-- Location: FF_X19_Y20_N15
\reg_file|reg_file[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|reg_file~29_combout\,
	sload => VCC,
	ena => \reg_file|reg_file[0][7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|reg_file[0][7]~q\);

-- Location: LCCOMB_X19_Y20_N0
\reg_file|rs_data~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~68_combout\ = (\rs_address[1]~input_o\ & (((\reg_file|reg_file[2][7]~q\) # (\rs_address[0]~input_o\)))) # (!\rs_address[1]~input_o\ & (\reg_file|reg_file[0][7]~q\ & ((!\rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|reg_file[0][7]~q\,
	datac => \reg_file|reg_file[2][7]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~68_combout\);

-- Location: LCCOMB_X20_Y20_N10
\reg_file|rs_data~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~69_combout\ = (\reg_file|rs_data~68_combout\ & ((\reg_file|reg_file[3][7]~q\) # ((!\rs_address[0]~input_o\)))) # (!\reg_file|rs_data~68_combout\ & (((\reg_file|reg_file[1][7]~q\ & \rs_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~68_combout\,
	datab => \reg_file|reg_file[3][7]~q\,
	datac => \reg_file|reg_file[1][7]~q\,
	datad => \rs_address[0]~input_o\,
	combout => \reg_file|rs_data~69_combout\);

-- Location: LCCOMB_X23_Y21_N28
\reg_file|rs_data~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~66_combout\ = (\rs_address[0]~input_o\ & (((\rs_address[1]~input_o\)))) # (!\rs_address[0]~input_o\ & ((\rs_address[1]~input_o\ & ((\reg_file|reg_file[10][7]~q\))) # (!\rs_address[1]~input_o\ & (\reg_file|reg_file[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|reg_file[8][7]~q\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[10][7]~q\,
	datad => \rs_address[1]~input_o\,
	combout => \reg_file|rs_data~66_combout\);

-- Location: LCCOMB_X24_Y21_N4
\reg_file|rs_data~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~67_combout\ = (\rs_address[0]~input_o\ & ((\reg_file|rs_data~66_combout\ & ((\reg_file|reg_file[11][7]~q\))) # (!\reg_file|rs_data~66_combout\ & (\reg_file|reg_file[9][7]~q\)))) # (!\rs_address[0]~input_o\ & 
-- (\reg_file|rs_data~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[0]~input_o\,
	datab => \reg_file|rs_data~66_combout\,
	datac => \reg_file|reg_file[9][7]~q\,
	datad => \reg_file|reg_file[11][7]~q\,
	combout => \reg_file|rs_data~67_combout\);

-- Location: LCCOMB_X22_Y20_N30
\reg_file|rs_data~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~70_combout\ = (\rs_address[3]~input_o\ & (((\rs_address[2]~input_o\) # (\reg_file|rs_data~67_combout\)))) # (!\rs_address[3]~input_o\ & (\reg_file|rs_data~69_combout\ & (!\rs_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~69_combout\,
	datab => \rs_address[3]~input_o\,
	datac => \rs_address[2]~input_o\,
	datad => \reg_file|rs_data~67_combout\,
	combout => \reg_file|rs_data~70_combout\);

-- Location: LCCOMB_X22_Y20_N0
\reg_file|rs_data~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~71_combout\ = (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & ((\reg_file|reg_file[13][7]~q\))) # (!\rs_address[0]~input_o\ & (\reg_file|reg_file[12][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[12][7]~q\,
	datad => \reg_file|reg_file[13][7]~q\,
	combout => \reg_file|rs_data~71_combout\);

-- Location: LCCOMB_X18_Y21_N8
\reg_file|rs_data~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~64_combout\ = (\rs_address[1]~input_o\ & (\rs_address[0]~input_o\)) # (!\rs_address[1]~input_o\ & ((\rs_address[0]~input_o\ & (\reg_file|reg_file[5][7]~q\)) # (!\rs_address[0]~input_o\ & ((\reg_file|reg_file[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \rs_address[0]~input_o\,
	datac => \reg_file|reg_file[5][7]~q\,
	datad => \reg_file|reg_file[4][7]~q\,
	combout => \reg_file|rs_data~64_combout\);

-- Location: LCCOMB_X22_Y20_N2
\reg_file|rs_data~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~65_combout\ = (\rs_address[1]~input_o\ & ((\reg_file|rs_data~64_combout\ & ((\reg_file|reg_file[7][7]~q\))) # (!\reg_file|rs_data~64_combout\ & (\reg_file|reg_file[6][7]~q\)))) # (!\rs_address[1]~input_o\ & 
-- (\reg_file|rs_data~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs_address[1]~input_o\,
	datab => \reg_file|rs_data~64_combout\,
	datac => \reg_file|reg_file[6][7]~q\,
	datad => \reg_file|reg_file[7][7]~q\,
	combout => \reg_file|rs_data~65_combout\);

-- Location: LCCOMB_X22_Y20_N6
\reg_file|rs_data~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data~72_combout\ = (\reg_file|rs_data~70_combout\ & ((\reg_file|rs_data~71_combout\) # ((!\rs_address[2]~input_o\)))) # (!\reg_file|rs_data~70_combout\ & (((\rs_address[2]~input_o\ & \reg_file|rs_data~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data~70_combout\,
	datab => \reg_file|rs_data~71_combout\,
	datac => \rs_address[2]~input_o\,
	datad => \reg_file|rs_data~65_combout\,
	combout => \reg_file|rs_data~72_combout\);

-- Location: LCCOMB_X22_Y20_N28
\reg_file|rs_data[7]~SCLR_LUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg_file|rs_data[7]~SCLR_LUT_combout\ = (!\reset~input_o\ & \reg_file|rs_data~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rs_data~72_combout\,
	combout => \reg_file|rs_data[7]~SCLR_LUT_combout\);

-- Location: FF_X22_Y14_N23
\reg_file|rs_data[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reg_file|rs_data[7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \reg_file|rs_data[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_file|rs_data[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y17_N0
\alu0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~0_combout\ = (\reg_file|rt_data[0]~_Duplicate_1_q\ & (\reg_file|rs_data[0]~_Duplicate_1_q\ $ (VCC))) # (!\reg_file|rt_data[0]~_Duplicate_1_q\ & ((\reg_file|rs_data[0]~_Duplicate_1_q\) # (GND)))
-- \alu0|Add0~1\ = CARRY((\reg_file|rs_data[0]~_Duplicate_1_q\) # (!\reg_file|rt_data[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[0]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \alu0|Add0~0_combout\,
	cout => \alu0|Add0~1\);

-- Location: LCCOMB_X25_Y17_N2
\alu0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~2_combout\ = (\reg_file|rt_data[1]~_Duplicate_1_q\ & ((\reg_file|rs_data[1]~_Duplicate_1_q\ & (!\alu0|Add0~1\)) # (!\reg_file|rs_data[1]~_Duplicate_1_q\ & ((\alu0|Add0~1\) # (GND))))) # (!\reg_file|rt_data[1]~_Duplicate_1_q\ & 
-- ((\reg_file|rs_data[1]~_Duplicate_1_q\ & (\alu0|Add0~1\ & VCC)) # (!\reg_file|rs_data[1]~_Duplicate_1_q\ & (!\alu0|Add0~1\))))
-- \alu0|Add0~3\ = CARRY((\reg_file|rt_data[1]~_Duplicate_1_q\ & ((!\alu0|Add0~1\) # (!\reg_file|rs_data[1]~_Duplicate_1_q\))) # (!\reg_file|rt_data[1]~_Duplicate_1_q\ & (!\reg_file|rs_data[1]~_Duplicate_1_q\ & !\alu0|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[1]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add0~1\,
	combout => \alu0|Add0~2_combout\,
	cout => \alu0|Add0~3\);

-- Location: LCCOMB_X25_Y17_N4
\alu0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~4_combout\ = ((\reg_file|rs_data[2]~_Duplicate_1_q\ $ (\reg_file|rt_data[2]~_Duplicate_1_q\ $ (\alu0|Add0~3\)))) # (GND)
-- \alu0|Add0~5\ = CARRY((\reg_file|rs_data[2]~_Duplicate_1_q\ & ((!\alu0|Add0~3\) # (!\reg_file|rt_data[2]~_Duplicate_1_q\))) # (!\reg_file|rs_data[2]~_Duplicate_1_q\ & (!\reg_file|rt_data[2]~_Duplicate_1_q\ & !\alu0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[2]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add0~3\,
	combout => \alu0|Add0~4_combout\,
	cout => \alu0|Add0~5\);

-- Location: LCCOMB_X25_Y17_N6
\alu0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~6_combout\ = (\reg_file|rt_data[3]~_Duplicate_1_q\ & ((\reg_file|rs_data[3]~_Duplicate_1_q\ & (!\alu0|Add0~5\)) # (!\reg_file|rs_data[3]~_Duplicate_1_q\ & ((\alu0|Add0~5\) # (GND))))) # (!\reg_file|rt_data[3]~_Duplicate_1_q\ & 
-- ((\reg_file|rs_data[3]~_Duplicate_1_q\ & (\alu0|Add0~5\ & VCC)) # (!\reg_file|rs_data[3]~_Duplicate_1_q\ & (!\alu0|Add0~5\))))
-- \alu0|Add0~7\ = CARRY((\reg_file|rt_data[3]~_Duplicate_1_q\ & ((!\alu0|Add0~5\) # (!\reg_file|rs_data[3]~_Duplicate_1_q\))) # (!\reg_file|rt_data[3]~_Duplicate_1_q\ & (!\reg_file|rs_data[3]~_Duplicate_1_q\ & !\alu0|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[3]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add0~5\,
	combout => \alu0|Add0~6_combout\,
	cout => \alu0|Add0~7\);

-- Location: LCCOMB_X25_Y17_N8
\alu0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~8_combout\ = ((\reg_file|rs_data[4]~_Duplicate_1_q\ $ (\reg_file|rt_data[4]~_Duplicate_1_q\ $ (\alu0|Add0~7\)))) # (GND)
-- \alu0|Add0~9\ = CARRY((\reg_file|rs_data[4]~_Duplicate_1_q\ & ((!\alu0|Add0~7\) # (!\reg_file|rt_data[4]~_Duplicate_1_q\))) # (!\reg_file|rs_data[4]~_Duplicate_1_q\ & (!\reg_file|rt_data[4]~_Duplicate_1_q\ & !\alu0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[4]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add0~7\,
	combout => \alu0|Add0~8_combout\,
	cout => \alu0|Add0~9\);

-- Location: LCCOMB_X25_Y17_N10
\alu0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~10_combout\ = (\reg_file|rt_data[5]~_Duplicate_1_q\ & ((\reg_file|rs_data[5]~_Duplicate_1_q\ & (!\alu0|Add0~9\)) # (!\reg_file|rs_data[5]~_Duplicate_1_q\ & ((\alu0|Add0~9\) # (GND))))) # (!\reg_file|rt_data[5]~_Duplicate_1_q\ & 
-- ((\reg_file|rs_data[5]~_Duplicate_1_q\ & (\alu0|Add0~9\ & VCC)) # (!\reg_file|rs_data[5]~_Duplicate_1_q\ & (!\alu0|Add0~9\))))
-- \alu0|Add0~11\ = CARRY((\reg_file|rt_data[5]~_Duplicate_1_q\ & ((!\alu0|Add0~9\) # (!\reg_file|rs_data[5]~_Duplicate_1_q\))) # (!\reg_file|rt_data[5]~_Duplicate_1_q\ & (!\reg_file|rs_data[5]~_Duplicate_1_q\ & !\alu0|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rt_data[5]~_Duplicate_1_q\,
	datab => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add0~9\,
	combout => \alu0|Add0~10_combout\,
	cout => \alu0|Add0~11\);

-- Location: LCCOMB_X25_Y17_N12
\alu0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~12_combout\ = ((\reg_file|rs_data[6]~_Duplicate_1_q\ $ (\reg_file|rt_data[6]~_Duplicate_1_q\ $ (\alu0|Add0~11\)))) # (GND)
-- \alu0|Add0~13\ = CARRY((\reg_file|rs_data[6]~_Duplicate_1_q\ & ((!\alu0|Add0~11\) # (!\reg_file|rt_data[6]~_Duplicate_1_q\))) # (!\reg_file|rs_data[6]~_Duplicate_1_q\ & (!\reg_file|rt_data[6]~_Duplicate_1_q\ & !\alu0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[6]~_Duplicate_1_q\,
	datab => \reg_file|rt_data[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \alu0|Add0~11\,
	combout => \alu0|Add0~12_combout\,
	cout => \alu0|Add0~13\);

-- Location: LCCOMB_X25_Y17_N14
\alu0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Add0~14_combout\ = \reg_file|rs_data[7]~_Duplicate_1_q\ $ (\alu0|Add0~13\ $ (!\reg_file|rt_data[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datad => \reg_file|rt_data[7]~_Duplicate_1_q\,
	cin => \alu0|Add0~13\,
	combout => \alu0|Add0~14_combout\);

-- Location: FF_X25_Y17_N15
\alu0|alu_nzp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Add0~14_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|alu_nzp\(2));

-- Location: LCCOMB_X30_Y17_N10
\counter|nzp_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|nzp_reg~3_combout\ = (\alu0|alu_nzp\(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu_nzp\(2),
	datac => \reset~input_o\,
	combout => \counter|nzp_reg~3_combout\);

-- Location: IOIBUF_X31_Y20_N15
\nzp_write_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nzp_write_en,
	o => \nzp_write_en~input_o\);

-- Location: LCCOMB_X30_Y17_N30
\counter|nzp_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|nzp_reg[0]~1_combout\ = (\reset~input_o\) # ((\nzp_write_en~input_o\ & (\reg_file|Decoder0~0_combout\ & \en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nzp_write_en~input_o\,
	datab => \reg_file|Decoder0~0_combout\,
	datac => \reset~input_o\,
	datad => \en~input_o\,
	combout => \counter|nzp_reg[0]~1_combout\);

-- Location: FF_X30_Y17_N11
\counter|nzp_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|nzp_reg~3_combout\,
	ena => \counter|nzp_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|nzp_reg\(2));

-- Location: LCCOMB_X25_Y17_N16
\alu0|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Mux2~1_combout\ = (!\alu0|Add0~12_combout\ & (!\alu0|Add0~8_combout\ & (!\alu0|Add0~14_combout\ & !\alu0|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add0~12_combout\,
	datab => \alu0|Add0~8_combout\,
	datac => \alu0|Add0~14_combout\,
	datad => \alu0|Add0~10_combout\,
	combout => \alu0|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y17_N30
\alu0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Mux2~0_combout\ = (!\alu0|Add0~6_combout\ & (!\alu0|Add0~2_combout\ & (!\alu0|Add0~4_combout\ & !\alu0|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Add0~6_combout\,
	datab => \alu0|Add0~2_combout\,
	datac => \alu0|Add0~4_combout\,
	datad => \alu0|Add0~0_combout\,
	combout => \alu0|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\alu0|alu_nzp[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|alu_nzp[1]~0_combout\ = (!\reset~input_o\ & (\alu0|Mux2~1_combout\ & (\alu0|Mux2~0_combout\ & !\counter|new_pc[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \alu0|Mux2~1_combout\,
	datac => \alu0|Mux2~0_combout\,
	datad => \counter|new_pc[2]~2_combout\,
	combout => \alu0|alu_nzp[1]~0_combout\);

-- Location: LCCOMB_X30_Y17_N2
\alu0|alu_nzp[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|alu_nzp[1]~1_combout\ = (\alu0|alu_nzp[1]~0_combout\) # ((!\reset~input_o\ & (\alu0|alu_nzp\(1) & \counter|new_pc[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu_nzp[1]~0_combout\,
	datab => \reset~input_o\,
	datac => \alu0|alu_nzp\(1),
	datad => \counter|new_pc[2]~2_combout\,
	combout => \alu0|alu_nzp[1]~1_combout\);

-- Location: FF_X30_Y17_N3
\alu0|alu_nzp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|alu_nzp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|alu_nzp\(1));

-- Location: LCCOMB_X30_Y17_N12
\counter|nzp_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|nzp_reg~0_combout\ = (\alu0|alu_nzp\(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu0|alu_nzp\(1),
	datac => \reset~input_o\,
	combout => \counter|nzp_reg~0_combout\);

-- Location: FF_X30_Y17_N13
\counter|nzp_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|nzp_reg~0_combout\,
	ena => \counter|nzp_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|nzp_reg\(1));

-- Location: IOIBUF_X31_Y12_N1
\nzp_instr[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nzp_instr(0),
	o => \nzp_instr[0]~input_o\);

-- Location: LCCOMB_X25_Y17_N28
\alu0|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu0|Mux2~2_combout\ = (!\alu0|Add0~14_combout\ & ((!\alu0|Mux2~1_combout\) # (!\alu0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|Mux2~0_combout\,
	datab => \alu0|Mux2~1_combout\,
	datac => \alu0|Add0~14_combout\,
	combout => \alu0|Mux2~2_combout\);

-- Location: FF_X25_Y17_N29
\alu0|alu_nzp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu0|Mux2~2_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu0|alu_nzp\(0));

-- Location: LCCOMB_X30_Y17_N26
\counter|nzp_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|nzp_reg~2_combout\ = (\alu0|alu_nzp\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu_nzp\(0),
	datac => \reset~input_o\,
	combout => \counter|nzp_reg~2_combout\);

-- Location: FF_X30_Y17_N27
\counter|nzp_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|nzp_reg~2_combout\,
	ena => \counter|nzp_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|nzp_reg\(0));

-- Location: IOIBUF_X31_Y11_N8
\nzp_instr[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nzp_instr(1),
	o => \nzp_instr[1]~input_o\);

-- Location: LCCOMB_X30_Y17_N28
\counter|new_pc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|new_pc~0_combout\ = (\counter|nzp_reg\(1) & (\nzp_instr[1]~input_o\ & (\nzp_instr[0]~input_o\ $ (!\counter|nzp_reg\(0))))) # (!\counter|nzp_reg\(1) & (!\nzp_instr[1]~input_o\ & (\nzp_instr[0]~input_o\ $ (!\counter|nzp_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|nzp_reg\(1),
	datab => \nzp_instr[0]~input_o\,
	datac => \counter|nzp_reg\(0),
	datad => \nzp_instr[1]~input_o\,
	combout => \counter|new_pc~0_combout\);

-- Location: IOIBUF_X31_Y15_N22
\nzp_instr[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nzp_instr(2),
	o => \nzp_instr[2]~input_o\);

-- Location: IOIBUF_X31_Y11_N15
\pc_out_mux~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_out_mux,
	o => \pc_out_mux~input_o\);

-- Location: LCCOMB_X30_Y17_N16
\counter|new_pc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|new_pc~1_combout\ = (\counter|new_pc~0_combout\ & (\pc_out_mux~input_o\ & (\counter|nzp_reg\(2) $ (!\nzp_instr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|nzp_reg\(2),
	datab => \counter|new_pc~0_combout\,
	datac => \nzp_instr[2]~input_o\,
	datad => \pc_out_mux~input_o\,
	combout => \counter|new_pc~1_combout\);

-- Location: LCCOMB_X28_Y21_N4
\counter|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~2_combout\ = (\counter|new_pc~1_combout\ & ((\immediate[0]~input_o\))) # (!\counter|new_pc~1_combout\ & (\counter|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Add0~0_combout\,
	datac => \counter|new_pc~1_combout\,
	datad => \immediate[0]~input_o\,
	combout => \counter|Add0~2_combout\);

-- Location: FF_X28_Y21_N5
\counter|new_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~2_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(0));

-- Location: IOIBUF_X31_Y19_N22
\current_pc[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(1),
	o => \current_pc[1]~input_o\);

-- Location: LCCOMB_X28_Y21_N12
\counter|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~3_combout\ = (\current_pc[1]~input_o\ & (!\counter|Add0~1\)) # (!\current_pc[1]~input_o\ & ((\counter|Add0~1\) # (GND)))
-- \counter|Add0~4\ = CARRY((!\counter|Add0~1\) # (!\current_pc[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_pc[1]~input_o\,
	datad => VCC,
	cin => \counter|Add0~1\,
	combout => \counter|Add0~3_combout\,
	cout => \counter|Add0~4\);

-- Location: LCCOMB_X28_Y21_N2
\counter|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~5_combout\ = (\counter|new_pc~1_combout\ & ((\immediate[1]~input_o\))) # (!\counter|new_pc~1_combout\ & (\counter|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Add0~3_combout\,
	datac => \counter|new_pc~1_combout\,
	datad => \immediate[1]~input_o\,
	combout => \counter|Add0~5_combout\);

-- Location: FF_X28_Y21_N3
\counter|new_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~5_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(1));

-- Location: IOIBUF_X29_Y25_N29
\current_pc[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(2),
	o => \current_pc[2]~input_o\);

-- Location: LCCOMB_X28_Y21_N14
\counter|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~6_combout\ = (\current_pc[2]~input_o\ & (\counter|Add0~4\ $ (GND))) # (!\current_pc[2]~input_o\ & (!\counter|Add0~4\ & VCC))
-- \counter|Add0~7\ = CARRY((\current_pc[2]~input_o\ & !\counter|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_pc[2]~input_o\,
	datad => VCC,
	cin => \counter|Add0~4\,
	combout => \counter|Add0~6_combout\,
	cout => \counter|Add0~7\);

-- Location: LCCOMB_X28_Y21_N8
\counter|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~8_combout\ = (\counter|new_pc~1_combout\ & ((\immediate[2]~input_o\))) # (!\counter|new_pc~1_combout\ & (\counter|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|new_pc~1_combout\,
	datac => \counter|Add0~6_combout\,
	datad => \immediate[2]~input_o\,
	combout => \counter|Add0~8_combout\);

-- Location: FF_X28_Y21_N9
\counter|new_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~8_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(2));

-- Location: IOIBUF_X29_Y25_N8
\current_pc[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(3),
	o => \current_pc[3]~input_o\);

-- Location: LCCOMB_X28_Y21_N16
\counter|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~9_combout\ = (\current_pc[3]~input_o\ & (!\counter|Add0~7\)) # (!\current_pc[3]~input_o\ & ((\counter|Add0~7\) # (GND)))
-- \counter|Add0~10\ = CARRY((!\counter|Add0~7\) # (!\current_pc[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_pc[3]~input_o\,
	datad => VCC,
	cin => \counter|Add0~7\,
	combout => \counter|Add0~9_combout\,
	cout => \counter|Add0~10\);

-- Location: LCCOMB_X28_Y21_N6
\counter|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~11_combout\ = (\counter|new_pc~1_combout\ & (\immediate[3]~input_o\)) # (!\counter|new_pc~1_combout\ & ((\counter|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[3]~input_o\,
	datac => \counter|new_pc~1_combout\,
	datad => \counter|Add0~9_combout\,
	combout => \counter|Add0~11_combout\);

-- Location: FF_X28_Y21_N7
\counter|new_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~11_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(3));

-- Location: IOIBUF_X29_Y25_N1
\current_pc[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(4),
	o => \current_pc[4]~input_o\);

-- Location: LCCOMB_X28_Y21_N18
\counter|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~12_combout\ = (\current_pc[4]~input_o\ & (\counter|Add0~10\ $ (GND))) # (!\current_pc[4]~input_o\ & (!\counter|Add0~10\ & VCC))
-- \counter|Add0~13\ = CARRY((\current_pc[4]~input_o\ & !\counter|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_pc[4]~input_o\,
	datad => VCC,
	cin => \counter|Add0~10\,
	combout => \counter|Add0~12_combout\,
	cout => \counter|Add0~13\);

-- Location: LCCOMB_X28_Y21_N0
\counter|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~14_combout\ = (\counter|new_pc~1_combout\ & (\immediate[4]~input_o\)) # (!\counter|new_pc~1_combout\ & ((\counter|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immediate[4]~input_o\,
	datac => \counter|new_pc~1_combout\,
	datad => \counter|Add0~12_combout\,
	combout => \counter|Add0~14_combout\);

-- Location: FF_X28_Y21_N1
\counter|new_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~14_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(4));

-- Location: IOIBUF_X31_Y20_N22
\current_pc[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(5),
	o => \current_pc[5]~input_o\);

-- Location: LCCOMB_X28_Y21_N20
\counter|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~15_combout\ = (\current_pc[5]~input_o\ & (!\counter|Add0~13\)) # (!\current_pc[5]~input_o\ & ((\counter|Add0~13\) # (GND)))
-- \counter|Add0~16\ = CARRY((!\counter|Add0~13\) # (!\current_pc[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \current_pc[5]~input_o\,
	datad => VCC,
	cin => \counter|Add0~13\,
	combout => \counter|Add0~15_combout\,
	cout => \counter|Add0~16\);

-- Location: LCCOMB_X28_Y21_N30
\counter|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~17_combout\ = (\counter|new_pc~1_combout\ & (\immediate[5]~input_o\)) # (!\counter|new_pc~1_combout\ & ((\counter|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[5]~input_o\,
	datac => \counter|new_pc~1_combout\,
	datad => \counter|Add0~15_combout\,
	combout => \counter|Add0~17_combout\);

-- Location: FF_X28_Y21_N31
\counter|new_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~17_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(5));

-- Location: IOIBUF_X31_Y21_N8
\current_pc[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(6),
	o => \current_pc[6]~input_o\);

-- Location: LCCOMB_X28_Y21_N22
\counter|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~18_combout\ = (\current_pc[6]~input_o\ & (\counter|Add0~16\ $ (GND))) # (!\current_pc[6]~input_o\ & (!\counter|Add0~16\ & VCC))
-- \counter|Add0~19\ = CARRY((\current_pc[6]~input_o\ & !\counter|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_pc[6]~input_o\,
	datad => VCC,
	cin => \counter|Add0~16\,
	combout => \counter|Add0~18_combout\,
	cout => \counter|Add0~19\);

-- Location: LCCOMB_X28_Y21_N28
\counter|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~20_combout\ = (\counter|new_pc~1_combout\ & ((\immediate[6]~input_o\))) # (!\counter|new_pc~1_combout\ & (\counter|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|new_pc~1_combout\,
	datac => \counter|Add0~18_combout\,
	datad => \immediate[6]~input_o\,
	combout => \counter|Add0~20_combout\);

-- Location: FF_X28_Y21_N29
\counter|new_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~20_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(6));

-- Location: IOIBUF_X29_Y25_N15
\current_pc[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_current_pc(7),
	o => \current_pc[7]~input_o\);

-- Location: LCCOMB_X28_Y21_N24
\counter|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~21_combout\ = \counter|Add0~19\ $ (\current_pc[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \current_pc[7]~input_o\,
	cin => \counter|Add0~19\,
	combout => \counter|Add0~21_combout\);

-- Location: LCCOMB_X28_Y21_N26
\counter|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter|Add0~23_combout\ = (\counter|new_pc~1_combout\ & (\immediate[7]~input_o\)) # (!\counter|new_pc~1_combout\ & ((\counter|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immediate[7]~input_o\,
	datac => \counter|new_pc~1_combout\,
	datad => \counter|Add0~21_combout\,
	combout => \counter|Add0~23_combout\);

-- Location: FF_X28_Y21_N27
\counter|new_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter|Add0~23_combout\,
	sclr => \reset~input_o\,
	ena => \counter|new_pc[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|new_pc\(7));

-- Location: LCCOMB_X18_Y17_N18
\load_store|mem_read_add~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~0_combout\ = (!\reset~input_o\ & \reg_file|rs_data[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \reg_file|rs_data[0]~_Duplicate_1_q\,
	combout => \load_store|mem_read_add~0_combout\);

-- Location: LCCOMB_X18_Y17_N12
\load_store|mem_read_add[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[0]~feeder_combout\ = \load_store|mem_read_add~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \load_store|mem_read_add~0_combout\,
	combout => \load_store|mem_read_add[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N16
\load_store|mem_read_add[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[6]~1_combout\ = (!\load_store|lsu_state\(1) & (\load_store|lsu_state\(0) & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load_store|lsu_state\(1),
	datac => \load_store|lsu_state\(0),
	datad => \en~input_o\,
	combout => \load_store|mem_read_add[6]~1_combout\);

-- Location: LCCOMB_X29_Y17_N14
\load_store|mem_read_add[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[6]~2_combout\ = (\reset~input_o\) # ((\mem_read_en~input_o\ & \load_store|mem_read_add[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_read_en~input_o\,
	datab => \load_store|mem_read_add[6]~1_combout\,
	datac => \reset~input_o\,
	combout => \load_store|mem_read_add[6]~2_combout\);

-- Location: FF_X18_Y17_N13
\load_store|mem_read_add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add[0]~feeder_combout\,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(0));

-- Location: LCCOMB_X18_Y17_N28
\load_store|mem_read_add~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~3_combout\ = (!\reset~input_o\ & \reg_file|rs_data[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg_file|rs_data[1]~_Duplicate_1_q\,
	combout => \load_store|mem_read_add~3_combout\);

-- Location: LCCOMB_X18_Y17_N10
\load_store|mem_read_add[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[1]~feeder_combout\ = \load_store|mem_read_add~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \load_store|mem_read_add~3_combout\,
	combout => \load_store|mem_read_add[1]~feeder_combout\);

-- Location: FF_X18_Y17_N11
\load_store|mem_read_add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add[1]~feeder_combout\,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(1));

-- Location: LCCOMB_X18_Y17_N2
\load_store|mem_read_add~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~4_combout\ = (!\reset~input_o\ & \reg_file|rs_data[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg_file|rs_data[2]~_Duplicate_1_q\,
	combout => \load_store|mem_read_add~4_combout\);

-- Location: LCCOMB_X18_Y17_N8
\load_store|mem_read_add[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[2]~feeder_combout\ = \load_store|mem_read_add~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \load_store|mem_read_add~4_combout\,
	combout => \load_store|mem_read_add[2]~feeder_combout\);

-- Location: FF_X18_Y17_N9
\load_store|mem_read_add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add[2]~feeder_combout\,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(2));

-- Location: LCCOMB_X18_Y17_N20
\load_store|mem_read_add~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~5_combout\ = (!\reset~input_o\ & \reg_file|rs_data[3]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg_file|rs_data[3]~_Duplicate_1_q\,
	combout => \load_store|mem_read_add~5_combout\);

-- Location: LCCOMB_X18_Y17_N30
\load_store|mem_read_add[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[3]~feeder_combout\ = \load_store|mem_read_add~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \load_store|mem_read_add~5_combout\,
	combout => \load_store|mem_read_add[3]~feeder_combout\);

-- Location: FF_X18_Y17_N31
\load_store|mem_read_add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add[3]~feeder_combout\,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(3));

-- Location: LCCOMB_X18_Y17_N14
\load_store|mem_read_add~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~6_combout\ = (!\reset~input_o\ & \reg_file|rs_data[4]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \reg_file|rs_data[4]~_Duplicate_1_q\,
	combout => \load_store|mem_read_add~6_combout\);

-- Location: FF_X18_Y17_N25
\load_store|mem_read_add[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \load_store|mem_read_add~6_combout\,
	sload => VCC,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(4));

-- Location: LCCOMB_X23_Y17_N30
\load_store|mem_read_add~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~7_combout\ = (\reg_file|rs_data[5]~_Duplicate_1_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_file|rs_data[5]~_Duplicate_1_q\,
	datac => \reset~input_o\,
	combout => \load_store|mem_read_add~7_combout\);

-- Location: FF_X23_Y17_N13
\load_store|mem_read_add[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \load_store|mem_read_add~7_combout\,
	sload => VCC,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(5));

-- Location: LCCOMB_X23_Y17_N0
\load_store|mem_read_add~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~8_combout\ = (!\reset~input_o\ & \reg_file|rs_data[6]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rs_data[6]~_Duplicate_1_q\,
	combout => \load_store|mem_read_add~8_combout\);

-- Location: LCCOMB_X23_Y17_N22
\load_store|mem_read_add[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[6]~feeder_combout\ = \load_store|mem_read_add~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \load_store|mem_read_add~8_combout\,
	combout => \load_store|mem_read_add[6]~feeder_combout\);

-- Location: FF_X23_Y17_N23
\load_store|mem_read_add[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add[6]~feeder_combout\,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(6));

-- Location: LCCOMB_X23_Y17_N6
\load_store|mem_read_add~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add~9_combout\ = (\reg_file|rs_data[7]~_Duplicate_1_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_file|rs_data[7]~_Duplicate_1_q\,
	datac => \reset~input_o\,
	combout => \load_store|mem_read_add~9_combout\);

-- Location: LCCOMB_X23_Y17_N24
\load_store|mem_read_add[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_read_add[7]~feeder_combout\ = \load_store|mem_read_add~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \load_store|mem_read_add~9_combout\,
	combout => \load_store|mem_read_add[7]~feeder_combout\);

-- Location: FF_X23_Y17_N25
\load_store|mem_read_add[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add[7]~feeder_combout\,
	ena => \load_store|mem_read_add[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_read_add\(7));

-- Location: LCCOMB_X29_Y17_N12
\load_store|mem_write_data[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data[1]~0_combout\ = (\reset~input_o\) # ((\mem_write_en~input_o\ & \load_store|mem_read_add[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_write_en~input_o\,
	datab => \load_store|mem_read_add[6]~1_combout\,
	datac => \reset~input_o\,
	combout => \load_store|mem_write_data[1]~0_combout\);

-- Location: FF_X18_Y17_N19
\load_store|mem_write_add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~0_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(0));

-- Location: FF_X18_Y17_N29
\load_store|mem_write_add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~3_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(1));

-- Location: FF_X18_Y17_N3
\load_store|mem_write_add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~4_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(2));

-- Location: FF_X18_Y17_N21
\load_store|mem_write_add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~5_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(3));

-- Location: FF_X18_Y17_N15
\load_store|mem_write_add[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~6_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(4));

-- Location: FF_X23_Y17_N31
\load_store|mem_write_add[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~7_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(5));

-- Location: FF_X23_Y17_N1
\load_store|mem_write_add[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~8_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(6));

-- Location: FF_X23_Y17_N7
\load_store|mem_write_add[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_read_add~9_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_add\(7));

-- Location: LCCOMB_X18_Y17_N0
\load_store|mem_write_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~1_combout\ = (!\reset~input_o\ & \reg_file|rt_data[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \reg_file|rt_data[0]~_Duplicate_1_q\,
	combout => \load_store|mem_write_data~1_combout\);

-- Location: FF_X18_Y17_N1
\load_store|mem_write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~1_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(0));

-- Location: LCCOMB_X18_Y17_N6
\load_store|mem_write_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~2_combout\ = (!\reset~input_o\ & \reg_file|rt_data[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg_file|rt_data[1]~_Duplicate_1_q\,
	combout => \load_store|mem_write_data~2_combout\);

-- Location: FF_X18_Y17_N7
\load_store|mem_write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~2_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(1));

-- Location: LCCOMB_X23_Y17_N8
\load_store|mem_write_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~3_combout\ = (!\reset~input_o\ & \reg_file|rt_data[2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rt_data[2]~_Duplicate_1_q\,
	combout => \load_store|mem_write_data~3_combout\);

-- Location: FF_X23_Y17_N9
\load_store|mem_write_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~3_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(2));

-- Location: LCCOMB_X23_Y17_N14
\load_store|mem_write_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~4_combout\ = (!\reset~input_o\ & \reg_file|rt_data[3]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg_file|rt_data[3]~_Duplicate_1_q\,
	combout => \load_store|mem_write_data~4_combout\);

-- Location: FF_X23_Y17_N15
\load_store|mem_write_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~4_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(3));

-- Location: LCCOMB_X25_Y17_N26
\load_store|mem_write_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~5_combout\ = (!\reset~input_o\ & \reg_file|rt_data[4]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg_file|rt_data[4]~_Duplicate_1_q\,
	combout => \load_store|mem_write_data~5_combout\);

-- Location: FF_X25_Y17_N27
\load_store|mem_write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~5_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(4));

-- Location: LCCOMB_X25_Y17_N20
\load_store|mem_write_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~6_combout\ = (\reg_file|rt_data[5]~_Duplicate_1_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rt_data[5]~_Duplicate_1_q\,
	datad => \reset~input_o\,
	combout => \load_store|mem_write_data~6_combout\);

-- Location: FF_X25_Y17_N21
\load_store|mem_write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~6_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(5));

-- Location: LCCOMB_X25_Y17_N22
\load_store|mem_write_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~7_combout\ = (\reg_file|rt_data[6]~_Duplicate_1_q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_file|rt_data[6]~_Duplicate_1_q\,
	datad => \reset~input_o\,
	combout => \load_store|mem_write_data~7_combout\);

-- Location: FF_X25_Y17_N23
\load_store|mem_write_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~7_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(6));

-- Location: LCCOMB_X25_Y17_N24
\load_store|mem_write_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \load_store|mem_write_data~8_combout\ = (!\reset~input_o\ & \reg_file|rt_data[7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg_file|rt_data[7]~_Duplicate_1_q\,
	combout => \load_store|mem_write_data~8_combout\);

-- Location: FF_X25_Y17_N25
\load_store|mem_write_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load_store|mem_write_data~8_combout\,
	ena => \load_store|mem_write_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_store|mem_write_data\(7));

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

ww_new_pc(0) <= \new_pc[0]~output_o\;

ww_new_pc(1) <= \new_pc[1]~output_o\;

ww_new_pc(2) <= \new_pc[2]~output_o\;

ww_new_pc(3) <= \new_pc[3]~output_o\;

ww_new_pc(4) <= \new_pc[4]~output_o\;

ww_new_pc(5) <= \new_pc[5]~output_o\;

ww_new_pc(6) <= \new_pc[6]~output_o\;

ww_new_pc(7) <= \new_pc[7]~output_o\;

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
END structure;


