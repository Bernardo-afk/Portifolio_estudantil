-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/14/2025 13:50:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \HEX0_SEG|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|Mux1~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \HEX2_SEG|Mux6~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|Mux5~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|Mux4~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|Mux3~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|Mux2~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|Mux1~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|Mux0~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \HEX4_SEG|Mux6~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|Mux5~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|Mux4~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|Mux3~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|Mux2~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|Mux1~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|Mux0~0_combout\ : std_logic;
SIGNAL \ULA_INST|Mux3~0_combout\ : std_logic;
SIGNAL \ULA_INST|U_CMP|Equal0~4_combout\ : std_logic;
SIGNAL \ULA_INST|U_SUB4|FA3|s~0_combout\ : std_logic;
SIGNAL \ULA_INST|U_CMP|Equal0~5_combout\ : std_logic;
SIGNAL \ULA_INST|Mux3~1_combout\ : std_logic;
SIGNAL \ULA_INST|Mux3~2_combout\ : std_logic;
SIGNAL \ULA_INST|Mux3~3_combout\ : std_logic;
SIGNAL \HEX0_SEG|Mux3~1_combout\ : std_logic;
SIGNAL \ULA_INST|U_MUL|Mult0|mult_core|result[1]~0_combout\ : std_logic;
SIGNAL \ULA_INST|Mux1~3_combout\ : std_logic;
SIGNAL \ULA_INST|Mux1~2_combout\ : std_logic;
SIGNAL \ULA_INST|Mux2~1_combout\ : std_logic;
SIGNAL \ULA_INST|Mux2~2_combout\ : std_logic;
SIGNAL \ULA_INST|U_CMP|LessThan0~1_combout\ : std_logic;
SIGNAL \ULA_INST|U_SUB4|FA2|s~0_combout\ : std_logic;
SIGNAL \ULA_INST|U_CMP|LessThan0~0_combout\ : std_logic;
SIGNAL \ULA_INST|U_CMP|LessThan0~2_combout\ : std_logic;
SIGNAL \ULA_INST|Mux2~0_combout\ : std_logic;
SIGNAL \ULA_INST|Mux2~combout\ : std_logic;
SIGNAL \ULA_INST|U_SUB4|FA1|cout~0_combout\ : std_logic;
SIGNAL \ULA_INST|U_ADD4|FA1|cout~0_combout\ : std_logic;
SIGNAL \ULA_INST|Mux1~5_combout\ : std_logic;
SIGNAL \ULA_INST|Mux1~6_combout\ : std_logic;
SIGNAL \ULA_INST|Mux1~4_combout\ : std_logic;
SIGNAL \ULA_INST|U_MUL|Mult0|mult_core|result[2]~1_combout\ : std_logic;
SIGNAL \ULA_INST|Mux1~combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~0_combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~1_combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~2_combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~3_combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~4_combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~5_combout\ : std_logic;
SIGNAL \ULA_INST|Mux0~6_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux6~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux5~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux4~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux3~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux2~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux1~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|Mux0~0_combout\ : std_logic;
SIGNAL \HEX6_SEG|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HEX4_SEG|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HEX2_SEG|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \HEX0_SEG|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX6 <= ww_HEX6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\HEX6_SEG|ALT_INV_Mux6~0_combout\ <= NOT \HEX6_SEG|Mux6~0_combout\;
\HEX4_SEG|ALT_INV_Mux6~0_combout\ <= NOT \HEX4_SEG|Mux6~0_combout\;
\HEX2_SEG|ALT_INV_Mux6~0_combout\ <= NOT \HEX2_SEG|Mux6~0_combout\;
\HEX0_SEG|ALT_INV_Mux1~0_combout\ <= NOT \HEX0_SEG|Mux1~0_combout\;
\HEX0_SEG|ALT_INV_Mux6~0_combout\ <= NOT \HEX0_SEG|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y53_N9
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_SEG|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_SEG|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4_SEG|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6_SEG|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOIBUF_X0_Y61_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X1_Y54_N16
\HEX0_SEG|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux6~0_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\ $ (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \HEX0_SEG|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y54_N26
\HEX0_SEG|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux5~0_combout\ = (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \HEX0_SEG|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y54_N20
\HEX0_SEG|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux4~0_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \HEX0_SEG|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y54_N14
\HEX0_SEG|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux3~0_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \HEX0_SEG|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y54_N24
\HEX0_SEG|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux2~0_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\)) # (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \HEX0_SEG|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y54_N10
\HEX0_SEG|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux1~0_combout\ = ((!\SW[2]~input_o\ & !\SW[0]~input_o\)) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \HEX0_SEG|Mux1~0_combout\);

