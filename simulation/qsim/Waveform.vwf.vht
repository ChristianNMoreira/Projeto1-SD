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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/16/2021 23:12:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL A2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL E1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL K : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ULA
	PORT (
	A1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	A2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	E1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	K : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	A1 => A1,
	A2 => A2,
	Cin => Cin,
	Cout => Cout,
	E1 => E1,
	K => K
	);
-- A1[3]
t_prcs_A1_3: PROCESS
BEGIN
	A1(3) <= '0';
	WAIT FOR 70000 ps;
	A1(3) <= '1';
	WAIT FOR 190000 ps;
	A1(3) <= '0';
	WAIT FOR 50000 ps;
	A1(3) <= '1';
	WAIT FOR 70000 ps;
	A1(3) <= '0';
WAIT;
END PROCESS t_prcs_A1_3;
-- A1[2]
t_prcs_A1_2: PROCESS
BEGIN
	A1(2) <= '1';
	WAIT FOR 260000 ps;
	A1(2) <= '0';
WAIT;
END PROCESS t_prcs_A1_2;
-- A1[1]
t_prcs_A1_1: PROCESS
BEGIN
	A1(1) <= '0';
	WAIT FOR 180000 ps;
	A1(1) <= '1';
	WAIT FOR 80000 ps;
	A1(1) <= '0';
	WAIT FOR 50000 ps;
	A1(1) <= '1';
	WAIT FOR 70000 ps;
	A1(1) <= '0';
WAIT;
END PROCESS t_prcs_A1_1;
-- A1[0]
t_prcs_A1_0: PROCESS
BEGIN
	A1(0) <= '1';
	WAIT FOR 70000 ps;
	A1(0) <= '0';
	WAIT FOR 110000 ps;
	A1(0) <= '1';
	WAIT FOR 80000 ps;
	A1(0) <= '0';
WAIT;
END PROCESS t_prcs_A1_0;
-- A2[3]
t_prcs_A2_3: PROCESS
BEGIN
	A2(3) <= '1';
	WAIT FOR 70000 ps;
	A2(3) <= '0';
	WAIT FOR 110000 ps;
	A2(3) <= '1';
	WAIT FOR 80000 ps;
	A2(3) <= '0';
	WAIT FOR 50000 ps;
	A2(3) <= '1';
	WAIT FOR 70000 ps;
	A2(3) <= '0';
WAIT;
END PROCESS t_prcs_A2_3;
-- A2[2]
t_prcs_A2_2: PROCESS
BEGIN
	A2(2) <= '0';
	WAIT FOR 70000 ps;
	A2(2) <= '1';
	WAIT FOR 190000 ps;
	A2(2) <= '0';
WAIT;
END PROCESS t_prcs_A2_2;
-- A2[1]
t_prcs_A2_1: PROCESS
BEGIN
	A2(1) <= '0';
	WAIT FOR 180000 ps;
	A2(1) <= '1';
	WAIT FOR 80000 ps;
	A2(1) <= '0';
	WAIT FOR 50000 ps;
	A2(1) <= '1';
	WAIT FOR 70000 ps;
	A2(1) <= '0';
WAIT;
END PROCESS t_prcs_A2_1;
-- A2[0]
t_prcs_A2_0: PROCESS
BEGIN
	A2(0) <= '0';
	WAIT FOR 70000 ps;
	A2(0) <= '1';
	WAIT FOR 190000 ps;
	A2(0) <= '0';
	WAIT FOR 120000 ps;
	A2(0) <= '1';
WAIT;
END PROCESS t_prcs_A2_0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
-- K[2]
t_prcs_K_2: PROCESS
BEGIN
	K(2) <= '0';
	WAIT FOR 350000 ps;
	K(2) <= '1';
	WAIT FOR 70000 ps;
	K(2) <= '0';
WAIT;
END PROCESS t_prcs_K_2;
-- K[1]
t_prcs_K_1: PROCESS
BEGIN
	K(1) <= '0';
	WAIT FOR 350000 ps;
	K(1) <= '1';
	WAIT FOR 70000 ps;
	K(1) <= '0';
WAIT;
END PROCESS t_prcs_K_1;
-- K[0]
t_prcs_K_0: PROCESS
BEGIN
	K(0) <= '0';
	WAIT FOR 70000 ps;
	K(0) <= '1';
	WAIT FOR 60000 ps;
	K(0) <= '0';
	WAIT FOR 80000 ps;
	K(0) <= '1';
	WAIT FOR 50000 ps;
	K(0) <= '0';
	WAIT FOR 90000 ps;
	K(0) <= '1';
	WAIT FOR 70000 ps;
	K(0) <= '0';
WAIT;
END PROCESS t_prcs_K_0;
END ULA_arch;
