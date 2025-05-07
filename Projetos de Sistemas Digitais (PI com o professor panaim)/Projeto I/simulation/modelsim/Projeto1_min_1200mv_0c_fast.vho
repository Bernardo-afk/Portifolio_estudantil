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

-- DATE "05/06/2025 17:02:09"

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

ENTITY 	principal IS
    PORT (
	SW : IN std_logic_vector(10 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END principal;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF principal IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ULA0|ovf~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ULA0|ADD_U|gen_add:2:FA|cout~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\ : std_logic;
SIGNAL \ULA0|SUB_U|gen_add:2:FA|cout~0_combout\ : std_logic;
SIGNAL \ULA0|cout~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ULA0|cout~1_combout\ : std_logic;
SIGNAL \ULA0|MUL_U|Mult0|mult_core|result[2]~1_combout\ : std_logic;
SIGNAL \ULA0|Mux0~2_combout\ : std_logic;
SIGNAL \ULA0|Mux1~0_combout\ : std_logic;
SIGNAL \ULA0|Mux0~1_combout\ : std_logic;
SIGNAL \ULA0|Mux1~1_combout\ : std_logic;
SIGNAL \ULA0|Mux1~4_combout\ : std_logic;
SIGNAL \ULA0|Mux1~5_combout\ : std_logic;
SIGNAL \ULA0|Mux1~2_combout\ : std_logic;
SIGNAL \ULA0|Mux1~3_combout\ : std_logic;
SIGNAL \ULA0|Mux0~5_combout\ : std_logic;
SIGNAL \ULA0|SUB_U|gen_add:3:FA|s~0_combout\ : std_logic;
SIGNAL \ULA0|ADD_U|gen_add:3:FA|s~combout\ : std_logic;
SIGNAL \ULA0|SUB_U|gen_add:3:FA|s~combout\ : std_logic;
SIGNAL \ULA0|Mux0~0_combout\ : std_logic;
SIGNAL \ULA0|MUL_U|Mult0|mult_core|result[3]~0_combout\ : std_logic;
SIGNAL \ULA0|Mux0~3_combout\ : std_logic;
SIGNAL \ULA0|Mux0~4_combout\ : std_logic;
SIGNAL \ULA0|Mux0~6_combout\ : std_logic;
SIGNAL \ULA0|MUL_U|Mult0|mult_core|result[1]~2_combout\ : std_logic;
SIGNAL \ULA0|Mux2~0_combout\ : std_logic;
SIGNAL \ULA0|Mux2~1_combout\ : std_logic;
SIGNAL \ULA0|Mux2~4_combout\ : std_logic;
SIGNAL \ULA0|Mux2~5_combout\ : std_logic;
SIGNAL \ULA0|Mux2~2_combout\ : std_logic;
SIGNAL \ULA0|Mux2~3_combout\ : std_logic;
SIGNAL \ULA0|Mux3~2_combout\ : std_logic;
SIGNAL \ULA0|Mux3~3_combout\ : std_logic;
SIGNAL \ULA0|Mux3~4_combout\ : std_logic;
SIGNAL \ULA0|Equal2~0_combout\ : std_logic;
SIGNAL \ULA0|ovf~1_combout\ : std_logic;
SIGNAL \ULA0|ovf~2_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|Equal0~0_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|Equal0~1_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|LessThan0~0_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|LessThan0~1_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|LessThan0~2_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|LessThan1~0_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|LessThan1~1_combout\ : std_logic;
SIGNAL \ULA0|CMP_U|LessThan1~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|cout~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|ovf~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|CMP_U|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|CMP_U|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|CMP_U|LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

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

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

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

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

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

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X111_Y13_N24
\ULA0|ovf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ovf~0_combout\ = (\SW[2]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ULA0|ovf~0_combout\);

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

-- Location: LCCOMB_X111_Y13_N4
\ULA0|ADD_U|gen_add:1:FA|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ = (\SW[8]~input_o\ & ((\SW[4]~input_o\) # ((\SW[7]~input_o\ & \SW[3]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|ADD_U|gen_add:1:FA|cout~0_combout\);

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

-- Location: LCCOMB_X110_Y13_N10
\ULA0|ADD_U|gen_add:2:FA|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ADD_U|gen_add:2:FA|cout~0_combout\ = (\ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ & ((\SW[9]~input_o\) # (\SW[5]~input_o\))) # (!\ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ & (\SW[9]~input_o\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|ADD_U|gen_add:1:FA|cout~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ULA0|ADD_U|gen_add:2:FA|cout~0_combout\);

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

-- Location: LCCOMB_X111_Y13_N18
\ULA0|SUB_U|gen_add:1:FA|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\SW[3]~input_o\) # (\SW[4]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[4]~input_o\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\);

-- Location: LCCOMB_X110_Y13_N16
\ULA0|SUB_U|gen_add:2:FA|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|SUB_U|gen_add:2:FA|cout~0_combout\ = (\ULA0|SUB_U|gen_add:1:FA|cout~0_combout\ & ((\SW[9]~input_o\) # (\SW[5]~input_o\))) # (!\ULA0|SUB_U|gen_add:1:FA|cout~0_combout\ & (\SW[9]~input_o\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ULA0|SUB_U|gen_add:2:FA|cout~0_combout\);

-- Location: LCCOMB_X110_Y13_N28
\ULA0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|cout~0_combout\ = (\SW[0]~input_o\ & ((\ULA0|SUB_U|gen_add:2:FA|cout~0_combout\))) # (!\SW[0]~input_o\ & (\ULA0|ADD_U|gen_add:2:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|ADD_U|gen_add:2:FA|cout~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \ULA0|SUB_U|gen_add:2:FA|cout~0_combout\,
	combout => \ULA0|cout~0_combout\);

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

-- Location: LCCOMB_X110_Y13_N22
\ULA0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|cout~1_combout\ = (\ULA0|ovf~0_combout\ & ((\SW[10]~input_o\ & ((\ULA0|cout~0_combout\) # (\SW[6]~input_o\))) # (!\SW[10]~input_o\ & (\ULA0|cout~0_combout\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ULA0|ovf~0_combout\,
	datac => \ULA0|cout~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \ULA0|cout~1_combout\);

-- Location: LCCOMB_X111_Y12_N0
\ULA0|MUL_U|Mult0|mult_core|result[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|MUL_U|Mult0|mult_core|result[2]~1_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|MUL_U|Mult0|mult_core|result[2]~1_combout\);

-- Location: LCCOMB_X111_Y13_N28
\ULA0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~2_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ULA0|Mux0~2_combout\);

-- Location: LCCOMB_X111_Y13_N26
\ULA0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux1~0_combout\ = (\SW[9]~input_o\ & (\SW[5]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ULA0|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y13_N2
\ULA0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~1_combout\ = ((\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ULA0|Mux0~1_combout\);

-- Location: LCCOMB_X111_Y13_N20
\ULA0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux1~1_combout\ = (\ULA0|Mux0~2_combout\ & (\ULA0|MUL_U|Mult0|mult_core|result[2]~1_combout\ & ((\ULA0|Mux0~1_combout\)))) # (!\ULA0|Mux0~2_combout\ & (((\ULA0|Mux1~0_combout\) # (!\ULA0|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|MUL_U|Mult0|mult_core|result[2]~1_combout\,
	datab => \ULA0|Mux0~2_combout\,
	datac => \ULA0|Mux1~0_combout\,
	datad => \ULA0|Mux0~1_combout\,
	combout => \ULA0|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y13_N20
\ULA0|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux1~4_combout\ = \SW[9]~input_o\ $ (\SW[5]~input_o\ $ (((!\ULA0|Mux1~1_combout\ & \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~1_combout\,
	datab => \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ULA0|Mux1~4_combout\);

-- Location: LCCOMB_X110_Y13_N6
\ULA0|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux1~5_combout\ = (\ULA0|ovf~0_combout\ & (\ULA0|Mux1~4_combout\ $ (((\ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ & \ULA0|Mux1~1_combout\))))) # (!\ULA0|ovf~0_combout\ & (((\ULA0|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|ADD_U|gen_add:1:FA|cout~0_combout\,
	datab => \ULA0|Mux1~4_combout\,
	datac => \ULA0|Mux1~1_combout\,
	datad => \ULA0|ovf~0_combout\,
	combout => \ULA0|Mux1~5_combout\);

-- Location: LCCOMB_X110_Y13_N26
\ULA0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux1~2_combout\ = (\SW[0]~input_o\ & ((!\SW[5]~input_o\))) # (!\SW[0]~input_o\ & ((\SW[9]~input_o\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ULA0|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y13_N4
\ULA0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux1~3_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\ULA0|Mux1~5_combout\)) # (!\SW[2]~input_o\ & ((\ULA0|Mux1~2_combout\))))) # (!\SW[1]~input_o\ & (\ULA0|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~5_combout\,
	datab => \SW[1]~input_o\,
	datac => \ULA0|Mux1~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \ULA0|Mux1~3_combout\);

-- Location: LCCOMB_X111_Y13_N8
\ULA0|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~5_combout\ = (\SW[6]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[10]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ULA0|Mux0~5_combout\);

-- Location: LCCOMB_X110_Y13_N8
\ULA0|SUB_U|gen_add:3:FA|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|SUB_U|gen_add:3:FA|s~0_combout\ = \SW[10]~input_o\ $ (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \ULA0|SUB_U|gen_add:3:FA|s~0_combout\);

-- Location: LCCOMB_X110_Y13_N12
\ULA0|ADD_U|gen_add:3:FA|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ADD_U|gen_add:3:FA|s~combout\ = \ULA0|SUB_U|gen_add:3:FA|s~0_combout\ $ (((\ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ & ((\SW[9]~input_o\) # (\SW[5]~input_o\))) # (!\ULA0|ADD_U|gen_add:1:FA|cout~0_combout\ & (\SW[9]~input_o\ & \SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|ADD_U|gen_add:1:FA|cout~0_combout\,
	datab => \ULA0|SUB_U|gen_add:3:FA|s~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ULA0|ADD_U|gen_add:3:FA|s~combout\);

-- Location: LCCOMB_X110_Y13_N18
\ULA0|SUB_U|gen_add:3:FA|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|SUB_U|gen_add:3:FA|s~combout\ = \ULA0|SUB_U|gen_add:3:FA|s~0_combout\ $ (((\SW[5]~input_o\ & ((\SW[9]~input_o\) # (\ULA0|SUB_U|gen_add:1:FA|cout~0_combout\))) # (!\SW[5]~input_o\ & (\SW[9]~input_o\ & \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ULA0|SUB_U|gen_add:3:FA|s~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \ULA0|SUB_U|gen_add:1:FA|cout~0_combout\,
	combout => \ULA0|SUB_U|gen_add:3:FA|s~combout\);

-- Location: LCCOMB_X111_Y13_N16
\ULA0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~0_combout\ = (\SW[6]~input_o\ & (\SW[10]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ULA0|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y13_N22
\ULA0|MUL_U|Mult0|mult_core|result[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|MUL_U|Mult0|mult_core|result[3]~0_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|MUL_U|Mult0|mult_core|result[3]~0_combout\);

-- Location: LCCOMB_X111_Y13_N30
\ULA0|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~3_combout\ = (\ULA0|Mux0~2_combout\ & (((\ULA0|MUL_U|Mult0|mult_core|result[3]~0_combout\ & \ULA0|Mux0~1_combout\)))) # (!\ULA0|Mux0~2_combout\ & ((\ULA0|Mux0~0_combout\) # ((!\ULA0|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux0~0_combout\,
	datab => \ULA0|Mux0~2_combout\,
	datac => \ULA0|MUL_U|Mult0|mult_core|result[3]~0_combout\,
	datad => \ULA0|Mux0~1_combout\,
	combout => \ULA0|Mux0~3_combout\);

-- Location: LCCOMB_X110_Y13_N30
\ULA0|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~4_combout\ = (\ULA0|Mux0~3_combout\ & ((\ULA0|ADD_U|gen_add:3:FA|s~combout\) # ((!\ULA0|ovf~0_combout\)))) # (!\ULA0|Mux0~3_combout\ & (((\ULA0|SUB_U|gen_add:3:FA|s~combout\ & \ULA0|ovf~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|ADD_U|gen_add:3:FA|s~combout\,
	datab => \ULA0|SUB_U|gen_add:3:FA|s~combout\,
	datac => \ULA0|Mux0~3_combout\,
	datad => \ULA0|ovf~0_combout\,
	combout => \ULA0|Mux0~4_combout\);

-- Location: LCCOMB_X110_Y13_N24
\ULA0|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux0~6_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\ULA0|Mux0~4_combout\))) # (!\SW[2]~input_o\ & (\ULA0|Mux0~5_combout\)))) # (!\SW[1]~input_o\ & (((\ULA0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux0~5_combout\,
	datab => \SW[1]~input_o\,
	datac => \ULA0|Mux0~4_combout\,
	datad => \SW[2]~input_o\,
	combout => \ULA0|Mux0~6_combout\);

-- Location: LCCOMB_X111_Y12_N10
\ULA0|MUL_U|Mult0|mult_core|result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|MUL_U|Mult0|mult_core|result[1]~2_combout\ = (\SW[8]~input_o\ & (\SW[3]~input_o\ $ (((\SW[7]~input_o\ & \SW[4]~input_o\))))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|MUL_U|Mult0|mult_core|result[1]~2_combout\);

-- Location: LCCOMB_X111_Y13_N14
\ULA0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux2~0_combout\ = (\SW[0]~input_o\ & (\SW[8]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y13_N0
\ULA0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux2~1_combout\ = (\ULA0|Mux0~2_combout\ & (\ULA0|MUL_U|Mult0|mult_core|result[1]~2_combout\ & ((\ULA0|Mux0~1_combout\)))) # (!\ULA0|Mux0~2_combout\ & (((\ULA0|Mux2~0_combout\) # (!\ULA0|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|MUL_U|Mult0|mult_core|result[1]~2_combout\,
	datab => \ULA0|Mux0~2_combout\,
	datac => \ULA0|Mux2~0_combout\,
	datad => \ULA0|Mux0~1_combout\,
	combout => \ULA0|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y13_N12
\ULA0|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux2~4_combout\ = \SW[4]~input_o\ $ (((\ULA0|Mux2~1_combout\ & (\SW[7]~input_o\ & \SW[3]~input_o\)) # (!\ULA0|Mux2~1_combout\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux2~1_combout\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|Mux2~4_combout\);

-- Location: LCCOMB_X111_Y13_N6
\ULA0|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux2~5_combout\ = (\ULA0|ovf~0_combout\ & (\ULA0|Mux2~4_combout\ $ (((\SW[8]~input_o\))))) # (!\ULA0|ovf~0_combout\ & (((\ULA0|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux2~4_combout\,
	datab => \ULA0|Mux2~1_combout\,
	datac => \ULA0|ovf~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \ULA0|Mux2~5_combout\);

-- Location: LCCOMB_X111_Y13_N10
\ULA0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux2~2_combout\ = (\SW[0]~input_o\ & ((!\SW[4]~input_o\))) # (!\SW[0]~input_o\ & ((\SW[8]~input_o\) # (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[8]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|Mux2~2_combout\);

-- Location: LCCOMB_X110_Y13_N14
\ULA0|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux2~3_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\ULA0|Mux2~5_combout\)) # (!\SW[2]~input_o\ & ((\ULA0|Mux2~2_combout\))))) # (!\SW[1]~input_o\ & (\ULA0|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux2~5_combout\,
	datab => \SW[1]~input_o\,
	datac => \ULA0|Mux2~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \ULA0|Mux2~3_combout\);

-- Location: LCCOMB_X111_Y14_N6
\ULA0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux3~2_combout\ = (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (((\SW[2]~input_o\ & !\SW[7]~input_o\))))) # (!\SW[3]~input_o\ & (\SW[7]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ULA0|Mux3~2_combout\);

-- Location: LCCOMB_X111_Y14_N24
\ULA0|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux3~3_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ULA0|Mux3~3_combout\);

-- Location: LCCOMB_X111_Y14_N10
\ULA0|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Mux3~4_combout\ = (\SW[0]~input_o\ & ((\ULA0|Mux3~3_combout\))) # (!\SW[0]~input_o\ & (\ULA0|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux3~2_combout\,
	datab => \ULA0|Mux3~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \ULA0|Mux3~4_combout\);

-- Location: LCCOMB_X109_Y13_N16
\ULA0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|Equal2~0_combout\ = (!\ULA0|Mux1~3_combout\ & (!\ULA0|Mux0~6_combout\ & (!\ULA0|Mux2~3_combout\ & !\ULA0|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \ULA0|Equal2~0_combout\);

-- Location: LCCOMB_X110_Y13_N0
\ULA0|ovf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ovf~1_combout\ = (\SW[0]~input_o\ & ((\ULA0|SUB_U|gen_add:2:FA|cout~0_combout\))) # (!\SW[0]~input_o\ & (\ULA0|ADD_U|gen_add:2:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|ADD_U|gen_add:2:FA|cout~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \ULA0|SUB_U|gen_add:2:FA|cout~0_combout\,
	combout => \ULA0|ovf~1_combout\);

-- Location: LCCOMB_X110_Y13_N2
\ULA0|ovf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|ovf~2_combout\ = (\ULA0|ovf~0_combout\ & ((\SW[10]~input_o\ & (!\ULA0|ovf~1_combout\ & \SW[6]~input_o\)) # (!\SW[10]~input_o\ & (\ULA0|ovf~1_combout\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ULA0|ovf~1_combout\,
	datac => \ULA0|ovf~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \ULA0|ovf~2_combout\);

-- Location: LCCOMB_X111_Y12_N12
\ULA0|CMP_U|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|Equal0~0_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ULA0|CMP_U|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y12_N30
\ULA0|CMP_U|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|Equal0~1_combout\ = (!\ULA0|SUB_U|gen_add:3:FA|s~0_combout\ & (\ULA0|CMP_U|Equal0~0_combout\ & (\SW[7]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|SUB_U|gen_add:3:FA|s~0_combout\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \ULA0|CMP_U|Equal0~0_combout\,
	combout => \ULA0|CMP_U|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y12_N16
\ULA0|CMP_U|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|LessThan0~0_combout\ = (\SW[8]~input_o\ & (((\SW[7]~input_o\ & !\SW[3]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[8]~input_o\ & (\SW[7]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|CMP_U|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y12_N26
\ULA0|CMP_U|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|LessThan0~1_combout\ = (!\ULA0|SUB_U|gen_add:3:FA|s~0_combout\ & ((\SW[5]~input_o\ & (\ULA0|CMP_U|LessThan0~0_combout\ & \SW[9]~input_o\)) # (!\SW[5]~input_o\ & ((\ULA0|CMP_U|LessThan0~0_combout\) # (\SW[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ULA0|CMP_U|LessThan0~0_combout\,
	datac => \ULA0|SUB_U|gen_add:3:FA|s~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \ULA0|CMP_U|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y12_N0
\ULA0|CMP_U|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|LessThan0~2_combout\ = (\ULA0|CMP_U|LessThan0~1_combout\) # ((!\SW[6]~input_o\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA0|CMP_U|LessThan0~1_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ULA0|CMP_U|LessThan0~2_combout\);

-- Location: LCCOMB_X111_Y12_N20
\ULA0|CMP_U|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|LessThan1~0_combout\ = (\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\))) # (!\SW[8]~input_o\ & ((\SW[4]~input_o\) # ((!\SW[7]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ULA0|CMP_U|LessThan1~0_combout\);

-- Location: LCCOMB_X111_Y12_N22
\ULA0|CMP_U|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|LessThan1~1_combout\ = (!\ULA0|SUB_U|gen_add:3:FA|s~0_combout\ & ((\SW[5]~input_o\ & ((\ULA0|CMP_U|LessThan1~0_combout\) # (!\SW[9]~input_o\))) # (!\SW[5]~input_o\ & (\ULA0|CMP_U|LessThan1~0_combout\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ULA0|CMP_U|LessThan1~0_combout\,
	datac => \ULA0|SUB_U|gen_add:3:FA|s~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \ULA0|CMP_U|LessThan1~1_combout\);

-- Location: LCCOMB_X110_Y12_N10
\ULA0|CMP_U|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA0|CMP_U|LessThan1~2_combout\ = (\ULA0|CMP_U|LessThan1~1_combout\) # ((\SW[6]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA0|CMP_U|LessThan1~1_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ULA0|CMP_U|LessThan1~2_combout\);

-- Location: LCCOMB_X111_Y14_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X111_Y14_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X111_Y14_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X113_Y14_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X113_Y14_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SW[0]~input_o\) # ((\SW[2]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X113_Y14_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X113_Y14_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\)) # (!\SW[2]~input_o\ & (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y13_N0
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X114_Y13_N2
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # (\SW[4]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X114_Y13_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\SW[4]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X114_Y13_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\SW[4]~input_o\ & ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\SW[6]~input_o\)))) # (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (((!\SW[6]~input_o\ & \SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X114_Y13_N24
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\SW[3]~input_o\) # ((\SW[5]~input_o\ & ((\SW[6]~input_o\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X114_Y13_N10
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # (\SW[6]~input_o\ $ (!\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X114_Y13_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[4]~input_o\))) # (!\SW[5]~input_o\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X111_Y12_N8
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[7]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X111_Y12_N2
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\SW[9]~input_o\ & ((\SW[10]~input_o\) # (\SW[8]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X111_Y12_N28
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ & (!\SW[7]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X111_Y12_N14
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\SW[9]~input_o\))) # (!\SW[7]~input_o\ & (\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & (\SW[9]~input_o\ $ (((\SW[7]~input_o\ & !\SW[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X111_Y12_N24
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\SW[7]~input_o\) # ((\SW[9]~input_o\ & ((\SW[10]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X111_Y12_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # (\SW[10]~input_o\ $ (!\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[10]~input_o\ & ((\SW[9]~input_o\))) # (!\SW[10]~input_o\ & (\SW[7]~input_o\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X111_Y12_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\ & (!\SW[10]~input_o\ & !\SW[9]~input_o\)) # (!\SW[7]~input_o\ & ((!\SW[9]~input_o\) # (!\SW[10]~input_o\))))) # (!\SW[8]~input_o\ & ((\SW[10]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X109_Y13_N26
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\ULA0|Mux0~6_combout\ & (\ULA0|Mux1~3_combout\)) # (!\ULA0|Mux0~6_combout\ & (!\ULA0|Mux2~3_combout\ & (\ULA0|Mux1~3_combout\ $ (\ULA0|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X109_Y13_N4
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\ULA0|Mux1~3_combout\ & ((\ULA0|Mux0~6_combout\) # (\ULA0|Mux2~3_combout\ $ (\ULA0|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X109_Y13_N14
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\ULA0|Mux1~3_combout\ & (\ULA0|Mux0~6_combout\)) # (!\ULA0|Mux1~3_combout\ & (!\ULA0|Mux0~6_combout\ & (\ULA0|Mux2~3_combout\ & !\ULA0|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X109_Y13_N8
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\ULA0|Mux2~3_combout\ & ((\ULA0|Mux3~4_combout\ & (\ULA0|Mux1~3_combout\)) # (!\ULA0|Mux3~4_combout\ & ((\ULA0|Mux0~6_combout\))))) # (!\ULA0|Mux2~3_combout\ & (\ULA0|Mux1~3_combout\ $ (((!\ULA0|Mux0~6_combout\ & 
-- \ULA0|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X109_Y13_N2
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\ULA0|Mux3~4_combout\) # ((\ULA0|Mux1~3_combout\ & ((\ULA0|Mux0~6_combout\) # (!\ULA0|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X109_Y13_N12
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\ULA0|Mux2~3_combout\ & ((\ULA0|Mux3~4_combout\) # (\ULA0|Mux1~3_combout\ $ (!\ULA0|Mux0~6_combout\)))) # (!\ULA0|Mux2~3_combout\ & ((\ULA0|Mux1~3_combout\ & (\ULA0|Mux0~6_combout\)) # (!\ULA0|Mux1~3_combout\ & (!\ULA0|Mux0~6_combout\ 
-- & \ULA0|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X109_Y13_N30
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\ULA0|Mux1~3_combout\ & (!\ULA0|Mux0~6_combout\ & ((!\ULA0|Mux3~4_combout\) # (!\ULA0|Mux2~3_combout\)))) # (!\ULA0|Mux1~3_combout\ & ((\ULA0|Mux0~6_combout\ & ((!\ULA0|Mux3~4_combout\) # (!\ULA0|Mux2~3_combout\))) # 
-- (!\ULA0|Mux0~6_combout\ & (\ULA0|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA0|Mux1~3_combout\,
	datab => \ULA0|Mux0~6_combout\,
	datac => \ULA0|Mux2~3_combout\,
	datad => \ULA0|Mux3~4_combout\,
	combout => \Mux21~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