-- Location: IOIBUF_X0_Y64_N1
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X1_Y66_N16
\HEX2_SEG|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux6~0_combout\ = (\SW[3]~input_o\ & ((\SW[6]~input_o\) # (\SW[5]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\) # (\SW[5]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y66_N10
\HEX2_SEG|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux5~0_combout\ = (\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[4]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\SW[3]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y66_N12
\HEX2_SEG|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux4~0_combout\ = (\SW[4]~input_o\ & (((\SW[3]~input_o\ & !\SW[6]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\ & ((!\SW[6]~input_o\))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y66_N6
\HEX2_SEG|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux3~0_combout\ = (\SW[4]~input_o\ & ((\SW[5]~input_o\ & (\SW[3]~input_o\)) # (!\SW[5]~input_o\ & (!\SW[3]~input_o\ & \SW[6]~input_o\)))) # (!\SW[4]~input_o\ & (!\SW[6]~input_o\ & (\SW[5]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y66_N0
\HEX2_SEG|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux2~0_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\ & ((\SW[4]~input_o\) # (!\SW[3]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[3]~input_o\ & (\SW[4]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y66_N26
\HEX2_SEG|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux1~0_combout\ = (\SW[4]~input_o\ & ((\SW[3]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[3]~input_o\ & (\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & (\SW[5]~input_o\ & (\SW[3]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y66_N20
\HEX2_SEG|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_SEG|Mux0~0_combout\ = (\SW[5]~input_o\ & (!\SW[4]~input_o\ & (\SW[3]~input_o\ $ (!\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[4]~input_o\ $ (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \HEX2_SEG|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y57_N22
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X1_Y55_N16
\HEX4_SEG|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux6~0_combout\ = (\SW[7]~input_o\ & ((\SW[10]~input_o\) # (\SW[9]~input_o\ $ (\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\) # (\SW[9]~input_o\ $ (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX4_SEG|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y55_N18
\HEX4_SEG|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux5~0_combout\ = (\SW[7]~input_o\ & (\SW[10]~input_o\ $ (((\SW[8]~input_o\) # (!\SW[9]~input_o\))))) # (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & (!\SW[10]~input_o\ & \SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX4_SEG|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y55_N12
\HEX4_SEG|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux4~0_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\ & ((!\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((!\SW[10]~input_o\))) # (!\SW[9]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX4_SEG|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y55_N6
\HEX4_SEG|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux3~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\SW[9]~input_o\)) # (!\SW[7]~input_o\ & (!\SW[9]~input_o\ & \SW[10]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[7]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX4_SEG|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y55_N0
\HEX4_SEG|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux2~0_combout\ = (\SW[9]~input_o\ & (\SW[10]~input_o\ & ((\SW[8]~input_o\) # (!\SW[7]~input_o\)))) # (!\SW[9]~input_o\ & (!\SW[7]~input_o\ & (!\SW[10]~input_o\ & \SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX4_SEG|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y58_N0
\HEX4_SEG|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux1~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\SW[10]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\))))) # (!\SW[8]~input_o\ & (\SW[9]~input_o\ & (\SW[7]~input_o\ $ (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \HEX4_SEG|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y55_N10
\HEX4_SEG|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4_SEG|Mux0~0_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (\SW[7]~input_o\ $ (!\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[7]~input_o\ & (\SW[10]~input_o\ $ (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \HEX4_SEG|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y54_N4
\ULA_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux3~0_combout\ = (!\SW[1]~input_o\ & ((\SW[7]~input_o\ & (\SW[0]~input_o\ & \SW[3]~input_o\)) # (!\SW[7]~input_o\ & (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ULA_INST|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y55_N4
\ULA_INST|U_CMP|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_CMP|Equal0~4_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & (\SW[3]~input_o\ $ (!\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[4]~input_o\ & (\SW[3]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|U_CMP|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y58_N20
\ULA_INST|U_SUB4|FA3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_SUB4|FA3|s~0_combout\ = \SW[6]~input_o\ $ (\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \ULA_INST|U_SUB4|FA3|s~0_combout\);

-- Location: LCCOMB_X1_Y58_N26
\ULA_INST|U_CMP|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_CMP|Equal0~5_combout\ = (\ULA_INST|U_CMP|Equal0~4_combout\ & (!\ULA_INST|U_SUB4|FA3|s~0_combout\ & (\SW[9]~input_o\ $ (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \ULA_INST|U_CMP|Equal0~4_combout\,
	datad => \ULA_INST|U_SUB4|FA3|s~0_combout\,
	combout => \ULA_INST|U_CMP|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y54_N30
\ULA_INST|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux3~1_combout\ = (\ULA_INST|Mux3~0_combout\) # ((\SW[1]~input_o\ & (!\SW[0]~input_o\ & \ULA_INST|U_CMP|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ULA_INST|Mux3~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \ULA_INST|U_CMP|Equal0~5_combout\,
	combout => \ULA_INST|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y58_N6
\ULA_INST|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux3~2_combout\ = (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (((\SW[7]~input_o\))))) # (!\SW[0]~input_o\ & ((\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[7]~input_o\))) # (!\SW[3]~input_o\ & (\SW[1]~input_o\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ULA_INST|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y54_N8
\ULA_INST|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux3~3_combout\ = (\SW[2]~input_o\ & (\ULA_INST|Mux3~1_combout\)) # (!\SW[2]~input_o\ & ((\ULA_INST|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \ULA_INST|Mux3~1_combout\,
	datad => \ULA_INST|Mux3~2_combout\,
	combout => \ULA_INST|Mux3~3_combout\);

-- Location: LCCOMB_X1_Y54_N18
\HEX0_SEG|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_SEG|Mux3~1_combout\ = (\SW[2]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \HEX0_SEG|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y55_N30
\ULA_INST|U_MUL|Mult0|mult_core|result[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_MUL|Mult0|mult_core|result[1]~0_combout\ = (\SW[8]~input_o\ & (\SW[3]~input_o\ $ (((\SW[7]~input_o\ & \SW[4]~input_o\))))) # (!\SW[8]~input_o\ & (((\SW[7]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|U_MUL|Mult0|mult_core|result[1]~0_combout\);

-- Location: LCCOMB_X1_Y54_N6
\ULA_INST|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux1~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \ULA_INST|Mux1~3_combout\);

-- Location: LCCOMB_X1_Y54_N28
\ULA_INST|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux1~2_combout\ = ((\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\ULA_INST|U_CMP|Equal0~5_combout\))) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ULA_INST|U_CMP|Equal0~5_combout\,
	combout => \ULA_INST|Mux1~2_combout\);

-- Location: LCCOMB_X1_Y54_N22
\ULA_INST|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux2~1_combout\ = (\SW[0]~input_o\ & (\SW[3]~input_o\ & (\SW[7]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ULA_INST|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y55_N26
\ULA_INST|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux2~2_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (\SW[8]~input_o\ $ (\ULA_INST|Mux2~1_combout\)))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\ & ((\SW[8]~input_o\) # (\ULA_INST|Mux2~1_combout\))) # (!\SW[4]~input_o\ & (\SW[8]~input_o\ & 
-- \ULA_INST|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \ULA_INST|Mux2~1_combout\,
	combout => \ULA_INST|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y58_N10
\ULA_INST|U_CMP|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_CMP|LessThan0~1_combout\ = (\SW[8]~input_o\ & (((\SW[7]~input_o\ & !\SW[3]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|U_CMP|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y58_N18
\ULA_INST|U_SUB4|FA2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_SUB4|FA2|s~0_combout\ = \SW[9]~input_o\ $ (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ULA_INST|U_SUB4|FA2|s~0_combout\);

-- Location: LCCOMB_X1_Y58_N24
\ULA_INST|U_CMP|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_CMP|LessThan0~0_combout\ = (\SW[10]~input_o\ & (((!\SW[5]~input_o\ & \SW[9]~input_o\)) # (!\SW[6]~input_o\))) # (!\SW[10]~input_o\ & (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ULA_INST|U_CMP|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y58_N28
\ULA_INST|U_CMP|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_CMP|LessThan0~2_combout\ = (\ULA_INST|U_CMP|LessThan0~0_combout\) # ((\ULA_INST|U_CMP|LessThan0~1_combout\ & (!\ULA_INST|U_SUB4|FA3|s~0_combout\ & !\ULA_INST|U_SUB4|FA2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|U_CMP|LessThan0~1_combout\,
	datab => \ULA_INST|U_SUB4|FA3|s~0_combout\,
	datac => \ULA_INST|U_SUB4|FA2|s~0_combout\,
	datad => \ULA_INST|U_CMP|LessThan0~0_combout\,
	combout => \ULA_INST|U_CMP|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y54_N0
\ULA_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux2~0_combout\ = (\ULA_INST|Mux1~3_combout\ & (\ULA_INST|Mux1~2_combout\ & ((\ULA_INST|U_CMP|LessThan0~2_combout\)))) # (!\ULA_INST|Mux1~3_combout\ & (((\ULA_INST|Mux2~2_combout\)) # (!\ULA_INST|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux1~3_combout\,
	datab => \ULA_INST|Mux1~2_combout\,
	datac => \ULA_INST|Mux2~2_combout\,
	datad => \ULA_INST|U_CMP|LessThan0~2_combout\,
	combout => \ULA_INST|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y54_N2
\ULA_INST|Mux2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux2~combout\ = (\HEX0_SEG|Mux3~1_combout\ & ((\ULA_INST|Mux2~0_combout\ & (!\SW[8]~input_o\)) # (!\ULA_INST|Mux2~0_combout\ & ((\ULA_INST|U_MUL|Mult0|mult_core|result[1]~0_combout\))))) # (!\HEX0_SEG|Mux3~1_combout\ & 
-- (((\ULA_INST|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_SEG|Mux3~1_combout\,
	datab => \SW[8]~input_o\,
	datac => \ULA_INST|U_MUL|Mult0|mult_core|result[1]~0_combout\,
	datad => \ULA_INST|Mux2~0_combout\,
	combout => \ULA_INST|Mux2~combout\);

-- Location: LCCOMB_X1_Y58_N8
\ULA_INST|U_SUB4|FA1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_SUB4|FA1|cout~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((!\SW[4]~input_o\) # (!\SW[3]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[4]~input_o\ & ((\SW[7]~input_o\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|U_SUB4|FA1|cout~0_combout\);

-- Location: LCCOMB_X1_Y58_N30
\ULA_INST|U_ADD4|FA1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_ADD4|FA1|cout~0_combout\ = (\SW[8]~input_o\ & ((\SW[4]~input_o\) # ((\SW[7]~input_o\ & \SW[3]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|U_ADD4|FA1|cout~0_combout\);

-- Location: LCCOMB_X1_Y58_N12
\ULA_INST|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux1~5_combout\ = (\SW[1]~input_o\ & (((!\SW[0]~input_o\)) # (!\ULA_INST|U_SUB4|FA1|cout~0_combout\))) # (!\SW[1]~input_o\ & (((\ULA_INST|U_ADD4|FA1|cout~0_combout\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ULA_INST|U_SUB4|FA1|cout~0_combout\,
	datac => \ULA_INST|U_ADD4|FA1|cout~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA_INST|Mux1~5_combout\);

-- Location: LCCOMB_X1_Y58_N14
\ULA_INST|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux1~6_combout\ = (\SW[0]~input_o\ & (\SW[9]~input_o\ $ (\SW[5]~input_o\ $ (\ULA_INST|Mux1~5_combout\)))) # (!\SW[0]~input_o\ & ((\SW[9]~input_o\ & ((\SW[5]~input_o\) # (\ULA_INST|Mux1~5_combout\))) # (!\SW[9]~input_o\ & (\SW[5]~input_o\ & 
-- \ULA_INST|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ULA_INST|Mux1~5_combout\,
	combout => \ULA_INST|Mux1~6_combout\);

-- Location: LCCOMB_X1_Y54_N12
\ULA_INST|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux1~4_combout\ = (\ULA_INST|Mux1~3_combout\ & (\ULA_INST|Mux1~2_combout\ & ((!\ULA_INST|U_CMP|LessThan0~2_combout\)))) # (!\ULA_INST|Mux1~3_combout\ & (((\ULA_INST|Mux1~6_combout\)) # (!\ULA_INST|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux1~3_combout\,
	datab => \ULA_INST|Mux1~2_combout\,
	datac => \ULA_INST|Mux1~6_combout\,
	datad => \ULA_INST|U_CMP|LessThan0~2_combout\,
	combout => \ULA_INST|Mux1~4_combout\);

-- Location: LCCOMB_X1_Y55_N24
\ULA_INST|U_MUL|Mult0|mult_core|result[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|U_MUL|Mult0|mult_core|result[2]~1_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & ((!\SW[7]~input_o\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|U_MUL|Mult0|mult_core|result[2]~1_combout\);

-- Location: LCCOMB_X1_Y55_N2
\ULA_INST|Mux1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux1~combout\ = (\HEX0_SEG|Mux3~1_combout\ & ((\ULA_INST|Mux1~4_combout\ & (!\SW[9]~input_o\)) # (!\ULA_INST|Mux1~4_combout\ & ((\ULA_INST|U_MUL|Mult0|mult_core|result[2]~1_combout\))))) # (!\HEX0_SEG|Mux3~1_combout\ & 
-- (\ULA_INST|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_SEG|Mux3~1_combout\,
	datab => \ULA_INST|Mux1~4_combout\,
	datac => \SW[9]~input_o\,
	datad => \ULA_INST|U_MUL|Mult0|mult_core|result[2]~1_combout\,
	combout => \ULA_INST|Mux1~combout\);

-- Location: LCCOMB_X1_Y55_N28
\ULA_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~0_combout\ = (\SW[8]~input_o\ & (\SW[3]~input_o\ & (\SW[7]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA_INST|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y55_N14
\ULA_INST|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~1_combout\ = (\HEX0_SEG|Mux3~1_combout\ & ((\SW[0]~input_o\ & (\ULA_INST|Mux0~0_combout\)) # (!\SW[0]~input_o\ & ((!\SW[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ULA_INST|Mux0~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \HEX0_SEG|Mux3~1_combout\,
	combout => \ULA_INST|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y58_N2
\ULA_INST|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~2_combout\ = (\SW[10]~input_o\ & ((\SW[1]~input_o\) # ((\SW[6]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[1]~input_o\ & ((\SW[6]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ULA_INST|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y58_N4
\ULA_INST|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~3_combout\ = (\ULA_INST|Mux0~2_combout\ & ((\ULA_INST|U_SUB4|FA1|cout~0_combout\))) # (!\ULA_INST|Mux0~2_combout\ & (\ULA_INST|U_ADD4|FA1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|U_ADD4|FA1|cout~0_combout\,
	datab => \ULA_INST|Mux0~2_combout\,
	datac => \ULA_INST|U_SUB4|FA1|cout~0_combout\,
	combout => \ULA_INST|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y58_N22
\ULA_INST|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~4_combout\ = (\SW[9]~input_o\ & ((\ULA_INST|Mux0~3_combout\) # (\SW[5]~input_o\ $ (\ULA_INST|Mux0~2_combout\)))) # (!\SW[9]~input_o\ & (\ULA_INST|Mux0~3_combout\ & (\SW[5]~input_o\ $ (\ULA_INST|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \ULA_INST|Mux0~3_combout\,
	datad => \ULA_INST|Mux0~2_combout\,
	combout => \ULA_INST|Mux0~4_combout\);

-- Location: LCCOMB_X1_Y58_N16
\ULA_INST|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~5_combout\ = \ULA_INST|Mux0~2_combout\ $ (((\SW[0]~input_o\ & (\ULA_INST|Mux0~4_combout\ $ (\ULA_INST|U_SUB4|FA3|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ULA_INST|Mux0~2_combout\,
	datac => \ULA_INST|Mux0~4_combout\,
	datad => \ULA_INST|U_SUB4|FA3|s~0_combout\,
	combout => \ULA_INST|Mux0~5_combout\);

-- Location: LCCOMB_X1_Y55_N8
\ULA_INST|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA_INST|Mux0~6_combout\ = (\ULA_INST|Mux0~1_combout\) # ((!\SW[2]~input_o\ & \ULA_INST|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \ULA_INST|Mux0~1_combout\,
	datad => \ULA_INST|Mux0~5_combout\,
	combout => \ULA_INST|Mux0~6_combout\);

-- Location: LCCOMB_X1_Y50_N16
\HEX6_SEG|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux6~0_combout\ = (\ULA_INST|Mux3~3_combout\ & ((\ULA_INST|Mux0~6_combout\) # (\ULA_INST|Mux2~combout\ $ (\ULA_INST|Mux1~combout\)))) # (!\ULA_INST|Mux3~3_combout\ & ((\ULA_INST|Mux2~combout\) # (\ULA_INST|Mux1~combout\ $ 
-- (\ULA_INST|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y50_N18
\HEX6_SEG|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux5~0_combout\ = (\ULA_INST|Mux3~3_combout\ & (\ULA_INST|Mux0~6_combout\ $ (((\ULA_INST|Mux2~combout\) # (!\ULA_INST|Mux1~combout\))))) # (!\ULA_INST|Mux3~3_combout\ & (\ULA_INST|Mux2~combout\ & (!\ULA_INST|Mux1~combout\ & 
-- !\ULA_INST|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y50_N12
\HEX6_SEG|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux4~0_combout\ = (\ULA_INST|Mux2~combout\ & (\ULA_INST|Mux3~3_combout\ & ((!\ULA_INST|Mux0~6_combout\)))) # (!\ULA_INST|Mux2~combout\ & ((\ULA_INST|Mux1~combout\ & ((!\ULA_INST|Mux0~6_combout\))) # (!\ULA_INST|Mux1~combout\ & 
-- (\ULA_INST|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y50_N30
\HEX6_SEG|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux3~0_combout\ = (\ULA_INST|Mux2~combout\ & ((\ULA_INST|Mux3~3_combout\ & (\ULA_INST|Mux1~combout\)) # (!\ULA_INST|Mux3~3_combout\ & (!\ULA_INST|Mux1~combout\ & \ULA_INST|Mux0~6_combout\)))) # (!\ULA_INST|Mux2~combout\ & 
-- (!\ULA_INST|Mux0~6_combout\ & (\ULA_INST|Mux3~3_combout\ $ (\ULA_INST|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y50_N24
\HEX6_SEG|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux2~0_combout\ = (\ULA_INST|Mux1~combout\ & (\ULA_INST|Mux0~6_combout\ & ((\ULA_INST|Mux2~combout\) # (!\ULA_INST|Mux3~3_combout\)))) # (!\ULA_INST|Mux1~combout\ & (!\ULA_INST|Mux3~3_combout\ & (\ULA_INST|Mux2~combout\ & 
-- !\ULA_INST|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y50_N10
\HEX6_SEG|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux1~0_combout\ = (\ULA_INST|Mux2~combout\ & ((\ULA_INST|Mux3~3_combout\ & ((\ULA_INST|Mux0~6_combout\))) # (!\ULA_INST|Mux3~3_combout\ & (\ULA_INST|Mux1~combout\)))) # (!\ULA_INST|Mux2~combout\ & (\ULA_INST|Mux1~combout\ & 
-- (\ULA_INST|Mux3~3_combout\ $ (\ULA_INST|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y50_N20
\HEX6_SEG|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6_SEG|Mux0~0_combout\ = (\ULA_INST|Mux1~combout\ & (!\ULA_INST|Mux2~combout\ & (\ULA_INST|Mux3~3_combout\ $ (!\ULA_INST|Mux0~6_combout\)))) # (!\ULA_INST|Mux1~combout\ & (\ULA_INST|Mux3~3_combout\ & (\ULA_INST|Mux2~combout\ $ 
-- (!\ULA_INST|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_INST|Mux3~3_combout\,
	datab => \ULA_INST|Mux2~combout\,
	datac => \ULA_INST|Mux1~combout\,
	datad => \ULA_INST|Mux0~6_combout\,
	combout => \HEX6_SEG|Mux0~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;
END structure;


