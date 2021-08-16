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

-- DATE "08/10/2021 16:52:11"

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
	K1 : IN std_logic;
	K2 : IN std_logic;
	K3 : IN std_logic;
	Cout : OUT std_logic;
	E1 : OUT std_logic_vector(3 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- K1	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K2	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K3	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_K1 : std_logic;
SIGNAL ww_K2 : std_logic;
SIGNAL ww_K3 : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_E1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \K1~input_o\ : std_logic;
SIGNAL \K2~input_o\ : std_logic;
SIGNAL \K3~input_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \E1[0]~output_o\ : std_logic;
SIGNAL \E1[1]~output_o\ : std_logic;
SIGNAL \E1[2]~output_o\ : std_logic;
SIGNAL \E1[3]~output_o\ : std_logic;
SIGNAL \A2[1]~input_o\ : std_logic;
SIGNAL \A1[1]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A1[0]~input_o\ : std_logic;
SIGNAL \A2[0]~input_o\ : std_logic;
SIGNAL \FA:0:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \FA:1:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A2[2]~input_o\ : std_logic;
SIGNAL \A1[2]~input_o\ : std_logic;
SIGNAL \FA:2:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \A2[3]~input_o\ : std_logic;
SIGNAL \A1[3]~input_o\ : std_logic;
SIGNAL \FA:3:FA_i|Cout~0_combout\ : std_logic;
SIGNAL \FA:0:FA_i|S~0_combout\ : std_logic;
SIGNAL \FA:1:FA_i|S~combout\ : std_logic;
SIGNAL \FA:2:FA_i|S~combout\ : std_logic;
SIGNAL \FA:3:FA_i|S~combout\ : std_logic;

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
ww_K1 <= K1;
ww_K2 <= K2;
ww_K3 <= K3;
Cout <= ww_Cout;
E1 <= ww_E1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X25_Y0_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA:3:FA_i|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\E1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA:0:FA_i|S~0_combout\,
	devoe => ww_devoe,
	o => \E1[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\E1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA:1:FA_i|S~combout\,
	devoe => ww_devoe,
	o => \E1[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\E1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA:2:FA_i|S~combout\,
	devoe => ww_devoe,
	o => \E1[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\E1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA:3:FA_i|S~combout\,
	devoe => ww_devoe,
	o => \E1[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\A2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(1),
	o => \A2[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\A1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\A1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\A2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(0),
	o => \A2[0]~input_o\);

-- Location: LCCOMB_X22_Y4_N24
\FA:0:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:0:FA_i|Cout~0_combout\ = (\Cin~input_o\ & ((\A1[0]~input_o\) # (\A2[0]~input_o\))) # (!\Cin~input_o\ & (\A1[0]~input_o\ & \A2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \A1[0]~input_o\,
	datad => \A2[0]~input_o\,
	combout => \FA:0:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\FA:1:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:1:FA_i|Cout~0_combout\ = (\A2[1]~input_o\ & ((\A1[1]~input_o\) # (\FA:0:FA_i|Cout~0_combout\))) # (!\A2[1]~input_o\ & (\A1[1]~input_o\ & \FA:0:FA_i|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2[1]~input_o\,
	datac => \A1[1]~input_o\,
	datad => \FA:0:FA_i|Cout~0_combout\,
	combout => \FA:1:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\A2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(2),
	o => \A2[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\A1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: LCCOMB_X22_Y4_N12
\FA:2:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:2:FA_i|Cout~0_combout\ = (\FA:1:FA_i|Cout~0_combout\ & ((\A2[2]~input_o\) # (\A1[2]~input_o\))) # (!\FA:1:FA_i|Cout~0_combout\ & (\A2[2]~input_o\ & \A1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA:1:FA_i|Cout~0_combout\,
	datab => \A2[2]~input_o\,
	datac => \A1[2]~input_o\,
	combout => \FA:2:FA_i|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(3),
	o => \A2[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\A1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(3),
	o => \A1[3]~input_o\);

-- Location: LCCOMB_X22_Y4_N22
\FA:3:FA_i|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:3:FA_i|Cout~0_combout\ = (\FA:2:FA_i|Cout~0_combout\ & ((\A2[3]~input_o\) # (\A1[3]~input_o\))) # (!\FA:2:FA_i|Cout~0_combout\ & (\A2[3]~input_o\ & \A1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA:2:FA_i|Cout~0_combout\,
	datab => \A2[3]~input_o\,
	datac => \A1[3]~input_o\,
	combout => \FA:3:FA_i|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N8
\FA:0:FA_i|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:0:FA_i|S~0_combout\ = \Cin~input_o\ $ (\A1[0]~input_o\ $ (\A2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \A1[0]~input_o\,
	datad => \A2[0]~input_o\,
	combout => \FA:0:FA_i|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N2
\FA:1:FA_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:1:FA_i|S~combout\ = \A2[1]~input_o\ $ (\A1[1]~input_o\ $ (\FA:0:FA_i|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2[1]~input_o\,
	datac => \A1[1]~input_o\,
	datad => \FA:0:FA_i|Cout~0_combout\,
	combout => \FA:1:FA_i|S~combout\);

-- Location: LCCOMB_X22_Y4_N4
\FA:2:FA_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:2:FA_i|S~combout\ = \FA:1:FA_i|Cout~0_combout\ $ (\A2[2]~input_o\ $ (\A1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA:1:FA_i|Cout~0_combout\,
	datab => \A2[2]~input_o\,
	datac => \A1[2]~input_o\,
	combout => \FA:2:FA_i|S~combout\);

-- Location: LCCOMB_X22_Y4_N30
\FA:3:FA_i|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA:3:FA_i|S~combout\ = \FA:2:FA_i|Cout~0_combout\ $ (\A2[3]~input_o\ $ (\A1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA:2:FA_i|Cout~0_combout\,
	datab => \A2[3]~input_o\,
	datac => \A1[3]~input_o\,
	combout => \FA:3:FA_i|S~combout\);

-- Location: IOIBUF_X30_Y0_N1
\K1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K1,
	o => \K1~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\K2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K2,
	o => \K2~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\K3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K3,
	o => \K3~input_o\);

ww_Cout <= \Cout~output_o\;

ww_E1(0) <= \E1[0]~output_o\;

ww_E1(1) <= \E1[1]~output_o\;

ww_E1(2) <= \E1[2]~output_o\;

ww_E1(3) <= \E1[3]~output_o\;
END structure;


