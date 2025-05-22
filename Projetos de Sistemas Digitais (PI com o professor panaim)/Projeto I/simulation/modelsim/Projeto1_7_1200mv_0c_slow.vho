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

-- DATE "05/21/2025 15:15:35"

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

ENTITY 	ula IS
    PORT (
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6);
	LEDR : OUT std_logic_vector(0 TO 6)
	);
END ula;

-- Design Ports Information
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
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
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDR : std_logic_vector(0 TO 6);
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \mult2bit|stage1|sum~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \mult2bit|stage2|cout~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \comparador4bit|i[3]~1_combout\ : std_logic;
SIGNAL \subtracao4bit|stage1|cout~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \subtracao4bit|stage3|sum~combout\ : std_logic;
SIGNAL \soma4bit|stage1|cout~0_combout\ : std_logic;
SIGNAL \soma4bit|stage3|sum~combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \mult2bit|stage2|sum~0_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \comparador4bit|Grt~0_combout\ : std_logic;
SIGNAL \comparador4bit|Grt~1_combout\ : std_logic;
SIGNAL \comparador4bit|Equ~0_combout\ : std_logic;
SIGNAL \comparador4bit|i[2]~0_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \subtracao4bit|stage2|cout~0_combout\ : std_logic;
SIGNAL \subtracao4bit|stage3|cout~0_combout\ : std_logic;
SIGNAL \soma4bit|stage2|cout~0_combout\ : std_logic;
SIGNAL \soma4bit|stage3|cout~0_combout\ : std_logic;
SIGNAL \subtracao4bit|stage3|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
HEX6 <= ww_HEX6;
HEX4 <= ww_HEX4;
HEX2 <= ww_HEX2;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\subtracao4bit|stage3|ALT_INV_cout~0_combout\ <= NOT \subtracao4bit|stage3|cout~0_combout\;
\ALT_INV_LEDR~4_combout\ <= NOT \LEDR~4_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux31~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subtracao4bit|stage3|ALT_INV_cout~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \soma4bit|stage3|cout~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X113_Y14_N10
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\SW[8]~input_o\ & (\SW[0]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X110_Y14_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X113_Y14_N8
\mult2bit|stage1|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult2bit|stage1|sum~0_combout\ = (\SW[7]~input_o\ & (\SW[4]~input_o\ $ (((\SW[8]~input_o\ & \SW[3]~input_o\))))) # (!\SW[7]~input_o\ & (\SW[8]~input_o\ & (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \mult2bit|stage1|sum~0_combout\);

-- Location: LCCOMB_X110_Y14_N26
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ((\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X113_Y14_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux7~1_combout\ & (((\mult2bit|stage1|sum~0_combout\ & \Mux7~0_combout\)))) # (!\Mux7~1_combout\ & ((\Mux9~0_combout\) # ((!\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux7~1_combout\,
	datac => \mult2bit|stage1|sum~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X113_Y14_N16
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = \SW[8]~input_o\ $ (\SW[4]~input_o\ $ (((!\SW[7]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X110_Y14_N16
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\SW[1]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X113_Y14_N18
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux10~3_combout\ & (\Mux9~4_combout\ $ (((\Mux9~1_combout\ & \SW[3]~input_o\))))) # (!\Mux10~3_combout\ & (\Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux9~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \Mux10~3_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X113_Y14_N22
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\SW[0]~input_o\ & ((!\SW[4]~input_o\))) # (!\SW[0]~input_o\ & ((\SW[8]~input_o\) # (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X110_Y14_N6
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\Mux9~5_combout\)) # (!\SW[2]~input_o\ & ((\Mux9~2_combout\))))) # (!\SW[1]~input_o\ & (\Mux9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Mux9~5_combout\,
	datac => \SW[2]~input_o\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X109_Y14_N20
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\SW[6]~input_o\ & (\SW[10]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X113_Y14_N14
\mult2bit|stage2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult2bit|stage2|cout~0_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \mult2bit|stage2|cout~0_combout\);

-- Location: LCCOMB_X109_Y14_N6
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & ((\mult2bit|stage2|cout~0_combout\))) # (!\Mux7~1_combout\ & (\Mux7~2_combout\)))) # (!\Mux7~0_combout\ & (((!\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux7~2_combout\,
	datac => \mult2bit|stage2|cout~0_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X114_Y17_N18
\comparador4bit|i[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparador4bit|i[3]~1_combout\ = \SW[6]~input_o\ $ (\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \comparador4bit|i[3]~1_combout\);

-- Location: LCCOMB_X113_Y14_N24
\subtracao4bit|stage1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtracao4bit|stage1|cout~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((!\SW[4]~input_o\) # (!\SW[3]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[4]~input_o\ & ((\SW[7]~input_o\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \subtracao4bit|stage1|cout~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X109_Y14_N0
\subtracao4bit|stage3|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtracao4bit|stage3|sum~combout\ = \comparador4bit|i[3]~1_combout\ $ (((\subtracao4bit|stage1|cout~0_combout\ & ((\SW[9]~input_o\) # (!\SW[5]~input_o\))) # (!\subtracao4bit|stage1|cout~0_combout\ & (!\SW[5]~input_o\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparador4bit|i[3]~1_combout\,
	datab => \subtracao4bit|stage1|cout~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \subtracao4bit|stage3|sum~combout\);

-- Location: LCCOMB_X113_Y14_N4
\soma4bit|stage1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma4bit|stage1|cout~0_combout\ = (\SW[8]~input_o\ & ((\SW[4]~input_o\) # ((\SW[7]~input_o\ & \SW[3]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \soma4bit|stage1|cout~0_combout\);

-- Location: LCCOMB_X109_Y14_N18
\soma4bit|stage3|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma4bit|stage3|sum~combout\ = \comparador4bit|i[3]~1_combout\ $ (((\soma4bit|stage1|cout~0_combout\ & ((\SW[5]~input_o\) # (\SW[9]~input_o\))) # (!\soma4bit|stage1|cout~0_combout\ & (\SW[5]~input_o\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparador4bit|i[3]~1_combout\,
	datab => \soma4bit|stage1|cout~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \soma4bit|stage3|sum~combout\);

-- Location: LCCOMB_X109_Y14_N8
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & (((\soma4bit|stage3|sum~combout\) # (!\Mux10~3_combout\)))) # (!\Mux7~3_combout\ & (!\subtracao4bit|stage3|sum~combout\ & (\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \subtracao4bit|stage3|sum~combout\,
	datac => \Mux10~3_combout\,
	datad => \soma4bit|stage3|sum~combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X109_Y14_N2
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\SW[6]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[10]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X110_Y14_N18
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\SW[2]~input_o\ & (\Mux7~4_combout\)) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\Mux7~5_combout\))) # (!\SW[1]~input_o\ & (\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Mux7~5_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X109_Y14_N16
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\SW[9]~input_o\ & (\SW[5]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X113_Y14_N26
\mult2bit|stage2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult2bit|stage2|sum~0_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \mult2bit|stage2|sum~0_combout\);

-- Location: LCCOMB_X109_Y14_N10
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\ & ((!\mult2bit|stage2|sum~0_combout\))) # (!\Mux7~1_combout\ & (!\Mux8~2_combout\)))) # (!\Mux7~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux8~2_combout\,
	datac => \mult2bit|stage2|sum~0_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X109_Y14_N4
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = \SW[5]~input_o\ $ (\SW[9]~input_o\ $ (((!\Mux8~3_combout\ & \soma4bit|stage1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \soma4bit|stage1|cout~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X109_Y14_N12
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux10~3_combout\ & (\Mux8~7_combout\ $ (((\Mux8~3_combout\ & !\subtracao4bit|stage1|cout~0_combout\))))) # (!\Mux10~3_combout\ & (!\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux8~7_combout\,
	datac => \Mux10~3_combout\,
	datad => \subtracao4bit|stage1|cout~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X109_Y14_N30
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\SW[5]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X110_Y14_N24
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\SW[2]~input_o\ & (\Mux8~4_combout\)) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\Mux8~5_combout\))) # (!\SW[1]~input_o\ & (\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux8~5_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X111_Y14_N24
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[7]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((!\SW[7]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X111_Y14_N10
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & ((\SW[7]~input_o\) # (\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[7]~input_o\ & (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X111_Y14_N4
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\SW[3]~input_o\ & (\Mux10~0_combout\)) # (!\SW[3]~input_o\ & ((\Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X110_Y14_N4
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux10~2_combout\ & ((\Mux7~6_combout\) # (\Mux9~3_combout\ $ (\Mux8~6_combout\)))) # (!\Mux10~2_combout\ & ((\Mux9~3_combout\) # (\Mux7~6_combout\ $ (\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X110_Y14_N30
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux9~3_combout\ & (!\Mux7~6_combout\ & ((\Mux10~2_combout\) # (!\Mux8~6_combout\)))) # (!\Mux9~3_combout\ & (\Mux10~2_combout\ & (\Mux7~6_combout\ $ (!\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X110_Y14_N0
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux9~3_combout\ & (!\Mux7~6_combout\ & ((\Mux10~2_combout\)))) # (!\Mux9~3_combout\ & ((\Mux8~6_combout\ & (!\Mux7~6_combout\)) # (!\Mux8~6_combout\ & ((\Mux10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X110_Y14_N2
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux9~3_combout\ & ((\Mux8~6_combout\ & ((\Mux10~2_combout\))) # (!\Mux8~6_combout\ & (\Mux7~6_combout\ & !\Mux10~2_combout\)))) # (!\Mux9~3_combout\ & (!\Mux7~6_combout\ & (\Mux8~6_combout\ $ (\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X110_Y14_N12
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux7~6_combout\ & (\Mux8~6_combout\ & ((\Mux9~3_combout\) # (!\Mux10~2_combout\)))) # (!\Mux7~6_combout\ & (\Mux9~3_combout\ & (!\Mux8~6_combout\ & !\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X110_Y14_N14
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux9~3_combout\ & ((\Mux10~2_combout\ & (\Mux7~6_combout\)) # (!\Mux10~2_combout\ & ((\Mux8~6_combout\))))) # (!\Mux9~3_combout\ & (\Mux8~6_combout\ & (\Mux7~6_combout\ $ (\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X110_Y14_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux7~6_combout\ & (\Mux10~2_combout\ & (\Mux9~3_combout\ $ (\Mux8~6_combout\)))) # (!\Mux7~6_combout\ & (!\Mux9~3_combout\ & (\Mux8~6_combout\ $ (\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X111_Y14_N22
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\SW[7]~input_o\ & ((\SW[10]~input_o\) # (\SW[8]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\) # (\SW[10]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X111_Y14_N8
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\SW[8]~input_o\ & (!\SW[10]~input_o\ & ((\SW[7]~input_o\) # (!\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (\SW[10]~input_o\ $ (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X111_Y14_N2
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\ & (!\SW[10]~input_o\))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((!\SW[10]~input_o\))) # (!\SW[9]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X111_Y14_N28
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\SW[9]~input_o\))) # (!\SW[7]~input_o\ & (\SW[10]~input_o\ & !\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[7]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X111_Y14_N6
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\SW[10]~input_o\ & (\SW[9]~input_o\ & ((\SW[8]~input_o\) # (!\SW[7]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ & (!\SW[7]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X111_Y14_N16
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\SW[10]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\))))) # (!\SW[8]~input_o\ & (\SW[9]~input_o\ & (\SW[7]~input_o\ $ (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X111_Y14_N18
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\SW[10]~input_o\ & (\SW[7]~input_o\ & (\SW[8]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[7]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X114_Y17_N4
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\SW[3]~input_o\ & ((\SW[6]~input_o\) # (\SW[5]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\) # (\SW[6]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\SW[3]~input_o\ & (\SW[6]~input_o\ $ (((\SW[4]~input_o\) # (!\SW[5]~input_o\))))) # (!\SW[3]~input_o\ & (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\SW[4]~input_o\ & (\SW[3]~input_o\ & (!\SW[6]~input_o\))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\ & ((!\SW[6]~input_o\))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X114_Y17_N2
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\SW[4]~input_o\ & ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\SW[6]~input_o\ & !\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & (!\SW[6]~input_o\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X114_Y17_N20
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\ & ((\SW[4]~input_o\) # (!\SW[3]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[3]~input_o\ & (!\SW[5]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\SW[6]~input_o\ & ((\SW[3]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[3]~input_o\ & (\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[5]~input_o\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X114_Y17_N8
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[5]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X111_Y14_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & (!\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X111_Y14_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X111_Y14_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SW[0]~input_o\) # ((!\SW[1]~input_o\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X111_Y14_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X110_Y14_N10
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X110_Y14_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SW[1]~input_o\ $ (!\SW[0]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X110_Y14_N22
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y17_N14
\comparador4bit|Grt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparador4bit|Grt~0_combout\ = (\SW[8]~input_o\ & (((!\SW[3]~input_o\ & \SW[7]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[8]~input_o\ & (!\SW[3]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comparador4bit|Grt~0_combout\);

-- Location: LCCOMB_X114_Y17_N16
\comparador4bit|Grt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparador4bit|Grt~1_combout\ = (!\comparador4bit|i[3]~1_combout\ & ((\comparador4bit|Grt~0_combout\ & ((\SW[9]~input_o\) # (!\SW[5]~input_o\))) # (!\comparador4bit|Grt~0_combout\ & (\SW[9]~input_o\ & !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparador4bit|Grt~0_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \comparador4bit|i[3]~1_combout\,
	combout => \comparador4bit|Grt~1_combout\);

-- Location: LCCOMB_X114_Y17_N26
\comparador4bit|Equ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparador4bit|Equ~0_combout\ = (\SW[3]~input_o\ & ((\SW[8]~input_o\ $ (\SW[4]~input_o\)) # (!\SW[7]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[7]~input_o\) # (\SW[8]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comparador4bit|Equ~0_combout\);

-- Location: LCCOMB_X114_Y17_N24
\comparador4bit|i[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparador4bit|i[2]~0_combout\ = \SW[9]~input_o\ $ (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \comparador4bit|i[2]~0_combout\);

-- Location: LCCOMB_X111_Y14_N20
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\LEDR~0_combout\ & ((\comparador4bit|Equ~0_combout\) # ((\comparador4bit|i[2]~0_combout\) # (\comparador4bit|i[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparador4bit|Equ~0_combout\,
	datab => \comparador4bit|i[2]~0_combout\,
	datac => \LEDR~0_combout\,
	datad => \comparador4bit|i[3]~1_combout\,
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X114_Y17_N10
\LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (!\comparador4bit|Grt~1_combout\ & (\LEDR~1_combout\ & ((\SW[6]~input_o\) # (!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \comparador4bit|Grt~1_combout\,
	datac => \SW[6]~input_o\,
	datad => \LEDR~1_combout\,
	combout => \LEDR~2_combout\);

-- Location: LCCOMB_X114_Y17_N28
\LEDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (\LEDR~0_combout\ & ((\comparador4bit|Grt~1_combout\) # ((\SW[10]~input_o\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \comparador4bit|Grt~1_combout\,
	datac => \SW[6]~input_o\,
	datad => \LEDR~0_combout\,
	combout => \LEDR~3_combout\);

-- Location: LCCOMB_X114_Y17_N6
\LEDR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = (\comparador4bit|Equ~0_combout\) # ((\comparador4bit|i[2]~0_combout\) # ((\comparador4bit|i[3]~1_combout\) # (!\LEDR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparador4bit|Equ~0_combout\,
	datab => \comparador4bit|i[2]~0_combout\,
	datac => \LEDR~0_combout\,
	datad => \comparador4bit|i[3]~1_combout\,
	combout => \LEDR~4_combout\);

-- Location: LCCOMB_X109_Y14_N28
\subtracao4bit|stage2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtracao4bit|stage2|cout~0_combout\ = (\subtracao4bit|stage1|cout~0_combout\ & ((\SW[9]~input_o\) # (!\SW[5]~input_o\))) # (!\subtracao4bit|stage1|cout~0_combout\ & (!\SW[5]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtracao4bit|stage1|cout~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \subtracao4bit|stage2|cout~0_combout\);

-- Location: LCCOMB_X109_Y14_N22
\subtracao4bit|stage3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtracao4bit|stage3|cout~0_combout\ = (\subtracao4bit|stage2|cout~0_combout\ & ((\SW[10]~input_o\) # (!\SW[6]~input_o\))) # (!\subtracao4bit|stage2|cout~0_combout\ & (\SW[10]~input_o\ & !\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtracao4bit|stage2|cout~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \subtracao4bit|stage3|cout~0_combout\);

-- Location: LCCOMB_X109_Y14_N24
\soma4bit|stage2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma4bit|stage2|cout~0_combout\ = (\soma4bit|stage1|cout~0_combout\ & ((\SW[5]~input_o\) # (\SW[9]~input_o\))) # (!\soma4bit|stage1|cout~0_combout\ & (\SW[5]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \soma4bit|stage1|cout~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \soma4bit|stage2|cout~0_combout\);

-- Location: LCCOMB_X109_Y14_N26
\soma4bit|stage3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \soma4bit|stage3|cout~0_combout\ = (\soma4bit|stage2|cout~0_combout\ & ((\SW[10]~input_o\) # (\SW[6]~input_o\))) # (!\soma4bit|stage2|cout~0_combout\ & (\SW[10]~input_o\ & \SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \soma4bit|stage2|cout~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \soma4bit|stage3|cout~0_combout\);

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


