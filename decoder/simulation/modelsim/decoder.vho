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

-- DATE "06/06/2025 18:55:15"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder IS
    PORT (
	inputs : IN std_logic_vector(2 DOWNTO 0);
	d : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END decoder;

-- Design Ports Information
-- d[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputs[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputs : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \d[2]~output_o\ : std_logic;
SIGNAL \d[3]~output_o\ : std_logic;
SIGNAL \d[4]~output_o\ : std_logic;
SIGNAL \d[5]~output_o\ : std_logic;
SIGNAL \d[6]~output_o\ : std_logic;
SIGNAL \d[7]~output_o\ : std_logic;
SIGNAL \inputs[2]~input_o\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inputs <= inputs;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_ShiftLeft0~6_combout\ <= NOT \ShiftLeft0~6_combout\;
\ALT_INV_ShiftLeft0~4_combout\ <= NOT \ShiftLeft0~4_combout\;
\ALT_INV_ShiftLeft0~2_combout\ <= NOT \ShiftLeft0~2_combout\;
\ALT_INV_ShiftLeft0~0_combout\ <= NOT \ShiftLeft0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y21_N16
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

-- Location: IOOBUF_X9_Y0_N9
\d[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ShiftLeft0~0_combout\,
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N9
\d[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftLeft0~1_combout\,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\d[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ShiftLeft0~2_combout\,
	devoe => ww_devoe,
	o => \d[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\d[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftLeft0~3_combout\,
	devoe => ww_devoe,
	o => \d[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\d[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ShiftLeft0~4_combout\,
	devoe => ww_devoe,
	o => \d[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\d[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftLeft0~5_combout\,
	devoe => ww_devoe,
	o => \d[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\d[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ShiftLeft0~6_combout\,
	devoe => ww_devoe,
	o => \d[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\d[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftLeft0~7_combout\,
	devoe => ww_devoe,
	o => \d[7]~output_o\);

-- Location: IOIBUF_X3_Y0_N29
\inputs[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(2),
	o => \inputs[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\inputs[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\inputs[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

-- Location: LCCOMB_X10_Y2_N8
\ShiftLeft0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\inputs[2]~input_o\) # ((\inputs[1]~input_o\) # (\inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X10_Y2_N2
\ShiftLeft0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (!\inputs[2]~input_o\ & (!\inputs[1]~input_o\ & \inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X10_Y2_N12
\ShiftLeft0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\inputs[2]~input_o\) # ((\inputs[0]~input_o\) # (!\inputs[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X10_Y2_N14
\ShiftLeft0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (!\inputs[2]~input_o\ & (\inputs[1]~input_o\ & \inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X10_Y2_N24
\ShiftLeft0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = ((\inputs[1]~input_o\) # (\inputs[0]~input_o\)) # (!\inputs[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X10_Y2_N18
\ShiftLeft0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\inputs[2]~input_o\ & (!\inputs[1]~input_o\ & \inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X10_Y2_N20
\ShiftLeft0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = ((\inputs[0]~input_o\) # (!\inputs[1]~input_o\)) # (!\inputs[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X10_Y2_N30
\ShiftLeft0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\inputs[2]~input_o\ & (\inputs[1]~input_o\ & \inputs[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datac => \inputs[1]~input_o\,
	datad => \inputs[0]~input_o\,
	combout => \ShiftLeft0~7_combout\);

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

ww_d(0) <= \d[0]~output_o\;

ww_d(1) <= \d[1]~output_o\;

ww_d(2) <= \d[2]~output_o\;

ww_d(3) <= \d[3]~output_o\;

ww_d(4) <= \d[4]~output_o\;

ww_d(5) <= \d[5]~output_o\;

ww_d(6) <= \d[6]~output_o\;

ww_d(7) <= \d[7]~output_o\;
END structure;


