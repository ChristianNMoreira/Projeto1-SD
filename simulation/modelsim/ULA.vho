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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/22/2021 19:38:22"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	ULA IS
    PORT (
	Cin : IN std_logic;
	A1 : IN std_logic_vector(3 DOWNTO 0);
	A2 : IN std_logic_vector(3 DOWNTO 0);
	K : IN std_logic_vector(2 DOWNTO 0);
	Cout : BUFFER std_logic;
	OV : BUFFER std_logic;
	E1 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- Cout	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OV	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[3]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_K : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_OV : std_logic;
SIGNAL ww_E1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \OV~output_o\ : std_logic;
SIGNAL \E1[0]~output_o\ : std_logic;
SIGNAL \E1[1]~output_o\ : std_logic;
SIGNAL \E1[2]~output_o\ : std_logic;
SIGNAL \E1[3]~output_o\ : std_logic;
SIGNAL \K[1]~input_o\ : std_logic;
SIGNAL \K[0]~input_o\ : std_logic;
SIGNAL \K[2]~input_o\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \A1[2]~input_o\ : std_logic;
SIGNAL \A2[2]~input_o\ : std_logic;
SIGNAL \A2[1]~input_o\ : std_logic;
SIGNAL \A2[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A1[0]~input_o\ : std_logic;
SIGNAL \FA:0:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A1[1]~input_o\ : std_logic;
SIGNAL \FA:1:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \FA:2:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A1[3]~input_o\ : std_logic;
SIGNAL \A2[3]~input_o\ : std_logic;
SIGNAL \Cout~2_combout\ : std_logic;
SIGNAL \ONEA:2:ONEA_i|aux2~combout\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \Cout~3_combout\ : std_logic;
SIGNAL \FA:3:FA_i|S~0_combout\ : std_logic;
SIGNAL \FA_sub:1:FA_sub_i|Cout~combout\ : std_logic;
SIGNAL \FA_sub:3:FA_sub_i|S~combout\ : std_logic;
SIGNAL \OVERF|O~combout\ : std_logic;
SIGNAL \E1~2_combout\ : std_logic;
SIGNAL \E1~3_combout\ : std_logic;
SIGNAL \E1~5_combout\ : std_logic;
SIGNAL \FA_sub:1:FA_sub_i|S~combout\ : std_logic;
SIGNAL \E1~6_combout\ : std_logic;
SIGNAL \E1~4_combout\ : std_logic;
SIGNAL \E1~7_combout\ : std_logic;
SIGNAL \E1~9_combout\ : std_logic;
SIGNAL \E1~8_combout\ : std_logic;
SIGNAL \ONEA:2:ONEA_i|S~combout\ : std_logic;
SIGNAL \E1~10_combout\ : std_logic;
SIGNAL \E1~11_combout\ : std_logic;
SIGNAL \E1~13_combout\ : std_logic;
SIGNAL \E1~12_combout\ : std_logic;
SIGNAL \OVERF|ALT_INV_O~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Cin <= Cin;
ww_A1 <= A1;
ww_A2 <= A2;
ww_K <= K;
Cout <= ww_Cout;
OV <= ww_OV;
E1 <= ww_E1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\OVERF|ALT_INV_O~combout\ <= NOT \OVERF|O~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~3_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\OV~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OVERF|ALT_INV_O~combout\,
	devoe => ww_devoe,
	o => \OV~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\E1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1~3_combout\,
	devoe => ww_devoe,
	o => \E1[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\E1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1~7_combout\,
	devoe => ww_devoe,
	o => \E1[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\E1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1~10_combout\,
	devoe => ww_devoe,
	o => \E1[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\E1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E1~12_combout\,
	devoe => ww_devoe,
	o => \E1[3]~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\K[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K(1),
	o => \K[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\K[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K(0),
	o => \K[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\K[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K(2),
	o => \K[2]~input_o\);

-- Location: LCCOMB_X11_Y4_N20
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (!\K[1]~input_o\ & (!\K[0]~input_o\ & !\K[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \K[0]~input_o\,
	datad => \K[2]~input_o\,
	combout => \Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\A2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(2),
	o => \A2[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\A2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(1),
	o => \A2[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(0),
	o => \A2[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: LCCOMB_X11_Y4_N8
\FA:0:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:0:FA_i|Cout~0_combout\ = (\A2[0]~input_o\ & ((\Cin~input_o\) # (\A1[0]~input_o\))) # (!\A2[0]~input_o\ & (\Cin~input_o\ & \A1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Cin~input_o\,
	datad => \A1[0]~input_o\,
	combout => \FA:0:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\A1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: LCCOMB_X11_Y4_N10
\FA:1:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:1:FA_i|Cout~0_combout\ = (\A2[1]~input_o\ & ((\FA:0:FA_i|Cout~0_combout\) # (\A1[1]~input_o\))) # (!\A2[1]~input_o\ & (\FA:0:FA_i|Cout~0_combout\ & \A1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2[1]~input_o\,
	datac => \FA:0:FA_i|Cout~0_combout\,
	datad => \A1[1]~input_o\,
	combout => \FA:1:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X10_Y4_N24
\FA:2:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:2:FA_i|Cout~0_combout\ = (\A1[2]~input_o\ & ((\A2[2]~input_o\) # (\FA:1:FA_i|Cout~0_combout\))) # (!\A1[2]~input_o\ & (\A2[2]~input_o\ & \FA:1:FA_i|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datab => \A2[2]~input_o\,
	datac => \FA:1:FA_i|Cout~0_combout\,
	combout => \FA:2:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\A1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(3),
	o => \A1[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\A2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(3),
	o => \A2[3]~input_o\);

-- Location: LCCOMB_X10_Y4_N30
\Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~2_combout\ = (\Cout~0_combout\ & ((\FA:2:FA_i|Cout~0_combout\ & ((\A1[3]~input_o\) # (\A2[3]~input_o\))) # (!\FA:2:FA_i|Cout~0_combout\ & (\A1[3]~input_o\ & \A2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~0_combout\,
	datab => \FA:2:FA_i|Cout~0_combout\,
	datac => \A1[3]~input_o\,
	datad => \A2[3]~input_o\,
	combout => \Cout~2_combout\);

-- Location: LCCOMB_X11_Y4_N14
\ONEA:2:ONEA_i|aux2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ONEA:2:ONEA_i|aux2~combout\ = (\A1[2]~input_o\ & (\A1[1]~input_o\ & ((\A1[0]~input_o\) # (\Cin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A1[2]~input_o\,
	datad => \A1[1]~input_o\,
	combout => \ONEA:2:ONEA_i|aux2~combout\);

-- Location: LCCOMB_X11_Y4_N16
\Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (!\K[1]~input_o\ & (\K[0]~input_o\ & !\K[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \K[0]~input_o\,
	datad => \K[2]~input_o\,
	combout => \Cout~1_combout\);

-- Location: LCCOMB_X10_Y4_N8
\Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~3_combout\ = (\Cout~2_combout\) # ((\ONEA:2:ONEA_i|aux2~combout\ & (\A1[3]~input_o\ & \Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~2_combout\,
	datab => \ONEA:2:ONEA_i|aux2~combout\,
	datac => \A1[3]~input_o\,
	datad => \Cout~1_combout\,
	combout => \Cout~3_combout\);

-- Location: LCCOMB_X10_Y4_N10
\FA:3:FA_i|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:3:FA_i|S~0_combout\ = \A1[3]~input_o\ $ (\A2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1[3]~input_o\,
	datad => \A2[3]~input_o\,
	combout => \FA:3:FA_i|S~0_combout\);

-- Location: LCCOMB_X11_Y4_N18
\FA_sub:1:FA_sub_i|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_sub:1:FA_sub_i|Cout~combout\ = (\A2[1]~input_o\ & (\A1[1]~input_o\ & ((\A1[0]~input_o\) # (!\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & ((\A1[0]~input_o\) # ((\A1[1]~input_o\) # (!\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \A2[0]~input_o\,
	datad => \A1[1]~input_o\,
	combout => \FA_sub:1:FA_sub_i|Cout~combout\);

-- Location: LCCOMB_X10_Y4_N20
\FA_sub:3:FA_sub_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_sub:3:FA_sub_i|S~combout\ = \FA:3:FA_i|S~0_combout\ $ (((\A2[2]~input_o\ & (\A1[2]~input_o\ & \FA_sub:1:FA_sub_i|Cout~combout\)) # (!\A2[2]~input_o\ & ((\A1[2]~input_o\) # (\FA_sub:1:FA_sub_i|Cout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA:3:FA_i|S~0_combout\,
	datab => \A2[2]~input_o\,
	datac => \A1[2]~input_o\,
	datad => \FA_sub:1:FA_sub_i|Cout~combout\,
	combout => \FA_sub:3:FA_sub_i|S~combout\);

-- Location: LCCOMB_X10_Y4_N18
\OVERF|O\ : cycloneive_lcell_comb
-- Equation(s):
-- \OVERF|O~combout\ = \FA_sub:3:FA_sub_i|S~combout\ $ (((\A1[3]~input_o\ & \A2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FA_sub:3:FA_sub_i|S~combout\,
	datac => \A1[3]~input_o\,
	datad => \A2[3]~input_o\,
	combout => \OVERF|O~combout\);

-- Location: LCCOMB_X11_Y4_N28
\E1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~2_combout\ = (\K[0]~input_o\ & (!\K[1]~input_o\ & ((!\A1[0]~input_o\)))) # (!\K[0]~input_o\ & ((\A2[0]~input_o\ $ (\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \K[0]~input_o\,
	datac => \A2[0]~input_o\,
	datad => \A1[0]~input_o\,
	combout => \E1~2_combout\);

-- Location: LCCOMB_X11_Y4_N30
\E1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~3_combout\ = (!\K[2]~input_o\ & (\E1~2_combout\ $ (((!\K[1]~input_o\ & \Cin~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \K[2]~input_o\,
	datac => \E1~2_combout\,
	datad => \Cin~input_o\,
	combout => \E1~3_combout\);

-- Location: LCCOMB_X11_Y4_N2
\E1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~5_combout\ = (\Cout~1_combout\ & (\A1[1]~input_o\ $ (((\A1[0]~input_o\) # (\Cin~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \Cout~1_combout\,
	datac => \A1[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \E1~5_combout\);

-- Location: LCCOMB_X11_Y4_N22
\FA_sub:1:FA_sub_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_sub:1:FA_sub_i|S~combout\ = \A2[1]~input_o\ $ (\A1[1]~input_o\ $ (((\A1[0]~input_o\) # (!\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \A2[0]~input_o\,
	datad => \A1[1]~input_o\,
	combout => \FA_sub:1:FA_sub_i|S~combout\);

-- Location: LCCOMB_X11_Y4_N12
\E1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~6_combout\ = (\K[1]~input_o\ & (!\K[0]~input_o\ & !\K[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \K[1]~input_o\,
	datab => \K[0]~input_o\,
	datad => \K[2]~input_o\,
	combout => \E1~6_combout\);

-- Location: LCCOMB_X11_Y4_N24
\E1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~4_combout\ = (\Cout~0_combout\ & (\A1[1]~input_o\ $ (\A2[1]~input_o\ $ (\FA:0:FA_i|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \FA:0:FA_i|Cout~0_combout\,
	datad => \Cout~0_combout\,
	combout => \E1~4_combout\);

-- Location: LCCOMB_X10_Y4_N6
\E1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~7_combout\ = (\E1~5_combout\) # ((\E1~4_combout\) # ((!\FA_sub:1:FA_sub_i|S~combout\ & \E1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~5_combout\,
	datab => \FA_sub:1:FA_sub_i|S~combout\,
	datac => \E1~6_combout\,
	datad => \E1~4_combout\,
	combout => \E1~7_combout\);

-- Location: LCCOMB_X10_Y4_N26
\E1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~9_combout\ = (\E1~6_combout\ & (\A1[2]~input_o\ $ (\A2[2]~input_o\ $ (!\FA_sub:1:FA_sub_i|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datab => \A2[2]~input_o\,
	datac => \E1~6_combout\,
	datad => \FA_sub:1:FA_sub_i|Cout~combout\,
	combout => \E1~9_combout\);

-- Location: LCCOMB_X10_Y4_N0
\E1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~8_combout\ = (\Cout~0_combout\ & (\FA:1:FA_i|Cout~0_combout\ $ (\A1[2]~input_o\ $ (\A2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~0_combout\,
	datab => \FA:1:FA_i|Cout~0_combout\,
	datac => \A1[2]~input_o\,
	datad => \A2[2]~input_o\,
	combout => \E1~8_combout\);

-- Location: LCCOMB_X11_Y4_N0
\ONEA:2:ONEA_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \ONEA:2:ONEA_i|S~combout\ = \A1[2]~input_o\ $ (((\A1[1]~input_o\ & ((\A1[0]~input_o\) # (\Cin~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A1[2]~input_o\,
	datad => \A1[1]~input_o\,
	combout => \ONEA:2:ONEA_i|S~combout\);

-- Location: LCCOMB_X10_Y4_N12
\E1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~10_combout\ = (\E1~9_combout\) # ((\E1~8_combout\) # ((\ONEA:2:ONEA_i|S~combout\ & \Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~9_combout\,
	datab => \E1~8_combout\,
	datac => \ONEA:2:ONEA_i|S~combout\,
	datad => \Cout~1_combout\,
	combout => \E1~10_combout\);

-- Location: LCCOMB_X10_Y4_N22
\E1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~11_combout\ = (\Cout~1_combout\ & (\ONEA:2:ONEA_i|aux2~combout\ $ (\A1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ONEA:2:ONEA_i|aux2~combout\,
	datac => \A1[3]~input_o\,
	datad => \Cout~1_combout\,
	combout => \E1~11_combout\);

-- Location: LCCOMB_X10_Y4_N28
\E1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~13_combout\ = (\Cout~0_combout\ & (\FA:2:FA_i|Cout~0_combout\ $ (\A1[3]~input_o\ $ (\A2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~0_combout\,
	datab => \FA:2:FA_i|Cout~0_combout\,
	datac => \A1[3]~input_o\,
	datad => \A2[3]~input_o\,
	combout => \E1~13_combout\);

-- Location: LCCOMB_X10_Y4_N16
\E1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \E1~12_combout\ = (\E1~11_combout\) # ((\E1~13_combout\) # ((\E1~6_combout\ & !\FA_sub:3:FA_sub_i|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~11_combout\,
	datab => \E1~13_combout\,
	datac => \E1~6_combout\,
	datad => \FA_sub:3:FA_sub_i|S~combout\,
	combout => \E1~12_combout\);

ww_Cout <= \Cout~output_o\;

ww_OV <= \OV~output_o\;

ww_E1(0) <= \E1[0]~output_o\;

ww_E1(1) <= \E1[1]~output_o\;

ww_E1(2) <= \E1[2]~output_o\;

ww_E1(3) <= \E1[3]~output_o\;
END structure;


