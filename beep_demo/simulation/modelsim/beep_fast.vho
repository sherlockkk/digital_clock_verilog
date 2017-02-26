-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/10/2017 12:08:20"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	beep IS
    PORT (
	clk : IN std_logic;
	beep : OUT std_logic;
	cin : IN std_logic
	);
END beep;

-- Design Ports Information
-- beep	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cin	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF beep IS
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
SIGNAL ww_beep : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[2]~26_combout\ : std_logic;
SIGNAL \count[3]~28_combout\ : std_logic;
SIGNAL \count[5]~32_combout\ : std_logic;
SIGNAL \count[7]~36_combout\ : std_logic;
SIGNAL \count[9]~40_combout\ : std_logic;
SIGNAL \count[16]~54_combout\ : std_logic;
SIGNAL \count[18]~58_combout\ : std_logic;
SIGNAL \count[19]~60_combout\ : std_logic;
SIGNAL \count[21]~64_combout\ : std_logic;
SIGNAL \count[23]~68_combout\ : std_logic;
SIGNAL \count[0]~72_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[1]~24_combout\ : std_logic;
SIGNAL \count[1]~25\ : std_logic;
SIGNAL \count[2]~27\ : std_logic;
SIGNAL \count[3]~29\ : std_logic;
SIGNAL \count[4]~30_combout\ : std_logic;
SIGNAL \count[4]~31\ : std_logic;
SIGNAL \count[5]~33\ : std_logic;
SIGNAL \count[6]~34_combout\ : std_logic;
SIGNAL \count[6]~35\ : std_logic;
SIGNAL \count[7]~37\ : std_logic;
SIGNAL \count[8]~38_combout\ : std_logic;
SIGNAL \count[8]~39\ : std_logic;
SIGNAL \count[9]~41\ : std_logic;
SIGNAL \count[10]~42_combout\ : std_logic;
SIGNAL \count[10]~43\ : std_logic;
SIGNAL \count[11]~44_combout\ : std_logic;
SIGNAL \count[11]~45\ : std_logic;
SIGNAL \count[12]~46_combout\ : std_logic;
SIGNAL \count[12]~47\ : std_logic;
SIGNAL \count[13]~48_combout\ : std_logic;
SIGNAL \count[13]~49\ : std_logic;
SIGNAL \count[14]~50_combout\ : std_logic;
SIGNAL \count[14]~51\ : std_logic;
SIGNAL \count[15]~52_combout\ : std_logic;
SIGNAL \count[15]~53\ : std_logic;
SIGNAL \count[16]~55\ : std_logic;
SIGNAL \count[17]~56_combout\ : std_logic;
SIGNAL \count[17]~57\ : std_logic;
SIGNAL \count[18]~59\ : std_logic;
SIGNAL \count[19]~61\ : std_logic;
SIGNAL \count[20]~62_combout\ : std_logic;
SIGNAL \count[20]~63\ : std_logic;
SIGNAL \count[21]~65\ : std_logic;
SIGNAL \count[22]~66_combout\ : std_logic;
SIGNAL \count[22]~67\ : std_logic;
SIGNAL \count[23]~69\ : std_logic;
SIGNAL \count[24]~70_combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \beep~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_clk <= clk;
beep <= ww_beep;
ww_cin <= cin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X1_Y18_N25
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCFF_X1_Y18_N21
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCFF_X1_Y18_N17
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCFF_X1_Y18_N13
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X1_Y18_N11
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X1_Y18_N10
\count[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~26_combout\ = (count(2) & (!\count[1]~25\)) # (!count(2) & ((\count[1]~25\) # (GND)))
-- \count[2]~27\ = CARRY((!\count[1]~25\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~25\,
	combout => \count[2]~26_combout\,
	cout => \count[2]~27\);

-- Location: LCCOMB_X1_Y18_N12
\count[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~28_combout\ = (count(3) & (\count[2]~27\ $ (GND))) # (!count(3) & (!\count[2]~27\ & VCC))
-- \count[3]~29\ = CARRY((count(3) & !\count[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~27\,
	combout => \count[3]~28_combout\,
	cout => \count[3]~29\);

-- Location: LCCOMB_X1_Y18_N16
\count[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~32_combout\ = (count(5) & (\count[4]~31\ $ (GND))) # (!count(5) & (!\count[4]~31\ & VCC))
-- \count[5]~33\ = CARRY((count(5) & !\count[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~31\,
	combout => \count[5]~32_combout\,
	cout => \count[5]~33\);

-- Location: LCCOMB_X1_Y18_N20
\count[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~36_combout\ = (count(7) & (\count[6]~35\ $ (GND))) # (!count(7) & (!\count[6]~35\ & VCC))
-- \count[7]~37\ = CARRY((count(7) & !\count[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~35\,
	combout => \count[7]~36_combout\,
	cout => \count[7]~37\);

-- Location: LCCOMB_X1_Y18_N24
\count[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~40_combout\ = (count(9) & (\count[8]~39\ $ (GND))) # (!count(9) & (!\count[8]~39\ & VCC))
-- \count[9]~41\ = CARRY((count(9) & !\count[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~39\,
	combout => \count[9]~40_combout\,
	cout => \count[9]~41\);

-- Location: LCFF_X1_Y17_N21
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCFF_X1_Y17_N17
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCFF_X1_Y17_N13
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCFF_X1_Y17_N11
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCFF_X1_Y17_N7
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X1_Y17_N6
\count[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[16]~54_combout\ = (count(16) & (!\count[15]~53\)) # (!count(16) & ((\count[15]~53\) # (GND)))
-- \count[16]~55\ = CARRY((!\count[15]~53\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~53\,
	combout => \count[16]~54_combout\,
	cout => \count[16]~55\);

-- Location: LCCOMB_X1_Y17_N10
\count[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[18]~58_combout\ = (count(18) & (!\count[17]~57\)) # (!count(18) & ((\count[17]~57\) # (GND)))
-- \count[18]~59\ = CARRY((!\count[17]~57\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~57\,
	combout => \count[18]~58_combout\,
	cout => \count[18]~59\);

-- Location: LCCOMB_X1_Y17_N12
\count[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[19]~60_combout\ = (count(19) & (\count[18]~59\ $ (GND))) # (!count(19) & (!\count[18]~59\ & VCC))
-- \count[19]~61\ = CARRY((count(19) & !\count[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~59\,
	combout => \count[19]~60_combout\,
	cout => \count[19]~61\);

-- Location: LCCOMB_X1_Y17_N16
\count[21]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[21]~64_combout\ = (count(21) & (\count[20]~63\ $ (GND))) # (!count(21) & (!\count[20]~63\ & VCC))
-- \count[21]~65\ = CARRY((count(21) & !\count[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~63\,
	combout => \count[21]~64_combout\,
	cout => \count[21]~65\);

-- Location: LCCOMB_X1_Y17_N20
\count[23]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[23]~68_combout\ = (count(23) & (\count[22]~67\ $ (GND))) # (!count(23) & (!\count[22]~67\ & VCC))
-- \count[23]~69\ = CARRY((count(23) & !\count[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \count[22]~67\,
	combout => \count[23]~68_combout\,
	cout => \count[23]~69\);

-- Location: LCFF_X1_Y18_N1
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X1_Y18_N0
\count[0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~72_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~72_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y18_N8
\count[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~24_combout\ = (count(0) & (count(1) $ (VCC))) # (!count(0) & (count(1) & VCC))
-- \count[1]~25\ = CARRY((count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => VCC,
	combout => \count[1]~24_combout\,
	cout => \count[1]~25\);

-- Location: LCFF_X1_Y18_N9
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X1_Y18_N14
\count[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~30_combout\ = (count(4) & (!\count[3]~29\)) # (!count(4) & ((\count[3]~29\) # (GND)))
-- \count[4]~31\ = CARRY((!\count[3]~29\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~29\,
	combout => \count[4]~30_combout\,
	cout => \count[4]~31\);

-- Location: LCFF_X1_Y18_N15
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X1_Y18_N18
\count[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~34_combout\ = (count(6) & (!\count[5]~33\)) # (!count(6) & ((\count[5]~33\) # (GND)))
-- \count[6]~35\ = CARRY((!\count[5]~33\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~33\,
	combout => \count[6]~34_combout\,
	cout => \count[6]~35\);

-- Location: LCFF_X1_Y18_N19
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X1_Y18_N22
\count[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~38_combout\ = (count(8) & (!\count[7]~37\)) # (!count(8) & ((\count[7]~37\) # (GND)))
-- \count[8]~39\ = CARRY((!\count[7]~37\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~37\,
	combout => \count[8]~38_combout\,
	cout => \count[8]~39\);

-- Location: LCFF_X1_Y18_N23
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X1_Y18_N26
\count[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~42_combout\ = (count(10) & (!\count[9]~41\)) # (!count(10) & ((\count[9]~41\) # (GND)))
-- \count[10]~43\ = CARRY((!\count[9]~41\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~41\,
	combout => \count[10]~42_combout\,
	cout => \count[10]~43\);

-- Location: LCFF_X1_Y18_N27
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X1_Y18_N28
\count[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~44_combout\ = (count(11) & (\count[10]~43\ $ (GND))) # (!count(11) & (!\count[10]~43\ & VCC))
-- \count[11]~45\ = CARRY((count(11) & !\count[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~43\,
	combout => \count[11]~44_combout\,
	cout => \count[11]~45\);

-- Location: LCFF_X1_Y18_N29
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCCOMB_X1_Y18_N30
\count[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[12]~46_combout\ = (count(12) & (!\count[11]~45\)) # (!count(12) & ((\count[11]~45\) # (GND)))
-- \count[12]~47\ = CARRY((!\count[11]~45\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~45\,
	combout => \count[12]~46_combout\,
	cout => \count[12]~47\);

-- Location: LCFF_X1_Y18_N31
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X1_Y17_N0
\count[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~48_combout\ = (count(13) & (\count[12]~47\ $ (GND))) # (!count(13) & (!\count[12]~47\ & VCC))
-- \count[13]~49\ = CARRY((count(13) & !\count[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~47\,
	combout => \count[13]~48_combout\,
	cout => \count[13]~49\);

-- Location: LCFF_X1_Y17_N1
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X1_Y17_N2
\count[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~50_combout\ = (count(14) & (!\count[13]~49\)) # (!count(14) & ((\count[13]~49\) # (GND)))
-- \count[14]~51\ = CARRY((!\count[13]~49\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~49\,
	combout => \count[14]~50_combout\,
	cout => \count[14]~51\);

-- Location: LCFF_X1_Y17_N3
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X1_Y17_N4
\count[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~52_combout\ = (count(15) & (\count[14]~51\ $ (GND))) # (!count(15) & (!\count[14]~51\ & VCC))
-- \count[15]~53\ = CARRY((count(15) & !\count[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~51\,
	combout => \count[15]~52_combout\,
	cout => \count[15]~53\);

-- Location: LCFF_X1_Y17_N5
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X1_Y17_N8
\count[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[17]~56_combout\ = (count(17) & (\count[16]~55\ $ (GND))) # (!count(17) & (!\count[16]~55\ & VCC))
-- \count[17]~57\ = CARRY((count(17) & !\count[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~55\,
	combout => \count[17]~56_combout\,
	cout => \count[17]~57\);

-- Location: LCFF_X1_Y17_N9
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X1_Y17_N14
\count[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[20]~62_combout\ = (count(20) & (!\count[19]~61\)) # (!count(20) & ((\count[19]~61\) # (GND)))
-- \count[20]~63\ = CARRY((!\count[19]~61\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~61\,
	combout => \count[20]~62_combout\,
	cout => \count[20]~63\);

-- Location: LCFF_X1_Y17_N15
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCCOMB_X1_Y17_N18
\count[22]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[22]~66_combout\ = (count(22) & (!\count[21]~65\)) # (!count(22) & ((\count[21]~65\) # (GND)))
-- \count[22]~67\ = CARRY((!\count[21]~65\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~65\,
	combout => \count[22]~66_combout\,
	cout => \count[22]~67\);

-- Location: LCFF_X1_Y17_N19
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCCOMB_X1_Y17_N22
\count[24]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[24]~70_combout\ = \count[23]~69\ $ (count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(24),
	cin => \count[23]~69\,
	combout => \count[24]~70_combout\);

-- Location: LCFF_X1_Y17_N23
\count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LCCOMB_X1_Y17_N28
\beep~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \beep~0_combout\ = ((!count(13)) # (!\cin~combout\)) # (!count(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datac => \cin~combout\,
	datad => count(13),
	combout => \beep~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\beep~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \beep~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_beep);
END structure;


