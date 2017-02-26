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

-- DATE "01/08/2017 17:09:46"

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

ENTITY 	clock IS
    PORT (
	clk : IN std_logic;
	modkey : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	dis : OUT std_logic_vector(7 DOWNTO 0);
	leg : OUT std_logic_vector(7 DOWNTO 0);
	line : OUT std_logic_vector(7 DOWNTO 0);
	row : OUT std_logic_vector(7 DOWNTO 0)
	);
END clock;

-- Design Ports Information
-- dis[0]	=>  Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[1]	=>  Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[2]	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[3]	=>  Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[4]	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[5]	=>  Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[6]	=>  Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dis[7]	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[0]	=>  Location: PIN_150,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[1]	=>  Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[2]	=>  Location: PIN_152,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[3]	=>  Location: PIN_151,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[4]	=>  Location: PIN_205,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[5]	=>  Location: PIN_206,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[6]	=>  Location: PIN_207,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leg[7]	=>  Location: PIN_208,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[0]	=>  Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[1]	=>  Location: PIN_181,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[2]	=>  Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[3]	=>  Location: PIN_191,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[4]	=>  Location: PIN_185,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[5]	=>  Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[6]	=>  Location: PIN_179,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- line[7]	=>  Location: PIN_180,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[1]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[3]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[4]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[5]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[6]	=>  Location: PIN_187,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[7]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modkey	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key1	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF clock IS
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
SIGNAL ww_modkey : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_dis : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_line : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(7 DOWNTO 0);
SIGNAL \fen|f1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fen|f100Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fen|f~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fen|Add2~10_combout\ : std_logic;
SIGNAL \fen|Add2~12_combout\ : std_logic;
SIGNAL \fen|Add2~14_combout\ : std_logic;
SIGNAL \fen|Add2~42_combout\ : std_logic;
SIGNAL \fen|Add2~48_combout\ : std_logic;
SIGNAL \fen|Add2~52_combout\ : std_logic;
SIGNAL \fen|Add2~56_combout\ : std_logic;
SIGNAL \p1|Add0~10_combout\ : std_logic;
SIGNAL \p1|Add0~12_combout\ : std_logic;
SIGNAL \p1|Add0~16_combout\ : std_logic;
SIGNAL \p1|Add0~20_combout\ : std_logic;
SIGNAL \p1|Add0~38_combout\ : std_logic;
SIGNAL \p1|Add0~52_combout\ : std_logic;
SIGNAL \p1|Add0~61\ : std_logic;
SIGNAL \p1|Add0~62_combout\ : std_logic;
SIGNAL \fen|Add0~1_cout\ : std_logic;
SIGNAL \fen|Add0~3_cout\ : std_logic;
SIGNAL \fen|Add0~4_combout\ : std_logic;
SIGNAL \fen|Add0~5\ : std_logic;
SIGNAL \fen|Add0~6_combout\ : std_logic;
SIGNAL \fen|Add0~7\ : std_logic;
SIGNAL \fen|Add0~8_combout\ : std_logic;
SIGNAL \fen|Add0~9\ : std_logic;
SIGNAL \fen|Add0~10_combout\ : std_logic;
SIGNAL \fen|Add0~11\ : std_logic;
SIGNAL \fen|Add0~12_combout\ : std_logic;
SIGNAL \fen|Add0~13\ : std_logic;
SIGNAL \fen|Add0~14_combout\ : std_logic;
SIGNAL \fen|Add0~15\ : std_logic;
SIGNAL \fen|Add0~16_combout\ : std_logic;
SIGNAL \fen|Add0~17\ : std_logic;
SIGNAL \fen|Add0~18_combout\ : std_logic;
SIGNAL \fen|Add0~19\ : std_logic;
SIGNAL \fen|Add0~20_combout\ : std_logic;
SIGNAL \fen|Add0~21\ : std_logic;
SIGNAL \fen|Add0~22_combout\ : std_logic;
SIGNAL \fen|Add0~23\ : std_logic;
SIGNAL \fen|Add0~24_combout\ : std_logic;
SIGNAL \fen|Add0~25\ : std_logic;
SIGNAL \fen|Add0~26_combout\ : std_logic;
SIGNAL \fen|Add0~27\ : std_logic;
SIGNAL \fen|Add0~28_combout\ : std_logic;
SIGNAL \fen|Add0~29\ : std_logic;
SIGNAL \fen|Add0~30_combout\ : std_logic;
SIGNAL \fen|Add0~31\ : std_logic;
SIGNAL \fen|Add0~32_combout\ : std_logic;
SIGNAL \fen|Add0~33\ : std_logic;
SIGNAL \fen|Add0~34_combout\ : std_logic;
SIGNAL \fen|Add0~35\ : std_logic;
SIGNAL \fen|Add0~36_combout\ : std_logic;
SIGNAL \fen|Add0~37\ : std_logic;
SIGNAL \fen|Add0~38_combout\ : std_logic;
SIGNAL \fen|Add0~39\ : std_logic;
SIGNAL \fen|Add0~40_combout\ : std_logic;
SIGNAL \fen|Add0~41\ : std_logic;
SIGNAL \fen|Add0~42_combout\ : std_logic;
SIGNAL \fen|Add0~43\ : std_logic;
SIGNAL \fen|Add0~44_combout\ : std_logic;
SIGNAL \fen|Add0~45\ : std_logic;
SIGNAL \fen|Add0~46_combout\ : std_logic;
SIGNAL \fen|Add0~47\ : std_logic;
SIGNAL \fen|Add0~48_combout\ : std_logic;
SIGNAL \fen|Add0~49\ : std_logic;
SIGNAL \fen|Add0~50_combout\ : std_logic;
SIGNAL \fen|Add0~51\ : std_logic;
SIGNAL \fen|Add0~52_combout\ : std_logic;
SIGNAL \fen|Add0~53\ : std_logic;
SIGNAL \fen|Add0~54_combout\ : std_logic;
SIGNAL \fen|Add0~55\ : std_logic;
SIGNAL \fen|Add0~56_combout\ : std_logic;
SIGNAL \fen|Add0~57\ : std_logic;
SIGNAL \fen|Add0~58_combout\ : std_logic;
SIGNAL \fen|Add0~59\ : std_logic;
SIGNAL \fen|Add0~60_combout\ : std_logic;
SIGNAL \fen|Add1~1_cout\ : std_logic;
SIGNAL \fen|Add1~3_cout\ : std_logic;
SIGNAL \fen|Add1~5_cout\ : std_logic;
SIGNAL \fen|Add1~6_combout\ : std_logic;
SIGNAL \fen|Add1~7\ : std_logic;
SIGNAL \fen|Add1~8_combout\ : std_logic;
SIGNAL \fen|Add1~9\ : std_logic;
SIGNAL \fen|Add1~10_combout\ : std_logic;
SIGNAL \fen|Add1~11\ : std_logic;
SIGNAL \fen|Add1~12_combout\ : std_logic;
SIGNAL \fen|Add1~13\ : std_logic;
SIGNAL \fen|Add1~14_combout\ : std_logic;
SIGNAL \fen|Add1~15\ : std_logic;
SIGNAL \fen|Add1~16_combout\ : std_logic;
SIGNAL \fen|Add1~17\ : std_logic;
SIGNAL \fen|Add1~18_combout\ : std_logic;
SIGNAL \fen|Add1~19\ : std_logic;
SIGNAL \fen|Add1~20_combout\ : std_logic;
SIGNAL \fen|Add1~21\ : std_logic;
SIGNAL \fen|Add1~22_combout\ : std_logic;
SIGNAL \fen|Add1~23\ : std_logic;
SIGNAL \fen|Add1~24_combout\ : std_logic;
SIGNAL \fen|Add1~25\ : std_logic;
SIGNAL \fen|Add1~26_combout\ : std_logic;
SIGNAL \fen|Add1~27\ : std_logic;
SIGNAL \fen|Add1~28_combout\ : std_logic;
SIGNAL \fen|Add1~29\ : std_logic;
SIGNAL \fen|Add1~30_combout\ : std_logic;
SIGNAL \fen|Add1~31\ : std_logic;
SIGNAL \fen|Add1~32_combout\ : std_logic;
SIGNAL \fen|Add1~33\ : std_logic;
SIGNAL \fen|Add1~34_combout\ : std_logic;
SIGNAL \fen|Add1~35\ : std_logic;
SIGNAL \fen|Add1~36_combout\ : std_logic;
SIGNAL \fen|Add1~37\ : std_logic;
SIGNAL \fen|Add1~38_combout\ : std_logic;
SIGNAL \fen|Add1~39\ : std_logic;
SIGNAL \fen|Add1~40_combout\ : std_logic;
SIGNAL \fen|Add1~41\ : std_logic;
SIGNAL \fen|Add1~42_combout\ : std_logic;
SIGNAL \fen|Add1~43\ : std_logic;
SIGNAL \fen|Add1~44_combout\ : std_logic;
SIGNAL \fen|Add1~45\ : std_logic;
SIGNAL \fen|Add1~46_combout\ : std_logic;
SIGNAL \fen|Add1~47\ : std_logic;
SIGNAL \fen|Add1~48_combout\ : std_logic;
SIGNAL \fen|Add1~49\ : std_logic;
SIGNAL \fen|Add1~50_combout\ : std_logic;
SIGNAL \fen|Add1~51\ : std_logic;
SIGNAL \fen|Add1~52_combout\ : std_logic;
SIGNAL \fen|Add1~53\ : std_logic;
SIGNAL \fen|Add1~54_combout\ : std_logic;
SIGNAL \fen|Add1~55\ : std_logic;
SIGNAL \fen|Add1~56_combout\ : std_logic;
SIGNAL \fen|Add1~57\ : std_logic;
SIGNAL \fen|Add1~58_combout\ : std_logic;
SIGNAL \fen|Add1~59\ : std_logic;
SIGNAL \fen|Add1~60_combout\ : std_logic;
SIGNAL \fen|Equal2~1_combout\ : std_logic;
SIGNAL \fen|Equal2~3_combout\ : std_logic;
SIGNAL \fen|Equal2~8_combout\ : std_logic;
SIGNAL \p2|Mux49~1_combout\ : std_logic;
SIGNAL \p2|Mux49~2_combout\ : std_logic;
SIGNAL \p2|Mux49~3_combout\ : std_logic;
SIGNAL \p1|display[2]~12_combout\ : std_logic;
SIGNAL \p1|display[2]~13_combout\ : std_logic;
SIGNAL \p3|WideOr3~0_combout\ : std_logic;
SIGNAL \p3|Mux41~5_combout\ : std_logic;
SIGNAL \p2|Mux48~0_combout\ : std_logic;
SIGNAL \p2|Mux48~1_combout\ : std_logic;
SIGNAL \ji|always1~1_combout\ : std_logic;
SIGNAL \p1|Mux54~4_combout\ : std_logic;
SIGNAL \p1|Mux54~6_combout\ : std_logic;
SIGNAL \p1|Mux54~7_combout\ : std_logic;
SIGNAL \p3|Mux40~0_combout\ : std_logic;
SIGNAL \p3|Mux40~1_combout\ : std_logic;
SIGNAL \p3|Mux40~2_combout\ : std_logic;
SIGNAL \p3|Mux40~3_combout\ : std_logic;
SIGNAL \p2|Mux46~0_combout\ : std_logic;
SIGNAL \p2|Mux46~1_combout\ : std_logic;
SIGNAL \p2|Mux45~1_combout\ : std_logic;
SIGNAL \p2|Mux45~2_combout\ : std_logic;
SIGNAL \p2|Mux45~3_combout\ : std_logic;
SIGNAL \p3|Mux37~0_combout\ : std_logic;
SIGNAL \p3|Mux37~1_combout\ : std_logic;
SIGNAL \p3|Mux37~2_combout\ : std_logic;
SIGNAL \p3|Mux37~3_combout\ : std_logic;
SIGNAL \p3|Mux37~4_combout\ : std_logic;
SIGNAL \p3|Mux36~1_combout\ : std_logic;
SIGNAL \p3|Mux36~2_combout\ : std_logic;
SIGNAL \p3|Mux14~0_combout\ : std_logic;
SIGNAL \p3|Mux14~1_combout\ : std_logic;
SIGNAL \p3|Mux36~3_combout\ : std_logic;
SIGNAL \p3|Mux36~4_combout\ : std_logic;
SIGNAL \p3|Mux0~0_combout\ : std_logic;
SIGNAL \p3|Mux0~1_combout\ : std_logic;
SIGNAL \p3|Mux36~5_combout\ : std_logic;
SIGNAL \p3|Mux36~6_combout\ : std_logic;
SIGNAL \p3|Mux36~7_combout\ : std_logic;
SIGNAL \p2|Mux43~0_combout\ : std_logic;
SIGNAL \p2|Mux43~1_combout\ : std_logic;
SIGNAL \p2|Mux42~6_combout\ : std_logic;
SIGNAL \p1|Mux48~1_combout\ : std_logic;
SIGNAL \p1|display~25_combout\ : std_logic;
SIGNAL \p1|display~26_combout\ : std_logic;
SIGNAL \p1|Mux48~3_combout\ : std_logic;
SIGNAL \p1|display~27_combout\ : std_logic;
SIGNAL \p1|Mux48~4_combout\ : std_logic;
SIGNAL \p2|Mux36~0_combout\ : std_logic;
SIGNAL \nao|always0~1_combout\ : std_logic;
SIGNAL \nao|always0~7_combout\ : std_logic;
SIGNAL \fen|f1Hz~regout\ : std_logic;
SIGNAL \p1|Equal0~2_combout\ : std_logic;
SIGNAL \p1|Equal0~5_combout\ : std_logic;
SIGNAL \nao|Equal9~0_combout\ : std_logic;
SIGNAL \nao|always0~10_combout\ : std_logic;
SIGNAL \nao|always0~11_combout\ : std_logic;
SIGNAL \nao|always0~15_combout\ : std_logic;
SIGNAL \nao|ee~7_combout\ : std_logic;
SIGNAL \nao|ee~8_combout\ : std_logic;
SIGNAL \nao|ee~10_combout\ : std_logic;
SIGNAL \nao|ee~14_combout\ : std_logic;
SIGNAL \nao|ff~25_combout\ : std_logic;
SIGNAL \nao|Add4~0_combout\ : std_logic;
SIGNAL \nao|ff~29_combout\ : std_logic;
SIGNAL \pao|Add2~0_combout\ : std_logic;
SIGNAL \fen|f100Hz~regout\ : std_logic;
SIGNAL \pao|Add6~0_combout\ : std_logic;
SIGNAL \pao|Add6~1_combout\ : std_logic;
SIGNAL \pao|Add5~0_combout\ : std_logic;
SIGNAL \pao|Add7~0_combout\ : std_logic;
SIGNAL \ji|always1~4_combout\ : std_logic;
SIGNAL \ji|Add2~0_combout\ : std_logic;
SIGNAL \ji|Add2~1_combout\ : std_logic;
SIGNAL \fen|Equal0~0_combout\ : std_logic;
SIGNAL \fen|Equal0~1_combout\ : std_logic;
SIGNAL \fen|Equal0~2_combout\ : std_logic;
SIGNAL \fen|Equal0~3_combout\ : std_logic;
SIGNAL \fen|Equal0~4_combout\ : std_logic;
SIGNAL \fen|Equal0~5_combout\ : std_logic;
SIGNAL \fen|Equal0~6_combout\ : std_logic;
SIGNAL \fen|Equal0~7_combout\ : std_logic;
SIGNAL \fen|Equal0~8_combout\ : std_logic;
SIGNAL \fen|Equal0~9_combout\ : std_logic;
SIGNAL \fen|f1Hz~0_combout\ : std_logic;
SIGNAL \pao|k1k~regout\ : std_logic;
SIGNAL \pao|k2[0]~0_combout\ : std_logic;
SIGNAL \pao|k2[1]~1_combout\ : std_logic;
SIGNAL \fen|Equal1~0_combout\ : std_logic;
SIGNAL \fen|Equal1~1_combout\ : std_logic;
SIGNAL \fen|Equal1~2_combout\ : std_logic;
SIGNAL \fen|Equal1~3_combout\ : std_logic;
SIGNAL \fen|Equal1~4_combout\ : std_logic;
SIGNAL \fen|Equal1~5_combout\ : std_logic;
SIGNAL \fen|Equal1~6_combout\ : std_logic;
SIGNAL \fen|Equal1~7_combout\ : std_logic;
SIGNAL \fen|Equal1~8_combout\ : std_logic;
SIGNAL \fen|Equal1~9_combout\ : std_logic;
SIGNAL \fen|f100Hz~0_combout\ : std_logic;
SIGNAL \pao|Add4~0_combout\ : std_logic;
SIGNAL \pao|c[2]~6_combout\ : std_logic;
SIGNAL \pao|Add4~1_combout\ : std_logic;
SIGNAL \fen|i~0_combout\ : std_logic;
SIGNAL \fen|i~1_combout\ : std_logic;
SIGNAL \fen|i~2_combout\ : std_logic;
SIGNAL \fen|i~3_combout\ : std_logic;
SIGNAL \fen|i~4_combout\ : std_logic;
SIGNAL \fen|i~5_combout\ : std_logic;
SIGNAL \fen|i~6_combout\ : std_logic;
SIGNAL \fen|i~7_combout\ : std_logic;
SIGNAL \fen|i~8_combout\ : std_logic;
SIGNAL \fen|i~9_combout\ : std_logic;
SIGNAL \fen|i~10_combout\ : std_logic;
SIGNAL \fen|i~11_combout\ : std_logic;
SIGNAL \fen|j~0_combout\ : std_logic;
SIGNAL \fen|j~1_combout\ : std_logic;
SIGNAL \fen|j~2_combout\ : std_logic;
SIGNAL \fen|j~3_combout\ : std_logic;
SIGNAL \fen|j~4_combout\ : std_logic;
SIGNAL \fen|j~5_combout\ : std_logic;
SIGNAL \fen|j~6_combout\ : std_logic;
SIGNAL \pao|k1k~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \fen|f1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \fen|f100Hz~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p2|led_dig[2]~feeder_combout\ : std_logic;
SIGNAL \p2|led_dig[4]~feeder_combout\ : std_logic;
SIGNAL \p3|led_dig[7]~feeder_combout\ : std_logic;
SIGNAL \fen|k~3_combout\ : std_logic;
SIGNAL \fen|k~4_combout\ : std_logic;
SIGNAL \fen|Add2~0_combout\ : std_logic;
SIGNAL \fen|Add2~1\ : std_logic;
SIGNAL \fen|Add2~2_combout\ : std_logic;
SIGNAL \fen|Add2~3\ : std_logic;
SIGNAL \fen|Add2~4_combout\ : std_logic;
SIGNAL \fen|Add2~5\ : std_logic;
SIGNAL \fen|Add2~6_combout\ : std_logic;
SIGNAL \fen|k~5_combout\ : std_logic;
SIGNAL \fen|Add2~7\ : std_logic;
SIGNAL \fen|Add2~8_combout\ : std_logic;
SIGNAL \fen|Add2~9\ : std_logic;
SIGNAL \fen|Add2~11\ : std_logic;
SIGNAL \fen|Add2~13\ : std_logic;
SIGNAL \fen|Add2~15\ : std_logic;
SIGNAL \fen|Add2~16_combout\ : std_logic;
SIGNAL \fen|k~2_combout\ : std_logic;
SIGNAL \fen|Add2~17\ : std_logic;
SIGNAL \fen|Add2~18_combout\ : std_logic;
SIGNAL \fen|Add2~19\ : std_logic;
SIGNAL \fen|Add2~21\ : std_logic;
SIGNAL \fen|Add2~22_combout\ : std_logic;
SIGNAL \fen|Add2~23\ : std_logic;
SIGNAL \fen|Add2~25\ : std_logic;
SIGNAL \fen|Add2~26_combout\ : std_logic;
SIGNAL \fen|k~1_combout\ : std_logic;
SIGNAL \fen|Add2~27\ : std_logic;
SIGNAL \fen|Add2~29\ : std_logic;
SIGNAL \fen|Add2~30_combout\ : std_logic;
SIGNAL \fen|Add2~31\ : std_logic;
SIGNAL \fen|Add2~32_combout\ : std_logic;
SIGNAL \fen|Add2~33\ : std_logic;
SIGNAL \fen|Add2~34_combout\ : std_logic;
SIGNAL \fen|Add2~35\ : std_logic;
SIGNAL \fen|Add2~36_combout\ : std_logic;
SIGNAL \fen|Equal2~5_combout\ : std_logic;
SIGNAL \fen|Add2~20_combout\ : std_logic;
SIGNAL \fen|Equal2~7_combout\ : std_logic;
SIGNAL \fen|Add2~24_combout\ : std_logic;
SIGNAL \fen|Add2~28_combout\ : std_logic;
SIGNAL \fen|k~0_combout\ : std_logic;
SIGNAL \fen|Equal2~6_combout\ : std_logic;
SIGNAL \fen|Equal2~9_combout\ : std_logic;
SIGNAL \fen|Add2~37\ : std_logic;
SIGNAL \fen|Add2~39\ : std_logic;
SIGNAL \fen|Add2~40_combout\ : std_logic;
SIGNAL \fen|Add2~41\ : std_logic;
SIGNAL \fen|Add2~43\ : std_logic;
SIGNAL \fen|Add2~44_combout\ : std_logic;
SIGNAL \fen|Add2~38_combout\ : std_logic;
SIGNAL \fen|Equal2~4_combout\ : std_logic;
SIGNAL \fen|Equal2~0_combout\ : std_logic;
SIGNAL \fen|Add2~45\ : std_logic;
SIGNAL \fen|Add2~46_combout\ : std_logic;
SIGNAL \fen|Add2~47\ : std_logic;
SIGNAL \fen|Add2~49\ : std_logic;
SIGNAL \fen|Add2~50_combout\ : std_logic;
SIGNAL \fen|Add2~51\ : std_logic;
SIGNAL \fen|Add2~53\ : std_logic;
SIGNAL \fen|Add2~54_combout\ : std_logic;
SIGNAL \fen|Add2~55\ : std_logic;
SIGNAL \fen|Add2~57\ : std_logic;
SIGNAL \fen|Add2~58_combout\ : std_logic;
SIGNAL \fen|Add2~59\ : std_logic;
SIGNAL \fen|Add2~60_combout\ : std_logic;
SIGNAL \fen|Add2~61\ : std_logic;
SIGNAL \fen|Add2~62_combout\ : std_logic;
SIGNAL \fen|Equal2~2_combout\ : std_logic;
SIGNAL \fen|Equal2~10_combout\ : std_logic;
SIGNAL \fen|f~0_combout\ : std_logic;
SIGNAL \fen|f~regout\ : std_logic;
SIGNAL \fen|f~clkctrl_outclk\ : std_logic;
SIGNAL \modkey~combout\ : std_logic;
SIGNAL \comb_3|mkoo[0]~1_combout\ : std_logic;
SIGNAL \comb_3|mkoo[1]~0_combout\ : std_logic;
SIGNAL \nao|dd[0]~3_combout\ : std_logic;
SIGNAL \key2~combout\ : std_logic;
SIGNAL \mc|Mux1~1_combout\ : std_logic;
SIGNAL \nao|k2~regout\ : std_logic;
SIGNAL \nao|k2k~0_combout\ : std_logic;
SIGNAL \nao|k2k~regout\ : std_logic;
SIGNAL \nao|k2~0_combout\ : std_logic;
SIGNAL \nao|cc[0]~5_combout\ : std_logic;
SIGNAL \key1~combout\ : std_logic;
SIGNAL \nao|k1k~0_combout\ : std_logic;
SIGNAL \nao|k1k~regout\ : std_logic;
SIGNAL \nao|k1~0_combout\ : std_logic;
SIGNAL \nao|cc[3]~4_combout\ : std_logic;
SIGNAL \nao|Add1~0_combout\ : std_logic;
SIGNAL \nao|cc~2_combout\ : std_logic;
SIGNAL \nao|cc~3_combout\ : std_logic;
SIGNAL \nao|Equal7~0_combout\ : std_logic;
SIGNAL \nao|dd[3]~0_combout\ : std_logic;
SIGNAL \nao|dd~1_combout\ : std_logic;
SIGNAL \nao|Add2~0_combout\ : std_logic;
SIGNAL \nao|dd~2_combout\ : std_logic;
SIGNAL \p2|display[1]~14_combout\ : std_logic;
SIGNAL \p3|Mux42~3_combout\ : std_logic;
SIGNAL \nao|k1[1]~1_combout\ : std_logic;
SIGNAL \nao|k1[1]~2_combout\ : std_logic;
SIGNAL \p1|i~3_combout\ : std_logic;
SIGNAL \p1|i~2_combout\ : std_logic;
SIGNAL \p1|Add0~0_combout\ : std_logic;
SIGNAL \p1|i~1_combout\ : std_logic;
SIGNAL \p1|Add0~1\ : std_logic;
SIGNAL \p1|Add0~2_combout\ : std_logic;
SIGNAL \p1|Add0~3\ : std_logic;
SIGNAL \p1|Add0~4_combout\ : std_logic;
SIGNAL \p1|i~0_combout\ : std_logic;
SIGNAL \p1|Add0~5\ : std_logic;
SIGNAL \p1|Add0~7\ : std_logic;
SIGNAL \p1|Add0~8_combout\ : std_logic;
SIGNAL \p1|Equal0~1_combout\ : std_logic;
SIGNAL \p1|Add0~6_combout\ : std_logic;
SIGNAL \p1|Equal0~0_combout\ : std_logic;
SIGNAL \p1|Add0~9\ : std_logic;
SIGNAL \p1|Add0~11\ : std_logic;
SIGNAL \p1|Add0~13\ : std_logic;
SIGNAL \p1|Add0~14_combout\ : std_logic;
SIGNAL \p1|Add0~15\ : std_logic;
SIGNAL \p1|Add0~17\ : std_logic;
SIGNAL \p1|Add0~18_combout\ : std_logic;
SIGNAL \p1|Add0~19\ : std_logic;
SIGNAL \p1|Add0~21\ : std_logic;
SIGNAL \p1|Add0~22_combout\ : std_logic;
SIGNAL \p1|Add0~23\ : std_logic;
SIGNAL \p1|Add0~25\ : std_logic;
SIGNAL \p1|Add0~26_combout\ : std_logic;
SIGNAL \p1|Add0~27\ : std_logic;
SIGNAL \p1|Add0~28_combout\ : std_logic;
SIGNAL \p1|Add0~24_combout\ : std_logic;
SIGNAL \p1|Equal0~3_combout\ : std_logic;
SIGNAL \p1|Equal0~4_combout\ : std_logic;
SIGNAL \p1|Add0~29\ : std_logic;
SIGNAL \p1|Add0~30_combout\ : std_logic;
SIGNAL \p1|Add0~31\ : std_logic;
SIGNAL \p1|Add0~32_combout\ : std_logic;
SIGNAL \p1|Add0~33\ : std_logic;
SIGNAL \p1|Add0~34_combout\ : std_logic;
SIGNAL \p1|Add0~35\ : std_logic;
SIGNAL \p1|Add0~36_combout\ : std_logic;
SIGNAL \p1|Add0~37\ : std_logic;
SIGNAL \p1|Add0~39\ : std_logic;
SIGNAL \p1|Add0~40_combout\ : std_logic;
SIGNAL \p1|Add0~41\ : std_logic;
SIGNAL \p1|Add0~43\ : std_logic;
SIGNAL \p1|Add0~44_combout\ : std_logic;
SIGNAL \p1|Add0~42_combout\ : std_logic;
SIGNAL \p1|Add0~45\ : std_logic;
SIGNAL \p1|Add0~46_combout\ : std_logic;
SIGNAL \p1|Equal0~6_combout\ : std_logic;
SIGNAL \p1|Add0~47\ : std_logic;
SIGNAL \p1|Add0~49\ : std_logic;
SIGNAL \p1|Add0~50_combout\ : std_logic;
SIGNAL \p1|Add0~51\ : std_logic;
SIGNAL \p1|Add0~53\ : std_logic;
SIGNAL \p1|Add0~54_combout\ : std_logic;
SIGNAL \p1|Add0~55\ : std_logic;
SIGNAL \p1|Add0~57\ : std_logic;
SIGNAL \p1|Add0~58_combout\ : std_logic;
SIGNAL \p1|Add0~59\ : std_logic;
SIGNAL \p1|Add0~60_combout\ : std_logic;
SIGNAL \p1|Add0~56_combout\ : std_logic;
SIGNAL \p1|Equal0~8_combout\ : std_logic;
SIGNAL \p1|Add0~48_combout\ : std_logic;
SIGNAL \p1|Equal0~7_combout\ : std_logic;
SIGNAL \p1|Equal0~9_combout\ : std_logic;
SIGNAL \p1|Equal0~10_combout\ : std_logic;
SIGNAL \p1|delay~0_combout\ : std_logic;
SIGNAL \p1|delay~regout\ : std_logic;
SIGNAL \p3|always0~0_combout\ : std_logic;
SIGNAL \p2|o[0]~1_combout\ : std_logic;
SIGNAL \p1|display[2]~6_combout\ : std_logic;
SIGNAL \p3|Mux42~2_combout\ : std_logic;
SIGNAL \p3|display[0]~8_combout\ : std_logic;
SIGNAL \nao|ee~2_combout\ : std_logic;
SIGNAL \nao|Add5~0_combout\ : std_logic;
SIGNAL \nao|ee~6_combout\ : std_logic;
SIGNAL \nao|always0~14_combout\ : std_logic;
SIGNAL \nao|Equal8~0_combout\ : std_logic;
SIGNAL \nao|ff~8_combout\ : std_logic;
SIGNAL \nao|ff~9_combout\ : std_logic;
SIGNAL \nao|ff~17_combout\ : std_logic;
SIGNAL \nao|ff~21_combout\ : std_logic;
SIGNAL \nao|ff~12_combout\ : std_logic;
SIGNAL \nao|Add5~2_combout\ : std_logic;
SIGNAL \nao|ee~9_combout\ : std_logic;
SIGNAL \nao|ff[0]~32_combout\ : std_logic;
SIGNAL \nao|ee~1_combout\ : std_logic;
SIGNAL \nao|ee~3_combout\ : std_logic;
SIGNAL \nao|ee~4_combout\ : std_logic;
SIGNAL \nao|Equal14~0_combout\ : std_logic;
SIGNAL \nao|Equal14~1_combout\ : std_logic;
SIGNAL \nao|ff~22_combout\ : std_logic;
SIGNAL \nao|ff~23_combout\ : std_logic;
SIGNAL \nao|ff[0]~20_combout\ : std_logic;
SIGNAL \nao|ff~33_combout\ : std_logic;
SIGNAL \nao|ff~16_combout\ : std_logic;
SIGNAL \nao|ff~31_combout\ : std_logic;
SIGNAL \nao|ff~13_combout\ : std_logic;
SIGNAL \nao|Add6~0_combout\ : std_logic;
SIGNAL \nao|ff~24_combout\ : std_logic;
SIGNAL \nao|ff~26_combout\ : std_logic;
SIGNAL \nao|ff~27_combout\ : std_logic;
SIGNAL \nao|Add6~1_combout\ : std_logic;
SIGNAL \nao|ff~28_combout\ : std_logic;
SIGNAL \nao|ff~30_combout\ : std_logic;
SIGNAL \nao|always0~12_combout\ : std_logic;
SIGNAL \nao|always0~13_combout\ : std_logic;
SIGNAL \nao|ff~10_combout\ : std_logic;
SIGNAL \nao|ff~11_combout\ : std_logic;
SIGNAL \nao|ff~18_combout\ : std_logic;
SIGNAL \nao|ff~19_combout\ : std_logic;
SIGNAL \p3|display[0]~15_combout\ : std_logic;
SIGNAL \nao|ff~14_combout\ : std_logic;
SIGNAL \nao|ff~15_combout\ : std_logic;
SIGNAL \nao|always0~16_combout\ : std_logic;
SIGNAL \nao|ee~15_combout\ : std_logic;
SIGNAL \nao|Add5~1_combout\ : std_logic;
SIGNAL \nao|ee~11_combout\ : std_logic;
SIGNAL \nao|Add3~0_combout\ : std_logic;
SIGNAL \nao|ee~0_combout\ : std_logic;
SIGNAL \nao|ee~5_combout\ : std_logic;
SIGNAL \nao|ee~12_combout\ : std_logic;
SIGNAL \nao|ee~13_combout\ : std_logic;
SIGNAL \p3|display[0]~10_combout\ : std_logic;
SIGNAL \p3|display[0]~9_combout\ : std_logic;
SIGNAL \p3|Mux42~5_combout\ : std_logic;
SIGNAL \p3|display[0]~7_combout\ : std_logic;
SIGNAL \p3|Mux42~6_combout\ : std_logic;
SIGNAL \p3|Mux42~7_combout\ : std_logic;
SIGNAL \p3|display[0]~17_combout\ : std_logic;
SIGNAL \p2|o[2]~0_combout\ : std_logic;
SIGNAL \p3|display[0]~12_combout\ : std_logic;
SIGNAL \p3|display[0]~13_combout\ : std_logic;
SIGNAL \p3|Mux36~0_combout\ : std_logic;
SIGNAL \p3|display[0]~19_combout\ : std_logic;
SIGNAL \p3|display[0]~16_combout\ : std_logic;
SIGNAL \p3|display[0]~18_combout\ : std_logic;
SIGNAL \mc|Mux15~0_combout\ : std_logic;
SIGNAL \p1|always0~1_combout\ : std_logic;
SIGNAL \p1|Mux55~8_combout\ : std_logic;
SIGNAL \ji|Equal12~0_combout\ : std_logic;
SIGNAL \ji|e~0_combout\ : std_logic;
SIGNAL \ji|k1k~0_combout\ : std_logic;
SIGNAL \p3|Equal2~0_combout\ : std_logic;
SIGNAL \ji|k1k~regout\ : std_logic;
SIGNAL \ji|k1~0_combout\ : std_logic;
SIGNAL \ji|always0~0_combout\ : std_logic;
SIGNAL \ji|k2~regout\ : std_logic;
SIGNAL \ji|k2k~0_combout\ : std_logic;
SIGNAL \ji|k2k~regout\ : std_logic;
SIGNAL \ji|k2~1_combout\ : std_logic;
SIGNAL \ji|ee~6_combout\ : std_logic;
SIGNAL \ji|e~3_combout\ : std_logic;
SIGNAL \p1|Mux33~0_combout\ : std_logic;
SIGNAL \ji|k2~0_combout\ : std_logic;
SIGNAL \ji|ee[0]~7_combout\ : std_logic;
SIGNAL \ji|Add6~1_combout\ : std_logic;
SIGNAL \ji|ff~2_combout\ : std_logic;
SIGNAL \ji|f~2_combout\ : std_logic;
SIGNAL \ji|Add6~2_combout\ : std_logic;
SIGNAL \ji|ff~3_combout\ : std_logic;
SIGNAL \ji|f~3_combout\ : std_logic;
SIGNAL \p1|Mux35~1_combout\ : std_logic;
SIGNAL \ji|always0~1_combout\ : std_logic;
SIGNAL \ji|always0~2_combout\ : std_logic;
SIGNAL \ji|ee~8_combout\ : std_logic;
SIGNAL \ji|e~4_combout\ : std_logic;
SIGNAL \ji|Add5~1_combout\ : std_logic;
SIGNAL \ji|ee~5_combout\ : std_logic;
SIGNAL \ji|e~2_combout\ : std_logic;
SIGNAL \ji|Add5~0_combout\ : std_logic;
SIGNAL \ji|ee~4_combout\ : std_logic;
SIGNAL \ji|e~1_combout\ : std_logic;
SIGNAL \ji|always1~2_combout\ : std_logic;
SIGNAL \ji|always1~3_combout\ : std_logic;
SIGNAL \ji|ff~0_combout\ : std_logic;
SIGNAL \ji|f~0_combout\ : std_logic;
SIGNAL \ji|Add6~0_combout\ : std_logic;
SIGNAL \ji|ff~1_combout\ : std_logic;
SIGNAL \ji|f~1_combout\ : std_logic;
SIGNAL \p1|always0~0_combout\ : std_logic;
SIGNAL \p1|display[2]~7_combout\ : std_logic;
SIGNAL \p1|display[2]~30_combout\ : std_logic;
SIGNAL \p1|Mux55~6_combout\ : std_logic;
SIGNAL \p1|Mux19~3_combout\ : std_logic;
SIGNAL \ji|a[0]~3_combout\ : std_logic;
SIGNAL \ji|a[2]~1_combout\ : std_logic;
SIGNAL \ji|a~2_combout\ : std_logic;
SIGNAL \ji|a[1]~feeder_combout\ : std_logic;
SIGNAL \ji|a~0_combout\ : std_logic;
SIGNAL \ji|Equal8~0_combout\ : std_logic;
SIGNAL \ji|b[2]~0_combout\ : std_logic;
SIGNAL \ji|b[1]~1_combout\ : std_logic;
SIGNAL \ji|b[0]~2_combout\ : std_logic;
SIGNAL \ji|always1~0_combout\ : std_logic;
SIGNAL \ji|always1~5_combout\ : std_logic;
SIGNAL \ji|cc~5_combout\ : std_logic;
SIGNAL \ji|c~2_combout\ : std_logic;
SIGNAL \ji|cc[0]~2_combout\ : std_logic;
SIGNAL \ji|cc~6_combout\ : std_logic;
SIGNAL \ji|c~3_combout\ : std_logic;
SIGNAL \ji|Add3~0_combout\ : std_logic;
SIGNAL \ji|cc~3_combout\ : std_logic;
SIGNAL \ji|c~0_combout\ : std_logic;
SIGNAL \ji|Equal10~0_combout\ : std_logic;
SIGNAL \ji|d[0]~2_combout\ : std_logic;
SIGNAL \ji|d[1]~1_combout\ : std_logic;
SIGNAL \ji|Add4~0_combout\ : std_logic;
SIGNAL \ji|d[2]~0_combout\ : std_logic;
SIGNAL \p1|display[2]~16_combout\ : std_logic;
SIGNAL \p1|display[2]~18_combout\ : std_logic;
SIGNAL \p1|display[2]~17_combout\ : std_logic;
SIGNAL \p1|Mux55~3_combout\ : std_logic;
SIGNAL \p1|Mux55~4_combout\ : std_logic;
SIGNAL \ji|Add3~1_combout\ : std_logic;
SIGNAL \ji|cc~4_combout\ : std_logic;
SIGNAL \ji|c~1_combout\ : std_logic;
SIGNAL \p1|display[2]~10_combout\ : std_logic;
SIGNAL \p1|display[2]~11_combout\ : std_logic;
SIGNAL \p1|display[2]~14_combout\ : std_logic;
SIGNAL \p1|display[2]~15_combout\ : std_logic;
SIGNAL \p1|display[2]~8_combout\ : std_logic;
SIGNAL \p1|display[2]~9_combout\ : std_logic;
SIGNAL \p1|Mux55~9_combout\ : std_logic;
SIGNAL \p1|Mux55~10_combout\ : std_logic;
SIGNAL \p1|Mux55~2_combout\ : std_logic;
SIGNAL \p1|Mux55~7_combout\ : std_logic;
SIGNAL \ji|Add4~1_combout\ : std_logic;
SIGNAL \ji|d[3]~3_combout\ : std_logic;
SIGNAL \p1|display[2]~22_combout\ : std_logic;
SIGNAL \p1|display[2]~23_combout\ : std_logic;
SIGNAL \p1|Mux35~0_combout\ : std_logic;
SIGNAL \p1|display[2]~20_combout\ : std_logic;
SIGNAL \p1|display[2]~21_combout\ : std_logic;
SIGNAL \p1|display[2]~29_combout\ : std_logic;
SIGNAL \p1|display[2]~19_combout\ : std_logic;
SIGNAL \p1|display[2]~24_combout\ : std_logic;
SIGNAL \p3|Mux41~6_combout\ : std_logic;
SIGNAL \p3|display[0]~14_combout\ : std_logic;
SIGNAL \p3|Mux41~7_combout\ : std_logic;
SIGNAL \p3|Mux41~3_combout\ : std_logic;
SIGNAL \p3|Mux41~1_combout\ : std_logic;
SIGNAL \p3|Mux41~0_combout\ : std_logic;
SIGNAL \p3|Mux41~2_combout\ : std_logic;
SIGNAL \p3|Mux41~4_combout\ : std_logic;
SIGNAL \p3|Mux41~8_combout\ : std_logic;
SIGNAL \p3|Mux41~9_combout\ : std_logic;
SIGNAL \p3|always0~1_combout\ : std_logic;
SIGNAL \p3|Mux41~10_combout\ : std_logic;
SIGNAL \p3|Mux41~11_combout\ : std_logic;
SIGNAL \mc|Mux14~0_combout\ : std_logic;
SIGNAL \p1|display[2]~28_combout\ : std_logic;
SIGNAL \p1|Mux26~0_combout\ : std_logic;
SIGNAL \p1|Mux54~2_combout\ : std_logic;
SIGNAL \p1|Mux19~1_combout\ : std_logic;
SIGNAL \p1|Mux19~0_combout\ : std_logic;
SIGNAL \p1|Mux19~2_combout\ : std_logic;
SIGNAL \p1|Mux12~0_combout\ : std_logic;
SIGNAL \p1|Mux12~1_combout\ : std_logic;
SIGNAL \p1|Mux5~0_combout\ : std_logic;
SIGNAL \p1|Mux5~1_combout\ : std_logic;
SIGNAL \p1|Mux54~0_combout\ : std_logic;
SIGNAL \p1|Mux54~1_combout\ : std_logic;
SIGNAL \p1|Mux54~8_combout\ : std_logic;
SIGNAL \p2|display[1]~11_combout\ : std_logic;
SIGNAL \pao|k1~0_combout\ : std_logic;
SIGNAL \pao|k1[0]~1_combout\ : std_logic;
SIGNAL \pao|k1~2_combout\ : std_logic;
SIGNAL \p3|Equal2~1_combout\ : std_logic;
SIGNAL \pao|k2k~0_combout\ : std_logic;
SIGNAL \pao|k2k~regout\ : std_logic;
SIGNAL \pao|k2[0]~2_combout\ : std_logic;
SIGNAL \pao|always1~0_combout\ : std_logic;
SIGNAL \pao|a~2_combout\ : std_logic;
SIGNAL \pao|a[3]~1_combout\ : std_logic;
SIGNAL \pao|always1~1_combout\ : std_logic;
SIGNAL \pao|a~4_combout\ : std_logic;
SIGNAL \pao|Add2~1_combout\ : std_logic;
SIGNAL \pao|a~3_combout\ : std_logic;
SIGNAL \pao|b~0_combout\ : std_logic;
SIGNAL \pao|b[3]~1_combout\ : std_logic;
SIGNAL \pao|c[0]~2_combout\ : std_logic;
SIGNAL \pao|b~3_combout\ : std_logic;
SIGNAL \pao|b~2_combout\ : std_logic;
SIGNAL \pao|Add3~0_combout\ : std_logic;
SIGNAL \pao|b~4_combout\ : std_logic;
SIGNAL \pao|always1~3_combout\ : std_logic;
SIGNAL \pao|c[0]~3_combout\ : std_logic;
SIGNAL \pao|c[0]~9_combout\ : std_logic;
SIGNAL \pao|c[3]~4_combout\ : std_logic;
SIGNAL \pao|c[3]~8_combout\ : std_logic;
SIGNAL \pao|c[1]~5_combout\ : std_logic;
SIGNAL \pao|c[0]~7_combout\ : std_logic;
SIGNAL \pao|Equal7~0_combout\ : std_logic;
SIGNAL \pao|d~4_combout\ : std_logic;
SIGNAL \pao|d[0]~1_combout\ : std_logic;
SIGNAL \pao|d~0_combout\ : std_logic;
SIGNAL \pao|e[0]~8_combout\ : std_logic;
SIGNAL \pao|d~2_combout\ : std_logic;
SIGNAL \pao|always1~2_combout\ : std_logic;
SIGNAL \pao|e[0]~2_combout\ : std_logic;
SIGNAL \pao|e[0]~9_combout\ : std_logic;
SIGNAL \pao|e[1]~7_combout\ : std_logic;
SIGNAL \pao|e[0]~5_combout\ : std_logic;
SIGNAL \pao|Equal9~0_combout\ : std_logic;
SIGNAL \pao|e[3]~3_combout\ : std_logic;
SIGNAL \pao|e[2]~6_combout\ : std_logic;
SIGNAL \p2|display[1]~2_combout\ : std_logic;
SIGNAL \p2|display[1]~1_combout\ : std_logic;
SIGNAL \p2|display[1]~3_combout\ : std_logic;
SIGNAL \p2|Mux47~0_combout\ : std_logic;
SIGNAL \pao|d~3_combout\ : std_logic;
SIGNAL \p2|display[1]~9_combout\ : std_logic;
SIGNAL \p2|display[1]~10_combout\ : std_logic;
SIGNAL \p2|display[1]~4_combout\ : std_logic;
SIGNAL \p2|display[1]~5_combout\ : std_logic;
SIGNAL \p2|display[1]~6_combout\ : std_logic;
SIGNAL \p2|Mux47~1_combout\ : std_logic;
SIGNAL \p2|Mux47~2_combout\ : std_logic;
SIGNAL \p2|display[1]~20_combout\ : std_logic;
SIGNAL \p2|display[1]~12_combout\ : std_logic;
SIGNAL \pao|f~6_combout\ : std_logic;
SIGNAL \pao|f[0]~2_combout\ : std_logic;
SIGNAL \pao|f[0]~3_combout\ : std_logic;
SIGNAL \pao|f~5_combout\ : std_logic;
SIGNAL \pao|f[0]~0_combout\ : std_logic;
SIGNAL \pao|f~1_combout\ : std_logic;
SIGNAL \pao|f~4_combout\ : std_logic;
SIGNAL \p2|display[1]~7_combout\ : std_logic;
SIGNAL \p2|display[1]~8_combout\ : std_logic;
SIGNAL \p2|display[1]~13_combout\ : std_logic;
SIGNAL \pao|a~0_combout\ : std_logic;
SIGNAL \pao|e[3]~4_combout\ : std_logic;
SIGNAL \p2|display[1]~0_combout\ : std_logic;
SIGNAL \p2|display[1]~18_combout\ : std_logic;
SIGNAL \p2|display[1]~15_combout\ : std_logic;
SIGNAL \p2|display[1]~16_combout\ : std_logic;
SIGNAL \p2|display[1]~17_combout\ : std_logic;
SIGNAL \p2|display[1]~19_combout\ : std_logic;
SIGNAL \p2|display[1]~21_combout\ : std_logic;
SIGNAL \mc|Mux13~0_combout\ : std_logic;
SIGNAL \p1|Mux53~0_combout\ : std_logic;
SIGNAL \p1|Mux55~5_combout\ : std_logic;
SIGNAL \p1|Mux53~1_combout\ : std_logic;
SIGNAL \p1|Mux53~2_combout\ : std_logic;
SIGNAL \p1|Mux53~3_combout\ : std_logic;
SIGNAL \p3|Mux42~0_combout\ : std_logic;
SIGNAL \p3|display[0]~6_combout\ : std_logic;
SIGNAL \p3|Mux42~1_combout\ : std_logic;
SIGNAL \p3|display[0]~11_combout\ : std_logic;
SIGNAL \p3|Mux39~0_combout\ : std_logic;
SIGNAL \p3|Mux39~1_combout\ : std_logic;
SIGNAL \p3|Mux39~2_combout\ : std_logic;
SIGNAL \mc|Mux12~0_combout\ : std_logic;
SIGNAL \p1|Mux52~0_combout\ : std_logic;
SIGNAL \p1|Mux52~1_combout\ : std_logic;
SIGNAL \p3|Mux42~4_combout\ : std_logic;
SIGNAL \p3|Mux38~0_combout\ : std_logic;
SIGNAL \p3|Mux38~1_combout\ : std_logic;
SIGNAL \p3|Mux38~2_combout\ : std_logic;
SIGNAL \p3|Mux38~3_combout\ : std_logic;
SIGNAL \mc|Mux11~0_combout\ : std_logic;
SIGNAL \p1|Mux51~0_combout\ : std_logic;
SIGNAL \p1|Mux51~1_combout\ : std_logic;
SIGNAL \p1|Mux51~2_combout\ : std_logic;
SIGNAL \p2|Mux44~1_combout\ : std_logic;
SIGNAL \p2|Mux49~0_combout\ : std_logic;
SIGNAL \p2|Mux45~0_combout\ : std_logic;
SIGNAL \p2|Mux44~0_combout\ : std_logic;
SIGNAL \p2|Mux44~2_combout\ : std_logic;
SIGNAL \mc|Mux10~0_combout\ : std_logic;
SIGNAL \p1|Mux50~2_combout\ : std_logic;
SIGNAL \p1|Mux50~1_combout\ : std_logic;
SIGNAL \p1|Mux50~0_combout\ : std_logic;
SIGNAL \p1|Mux50~3_combout\ : std_logic;
SIGNAL \p2|Mux43~7_combout\ : std_logic;
SIGNAL \p2|Mux7~0_combout\ : std_logic;
SIGNAL \p2|Mux43~4_combout\ : std_logic;
SIGNAL \p2|Mux43~8_combout\ : std_logic;
SIGNAL \p2|Mux43~3_combout\ : std_logic;
SIGNAL \p2|Mux43~5_combout\ : std_logic;
SIGNAL \p2|Mux43~2_combout\ : std_logic;
SIGNAL \p2|Mux43~6_combout\ : std_logic;
SIGNAL \p2|Mux43~9_combout\ : std_logic;
SIGNAL \mc|Mux9~0_combout\ : std_logic;
SIGNAL \p1|Mux49~3_combout\ : std_logic;
SIGNAL \p1|Mux49~4_combout\ : std_logic;
SIGNAL \p1|Mux54~3_combout\ : std_logic;
SIGNAL \p1|Mux28~0_combout\ : std_logic;
SIGNAL \p1|Mux28~1_combout\ : std_logic;
SIGNAL \p1|Mux35~2_combout\ : std_logic;
SIGNAL \p1|Mux49~2_combout\ : std_logic;
SIGNAL \p1|Mux14~0_combout\ : std_logic;
SIGNAL \p1|Mux14~1_combout\ : std_logic;
SIGNAL \p1|Mux0~0_combout\ : std_logic;
SIGNAL \p1|Mux0~1_combout\ : std_logic;
SIGNAL \ji|b[3]~3_combout\ : std_logic;
SIGNAL \p1|Mux7~0_combout\ : std_logic;
SIGNAL \p1|Mux49~0_combout\ : std_logic;
SIGNAL \p1|Mux49~1_combout\ : std_logic;
SIGNAL \p1|Mux49~5_combout\ : std_logic;
SIGNAL \p2|Mux42~0_combout\ : std_logic;
SIGNAL \p2|Mux42~1_combout\ : std_logic;
SIGNAL \p2|Mux42~2_combout\ : std_logic;
SIGNAL \p2|Mux42~3_combout\ : std_logic;
SIGNAL \p2|Mux42~4_combout\ : std_logic;
SIGNAL \p2|Mux42~5_combout\ : std_logic;
SIGNAL \p2|Mux42~7_combout\ : std_logic;
SIGNAL \p2|Mux42~8_combout\ : std_logic;
SIGNAL \mc|Mux8~0_combout\ : std_logic;
SIGNAL \p1|WideOr5~0_combout\ : std_logic;
SIGNAL \p1|Mux54~5_combout\ : std_logic;
SIGNAL \p1|Mux48~0_combout\ : std_logic;
SIGNAL \p1|Mux48~2_combout\ : std_logic;
SIGNAL \p1|Mux48~5_combout\ : std_logic;
SIGNAL \mc|Mux7~0_combout\ : std_logic;
SIGNAL \p1|led_dig[0]~feeder_combout\ : std_logic;
SIGNAL \p1|led_dig[1]~0_combout\ : std_logic;
SIGNAL \p2|display[1]~23_combout\ : std_logic;
SIGNAL \p2|led_dig[1]~feeder_combout\ : std_logic;
SIGNAL \p2|display[1]~22_combout\ : std_logic;
SIGNAL \p3|led_dig[1]~feeder_combout\ : std_logic;
SIGNAL \mc|Mux6~0_combout\ : std_logic;
SIGNAL \p1|led_dig[1]~feeder_combout\ : std_logic;
SIGNAL \p2|led_dig[3]~feeder_combout\ : std_logic;
SIGNAL \mc|Mux5~0_combout\ : std_logic;
SIGNAL \p1|led_dig[2]~1_combout\ : std_logic;
SIGNAL \mc|Mux4~0_combout\ : std_logic;
SIGNAL \p1|led_dig[3]~feeder_combout\ : std_logic;
SIGNAL \mc|Mux3~0_combout\ : std_logic;
SIGNAL \p1|led_dig[4]~feeder_combout\ : std_logic;
SIGNAL \p3|Mux35~0_combout\ : std_logic;
SIGNAL \p3|led_dig[5]~feeder_combout\ : std_logic;
SIGNAL \mc|Mux2~0_combout\ : std_logic;
SIGNAL \p1|led_dig[5]~feeder_combout\ : std_logic;
SIGNAL \mc|Mux1~0_combout\ : std_logic;
SIGNAL \p2|Mux35~0_combout\ : std_logic;
SIGNAL \mc|Mux0~0_combout\ : std_logic;
SIGNAL \p1|led_dig[7]~feeder_combout\ : std_logic;
SIGNAL \p4|r[0]~1_combout\ : std_logic;
SIGNAL \nao|always0~8_combout\ : std_logic;
SIGNAL \nao|always0~2_combout\ : std_logic;
SIGNAL \nao|always0~0_combout\ : std_logic;
SIGNAL \nao|always0~3_combout\ : std_logic;
SIGNAL \nao|always0~4_combout\ : std_logic;
SIGNAL \nao|Equal2~0_combout\ : std_logic;
SIGNAL \nao|always0~5_combout\ : std_logic;
SIGNAL \nao|always0~6_combout\ : std_logic;
SIGNAL \nao|always0~9_combout\ : std_logic;
SIGNAL \nao|linerow~regout\ : std_logic;
SIGNAL \p4|Add0~0_combout\ : std_logic;
SIGNAL \p4|line~0_combout\ : std_logic;
SIGNAL \p4|line~1_combout\ : std_logic;
SIGNAL \p4|line~2_combout\ : std_logic;
SIGNAL \p4|line~3_combout\ : std_logic;
SIGNAL \p4|line~4_combout\ : std_logic;
SIGNAL \p4|line~5_combout\ : std_logic;
SIGNAL \p4|line~6_combout\ : std_logic;
SIGNAL \p4|line~7_combout\ : std_logic;
SIGNAL \p4|r[2]~0_combout\ : std_logic;
SIGNAL \p4|row~0_combout\ : std_logic;
SIGNAL \p4|row~0_wirecell_combout\ : std_logic;
SIGNAL \p4|row~1_combout\ : std_logic;
SIGNAL \p4|row~2_combout\ : std_logic;
SIGNAL \nao|k1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \nao|ff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nao|ee\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nao|dd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nao|cc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p3|led_dig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p3|display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p4|row\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p4|r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p4|line\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pao|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|led_dig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ji|a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pao|a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|cc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pao|f\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|ff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pao|d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|ee\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p2|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pao|k1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ji|k1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \p2|display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fen|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p1|led_dig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fen|j\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p1|o\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fen|k\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ji|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pao|k2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pao|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|e\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pao|e\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ji|f\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|mkoo\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mc|lego\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mc|diso\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|ALT_INV_o\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \p2|ALT_INV_o\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \nao|ALT_INV_linerow~regout\ : std_logic;
SIGNAL \comb_3|ALT_INV_mkoo\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_modkey <= modkey;
ww_key1 <= key1;
ww_key2 <= key2;
dis <= ww_dis;
leg <= ww_leg;
line <= ww_line;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fen|f1Hz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \fen|f1Hz~regout\);

\fen|f100Hz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \fen|f100Hz~regout\);

\fen|f~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \fen|f~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\p1|ALT_INV_o\(2) <= NOT \p1|o\(2);
\p2|ALT_INV_o\(2) <= NOT \p2|o\(2);
\nao|ALT_INV_linerow~regout\ <= NOT \nao|linerow~regout\;
\comb_3|ALT_INV_mkoo\(0) <= NOT \comb_3|mkoo\(0);

-- Location: LCFF_X21_Y15_N17
\p2|led_dig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|led_dig[2]~feeder_combout\,
	sdata => VCC,
	sload => \p2|o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(2));

-- Location: LCFF_X16_Y14_N15
\p2|led_dig[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|led_dig[4]~feeder_combout\,
	sdata => VCC,
	sload => \p2|ALT_INV_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(4));

-- Location: LCFF_X16_Y14_N13
\p3|led_dig[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|led_dig[7]~feeder_combout\,
	sdata => VCC,
	sload => \p2|ALT_INV_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|led_dig\(7));

-- Location: LCCOMB_X5_Y7_N10
\fen|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~10_combout\ = (\fen|k\(5) & (!\fen|Add2~9\)) # (!\fen|k\(5) & ((\fen|Add2~9\) # (GND)))
-- \fen|Add2~11\ = CARRY((!\fen|Add2~9\) # (!\fen|k\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(5),
	datad => VCC,
	cin => \fen|Add2~9\,
	combout => \fen|Add2~10_combout\,
	cout => \fen|Add2~11\);

-- Location: LCCOMB_X5_Y7_N12
\fen|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~12_combout\ = (\fen|k\(6) & (\fen|Add2~11\ $ (GND))) # (!\fen|k\(6) & (!\fen|Add2~11\ & VCC))
-- \fen|Add2~13\ = CARRY((\fen|k\(6) & !\fen|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(6),
	datad => VCC,
	cin => \fen|Add2~11\,
	combout => \fen|Add2~12_combout\,
	cout => \fen|Add2~13\);

-- Location: LCCOMB_X5_Y7_N14
\fen|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~14_combout\ = (\fen|k\(7) & (!\fen|Add2~13\)) # (!\fen|k\(7) & ((\fen|Add2~13\) # (GND)))
-- \fen|Add2~15\ = CARRY((!\fen|Add2~13\) # (!\fen|k\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(7),
	datad => VCC,
	cin => \fen|Add2~13\,
	combout => \fen|Add2~14_combout\,
	cout => \fen|Add2~15\);

-- Location: LCCOMB_X5_Y6_N10
\fen|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~42_combout\ = (\fen|k\(21) & (!\fen|Add2~41\)) # (!\fen|k\(21) & ((\fen|Add2~41\) # (GND)))
-- \fen|Add2~43\ = CARRY((!\fen|Add2~41\) # (!\fen|k\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(21),
	datad => VCC,
	cin => \fen|Add2~41\,
	combout => \fen|Add2~42_combout\,
	cout => \fen|Add2~43\);

-- Location: LCCOMB_X5_Y6_N16
\fen|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~48_combout\ = (\fen|k\(24) & (\fen|Add2~47\ $ (GND))) # (!\fen|k\(24) & (!\fen|Add2~47\ & VCC))
-- \fen|Add2~49\ = CARRY((\fen|k\(24) & !\fen|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(24),
	datad => VCC,
	cin => \fen|Add2~47\,
	combout => \fen|Add2~48_combout\,
	cout => \fen|Add2~49\);

-- Location: LCCOMB_X5_Y6_N20
\fen|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~52_combout\ = (\fen|k\(26) & (\fen|Add2~51\ $ (GND))) # (!\fen|k\(26) & (!\fen|Add2~51\ & VCC))
-- \fen|Add2~53\ = CARRY((\fen|k\(26) & !\fen|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(26),
	datad => VCC,
	cin => \fen|Add2~51\,
	combout => \fen|Add2~52_combout\,
	cout => \fen|Add2~53\);

-- Location: LCCOMB_X5_Y6_N24
\fen|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~56_combout\ = (\fen|k\(28) & (\fen|Add2~55\ $ (GND))) # (!\fen|k\(28) & (!\fen|Add2~55\ & VCC))
-- \fen|Add2~57\ = CARRY((\fen|k\(28) & !\fen|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(28),
	datad => VCC,
	cin => \fen|Add2~55\,
	combout => \fen|Add2~56_combout\,
	cout => \fen|Add2~57\);

-- Location: LCCOMB_X15_Y17_N10
\p1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~10_combout\ = (\p1|i\(5) & (!\p1|Add0~9\)) # (!\p1|i\(5) & ((\p1|Add0~9\) # (GND)))
-- \p1|Add0~11\ = CARRY((!\p1|Add0~9\) # (!\p1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(5),
	datad => VCC,
	cin => \p1|Add0~9\,
	combout => \p1|Add0~10_combout\,
	cout => \p1|Add0~11\);

-- Location: LCCOMB_X15_Y17_N12
\p1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~12_combout\ = (\p1|i\(6) & (\p1|Add0~11\ $ (GND))) # (!\p1|i\(6) & (!\p1|Add0~11\ & VCC))
-- \p1|Add0~13\ = CARRY((\p1|i\(6) & !\p1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(6),
	datad => VCC,
	cin => \p1|Add0~11\,
	combout => \p1|Add0~12_combout\,
	cout => \p1|Add0~13\);

-- Location: LCCOMB_X15_Y17_N16
\p1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~16_combout\ = (\p1|i\(8) & (\p1|Add0~15\ $ (GND))) # (!\p1|i\(8) & (!\p1|Add0~15\ & VCC))
-- \p1|Add0~17\ = CARRY((\p1|i\(8) & !\p1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(8),
	datad => VCC,
	cin => \p1|Add0~15\,
	combout => \p1|Add0~16_combout\,
	cout => \p1|Add0~17\);

-- Location: LCCOMB_X15_Y17_N20
\p1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~20_combout\ = (\p1|i\(10) & (\p1|Add0~19\ $ (GND))) # (!\p1|i\(10) & (!\p1|Add0~19\ & VCC))
-- \p1|Add0~21\ = CARRY((\p1|i\(10) & !\p1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(10),
	datad => VCC,
	cin => \p1|Add0~19\,
	combout => \p1|Add0~20_combout\,
	cout => \p1|Add0~21\);

-- Location: LCCOMB_X15_Y16_N6
\p1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~38_combout\ = (\p1|i\(19) & (!\p1|Add0~37\)) # (!\p1|i\(19) & ((\p1|Add0~37\) # (GND)))
-- \p1|Add0~39\ = CARRY((!\p1|Add0~37\) # (!\p1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(19),
	datad => VCC,
	cin => \p1|Add0~37\,
	combout => \p1|Add0~38_combout\,
	cout => \p1|Add0~39\);

-- Location: LCCOMB_X15_Y16_N20
\p1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~52_combout\ = (\p1|i\(26) & (\p1|Add0~51\ $ (GND))) # (!\p1|i\(26) & (!\p1|Add0~51\ & VCC))
-- \p1|Add0~53\ = CARRY((\p1|i\(26) & !\p1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(26),
	datad => VCC,
	cin => \p1|Add0~51\,
	combout => \p1|Add0~52_combout\,
	cout => \p1|Add0~53\);

-- Location: LCCOMB_X15_Y16_N28
\p1|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~60_combout\ = (\p1|i\(30) & (\p1|Add0~59\ $ (GND))) # (!\p1|i\(30) & (!\p1|Add0~59\ & VCC))
-- \p1|Add0~61\ = CARRY((\p1|i\(30) & !\p1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(30),
	datad => VCC,
	cin => \p1|Add0~59\,
	combout => \p1|Add0~60_combout\,
	cout => \p1|Add0~61\);

-- Location: LCCOMB_X15_Y16_N30
\p1|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~62_combout\ = \p1|Add0~61\ $ (\p1|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p1|i\(31),
	cin => \p1|Add0~61\,
	combout => \p1|Add0~62_combout\);

-- Location: LCCOMB_X3_Y8_N2
\fen|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~1_cout\ = CARRY((\fen|k\(0) & \fen|k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(0),
	datab => \fen|k\(1),
	datad => VCC,
	cout => \fen|Add0~1_cout\);

-- Location: LCCOMB_X3_Y8_N4
\fen|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~3_cout\ = CARRY((!\fen|Add0~1_cout\) # (!\fen|k\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(2),
	datad => VCC,
	cin => \fen|Add0~1_cout\,
	cout => \fen|Add0~3_cout\);

-- Location: LCCOMB_X3_Y8_N6
\fen|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~4_combout\ = (\fen|i\(3) & (\fen|Add0~3_cout\ $ (GND))) # (!\fen|i\(3) & (!\fen|Add0~3_cout\ & VCC))
-- \fen|Add0~5\ = CARRY((\fen|i\(3) & !\fen|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(3),
	datad => VCC,
	cin => \fen|Add0~3_cout\,
	combout => \fen|Add0~4_combout\,
	cout => \fen|Add0~5\);

-- Location: LCCOMB_X3_Y8_N8
\fen|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~6_combout\ = (\fen|i\(4) & (!\fen|Add0~5\)) # (!\fen|i\(4) & ((\fen|Add0~5\) # (GND)))
-- \fen|Add0~7\ = CARRY((!\fen|Add0~5\) # (!\fen|i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(4),
	datad => VCC,
	cin => \fen|Add0~5\,
	combout => \fen|Add0~6_combout\,
	cout => \fen|Add0~7\);

-- Location: LCCOMB_X3_Y8_N10
\fen|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~8_combout\ = (\fen|i\(5) & (\fen|Add0~7\ $ (GND))) # (!\fen|i\(5) & (!\fen|Add0~7\ & VCC))
-- \fen|Add0~9\ = CARRY((\fen|i\(5) & !\fen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(5),
	datad => VCC,
	cin => \fen|Add0~7\,
	combout => \fen|Add0~8_combout\,
	cout => \fen|Add0~9\);

-- Location: LCCOMB_X3_Y8_N12
\fen|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~10_combout\ = (\fen|i\(6) & (!\fen|Add0~9\)) # (!\fen|i\(6) & ((\fen|Add0~9\) # (GND)))
-- \fen|Add0~11\ = CARRY((!\fen|Add0~9\) # (!\fen|i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(6),
	datad => VCC,
	cin => \fen|Add0~9\,
	combout => \fen|Add0~10_combout\,
	cout => \fen|Add0~11\);

-- Location: LCCOMB_X3_Y8_N14
\fen|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~12_combout\ = (\fen|i\(7) & (\fen|Add0~11\ $ (GND))) # (!\fen|i\(7) & (!\fen|Add0~11\ & VCC))
-- \fen|Add0~13\ = CARRY((\fen|i\(7) & !\fen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(7),
	datad => VCC,
	cin => \fen|Add0~11\,
	combout => \fen|Add0~12_combout\,
	cout => \fen|Add0~13\);

-- Location: LCCOMB_X3_Y8_N16
\fen|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~14_combout\ = (\fen|i\(8) & (!\fen|Add0~13\)) # (!\fen|i\(8) & ((\fen|Add0~13\) # (GND)))
-- \fen|Add0~15\ = CARRY((!\fen|Add0~13\) # (!\fen|i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(8),
	datad => VCC,
	cin => \fen|Add0~13\,
	combout => \fen|Add0~14_combout\,
	cout => \fen|Add0~15\);

-- Location: LCCOMB_X3_Y8_N18
\fen|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~16_combout\ = (\fen|i\(9) & (\fen|Add0~15\ $ (GND))) # (!\fen|i\(9) & (!\fen|Add0~15\ & VCC))
-- \fen|Add0~17\ = CARRY((\fen|i\(9) & !\fen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(9),
	datad => VCC,
	cin => \fen|Add0~15\,
	combout => \fen|Add0~16_combout\,
	cout => \fen|Add0~17\);

-- Location: LCCOMB_X3_Y8_N20
\fen|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~18_combout\ = (\fen|i\(10) & (!\fen|Add0~17\)) # (!\fen|i\(10) & ((\fen|Add0~17\) # (GND)))
-- \fen|Add0~19\ = CARRY((!\fen|Add0~17\) # (!\fen|i\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(10),
	datad => VCC,
	cin => \fen|Add0~17\,
	combout => \fen|Add0~18_combout\,
	cout => \fen|Add0~19\);

-- Location: LCCOMB_X3_Y8_N22
\fen|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~20_combout\ = (\fen|i\(11) & (\fen|Add0~19\ $ (GND))) # (!\fen|i\(11) & (!\fen|Add0~19\ & VCC))
-- \fen|Add0~21\ = CARRY((\fen|i\(11) & !\fen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(11),
	datad => VCC,
	cin => \fen|Add0~19\,
	combout => \fen|Add0~20_combout\,
	cout => \fen|Add0~21\);

-- Location: LCCOMB_X3_Y8_N24
\fen|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~22_combout\ = (\fen|i\(12) & (!\fen|Add0~21\)) # (!\fen|i\(12) & ((\fen|Add0~21\) # (GND)))
-- \fen|Add0~23\ = CARRY((!\fen|Add0~21\) # (!\fen|i\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(12),
	datad => VCC,
	cin => \fen|Add0~21\,
	combout => \fen|Add0~22_combout\,
	cout => \fen|Add0~23\);

-- Location: LCCOMB_X3_Y8_N26
\fen|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~24_combout\ = (\fen|i\(13) & (\fen|Add0~23\ $ (GND))) # (!\fen|i\(13) & (!\fen|Add0~23\ & VCC))
-- \fen|Add0~25\ = CARRY((\fen|i\(13) & !\fen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(13),
	datad => VCC,
	cin => \fen|Add0~23\,
	combout => \fen|Add0~24_combout\,
	cout => \fen|Add0~25\);

-- Location: LCCOMB_X3_Y8_N28
\fen|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~26_combout\ = (\fen|i\(14) & (!\fen|Add0~25\)) # (!\fen|i\(14) & ((\fen|Add0~25\) # (GND)))
-- \fen|Add0~27\ = CARRY((!\fen|Add0~25\) # (!\fen|i\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(14),
	datad => VCC,
	cin => \fen|Add0~25\,
	combout => \fen|Add0~26_combout\,
	cout => \fen|Add0~27\);

-- Location: LCCOMB_X3_Y8_N30
\fen|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~28_combout\ = (\fen|i\(15) & (\fen|Add0~27\ $ (GND))) # (!\fen|i\(15) & (!\fen|Add0~27\ & VCC))
-- \fen|Add0~29\ = CARRY((\fen|i\(15) & !\fen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(15),
	datad => VCC,
	cin => \fen|Add0~27\,
	combout => \fen|Add0~28_combout\,
	cout => \fen|Add0~29\);

-- Location: LCCOMB_X3_Y7_N0
\fen|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~30_combout\ = (\fen|i\(16) & (!\fen|Add0~29\)) # (!\fen|i\(16) & ((\fen|Add0~29\) # (GND)))
-- \fen|Add0~31\ = CARRY((!\fen|Add0~29\) # (!\fen|i\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(16),
	datad => VCC,
	cin => \fen|Add0~29\,
	combout => \fen|Add0~30_combout\,
	cout => \fen|Add0~31\);

-- Location: LCCOMB_X3_Y7_N2
\fen|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~32_combout\ = (\fen|i\(17) & (\fen|Add0~31\ $ (GND))) # (!\fen|i\(17) & (!\fen|Add0~31\ & VCC))
-- \fen|Add0~33\ = CARRY((\fen|i\(17) & !\fen|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(17),
	datad => VCC,
	cin => \fen|Add0~31\,
	combout => \fen|Add0~32_combout\,
	cout => \fen|Add0~33\);

-- Location: LCCOMB_X3_Y7_N4
\fen|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~34_combout\ = (\fen|i\(18) & (!\fen|Add0~33\)) # (!\fen|i\(18) & ((\fen|Add0~33\) # (GND)))
-- \fen|Add0~35\ = CARRY((!\fen|Add0~33\) # (!\fen|i\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(18),
	datad => VCC,
	cin => \fen|Add0~33\,
	combout => \fen|Add0~34_combout\,
	cout => \fen|Add0~35\);

-- Location: LCCOMB_X3_Y7_N6
\fen|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~36_combout\ = (\fen|i\(19) & (\fen|Add0~35\ $ (GND))) # (!\fen|i\(19) & (!\fen|Add0~35\ & VCC))
-- \fen|Add0~37\ = CARRY((\fen|i\(19) & !\fen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(19),
	datad => VCC,
	cin => \fen|Add0~35\,
	combout => \fen|Add0~36_combout\,
	cout => \fen|Add0~37\);

-- Location: LCCOMB_X3_Y7_N8
\fen|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~38_combout\ = (\fen|i\(20) & (!\fen|Add0~37\)) # (!\fen|i\(20) & ((\fen|Add0~37\) # (GND)))
-- \fen|Add0~39\ = CARRY((!\fen|Add0~37\) # (!\fen|i\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(20),
	datad => VCC,
	cin => \fen|Add0~37\,
	combout => \fen|Add0~38_combout\,
	cout => \fen|Add0~39\);

-- Location: LCCOMB_X3_Y7_N10
\fen|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~40_combout\ = (\fen|i\(21) & (\fen|Add0~39\ $ (GND))) # (!\fen|i\(21) & (!\fen|Add0~39\ & VCC))
-- \fen|Add0~41\ = CARRY((\fen|i\(21) & !\fen|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(21),
	datad => VCC,
	cin => \fen|Add0~39\,
	combout => \fen|Add0~40_combout\,
	cout => \fen|Add0~41\);

-- Location: LCCOMB_X3_Y7_N12
\fen|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~42_combout\ = (\fen|i\(22) & (!\fen|Add0~41\)) # (!\fen|i\(22) & ((\fen|Add0~41\) # (GND)))
-- \fen|Add0~43\ = CARRY((!\fen|Add0~41\) # (!\fen|i\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(22),
	datad => VCC,
	cin => \fen|Add0~41\,
	combout => \fen|Add0~42_combout\,
	cout => \fen|Add0~43\);

-- Location: LCCOMB_X3_Y7_N14
\fen|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~44_combout\ = (\fen|i\(23) & (\fen|Add0~43\ $ (GND))) # (!\fen|i\(23) & (!\fen|Add0~43\ & VCC))
-- \fen|Add0~45\ = CARRY((\fen|i\(23) & !\fen|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(23),
	datad => VCC,
	cin => \fen|Add0~43\,
	combout => \fen|Add0~44_combout\,
	cout => \fen|Add0~45\);

-- Location: LCCOMB_X3_Y7_N16
\fen|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~46_combout\ = (\fen|i\(24) & (!\fen|Add0~45\)) # (!\fen|i\(24) & ((\fen|Add0~45\) # (GND)))
-- \fen|Add0~47\ = CARRY((!\fen|Add0~45\) # (!\fen|i\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(24),
	datad => VCC,
	cin => \fen|Add0~45\,
	combout => \fen|Add0~46_combout\,
	cout => \fen|Add0~47\);

-- Location: LCCOMB_X3_Y7_N18
\fen|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~48_combout\ = (\fen|i\(25) & (\fen|Add0~47\ $ (GND))) # (!\fen|i\(25) & (!\fen|Add0~47\ & VCC))
-- \fen|Add0~49\ = CARRY((\fen|i\(25) & !\fen|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(25),
	datad => VCC,
	cin => \fen|Add0~47\,
	combout => \fen|Add0~48_combout\,
	cout => \fen|Add0~49\);

-- Location: LCCOMB_X3_Y7_N20
\fen|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~50_combout\ = (\fen|i\(26) & (!\fen|Add0~49\)) # (!\fen|i\(26) & ((\fen|Add0~49\) # (GND)))
-- \fen|Add0~51\ = CARRY((!\fen|Add0~49\) # (!\fen|i\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(26),
	datad => VCC,
	cin => \fen|Add0~49\,
	combout => \fen|Add0~50_combout\,
	cout => \fen|Add0~51\);

-- Location: LCCOMB_X3_Y7_N22
\fen|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~52_combout\ = (\fen|i\(27) & (\fen|Add0~51\ $ (GND))) # (!\fen|i\(27) & (!\fen|Add0~51\ & VCC))
-- \fen|Add0~53\ = CARRY((\fen|i\(27) & !\fen|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(27),
	datad => VCC,
	cin => \fen|Add0~51\,
	combout => \fen|Add0~52_combout\,
	cout => \fen|Add0~53\);

-- Location: LCCOMB_X3_Y7_N24
\fen|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~54_combout\ = (\fen|i\(28) & (!\fen|Add0~53\)) # (!\fen|i\(28) & ((\fen|Add0~53\) # (GND)))
-- \fen|Add0~55\ = CARRY((!\fen|Add0~53\) # (!\fen|i\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(28),
	datad => VCC,
	cin => \fen|Add0~53\,
	combout => \fen|Add0~54_combout\,
	cout => \fen|Add0~55\);

-- Location: LCCOMB_X3_Y7_N26
\fen|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~56_combout\ = (\fen|i\(29) & (\fen|Add0~55\ $ (GND))) # (!\fen|i\(29) & (!\fen|Add0~55\ & VCC))
-- \fen|Add0~57\ = CARRY((\fen|i\(29) & !\fen|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(29),
	datad => VCC,
	cin => \fen|Add0~55\,
	combout => \fen|Add0~56_combout\,
	cout => \fen|Add0~57\);

-- Location: LCCOMB_X3_Y7_N28
\fen|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~58_combout\ = (\fen|i\(30) & (!\fen|Add0~57\)) # (!\fen|i\(30) & ((\fen|Add0~57\) # (GND)))
-- \fen|Add0~59\ = CARRY((!\fen|Add0~57\) # (!\fen|i\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(30),
	datad => VCC,
	cin => \fen|Add0~57\,
	combout => \fen|Add0~58_combout\,
	cout => \fen|Add0~59\);

-- Location: LCCOMB_X3_Y7_N30
\fen|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add0~60_combout\ = \fen|Add0~59\ $ (!\fen|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fen|i\(31),
	cin => \fen|Add0~59\,
	combout => \fen|Add0~60_combout\);

-- Location: LCCOMB_X4_Y4_N2
\fen|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~1_cout\ = CARRY((\fen|k\(1) & \fen|k\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(1),
	datab => \fen|k\(0),
	datad => VCC,
	cout => \fen|Add1~1_cout\);

-- Location: LCCOMB_X4_Y4_N4
\fen|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~3_cout\ = CARRY((!\fen|Add1~1_cout\) # (!\fen|k\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(2),
	datad => VCC,
	cin => \fen|Add1~1_cout\,
	cout => \fen|Add1~3_cout\);

-- Location: LCCOMB_X4_Y4_N6
\fen|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~5_cout\ = CARRY((\fen|i\(3) & !\fen|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|i\(3),
	datad => VCC,
	cin => \fen|Add1~3_cout\,
	cout => \fen|Add1~5_cout\);

-- Location: LCCOMB_X4_Y4_N8
\fen|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~6_combout\ = (\fen|j\(4) & (!\fen|Add1~5_cout\)) # (!\fen|j\(4) & ((\fen|Add1~5_cout\) # (GND)))
-- \fen|Add1~7\ = CARRY((!\fen|Add1~5_cout\) # (!\fen|j\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(4),
	datad => VCC,
	cin => \fen|Add1~5_cout\,
	combout => \fen|Add1~6_combout\,
	cout => \fen|Add1~7\);

-- Location: LCCOMB_X4_Y4_N10
\fen|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~8_combout\ = (\fen|j\(5) & (\fen|Add1~7\ $ (GND))) # (!\fen|j\(5) & (!\fen|Add1~7\ & VCC))
-- \fen|Add1~9\ = CARRY((\fen|j\(5) & !\fen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(5),
	datad => VCC,
	cin => \fen|Add1~7\,
	combout => \fen|Add1~8_combout\,
	cout => \fen|Add1~9\);

-- Location: LCCOMB_X4_Y4_N12
\fen|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~10_combout\ = (\fen|j\(6) & (!\fen|Add1~9\)) # (!\fen|j\(6) & ((\fen|Add1~9\) # (GND)))
-- \fen|Add1~11\ = CARRY((!\fen|Add1~9\) # (!\fen|j\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(6),
	datad => VCC,
	cin => \fen|Add1~9\,
	combout => \fen|Add1~10_combout\,
	cout => \fen|Add1~11\);

-- Location: LCCOMB_X4_Y4_N14
\fen|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~12_combout\ = (\fen|j\(7) & (\fen|Add1~11\ $ (GND))) # (!\fen|j\(7) & (!\fen|Add1~11\ & VCC))
-- \fen|Add1~13\ = CARRY((\fen|j\(7) & !\fen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(7),
	datad => VCC,
	cin => \fen|Add1~11\,
	combout => \fen|Add1~12_combout\,
	cout => \fen|Add1~13\);

-- Location: LCCOMB_X4_Y4_N16
\fen|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~14_combout\ = (\fen|j\(8) & (!\fen|Add1~13\)) # (!\fen|j\(8) & ((\fen|Add1~13\) # (GND)))
-- \fen|Add1~15\ = CARRY((!\fen|Add1~13\) # (!\fen|j\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(8),
	datad => VCC,
	cin => \fen|Add1~13\,
	combout => \fen|Add1~14_combout\,
	cout => \fen|Add1~15\);

-- Location: LCCOMB_X4_Y4_N18
\fen|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~16_combout\ = (\fen|j\(9) & (\fen|Add1~15\ $ (GND))) # (!\fen|j\(9) & (!\fen|Add1~15\ & VCC))
-- \fen|Add1~17\ = CARRY((\fen|j\(9) & !\fen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(9),
	datad => VCC,
	cin => \fen|Add1~15\,
	combout => \fen|Add1~16_combout\,
	cout => \fen|Add1~17\);

-- Location: LCCOMB_X4_Y4_N20
\fen|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~18_combout\ = (\fen|j\(10) & (!\fen|Add1~17\)) # (!\fen|j\(10) & ((\fen|Add1~17\) # (GND)))
-- \fen|Add1~19\ = CARRY((!\fen|Add1~17\) # (!\fen|j\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(10),
	datad => VCC,
	cin => \fen|Add1~17\,
	combout => \fen|Add1~18_combout\,
	cout => \fen|Add1~19\);

-- Location: LCCOMB_X4_Y4_N22
\fen|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~20_combout\ = (\fen|j\(11) & (\fen|Add1~19\ $ (GND))) # (!\fen|j\(11) & (!\fen|Add1~19\ & VCC))
-- \fen|Add1~21\ = CARRY((\fen|j\(11) & !\fen|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(11),
	datad => VCC,
	cin => \fen|Add1~19\,
	combout => \fen|Add1~20_combout\,
	cout => \fen|Add1~21\);

-- Location: LCCOMB_X4_Y4_N24
\fen|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~22_combout\ = (\fen|j\(12) & (!\fen|Add1~21\)) # (!\fen|j\(12) & ((\fen|Add1~21\) # (GND)))
-- \fen|Add1~23\ = CARRY((!\fen|Add1~21\) # (!\fen|j\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(12),
	datad => VCC,
	cin => \fen|Add1~21\,
	combout => \fen|Add1~22_combout\,
	cout => \fen|Add1~23\);

-- Location: LCCOMB_X4_Y4_N26
\fen|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~24_combout\ = (\fen|j\(13) & (\fen|Add1~23\ $ (GND))) # (!\fen|j\(13) & (!\fen|Add1~23\ & VCC))
-- \fen|Add1~25\ = CARRY((\fen|j\(13) & !\fen|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(13),
	datad => VCC,
	cin => \fen|Add1~23\,
	combout => \fen|Add1~24_combout\,
	cout => \fen|Add1~25\);

-- Location: LCCOMB_X4_Y4_N28
\fen|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~26_combout\ = (\fen|j\(14) & (!\fen|Add1~25\)) # (!\fen|j\(14) & ((\fen|Add1~25\) # (GND)))
-- \fen|Add1~27\ = CARRY((!\fen|Add1~25\) # (!\fen|j\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(14),
	datad => VCC,
	cin => \fen|Add1~25\,
	combout => \fen|Add1~26_combout\,
	cout => \fen|Add1~27\);

-- Location: LCCOMB_X4_Y4_N30
\fen|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~28_combout\ = (\fen|j\(15) & (\fen|Add1~27\ $ (GND))) # (!\fen|j\(15) & (!\fen|Add1~27\ & VCC))
-- \fen|Add1~29\ = CARRY((\fen|j\(15) & !\fen|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(15),
	datad => VCC,
	cin => \fen|Add1~27\,
	combout => \fen|Add1~28_combout\,
	cout => \fen|Add1~29\);

-- Location: LCCOMB_X4_Y3_N0
\fen|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~30_combout\ = (\fen|j\(16) & (!\fen|Add1~29\)) # (!\fen|j\(16) & ((\fen|Add1~29\) # (GND)))
-- \fen|Add1~31\ = CARRY((!\fen|Add1~29\) # (!\fen|j\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(16),
	datad => VCC,
	cin => \fen|Add1~29\,
	combout => \fen|Add1~30_combout\,
	cout => \fen|Add1~31\);

-- Location: LCCOMB_X4_Y3_N2
\fen|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~32_combout\ = (\fen|j\(17) & (\fen|Add1~31\ $ (GND))) # (!\fen|j\(17) & (!\fen|Add1~31\ & VCC))
-- \fen|Add1~33\ = CARRY((\fen|j\(17) & !\fen|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(17),
	datad => VCC,
	cin => \fen|Add1~31\,
	combout => \fen|Add1~32_combout\,
	cout => \fen|Add1~33\);

-- Location: LCCOMB_X4_Y3_N4
\fen|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~34_combout\ = (\fen|j\(18) & (!\fen|Add1~33\)) # (!\fen|j\(18) & ((\fen|Add1~33\) # (GND)))
-- \fen|Add1~35\ = CARRY((!\fen|Add1~33\) # (!\fen|j\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(18),
	datad => VCC,
	cin => \fen|Add1~33\,
	combout => \fen|Add1~34_combout\,
	cout => \fen|Add1~35\);

-- Location: LCCOMB_X4_Y3_N6
\fen|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~36_combout\ = (\fen|j\(19) & (\fen|Add1~35\ $ (GND))) # (!\fen|j\(19) & (!\fen|Add1~35\ & VCC))
-- \fen|Add1~37\ = CARRY((\fen|j\(19) & !\fen|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(19),
	datad => VCC,
	cin => \fen|Add1~35\,
	combout => \fen|Add1~36_combout\,
	cout => \fen|Add1~37\);

-- Location: LCCOMB_X4_Y3_N8
\fen|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~38_combout\ = (\fen|j\(20) & (!\fen|Add1~37\)) # (!\fen|j\(20) & ((\fen|Add1~37\) # (GND)))
-- \fen|Add1~39\ = CARRY((!\fen|Add1~37\) # (!\fen|j\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(20),
	datad => VCC,
	cin => \fen|Add1~37\,
	combout => \fen|Add1~38_combout\,
	cout => \fen|Add1~39\);

-- Location: LCCOMB_X4_Y3_N10
\fen|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~40_combout\ = (\fen|j\(21) & (\fen|Add1~39\ $ (GND))) # (!\fen|j\(21) & (!\fen|Add1~39\ & VCC))
-- \fen|Add1~41\ = CARRY((\fen|j\(21) & !\fen|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(21),
	datad => VCC,
	cin => \fen|Add1~39\,
	combout => \fen|Add1~40_combout\,
	cout => \fen|Add1~41\);

-- Location: LCCOMB_X4_Y3_N12
\fen|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~42_combout\ = (\fen|j\(22) & (!\fen|Add1~41\)) # (!\fen|j\(22) & ((\fen|Add1~41\) # (GND)))
-- \fen|Add1~43\ = CARRY((!\fen|Add1~41\) # (!\fen|j\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(22),
	datad => VCC,
	cin => \fen|Add1~41\,
	combout => \fen|Add1~42_combout\,
	cout => \fen|Add1~43\);

-- Location: LCCOMB_X4_Y3_N14
\fen|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~44_combout\ = (\fen|j\(23) & (\fen|Add1~43\ $ (GND))) # (!\fen|j\(23) & (!\fen|Add1~43\ & VCC))
-- \fen|Add1~45\ = CARRY((\fen|j\(23) & !\fen|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(23),
	datad => VCC,
	cin => \fen|Add1~43\,
	combout => \fen|Add1~44_combout\,
	cout => \fen|Add1~45\);

-- Location: LCCOMB_X4_Y3_N16
\fen|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~46_combout\ = (\fen|j\(24) & (!\fen|Add1~45\)) # (!\fen|j\(24) & ((\fen|Add1~45\) # (GND)))
-- \fen|Add1~47\ = CARRY((!\fen|Add1~45\) # (!\fen|j\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(24),
	datad => VCC,
	cin => \fen|Add1~45\,
	combout => \fen|Add1~46_combout\,
	cout => \fen|Add1~47\);

-- Location: LCCOMB_X4_Y3_N18
\fen|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~48_combout\ = (\fen|j\(25) & (\fen|Add1~47\ $ (GND))) # (!\fen|j\(25) & (!\fen|Add1~47\ & VCC))
-- \fen|Add1~49\ = CARRY((\fen|j\(25) & !\fen|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(25),
	datad => VCC,
	cin => \fen|Add1~47\,
	combout => \fen|Add1~48_combout\,
	cout => \fen|Add1~49\);

-- Location: LCCOMB_X4_Y3_N20
\fen|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~50_combout\ = (\fen|j\(26) & (!\fen|Add1~49\)) # (!\fen|j\(26) & ((\fen|Add1~49\) # (GND)))
-- \fen|Add1~51\ = CARRY((!\fen|Add1~49\) # (!\fen|j\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(26),
	datad => VCC,
	cin => \fen|Add1~49\,
	combout => \fen|Add1~50_combout\,
	cout => \fen|Add1~51\);

-- Location: LCCOMB_X4_Y3_N22
\fen|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~52_combout\ = (\fen|j\(27) & (\fen|Add1~51\ $ (GND))) # (!\fen|j\(27) & (!\fen|Add1~51\ & VCC))
-- \fen|Add1~53\ = CARRY((\fen|j\(27) & !\fen|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(27),
	datad => VCC,
	cin => \fen|Add1~51\,
	combout => \fen|Add1~52_combout\,
	cout => \fen|Add1~53\);

-- Location: LCCOMB_X4_Y3_N24
\fen|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~54_combout\ = (\fen|j\(28) & (!\fen|Add1~53\)) # (!\fen|j\(28) & ((\fen|Add1~53\) # (GND)))
-- \fen|Add1~55\ = CARRY((!\fen|Add1~53\) # (!\fen|j\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(28),
	datad => VCC,
	cin => \fen|Add1~53\,
	combout => \fen|Add1~54_combout\,
	cout => \fen|Add1~55\);

-- Location: LCCOMB_X4_Y3_N26
\fen|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~56_combout\ = (\fen|j\(29) & (\fen|Add1~55\ $ (GND))) # (!\fen|j\(29) & (!\fen|Add1~55\ & VCC))
-- \fen|Add1~57\ = CARRY((\fen|j\(29) & !\fen|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(29),
	datad => VCC,
	cin => \fen|Add1~55\,
	combout => \fen|Add1~56_combout\,
	cout => \fen|Add1~57\);

-- Location: LCCOMB_X4_Y3_N28
\fen|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~58_combout\ = (\fen|j\(30) & (!\fen|Add1~57\)) # (!\fen|j\(30) & ((\fen|Add1~57\) # (GND)))
-- \fen|Add1~59\ = CARRY((!\fen|Add1~57\) # (!\fen|j\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|j\(30),
	datad => VCC,
	cin => \fen|Add1~57\,
	combout => \fen|Add1~58_combout\,
	cout => \fen|Add1~59\);

-- Location: LCCOMB_X4_Y3_N30
\fen|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add1~60_combout\ = \fen|Add1~59\ $ (!\fen|j\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fen|j\(31),
	cin => \fen|Add1~59\,
	combout => \fen|Add1~60_combout\);

-- Location: LCFF_X25_Y13_N9
\p2|display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux49~3_combout\,
	ena => \p2|display[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(0));

-- Location: LCFF_X25_Y13_N3
\p2|display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux48~1_combout\,
	ena => \p2|display[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(1));

-- Location: LCFF_X16_Y11_N9
\p3|display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux40~3_combout\,
	ena => \p3|display[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(2));

-- Location: LCFF_X25_Y13_N27
\p2|display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux46~1_combout\,
	ena => \p2|display[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(3));

-- Location: LCFF_X25_Y13_N13
\p2|display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux45~3_combout\,
	ena => \p2|display[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(4));

-- Location: LCFF_X16_Y11_N3
\p3|display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux37~4_combout\,
	ena => \p3|display[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(5));

-- Location: LCFF_X14_Y12_N25
\p3|display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux36~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(6));

-- Location: LCFF_X22_Y14_N21
\p2|led_dig[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(5));

-- Location: LCFF_X5_Y6_N25
\fen|k[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(28));

-- Location: LCCOMB_X4_Y6_N0
\fen|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~1_combout\ = (!\fen|k\(30) & (!\fen|k\(28) & (!\fen|k\(29) & !\fen|k\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(30),
	datab => \fen|k\(28),
	datac => \fen|k\(29),
	datad => \fen|k\(27),
	combout => \fen|Equal2~1_combout\);

-- Location: LCFF_X5_Y6_N21
\fen|k[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(26));

-- Location: LCFF_X5_Y6_N17
\fen|k[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(24));

-- Location: LCCOMB_X6_Y6_N8
\fen|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~3_combout\ = (!\fen|k\(23) & (!\fen|k\(24) & (!\fen|k\(26) & !\fen|k\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(23),
	datab => \fen|k\(24),
	datac => \fen|k\(26),
	datad => \fen|k\(25),
	combout => \fen|Equal2~3_combout\);

-- Location: LCFF_X5_Y6_N11
\fen|k[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(21));

-- Location: LCFF_X5_Y7_N13
\fen|k[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(6));

-- Location: LCCOMB_X6_Y7_N20
\fen|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~8_combout\ = (!\fen|k\(4) & (!\fen|k\(3) & (!\fen|k\(6) & \fen|k\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(4),
	datab => \fen|k\(3),
	datac => \fen|k\(6),
	datad => \fen|k\(5),
	combout => \fen|Equal2~8_combout\);

-- Location: LCCOMB_X26_Y13_N30
\p2|Mux49~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux49~1_combout\ = (!\p2|display[1]~3_combout\ & (\p2|Mux49~0_combout\ & (\p2|display[1]~2_combout\ $ (\p2|display[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~3_combout\,
	datab => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~1_combout\,
	datad => \p2|Mux49~0_combout\,
	combout => \p2|Mux49~1_combout\);

-- Location: LCCOMB_X24_Y13_N30
\p2|Mux49~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux49~2_combout\ = (\p2|display[1]~6_combout\ & ((\p2|display[1]~8_combout\) # (\p2|display[1]~10_combout\))) # (!\p2|display[1]~6_combout\ & ((!\p2|display[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|display[1]~8_combout\,
	datac => \p2|display[1]~6_combout\,
	datad => \p2|display[1]~10_combout\,
	combout => \p2|Mux49~2_combout\);

-- Location: LCCOMB_X25_Y13_N8
\p2|Mux49~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux49~3_combout\ = (\p2|Mux49~1_combout\) # ((!\p2|display[1]~11_combout\ & ((!\p2|display[1]~4_combout\) # (!\p2|Mux49~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|Mux49~2_combout\,
	datab => \p2|display[1]~11_combout\,
	datac => \p2|display[1]~4_combout\,
	datad => \p2|Mux49~1_combout\,
	combout => \p2|Mux49~3_combout\);

-- Location: LCCOMB_X21_Y13_N26
\p1|display[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~12_combout\ = (!\p2|o\(0) & ((\p2|o\(1) & (\ji|e\(0))) # (!\p2|o\(1) & ((\ji|a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \ji|e\(0),
	datac => \p2|o\(0),
	datad => \ji|a\(0),
	combout => \p1|display[2]~12_combout\);

-- Location: LCCOMB_X21_Y13_N16
\p1|display[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~13_combout\ = (\p1|display[2]~12_combout\) # ((\p2|o\(0) & \ji|c\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(0),
	datac => \ji|c\(0),
	datad => \p1|display[2]~12_combout\,
	combout => \p1|display[2]~13_combout\);

-- Location: LCCOMB_X17_Y15_N24
\p3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|WideOr3~0_combout\ = (\nao|ff\(2)) # ((\nao|ff\(3)) # ((\nao|ff\(1) & \nao|ff\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(2),
	datab => \nao|ff\(3),
	datac => \nao|ff\(1),
	datad => \nao|ff\(0),
	combout => \p3|WideOr3~0_combout\);

-- Location: LCCOMB_X17_Y15_N10
\p3|Mux41~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~5_combout\ = (\p2|o\(2) & !\p2|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(2),
	datad => \p2|o\(0),
	combout => \p3|Mux41~5_combout\);

-- Location: LCCOMB_X26_Y13_N4
\p2|Mux48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux48~0_combout\ = (\p2|display[1]~2_combout\ & (\p2|Mux49~0_combout\ & (\p2|display[1]~3_combout\ $ (\p2|display[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~3_combout\,
	datab => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~1_combout\,
	datad => \p2|Mux49~0_combout\,
	combout => \p2|Mux48~0_combout\);

-- Location: LCCOMB_X25_Y13_N2
\p2|Mux48~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux48~1_combout\ = (\p2|Mux48~0_combout\) # ((\p2|Mux45~0_combout\ & (\p2|display[1]~6_combout\ & \p2|display[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|Mux45~0_combout\,
	datab => \p2|display[1]~6_combout\,
	datac => \p2|display[1]~10_combout\,
	datad => \p2|Mux48~0_combout\,
	combout => \p2|Mux48~1_combout\);

-- Location: LCCOMB_X18_Y13_N2
\ji|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always1~1_combout\ = (!\ji|d\(1) & (\ji|d\(2) & (\ji|d\(0) & !\ji|d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|d\(1),
	datab => \ji|d\(2),
	datac => \ji|d\(0),
	datad => \ji|d\(3),
	combout => \ji|always1~1_combout\);

-- Location: LCCOMB_X17_Y11_N20
\p1|Mux54~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~4_combout\ = (!\ji|e\(3) & (\ji|e\(2) & (\ji|e\(1) $ (\ji|e\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(3),
	datab => \ji|e\(1),
	datac => \ji|e\(0),
	datad => \ji|e\(2),
	combout => \p1|Mux54~4_combout\);

-- Location: LCCOMB_X18_Y14_N2
\p1|Mux54~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~6_combout\ = (\p2|o\(0) & (((\p1|display\(1))))) # (!\p2|o\(0) & ((\p1|Mux54~4_combout\) # ((\p1|display\(1) & \p1|Mux54~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux54~4_combout\,
	datab => \p1|display\(1),
	datac => \p1|Mux54~5_combout\,
	datad => \p2|o\(0),
	combout => \p1|Mux54~6_combout\);

-- Location: LCCOMB_X18_Y14_N20
\p1|Mux54~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~7_combout\ = (\p1|Mux54~6_combout\ & (\p1|Mux54~3_combout\ & ((\p1|WideOr5~0_combout\) # (!\p2|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p1|Mux54~6_combout\,
	datac => \p1|WideOr5~0_combout\,
	datad => \p1|Mux54~3_combout\,
	combout => \p1|Mux54~7_combout\);

-- Location: LCCOMB_X15_Y11_N30
\p3|Mux40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux40~0_combout\ = (!\p2|o\(1) & (((\nao|dd\(2)) # (\nao|dd\(0))) # (!\nao|dd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(1),
	datab => \nao|dd\(2),
	datac => \p2|o\(1),
	datad => \nao|dd\(0),
	combout => \p3|Mux40~0_combout\);

-- Location: LCCOMB_X15_Y12_N0
\p3|Mux40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux40~1_combout\ = (\p3|display[0]~10_combout\) # (((\p3|display[0]~8_combout\) # (\p3|display[0]~11_combout\)) # (!\p3|display[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~10_combout\,
	datab => \p3|display[0]~9_combout\,
	datac => \p3|display[0]~8_combout\,
	datad => \p3|display[0]~11_combout\,
	combout => \p3|Mux40~1_combout\);

-- Location: LCCOMB_X15_Y11_N24
\p3|Mux40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux40~2_combout\ = (\p2|o\(1) & ((\p3|display[0]~7_combout\ & ((\p3|Mux40~1_combout\))) # (!\p3|display[0]~7_combout\ & (!\nao|ff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~7_combout\,
	datab => \p2|o\(1),
	datac => \nao|ff\(1),
	datad => \p3|Mux40~1_combout\,
	combout => \p3|Mux40~2_combout\);

-- Location: LCCOMB_X16_Y11_N8
\p3|Mux40~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux40~3_combout\ = (\p3|Mux40~0_combout\ & ((\p3|Mux42~1_combout\) # ((\p3|Mux42~2_combout\)))) # (!\p3|Mux40~0_combout\ & (\p3|Mux40~2_combout\ & ((\p3|Mux42~1_combout\) # (\p3|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux40~0_combout\,
	datab => \p3|Mux42~1_combout\,
	datac => \p3|Mux42~2_combout\,
	datad => \p3|Mux40~2_combout\,
	combout => \p3|Mux40~3_combout\);

-- Location: LCCOMB_X26_Y13_N28
\p2|Mux46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux46~0_combout\ = (\p2|Mux49~0_combout\ & ((\p2|display[1]~3_combout\ & (\p2|display[1]~2_combout\ & \p2|display[1]~1_combout\)) # (!\p2|display[1]~3_combout\ & (\p2|display[1]~2_combout\ $ (\p2|display[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~3_combout\,
	datab => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~1_combout\,
	datad => \p2|Mux49~0_combout\,
	combout => \p2|Mux46~0_combout\);

-- Location: LCCOMB_X25_Y13_N26
\p2|Mux46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux46~1_combout\ = (\p2|Mux46~0_combout\) # ((\p2|Mux45~0_combout\ & !\p2|Mux49~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|Mux45~0_combout\,
	datac => \p2|Mux49~2_combout\,
	datad => \p2|Mux46~0_combout\,
	combout => \p2|Mux46~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\p2|Mux45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux45~1_combout\ = (\p2|Mux45~0_combout\ & ((\p2|display[1]~10_combout\) # (\p2|display[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~10_combout\,
	datab => \p2|display[1]~6_combout\,
	datad => \p2|Mux45~0_combout\,
	combout => \p2|Mux45~1_combout\);

-- Location: LCCOMB_X26_Y13_N6
\p2|Mux45~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux45~2_combout\ = (\p2|display[1]~1_combout\) # ((!\p2|display[1]~0_combout\ & (\p2|display[1]~2_combout\ & !\p2|display[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~0_combout\,
	datab => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~1_combout\,
	datad => \p2|display[1]~3_combout\,
	combout => \p2|Mux45~2_combout\);

-- Location: LCCOMB_X25_Y13_N12
\p2|Mux45~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux45~3_combout\ = (\p2|Mux45~1_combout\) # ((\p2|Mux45~2_combout\ & \p2|display[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|Mux45~2_combout\,
	datab => \p2|display[1]~11_combout\,
	datad => \p2|Mux45~1_combout\,
	combout => \p2|Mux45~3_combout\);

-- Location: LCCOMB_X15_Y11_N8
\p3|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux37~0_combout\ = (!\p2|o\(1) & ((\nao|dd\(2)) # ((!\nao|dd\(1) & !\nao|dd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \nao|dd\(1),
	datac => \nao|dd\(2),
	datad => \nao|dd\(0),
	combout => \p3|Mux37~0_combout\);

-- Location: LCCOMB_X16_Y11_N22
\p3|Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux37~1_combout\ = (\p3|Mux42~0_combout\ & (!\nao|ff\(0) & (!\nao|ff\(1) & !\p3|display[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux42~0_combout\,
	datab => \nao|ff\(0),
	datac => \nao|ff\(1),
	datad => \p3|display[0]~7_combout\,
	combout => \p3|Mux37~1_combout\);

-- Location: LCCOMB_X15_Y12_N24
\p3|Mux37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux37~2_combout\ = (\p3|display[0]~8_combout\) # ((\p3|display[0]~11_combout\ & (\p3|display[0]~10_combout\ & !\p3|display[0]~9_combout\)) # (!\p3|display[0]~11_combout\ & ((\p3|display[0]~10_combout\) # (!\p3|display[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~11_combout\,
	datab => \p3|display[0]~8_combout\,
	datac => \p3|display[0]~10_combout\,
	datad => \p3|display[0]~9_combout\,
	combout => \p3|Mux37~2_combout\);

-- Location: LCCOMB_X16_Y11_N0
\p3|Mux37~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux37~3_combout\ = (\p3|Mux37~1_combout\) # ((\p3|display[0]~7_combout\ & (\p3|Mux37~2_combout\ & \p3|display[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~7_combout\,
	datab => \p3|Mux37~1_combout\,
	datac => \p3|Mux37~2_combout\,
	datad => \p3|display[0]~6_combout\,
	combout => \p3|Mux37~3_combout\);

-- Location: LCCOMB_X16_Y11_N2
\p3|Mux37~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux37~4_combout\ = (\p2|o\(1) & ((\p3|Mux37~3_combout\) # ((\p3|Mux37~0_combout\ & \p3|Mux42~2_combout\)))) # (!\p2|o\(1) & (\p3|Mux37~0_combout\ & (\p3|Mux42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p3|Mux37~0_combout\,
	datac => \p3|Mux42~2_combout\,
	datad => \p3|Mux37~3_combout\,
	combout => \p3|Mux37~4_combout\);

-- Location: LCCOMB_X16_Y13_N4
\p3|Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~1_combout\ = (\nao|dd\(3) & (((\p3|display\(6))))) # (!\nao|dd\(3) & ((\nao|dd\(2) & ((\p3|display\(6)) # (!\nao|dd\(1)))) # (!\nao|dd\(2) & (\nao|dd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(2),
	datab => \nao|dd\(1),
	datac => \p3|display\(6),
	datad => \nao|dd\(3),
	combout => \p3|Mux36~1_combout\);

-- Location: LCCOMB_X15_Y13_N18
\p3|Mux36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~2_combout\ = (!\p2|o\(1) & ((\p2|o\(0)) # ((\p3|Mux36~1_combout\ & \p3|always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux36~1_combout\,
	datab => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \p3|always0~1_combout\,
	combout => \p3|Mux36~2_combout\);

-- Location: LCCOMB_X15_Y12_N18
\p3|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux14~0_combout\ = (\nao|ee\(3) & (\nao|ee\(2))) # (!\nao|ee\(3) & ((\nao|ee\(2) & ((!\nao|ee\(0)) # (!\nao|ee\(1)))) # (!\nao|ee\(2) & (\nao|ee\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(3),
	datab => \nao|ee\(2),
	datac => \nao|ee\(1),
	datad => \nao|ee\(0),
	combout => \p3|Mux14~0_combout\);

-- Location: LCCOMB_X14_Y12_N16
\p3|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux14~1_combout\ = (\nao|ee\(3) & ((\p3|display\(6)) # ((!\nao|ee\(1) & !\p3|Mux14~0_combout\)))) # (!\nao|ee\(3) & (((\p3|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display\(6),
	datab => \nao|ee\(1),
	datac => \nao|ee\(3),
	datad => \p3|Mux14~0_combout\,
	combout => \p3|Mux14~1_combout\);

-- Location: LCCOMB_X15_Y12_N12
\p3|Mux36~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~3_combout\ = (!\p2|o\(0) & (((\p3|display[0]~14_combout\ & \p3|Mux14~1_combout\)) # (!\p2|o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(2),
	datac => \p3|display[0]~14_combout\,
	datad => \p3|Mux14~1_combout\,
	combout => \p3|Mux36~3_combout\);

-- Location: LCCOMB_X19_Y12_N0
\p3|Mux36~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~4_combout\ = (\p3|Mux36~0_combout\ & (\nao|ff\(1) & ((\p3|display\(6)) # (!\nao|ff\(0))))) # (!\p3|Mux36~0_combout\ & (((\p3|display\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(1),
	datab => \nao|ff\(0),
	datac => \p3|display\(6),
	datad => \p3|Mux36~0_combout\,
	combout => \p3|Mux36~4_combout\);

-- Location: LCCOMB_X14_Y12_N10
\p3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux0~0_combout\ = (\nao|cc\(3) & (\nao|cc\(2))) # (!\nao|cc\(3) & ((\nao|cc\(2) & ((!\nao|cc\(0)) # (!\nao|cc\(1)))) # (!\nao|cc\(2) & (\nao|cc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(3),
	datab => \nao|cc\(2),
	datac => \nao|cc\(1),
	datad => \nao|cc\(0),
	combout => \p3|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y12_N8
\p3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux0~1_combout\ = (\nao|cc\(3) & ((\p3|display\(6)) # ((!\nao|cc\(1) & !\p3|Mux0~0_combout\)))) # (!\nao|cc\(3) & (((\p3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(1),
	datab => \nao|cc\(3),
	datac => \p3|display\(6),
	datad => \p3|Mux0~0_combout\,
	combout => \p3|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y12_N18
\p3|Mux36~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~5_combout\ = (\p2|o\(2) & ((\p3|Mux36~4_combout\))) # (!\p2|o\(2) & (\p3|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(2),
	datac => \p3|Mux0~1_combout\,
	datad => \p3|Mux36~4_combout\,
	combout => \p3|Mux36~5_combout\);

-- Location: LCCOMB_X15_Y13_N4
\p3|Mux36~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~6_combout\ = (\p2|o\(0) & \p3|Mux41~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|o\(0),
	datad => \p3|Mux41~3_combout\,
	combout => \p3|Mux36~6_combout\);

-- Location: LCCOMB_X14_Y12_N24
\p3|Mux36~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~7_combout\ = (\p3|Mux36~3_combout\) # ((\p3|Mux36~2_combout\) # ((\p3|Mux36~6_combout\ & \p3|Mux36~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux36~6_combout\,
	datab => \p3|Mux36~5_combout\,
	datac => \p3|Mux36~3_combout\,
	datad => \p3|Mux36~2_combout\,
	combout => \p3|Mux36~7_combout\);

-- Location: LCCOMB_X25_Y15_N4
\p2|Mux43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~0_combout\ = (\pao|e\(2) & (((\pao|e\(3)) # (!\pao|e\(1))) # (!\pao|e\(0)))) # (!\pao|e\(2) & (((\pao|e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|e\(2),
	datab => \pao|e\(0),
	datac => \pao|e\(3),
	datad => \pao|e\(1),
	combout => \p2|Mux43~0_combout\);

-- Location: LCCOMB_X24_Y15_N24
\p2|Mux43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~1_combout\ = (\p2|o\(2) & ((\pao|e\(3) & (\p2|display\(6) & \p2|Mux43~0_combout\)) # (!\pao|e\(3) & ((!\p2|Mux43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|e\(3),
	datab => \p2|o\(2),
	datac => \p2|display\(6),
	datad => \p2|Mux43~0_combout\,
	combout => \p2|Mux43~1_combout\);

-- Location: LCCOMB_X23_Y13_N0
\p2|Mux42~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~6_combout\ = (\p2|o\(2) & ((\pao|f\(3)) # ((\pao|f\(2) & \pao|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(2),
	datab => \pao|f\(3),
	datac => \pao|f\(1),
	datad => \p2|o\(2),
	combout => \p2|Mux42~6_combout\);

-- Location: LCCOMB_X18_Y13_N12
\p1|Mux48~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux48~1_combout\ = (\ji|d\(3)) # ((\ji|d\(2) & \ji|d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|d\(2),
	datac => \ji|d\(1),
	datad => \ji|d\(3),
	combout => \p1|Mux48~1_combout\);

-- Location: LCCOMB_X19_Y14_N24
\p1|display~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display~25_combout\ = (\p1|display\(7) & ((\ji|b\(3)) # ((\ji|b\(1) & \ji|b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(3),
	datab => \ji|b\(1),
	datac => \p1|display\(7),
	datad => \ji|b\(2),
	combout => \p1|display~25_combout\);

-- Location: LCCOMB_X19_Y14_N2
\p1|display~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display~26_combout\ = (\p1|display\(7) & (\ji|a\(3) & ((\ji|a\(2)) # (\ji|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display\(7),
	datab => \ji|a\(2),
	datac => \ji|a\(1),
	datad => \ji|a\(3),
	combout => \p1|display~26_combout\);

-- Location: LCCOMB_X19_Y14_N28
\p1|Mux48~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux48~3_combout\ = (\p2|o\(0) & ((\p2|o\(1)) # ((\p1|display~25_combout\)))) # (!\p2|o\(0) & (!\p2|o\(1) & ((\p1|display~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \p1|display~25_combout\,
	datad => \p1|display~26_combout\,
	combout => \p1|Mux48~3_combout\);

-- Location: LCCOMB_X18_Y14_N6
\p1|display~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display~27_combout\ = (\p1|display\(7) & (\p1|Mux19~1_combout\ & \p1|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|display\(7),
	datac => \p1|Mux19~1_combout\,
	datad => \p1|always0~0_combout\,
	combout => \p1|display~27_combout\);

-- Location: LCCOMB_X18_Y14_N24
\p1|Mux48~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux48~4_combout\ = (\p2|o\(1) & ((\p1|Mux48~3_combout\ & (\p1|display~27_combout\)) # (!\p1|Mux48~3_combout\ & ((\p1|display\(7)))))) # (!\p2|o\(1) & (((\p1|Mux48~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display~27_combout\,
	datab => \p1|display\(7),
	datac => \p2|o\(1),
	datad => \p1|Mux48~3_combout\,
	combout => \p1|Mux48~4_combout\);

-- Location: LCCOMB_X22_Y14_N20
\p2|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux36~0_combout\ = (\p2|o\(0) $ (\p2|o\(2))) # (!\p2|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datac => \p2|o\(2),
	datad => \p2|o\(1),
	combout => \p2|Mux36~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\nao|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~1_combout\ = (\nao|cc\(3) & (\ji|c\(3) & (\nao|cc\(2) $ (!\ji|c\(2))))) # (!\nao|cc\(3) & (!\ji|c\(3) & (\nao|cc\(2) $ (!\ji|c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(3),
	datab => \nao|cc\(2),
	datac => \ji|c\(3),
	datad => \ji|c\(2),
	combout => \nao|always0~1_combout\);

-- Location: LCCOMB_X19_Y15_N24
\nao|always0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~7_combout\ = (\ji|f\(0) & (\nao|ff\(0) & (\nao|ff\(1) $ (!\ji|f\(1))))) # (!\ji|f\(0) & (!\nao|ff\(0) & (\nao|ff\(1) $ (!\ji|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datab => \nao|ff\(1),
	datac => \nao|ff\(0),
	datad => \ji|f\(1),
	combout => \nao|always0~7_combout\);

-- Location: LCFF_X1_Y7_N1
\fen|f1Hz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|f1Hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|f1Hz~regout\);

-- Location: LCFF_X15_Y17_N17
\p1|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(8));

-- Location: LCFF_X15_Y17_N21
\p1|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(10));

-- Location: LCCOMB_X16_Y17_N20
\p1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~2_combout\ = (!\p1|i\(10) & (!\p1|i\(9) & (!\p1|i\(8) & !\p1|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(10),
	datab => \p1|i\(9),
	datac => \p1|i\(8),
	datad => \p1|i\(11),
	combout => \p1|Equal0~2_combout\);

-- Location: LCFF_X15_Y16_N7
\p1|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(19));

-- Location: LCCOMB_X16_Y16_N16
\p1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~5_combout\ = (!\p1|i\(16) & (!\p1|i\(19) & (!\p1|i\(18) & !\p1|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(16),
	datab => \p1|i\(19),
	datac => \p1|i\(18),
	datad => \p1|i\(17),
	combout => \p1|Equal0~5_combout\);

-- Location: LCFF_X15_Y16_N21
\p1|i[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(26));

-- Location: LCFF_X15_Y16_N31
\p1|i[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(31));

-- Location: LCCOMB_X16_Y12_N8
\nao|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Equal9~0_combout\ = ((\nao|ee\(1)) # ((\nao|ee\(2)) # (!\nao|ee\(0)))) # (!\nao|ee\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(3),
	datab => \nao|ee\(1),
	datac => \nao|ee\(2),
	datad => \nao|ee\(0),
	combout => \nao|Equal9~0_combout\);

-- Location: LCCOMB_X16_Y12_N14
\nao|always0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~10_combout\ = (\nao|ee\(3) & ((\nao|ee\(1) $ (!\nao|ee\(2))) # (!\nao|ee\(0)))) # (!\nao|ee\(3) & (\nao|ee\(1) & ((!\nao|ee\(0)) # (!\nao|ee\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(3),
	datab => \nao|ee\(1),
	datac => \nao|ee\(2),
	datad => \nao|ee\(0),
	combout => \nao|always0~10_combout\);

-- Location: LCCOMB_X17_Y12_N16
\nao|always0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~11_combout\ = (\nao|always0~10_combout\ & (!\nao|Equal8~0_combout\ & (\nao|Equal7~0_combout\ & \nao|ee\(0)))) # (!\nao|always0~10_combout\ & (!\nao|ee\(0) & ((\nao|Equal8~0_combout\) # (!\nao|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|always0~10_combout\,
	datab => \nao|Equal8~0_combout\,
	datac => \nao|Equal7~0_combout\,
	datad => \nao|ee\(0),
	combout => \nao|always0~11_combout\);

-- Location: LCCOMB_X16_Y12_N30
\nao|always0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~15_combout\ = ((\nao|ee\(0) $ (\nao|ee~2_combout\)) # (!\nao|ff~12_combout\)) # (!\nao|Add5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(0),
	datab => \nao|Add5~1_combout\,
	datac => \nao|ee~2_combout\,
	datad => \nao|ff~12_combout\,
	combout => \nao|always0~15_combout\);

-- Location: LCCOMB_X19_Y12_N22
\nao|ee~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~7_combout\ = (\nao|Equal8~0_combout\) # ((!\nao|Equal7~0_combout\) # (!\nao|k2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|Equal8~0_combout\,
	datac => \nao|k2~0_combout\,
	datad => \nao|Equal7~0_combout\,
	combout => \nao|ee~7_combout\);

-- Location: LCCOMB_X16_Y12_N24
\nao|ee~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~8_combout\ = (!\nao|k1~0_combout\ & ((\nao|ee~7_combout\ & ((\nao|ee\(3)))) # (!\nao|ee~7_combout\ & (\nao|ee~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~1_combout\,
	datab => \nao|k1~0_combout\,
	datac => \nao|ee\(3),
	datad => \nao|ee~7_combout\,
	combout => \nao|ee~8_combout\);

-- Location: LCCOMB_X19_Y12_N12
\nao|ee~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~10_combout\ = (!\nao|k1~0_combout\ & ((\nao|ee~7_combout\ & ((\nao|ee\(1)))) # (!\nao|ee~7_combout\ & (\nao|ee~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~4_combout\,
	datab => \nao|k1~0_combout\,
	datac => \nao|ee\(1),
	datad => \nao|ee~7_combout\,
	combout => \nao|ee~10_combout\);

-- Location: LCCOMB_X19_Y12_N26
\nao|ee~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~14_combout\ = \nao|ee\(0) $ (((\nao|k1~0_combout\) # (!\nao|ee~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(0),
	datab => \nao|k1~0_combout\,
	datad => \nao|ee~7_combout\,
	combout => \nao|ee~14_combout\);

-- Location: LCCOMB_X19_Y12_N16
\nao|ff~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~25_combout\ = \nao|ff\(2) $ (((\p3|display[0]~15_combout\ & (!\nao|ff~8_combout\ & \nao|k2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~15_combout\,
	datab => \nao|ff~8_combout\,
	datac => \nao|k2~0_combout\,
	datad => \nao|ff\(2),
	combout => \nao|ff~25_combout\);

-- Location: LCCOMB_X17_Y15_N22
\nao|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add4~0_combout\ = \nao|ff\(3) $ (((\nao|ff\(2) & (\nao|ff\(1) & \nao|ff\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(2),
	datab => \nao|ff\(3),
	datac => \nao|ff\(1),
	datad => \nao|ff\(0),
	combout => \nao|Add4~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\nao|ff~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~29_combout\ = (\nao|k2~0_combout\ & ((\nao|ff~8_combout\ & (\nao|ff\(3))) # (!\nao|ff~8_combout\ & ((\nao|Add4~0_combout\))))) # (!\nao|k2~0_combout\ & (\nao|ff\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k2~0_combout\,
	datab => \nao|ff\(3),
	datac => \nao|ff~8_combout\,
	datad => \nao|Add4~0_combout\,
	combout => \nao|ff~29_combout\);

-- Location: LCFF_X22_Y14_N31
\pao|k2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \pao|k2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|k2\(1));

-- Location: LCCOMB_X25_Y14_N6
\pao|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add2~0_combout\ = \pao|a\(3) $ (((\pao|a\(0) & (\pao|a\(2) & \pao|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a\(0),
	datab => \pao|a\(2),
	datac => \pao|a\(3),
	datad => \pao|a\(1),
	combout => \pao|Add2~0_combout\);

-- Location: LCFF_X3_Y3_N21
\fen|f100Hz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|f100Hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|f100Hz~regout\);

-- Location: LCFF_X23_Y14_N7
\pao|c[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|c[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|c\(2));

-- Location: LCCOMB_X24_Y14_N4
\pao|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add6~0_combout\ = \pao|e\(3) $ (((\pao|e\(1) & (\pao|e\(2) & \pao|e\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|e\(1),
	datab => \pao|e\(3),
	datac => \pao|e\(2),
	datad => \pao|e\(0),
	combout => \pao|Add6~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\pao|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add6~1_combout\ = \pao|e\(2) $ (((\pao|e\(0) & \pao|e\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|e\(0),
	datac => \pao|e\(2),
	datad => \pao|e\(1),
	combout => \pao|Add6~1_combout\);

-- Location: LCCOMB_X23_Y14_N30
\pao|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add5~0_combout\ = \pao|d\(3) $ (((\pao|d\(0) & (\pao|d\(2) & \pao|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|d\(3),
	datab => \pao|d\(0),
	datac => \pao|d\(2),
	datad => \pao|d\(1),
	combout => \pao|Add5~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\pao|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add7~0_combout\ = \pao|f\(3) $ (((\pao|f\(1) & (\pao|f\(0) & \pao|f\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(1),
	datab => \pao|f\(3),
	datac => \pao|f\(0),
	datad => \pao|f\(2),
	combout => \pao|Add7~0_combout\);

-- Location: LCCOMB_X17_Y11_N22
\ji|always1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always1~4_combout\ = (\ji|Equal10~0_combout\ & \ji|always1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|Equal10~0_combout\,
	datad => \ji|always1~1_combout\,
	combout => \ji|always1~4_combout\);

-- Location: LCCOMB_X19_Y14_N12
\ji|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add2~0_combout\ = \ji|b\(2) $ (((\ji|b\(0) & \ji|b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(0),
	datab => \ji|b\(1),
	datad => \ji|b\(2),
	combout => \ji|Add2~0_combout\);

-- Location: LCCOMB_X19_Y14_N26
\ji|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add2~1_combout\ = \ji|b\(3) $ (((\ji|b\(2) & (\ji|b\(1) & \ji|b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(3),
	datab => \ji|b\(2),
	datac => \ji|b\(1),
	datad => \ji|b\(0),
	combout => \ji|Add2~1_combout\);

-- Location: LCFF_X3_Y8_N7
\fen|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(3));

-- Location: LCFF_X3_Y8_N9
\fen|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(4));

-- Location: LCFF_X3_Y8_N11
\fen|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(5));

-- Location: LCFF_X4_Y8_N25
\fen|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(6));

-- Location: LCFF_X3_Y8_N15
\fen|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(7));

-- Location: LCCOMB_X3_Y8_N0
\fen|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~0_combout\ = (\fen|i\(5) & (!\fen|i\(7) & (\fen|i\(4) & !\fen|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(5),
	datab => \fen|i\(7),
	datac => \fen|i\(4),
	datad => \fen|i\(6),
	combout => \fen|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y7_N22
\fen|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~1_combout\ = (\fen|i\(3) & (\fen|Equal2~0_combout\ & \fen|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(3),
	datac => \fen|Equal2~0_combout\,
	datad => \fen|Equal0~0_combout\,
	combout => \fen|Equal0~1_combout\);

-- Location: LCFF_X4_Y7_N1
\fen|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(11));

-- Location: LCFF_X3_Y8_N17
\fen|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(8));

-- Location: LCFF_X3_Y8_N19
\fen|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(9));

-- Location: LCFF_X3_Y8_N21
\fen|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(10));

-- Location: LCCOMB_X4_Y7_N6
\fen|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~2_combout\ = (!\fen|i\(10) & (!\fen|i\(8) & (!\fen|i\(9) & \fen|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(10),
	datab => \fen|i\(8),
	datac => \fen|i\(9),
	datad => \fen|i\(11),
	combout => \fen|Equal0~2_combout\);

-- Location: LCFF_X4_Y8_N27
\fen|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(12));

-- Location: LCFF_X4_Y7_N5
\fen|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(13));

-- Location: LCFF_X4_Y7_N3
\fen|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(14));

-- Location: LCFF_X3_Y8_N31
\fen|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(15));

-- Location: LCCOMB_X4_Y7_N16
\fen|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~3_combout\ = (!\fen|i\(15) & (\fen|i\(14) & (\fen|i\(13) & \fen|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(15),
	datab => \fen|i\(14),
	datac => \fen|i\(13),
	datad => \fen|i\(12),
	combout => \fen|Equal0~3_combout\);

-- Location: LCFF_X2_Y7_N29
\fen|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(16));

-- Location: LCFF_X2_Y7_N15
\fen|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(18));

-- Location: LCFF_X4_Y7_N15
\fen|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(19));

-- Location: LCFF_X3_Y7_N3
\fen|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(17));

-- Location: LCCOMB_X2_Y7_N12
\fen|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~4_combout\ = (!\fen|i\(17) & (\fen|i\(16) & (\fen|i\(18) & \fen|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(17),
	datab => \fen|i\(16),
	datac => \fen|i\(18),
	datad => \fen|i\(19),
	combout => \fen|Equal0~4_combout\);

-- Location: LCFF_X4_Y7_N29
\fen|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(20));

-- Location: LCFF_X4_Y7_N31
\fen|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(21));

-- Location: LCFF_X4_Y7_N25
\fen|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(22));

-- Location: LCFF_X3_Y7_N15
\fen|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(23));

-- Location: LCCOMB_X4_Y7_N18
\fen|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~5_combout\ = (!\fen|i\(23) & (\fen|i\(20) & (\fen|i\(22) & \fen|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(23),
	datab => \fen|i\(20),
	datac => \fen|i\(22),
	datad => \fen|i\(21),
	combout => \fen|Equal0~5_combout\);

-- Location: LCFF_X4_Y7_N9
\fen|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(24));

-- Location: LCFF_X3_Y7_N19
\fen|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(25));

-- Location: LCFF_X3_Y7_N21
\fen|i[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(26));

-- Location: LCFF_X3_Y7_N23
\fen|i[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(27));

-- Location: LCCOMB_X4_Y7_N26
\fen|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~6_combout\ = (!\fen|i\(26) & (!\fen|i\(27) & (\fen|i\(24) & !\fen|i\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(26),
	datab => \fen|i\(27),
	datac => \fen|i\(24),
	datad => \fen|i\(25),
	combout => \fen|Equal0~6_combout\);

-- Location: LCFF_X3_Y7_N25
\fen|i[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(28));

-- Location: LCFF_X3_Y7_N27
\fen|i[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(29));

-- Location: LCFF_X3_Y7_N29
\fen|i[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(30));

-- Location: LCFF_X3_Y7_N31
\fen|i[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|i\(31));

-- Location: LCCOMB_X2_Y7_N26
\fen|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~7_combout\ = (!\fen|i\(29) & (!\fen|i\(28) & (!\fen|i\(31) & !\fen|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|i\(29),
	datab => \fen|i\(28),
	datac => \fen|i\(31),
	datad => \fen|i\(30),
	combout => \fen|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y7_N12
\fen|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~8_combout\ = (\fen|Equal0~7_combout\ & (\fen|Equal0~5_combout\ & (\fen|Equal0~4_combout\ & \fen|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~7_combout\,
	datab => \fen|Equal0~5_combout\,
	datac => \fen|Equal0~4_combout\,
	datad => \fen|Equal0~6_combout\,
	combout => \fen|Equal0~8_combout\);

-- Location: LCCOMB_X4_Y7_N10
\fen|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal0~9_combout\ = (\fen|Equal0~2_combout\ & (\fen|Equal0~1_combout\ & (\fen|Equal0~3_combout\ & \fen|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~2_combout\,
	datab => \fen|Equal0~1_combout\,
	datac => \fen|Equal0~3_combout\,
	datad => \fen|Equal0~8_combout\,
	combout => \fen|Equal0~9_combout\);

-- Location: LCCOMB_X1_Y7_N0
\fen|f1Hz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|f1Hz~0_combout\ = \fen|f1Hz~regout\ $ (\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|f1Hz~regout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|f1Hz~0_combout\);

-- Location: LCFF_X22_Y14_N7
\pao|k1k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \pao|k1k~0_combout\,
	ena => \p3|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|k1k~regout\);

-- Location: LCCOMB_X22_Y14_N28
\pao|k2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k2[0]~0_combout\ = (\comb_3|mkoo\(0) & (!\pao|k2k~regout\ & (!\key2~combout\ & !\comb_3|mkoo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|mkoo\(0),
	datab => \pao|k2k~regout\,
	datac => \key2~combout\,
	datad => \comb_3|mkoo\(1),
	combout => \pao|k2[0]~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\pao|k2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k2[1]~1_combout\ = \pao|k2\(1) $ (((\pao|k2\(0) & \pao|k2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|k2\(0),
	datac => \pao|k2\(1),
	datad => \pao|k2[0]~0_combout\,
	combout => \pao|k2[1]~1_combout\);

-- Location: LCFF_X3_Y3_N25
\fen|j[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(7));

-- Location: LCFF_X3_Y3_N29
\fen|j[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(4));

-- Location: LCFF_X4_Y4_N11
\fen|j[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(5));

-- Location: LCFF_X4_Y4_N13
\fen|j[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(6));

-- Location: LCCOMB_X3_Y3_N2
\fen|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~0_combout\ = (\fen|j\(7) & (!\fen|j\(4) & (!\fen|j\(6) & !\fen|j\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(7),
	datab => \fen|j\(4),
	datac => \fen|j\(6),
	datad => \fen|j\(5),
	combout => \fen|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y3_N26
\fen|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~1_combout\ = (\fen|Equal1~0_combout\ & (\fen|i\(3) & \fen|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Equal1~0_combout\,
	datac => \fen|i\(3),
	datad => \fen|Equal2~0_combout\,
	combout => \fen|Equal1~1_combout\);

-- Location: LCFF_X4_Y4_N17
\fen|j[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(8));

-- Location: LCFF_X4_Y4_N19
\fen|j[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(9));

-- Location: LCFF_X4_Y4_N21
\fen|j[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(10));

-- Location: LCFF_X4_Y4_N23
\fen|j[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(11));

-- Location: LCCOMB_X3_Y4_N16
\fen|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~2_combout\ = (!\fen|j\(8) & (!\fen|j\(9) & (!\fen|j\(11) & !\fen|j\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(8),
	datab => \fen|j\(9),
	datac => \fen|j\(11),
	datad => \fen|j\(10),
	combout => \fen|Equal1~2_combout\);

-- Location: LCFF_X4_Y4_N1
\fen|j[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(12));

-- Location: LCFF_X3_Y3_N1
\fen|j[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(14));

-- Location: LCFF_X3_Y3_N23
\fen|j[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(15));

-- Location: LCFF_X4_Y4_N27
\fen|j[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(13));

-- Location: LCCOMB_X3_Y3_N12
\fen|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~3_combout\ = (!\fen|j\(13) & (\fen|j\(14) & (\fen|j\(12) & \fen|j\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(13),
	datab => \fen|j\(14),
	datac => \fen|j\(12),
	datad => \fen|j\(15),
	combout => \fen|Equal1~3_combout\);

-- Location: LCFF_X3_Y3_N15
\fen|j[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(16));

-- Location: LCFF_X3_Y3_N9
\fen|j[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|j~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(17));

-- Location: LCFF_X4_Y3_N5
\fen|j[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(18));

-- Location: LCFF_X4_Y3_N7
\fen|j[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(19));

-- Location: LCCOMB_X3_Y3_N4
\fen|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~4_combout\ = (\fen|j\(17) & (\fen|j\(16) & (!\fen|j\(18) & !\fen|j\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(17),
	datab => \fen|j\(16),
	datac => \fen|j\(18),
	datad => \fen|j\(19),
	combout => \fen|Equal1~4_combout\);

-- Location: LCFF_X4_Y3_N9
\fen|j[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(20));

-- Location: LCFF_X4_Y3_N11
\fen|j[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(21));

-- Location: LCFF_X4_Y3_N13
\fen|j[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(22));

-- Location: LCFF_X4_Y3_N15
\fen|j[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(23));

-- Location: LCCOMB_X3_Y3_N10
\fen|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~5_combout\ = (!\fen|j\(20) & (!\fen|j\(21) & (!\fen|j\(23) & !\fen|j\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(20),
	datab => \fen|j\(21),
	datac => \fen|j\(23),
	datad => \fen|j\(22),
	combout => \fen|Equal1~5_combout\);

-- Location: LCFF_X4_Y3_N17
\fen|j[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(24));

-- Location: LCFF_X4_Y3_N19
\fen|j[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(25));

-- Location: LCFF_X4_Y3_N21
\fen|j[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(26));

-- Location: LCFF_X4_Y3_N23
\fen|j[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(27));

-- Location: LCCOMB_X3_Y3_N6
\fen|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~6_combout\ = (!\fen|j\(27) & (!\fen|j\(25) & (!\fen|j\(24) & !\fen|j\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(27),
	datab => \fen|j\(25),
	datac => \fen|j\(24),
	datad => \fen|j\(26),
	combout => \fen|Equal1~6_combout\);

-- Location: LCFF_X4_Y3_N25
\fen|j[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(28));

-- Location: LCFF_X4_Y3_N27
\fen|j[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(29));

-- Location: LCFF_X4_Y3_N29
\fen|j[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(30));

-- Location: LCFF_X4_Y3_N31
\fen|j[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|j\(31));

-- Location: LCCOMB_X3_Y3_N16
\fen|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~7_combout\ = (!\fen|j\(29) & (!\fen|j\(28) & (!\fen|j\(31) & !\fen|j\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|j\(29),
	datab => \fen|j\(28),
	datac => \fen|j\(31),
	datad => \fen|j\(30),
	combout => \fen|Equal1~7_combout\);

-- Location: LCCOMB_X3_Y3_N18
\fen|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~8_combout\ = (\fen|Equal1~5_combout\ & (\fen|Equal1~4_combout\ & (\fen|Equal1~7_combout\ & \fen|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal1~5_combout\,
	datab => \fen|Equal1~4_combout\,
	datac => \fen|Equal1~7_combout\,
	datad => \fen|Equal1~6_combout\,
	combout => \fen|Equal1~8_combout\);

-- Location: LCCOMB_X3_Y3_N30
\fen|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal1~9_combout\ = (\fen|Equal1~3_combout\ & (\fen|Equal1~8_combout\ & (\fen|Equal1~2_combout\ & \fen|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal1~3_combout\,
	datab => \fen|Equal1~8_combout\,
	datac => \fen|Equal1~2_combout\,
	datad => \fen|Equal1~1_combout\,
	combout => \fen|Equal1~9_combout\);

-- Location: LCCOMB_X3_Y3_N20
\fen|f100Hz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|f100Hz~0_combout\ = \fen|f100Hz~regout\ $ (\fen|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|f100Hz~regout\,
	datad => \fen|Equal1~9_combout\,
	combout => \fen|f100Hz~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\pao|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add4~0_combout\ = \pao|c\(2) $ (((\pao|c\(0) & \pao|c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|c\(0),
	datac => \pao|c\(1),
	datad => \pao|c\(2),
	combout => \pao|Add4~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\pao|c[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[2]~6_combout\ = (\pao|Add4~0_combout\ & ((\pao|c[3]~4_combout\) # ((\pao|c[0]~9_combout\ & \pao|c\(2))))) # (!\pao|Add4~0_combout\ & (\pao|c[0]~9_combout\ & (\pao|c\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add4~0_combout\,
	datab => \pao|c[0]~9_combout\,
	datac => \pao|c\(2),
	datad => \pao|c[3]~4_combout\,
	combout => \pao|c[2]~6_combout\);

-- Location: LCCOMB_X23_Y14_N22
\pao|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add4~1_combout\ = \pao|c\(3) $ (((\pao|c\(1) & (\pao|c\(0) & \pao|c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|c\(1),
	datab => \pao|c\(0),
	datac => \pao|c\(3),
	datad => \pao|c\(2),
	combout => \pao|Add4~1_combout\);

-- Location: LCCOMB_X4_Y8_N24
\fen|i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~0_combout\ = (\fen|Add0~10_combout\ & !\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Add0~10_combout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|i~0_combout\);

-- Location: LCCOMB_X4_Y7_N0
\fen|i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~1_combout\ = (\fen|Add0~20_combout\ & !\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add0~20_combout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|i~1_combout\);

-- Location: LCCOMB_X4_Y8_N26
\fen|i~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~2_combout\ = (\fen|Add0~22_combout\ & !\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Add0~22_combout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|i~2_combout\);

-- Location: LCCOMB_X4_Y7_N4
\fen|i~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~3_combout\ = (\fen|Add0~24_combout\ & !\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add0~24_combout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|i~3_combout\);

-- Location: LCCOMB_X4_Y7_N2
\fen|i~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~4_combout\ = (!\fen|Equal0~9_combout\ & \fen|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~9_combout\,
	datad => \fen|Add0~26_combout\,
	combout => \fen|i~4_combout\);

-- Location: LCCOMB_X2_Y7_N28
\fen|i~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~5_combout\ = (\fen|Add0~30_combout\ & !\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add0~30_combout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|i~5_combout\);

-- Location: LCCOMB_X2_Y7_N14
\fen|i~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~6_combout\ = (!\fen|Equal0~9_combout\ & \fen|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Equal0~9_combout\,
	datad => \fen|Add0~34_combout\,
	combout => \fen|i~6_combout\);

-- Location: LCCOMB_X4_Y7_N14
\fen|i~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~7_combout\ = (\fen|Add0~36_combout\ & !\fen|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add0~36_combout\,
	datad => \fen|Equal0~9_combout\,
	combout => \fen|i~7_combout\);

-- Location: LCCOMB_X4_Y7_N28
\fen|i~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~8_combout\ = (!\fen|Equal0~9_combout\ & \fen|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~9_combout\,
	datad => \fen|Add0~38_combout\,
	combout => \fen|i~8_combout\);

-- Location: LCCOMB_X4_Y7_N30
\fen|i~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~9_combout\ = (!\fen|Equal0~9_combout\ & \fen|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~9_combout\,
	datad => \fen|Add0~40_combout\,
	combout => \fen|i~9_combout\);

-- Location: LCCOMB_X4_Y7_N24
\fen|i~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~10_combout\ = (!\fen|Equal0~9_combout\ & \fen|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~9_combout\,
	datad => \fen|Add0~42_combout\,
	combout => \fen|i~10_combout\);

-- Location: LCCOMB_X4_Y7_N8
\fen|i~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|i~11_combout\ = (!\fen|Equal0~9_combout\ & \fen|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal0~9_combout\,
	datad => \fen|Add0~46_combout\,
	combout => \fen|i~11_combout\);

-- Location: LCCOMB_X3_Y3_N24
\fen|j~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~0_combout\ = (\fen|Add1~12_combout\ & !\fen|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add1~12_combout\,
	datad => \fen|Equal1~9_combout\,
	combout => \fen|j~0_combout\);

-- Location: LCCOMB_X3_Y3_N28
\fen|j~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~1_combout\ = (!\fen|Equal1~9_combout\ & \fen|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Equal1~9_combout\,
	datac => \fen|Add1~6_combout\,
	combout => \fen|j~1_combout\);

-- Location: LCCOMB_X4_Y4_N0
\fen|j~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~2_combout\ = (\fen|Add1~22_combout\ & !\fen|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add1~22_combout\,
	datad => \fen|Equal1~9_combout\,
	combout => \fen|j~2_combout\);

-- Location: LCCOMB_X3_Y3_N0
\fen|j~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~3_combout\ = (!\fen|Equal1~9_combout\ & \fen|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Equal1~9_combout\,
	datad => \fen|Add1~26_combout\,
	combout => \fen|j~3_combout\);

-- Location: LCCOMB_X3_Y3_N22
\fen|j~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~4_combout\ = (!\fen|Equal1~9_combout\ & \fen|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Equal1~9_combout\,
	datad => \fen|Add1~28_combout\,
	combout => \fen|j~4_combout\);

-- Location: LCCOMB_X3_Y3_N14
\fen|j~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~5_combout\ = (\fen|Add1~30_combout\ & !\fen|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add1~30_combout\,
	datad => \fen|Equal1~9_combout\,
	combout => \fen|j~5_combout\);

-- Location: LCCOMB_X3_Y3_N8
\fen|j~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|j~6_combout\ = (!\fen|Equal1~9_combout\ & \fen|Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Equal1~9_combout\,
	datad => \fen|Add1~32_combout\,
	combout => \fen|j~6_combout\);

-- Location: LCCOMB_X22_Y14_N6
\pao|k1k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k1k~0_combout\ = !\key1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1~combout\,
	combout => \pao|k1k~0_combout\);

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

-- Location: CLKCTRL_G3
\fen|f1Hz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fen|f1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fen|f1Hz~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\fen|f100Hz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fen|f100Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fen|f100Hz~clkctrl_outclk\);

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

-- Location: LCCOMB_X21_Y15_N16
\p2|led_dig[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|led_dig[2]~feeder_combout\ = \p3|Mux35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p3|Mux35~0_combout\,
	combout => \p2|led_dig[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N14
\p2|led_dig[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|led_dig[4]~feeder_combout\ = \p2|display[1]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~22_combout\,
	combout => \p2|led_dig[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N12
\p3|led_dig[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|led_dig[7]~feeder_combout\ = \p2|display[1]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~23_combout\,
	combout => \p3|led_dig[7]~feeder_combout\);

-- Location: LCCOMB_X6_Y7_N30
\fen|k~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|k~3_combout\ = (\fen|Add2~14_combout\ & !\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Add2~14_combout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|k~3_combout\);

-- Location: LCFF_X6_Y7_N31
\fen|k[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|k~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(7));

-- Location: LCCOMB_X6_Y7_N22
\fen|k~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|k~4_combout\ = (\fen|Add2~10_combout\ & !\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Add2~10_combout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|k~4_combout\);

-- Location: LCFF_X6_Y7_N23
\fen|k[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|k~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(5));

-- Location: LCCOMB_X5_Y7_N0
\fen|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~0_combout\ = \fen|k\(0) $ (VCC)
-- \fen|Add2~1\ = CARRY(\fen|k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(0),
	datad => VCC,
	combout => \fen|Add2~0_combout\,
	cout => \fen|Add2~1\);

-- Location: LCFF_X5_Y7_N1
\fen|k[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(0));

-- Location: LCCOMB_X5_Y7_N2
\fen|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~2_combout\ = (\fen|k\(1) & (!\fen|Add2~1\)) # (!\fen|k\(1) & ((\fen|Add2~1\) # (GND)))
-- \fen|Add2~3\ = CARRY((!\fen|Add2~1\) # (!\fen|k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(1),
	datad => VCC,
	cin => \fen|Add2~1\,
	combout => \fen|Add2~2_combout\,
	cout => \fen|Add2~3\);

-- Location: LCFF_X5_Y7_N3
\fen|k[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(1));

-- Location: LCCOMB_X5_Y7_N4
\fen|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~4_combout\ = (\fen|k\(2) & (\fen|Add2~3\ $ (GND))) # (!\fen|k\(2) & (!\fen|Add2~3\ & VCC))
-- \fen|Add2~5\ = CARRY((\fen|k\(2) & !\fen|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(2),
	datad => VCC,
	cin => \fen|Add2~3\,
	combout => \fen|Add2~4_combout\,
	cout => \fen|Add2~5\);

-- Location: LCFF_X5_Y7_N5
\fen|k[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(2));

-- Location: LCCOMB_X5_Y7_N6
\fen|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~6_combout\ = (\fen|k\(3) & (!\fen|Add2~5\)) # (!\fen|k\(3) & ((\fen|Add2~5\) # (GND)))
-- \fen|Add2~7\ = CARRY((!\fen|Add2~5\) # (!\fen|k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(3),
	datad => VCC,
	cin => \fen|Add2~5\,
	combout => \fen|Add2~6_combout\,
	cout => \fen|Add2~7\);

-- Location: LCCOMB_X6_Y7_N14
\fen|k~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|k~5_combout\ = (\fen|Add2~6_combout\ & !\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|Add2~6_combout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|k~5_combout\);

-- Location: LCFF_X6_Y7_N15
\fen|k[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|k~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(3));

-- Location: LCCOMB_X5_Y7_N8
\fen|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~8_combout\ = (\fen|k\(4) & (\fen|Add2~7\ $ (GND))) # (!\fen|k\(4) & (!\fen|Add2~7\ & VCC))
-- \fen|Add2~9\ = CARRY((\fen|k\(4) & !\fen|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(4),
	datad => VCC,
	cin => \fen|Add2~7\,
	combout => \fen|Add2~8_combout\,
	cout => \fen|Add2~9\);

-- Location: LCFF_X5_Y7_N9
\fen|k[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(4));

-- Location: LCCOMB_X5_Y7_N16
\fen|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~16_combout\ = (\fen|k\(8) & (\fen|Add2~15\ $ (GND))) # (!\fen|k\(8) & (!\fen|Add2~15\ & VCC))
-- \fen|Add2~17\ = CARRY((\fen|k\(8) & !\fen|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(8),
	datad => VCC,
	cin => \fen|Add2~15\,
	combout => \fen|Add2~16_combout\,
	cout => \fen|Add2~17\);

-- Location: LCCOMB_X6_Y7_N12
\fen|k~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|k~2_combout\ = (\fen|Add2~16_combout\ & !\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Add2~16_combout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|k~2_combout\);

-- Location: LCFF_X6_Y7_N13
\fen|k[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|k~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(8));

-- Location: LCCOMB_X5_Y7_N18
\fen|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~18_combout\ = (\fen|k\(9) & (!\fen|Add2~17\)) # (!\fen|k\(9) & ((\fen|Add2~17\) # (GND)))
-- \fen|Add2~19\ = CARRY((!\fen|Add2~17\) # (!\fen|k\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(9),
	datad => VCC,
	cin => \fen|Add2~17\,
	combout => \fen|Add2~18_combout\,
	cout => \fen|Add2~19\);

-- Location: LCFF_X5_Y7_N19
\fen|k[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(9));

-- Location: LCCOMB_X5_Y7_N20
\fen|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~20_combout\ = (\fen|k\(10) & (\fen|Add2~19\ $ (GND))) # (!\fen|k\(10) & (!\fen|Add2~19\ & VCC))
-- \fen|Add2~21\ = CARRY((\fen|k\(10) & !\fen|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(10),
	datad => VCC,
	cin => \fen|Add2~19\,
	combout => \fen|Add2~20_combout\,
	cout => \fen|Add2~21\);

-- Location: LCCOMB_X5_Y7_N22
\fen|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~22_combout\ = (\fen|k\(11) & (!\fen|Add2~21\)) # (!\fen|k\(11) & ((\fen|Add2~21\) # (GND)))
-- \fen|Add2~23\ = CARRY((!\fen|Add2~21\) # (!\fen|k\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(11),
	datad => VCC,
	cin => \fen|Add2~21\,
	combout => \fen|Add2~22_combout\,
	cout => \fen|Add2~23\);

-- Location: LCFF_X5_Y7_N23
\fen|k[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(11));

-- Location: LCCOMB_X5_Y7_N24
\fen|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~24_combout\ = (\fen|k\(12) & (\fen|Add2~23\ $ (GND))) # (!\fen|k\(12) & (!\fen|Add2~23\ & VCC))
-- \fen|Add2~25\ = CARRY((\fen|k\(12) & !\fen|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(12),
	datad => VCC,
	cin => \fen|Add2~23\,
	combout => \fen|Add2~24_combout\,
	cout => \fen|Add2~25\);

-- Location: LCCOMB_X5_Y7_N26
\fen|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~26_combout\ = (\fen|k\(13) & (!\fen|Add2~25\)) # (!\fen|k\(13) & ((\fen|Add2~25\) # (GND)))
-- \fen|Add2~27\ = CARRY((!\fen|Add2~25\) # (!\fen|k\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(13),
	datad => VCC,
	cin => \fen|Add2~25\,
	combout => \fen|Add2~26_combout\,
	cout => \fen|Add2~27\);

-- Location: LCCOMB_X6_Y7_N10
\fen|k~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|k~1_combout\ = (\fen|Add2~26_combout\ & !\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Add2~26_combout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|k~1_combout\);

-- Location: LCFF_X6_Y7_N11
\fen|k[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|k~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(13));

-- Location: LCCOMB_X5_Y7_N28
\fen|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~28_combout\ = (\fen|k\(14) & (\fen|Add2~27\ $ (GND))) # (!\fen|k\(14) & (!\fen|Add2~27\ & VCC))
-- \fen|Add2~29\ = CARRY((\fen|k\(14) & !\fen|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(14),
	datad => VCC,
	cin => \fen|Add2~27\,
	combout => \fen|Add2~28_combout\,
	cout => \fen|Add2~29\);

-- Location: LCCOMB_X5_Y7_N30
\fen|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~30_combout\ = (\fen|k\(15) & (!\fen|Add2~29\)) # (!\fen|k\(15) & ((\fen|Add2~29\) # (GND)))
-- \fen|Add2~31\ = CARRY((!\fen|Add2~29\) # (!\fen|k\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(15),
	datad => VCC,
	cin => \fen|Add2~29\,
	combout => \fen|Add2~30_combout\,
	cout => \fen|Add2~31\);

-- Location: LCFF_X5_Y7_N31
\fen|k[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(15));

-- Location: LCCOMB_X5_Y6_N0
\fen|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~32_combout\ = (\fen|k\(16) & (\fen|Add2~31\ $ (GND))) # (!\fen|k\(16) & (!\fen|Add2~31\ & VCC))
-- \fen|Add2~33\ = CARRY((\fen|k\(16) & !\fen|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(16),
	datad => VCC,
	cin => \fen|Add2~31\,
	combout => \fen|Add2~32_combout\,
	cout => \fen|Add2~33\);

-- Location: LCFF_X5_Y6_N1
\fen|k[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(16));

-- Location: LCCOMB_X5_Y6_N2
\fen|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~34_combout\ = (\fen|k\(17) & (!\fen|Add2~33\)) # (!\fen|k\(17) & ((\fen|Add2~33\) # (GND)))
-- \fen|Add2~35\ = CARRY((!\fen|Add2~33\) # (!\fen|k\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(17),
	datad => VCC,
	cin => \fen|Add2~33\,
	combout => \fen|Add2~34_combout\,
	cout => \fen|Add2~35\);

-- Location: LCFF_X5_Y6_N3
\fen|k[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(17));

-- Location: LCCOMB_X5_Y6_N4
\fen|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~36_combout\ = (\fen|k\(18) & (\fen|Add2~35\ $ (GND))) # (!\fen|k\(18) & (!\fen|Add2~35\ & VCC))
-- \fen|Add2~37\ = CARRY((\fen|k\(18) & !\fen|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(18),
	datad => VCC,
	cin => \fen|Add2~35\,
	combout => \fen|Add2~36_combout\,
	cout => \fen|Add2~37\);

-- Location: LCFF_X5_Y6_N5
\fen|k[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(18));

-- Location: LCCOMB_X6_Y7_N18
\fen|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~5_combout\ = (!\fen|k\(17) & (!\fen|k\(16) & (!\fen|k\(15) & !\fen|k\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(17),
	datab => \fen|k\(16),
	datac => \fen|k\(15),
	datad => \fen|k\(18),
	combout => \fen|Equal2~5_combout\);

-- Location: LCFF_X5_Y7_N21
\fen|k[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(10));

-- Location: LCCOMB_X6_Y7_N24
\fen|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~7_combout\ = (\fen|k\(8) & (!\fen|k\(9) & (!\fen|k\(10) & \fen|k\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(8),
	datab => \fen|k\(9),
	datac => \fen|k\(10),
	datad => \fen|k\(7),
	combout => \fen|Equal2~7_combout\);

-- Location: LCFF_X5_Y7_N25
\fen|k[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(12));

-- Location: LCCOMB_X6_Y7_N26
\fen|k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|k~0_combout\ = (\fen|Add2~28_combout\ & !\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fen|Add2~28_combout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|k~0_combout\);

-- Location: LCFF_X6_Y7_N27
\fen|k[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|k~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(14));

-- Location: LCCOMB_X6_Y7_N6
\fen|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~6_combout\ = (\fen|k\(13) & (!\fen|k\(12) & (\fen|k\(14) & !\fen|k\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(13),
	datab => \fen|k\(12),
	datac => \fen|k\(14),
	datad => \fen|k\(11),
	combout => \fen|Equal2~6_combout\);

-- Location: LCCOMB_X6_Y7_N28
\fen|Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~9_combout\ = (\fen|Equal2~8_combout\ & (\fen|Equal2~5_combout\ & (\fen|Equal2~7_combout\ & \fen|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal2~8_combout\,
	datab => \fen|Equal2~5_combout\,
	datac => \fen|Equal2~7_combout\,
	datad => \fen|Equal2~6_combout\,
	combout => \fen|Equal2~9_combout\);

-- Location: LCCOMB_X5_Y6_N6
\fen|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~38_combout\ = (\fen|k\(19) & (!\fen|Add2~37\)) # (!\fen|k\(19) & ((\fen|Add2~37\) # (GND)))
-- \fen|Add2~39\ = CARRY((!\fen|Add2~37\) # (!\fen|k\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(19),
	datad => VCC,
	cin => \fen|Add2~37\,
	combout => \fen|Add2~38_combout\,
	cout => \fen|Add2~39\);

-- Location: LCCOMB_X5_Y6_N8
\fen|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~40_combout\ = (\fen|k\(20) & (\fen|Add2~39\ $ (GND))) # (!\fen|k\(20) & (!\fen|Add2~39\ & VCC))
-- \fen|Add2~41\ = CARRY((\fen|k\(20) & !\fen|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(20),
	datad => VCC,
	cin => \fen|Add2~39\,
	combout => \fen|Add2~40_combout\,
	cout => \fen|Add2~41\);

-- Location: LCFF_X5_Y6_N9
\fen|k[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(20));

-- Location: LCCOMB_X5_Y6_N12
\fen|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~44_combout\ = (\fen|k\(22) & (\fen|Add2~43\ $ (GND))) # (!\fen|k\(22) & (!\fen|Add2~43\ & VCC))
-- \fen|Add2~45\ = CARRY((\fen|k\(22) & !\fen|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(22),
	datad => VCC,
	cin => \fen|Add2~43\,
	combout => \fen|Add2~44_combout\,
	cout => \fen|Add2~45\);

-- Location: LCFF_X5_Y6_N13
\fen|k[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(22));

-- Location: LCFF_X5_Y6_N7
\fen|k[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(19));

-- Location: LCCOMB_X6_Y6_N10
\fen|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~4_combout\ = (!\fen|k\(21) & (!\fen|k\(22) & (!\fen|k\(19) & !\fen|k\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(21),
	datab => \fen|k\(22),
	datac => \fen|k\(19),
	datad => \fen|k\(20),
	combout => \fen|Equal2~4_combout\);

-- Location: LCCOMB_X4_Y7_N20
\fen|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~0_combout\ = (\fen|k\(1) & (\fen|k\(0) & \fen|k\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|k\(1),
	datac => \fen|k\(0),
	datad => \fen|k\(2),
	combout => \fen|Equal2~0_combout\);

-- Location: LCCOMB_X5_Y6_N14
\fen|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~46_combout\ = (\fen|k\(23) & (!\fen|Add2~45\)) # (!\fen|k\(23) & ((\fen|Add2~45\) # (GND)))
-- \fen|Add2~47\ = CARRY((!\fen|Add2~45\) # (!\fen|k\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(23),
	datad => VCC,
	cin => \fen|Add2~45\,
	combout => \fen|Add2~46_combout\,
	cout => \fen|Add2~47\);

-- Location: LCFF_X5_Y6_N15
\fen|k[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(23));

-- Location: LCCOMB_X5_Y6_N18
\fen|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~50_combout\ = (\fen|k\(25) & (!\fen|Add2~49\)) # (!\fen|k\(25) & ((\fen|Add2~49\) # (GND)))
-- \fen|Add2~51\ = CARRY((!\fen|Add2~49\) # (!\fen|k\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(25),
	datad => VCC,
	cin => \fen|Add2~49\,
	combout => \fen|Add2~50_combout\,
	cout => \fen|Add2~51\);

-- Location: LCFF_X5_Y6_N19
\fen|k[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(25));

-- Location: LCCOMB_X5_Y6_N22
\fen|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~54_combout\ = (\fen|k\(27) & (!\fen|Add2~53\)) # (!\fen|k\(27) & ((\fen|Add2~53\) # (GND)))
-- \fen|Add2~55\ = CARRY((!\fen|Add2~53\) # (!\fen|k\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(27),
	datad => VCC,
	cin => \fen|Add2~53\,
	combout => \fen|Add2~54_combout\,
	cout => \fen|Add2~55\);

-- Location: LCFF_X5_Y6_N23
\fen|k[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(27));

-- Location: LCCOMB_X5_Y6_N26
\fen|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~58_combout\ = (\fen|k\(29) & (!\fen|Add2~57\)) # (!\fen|k\(29) & ((\fen|Add2~57\) # (GND)))
-- \fen|Add2~59\ = CARRY((!\fen|Add2~57\) # (!\fen|k\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(29),
	datad => VCC,
	cin => \fen|Add2~57\,
	combout => \fen|Add2~58_combout\,
	cout => \fen|Add2~59\);

-- Location: LCFF_X5_Y6_N27
\fen|k[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(29));

-- Location: LCCOMB_X5_Y6_N28
\fen|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~60_combout\ = (\fen|k\(30) & (\fen|Add2~59\ $ (GND))) # (!\fen|k\(30) & (!\fen|Add2~59\ & VCC))
-- \fen|Add2~61\ = CARRY((\fen|k\(30) & !\fen|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fen|k\(30),
	datad => VCC,
	cin => \fen|Add2~59\,
	combout => \fen|Add2~60_combout\,
	cout => \fen|Add2~61\);

-- Location: LCFF_X5_Y6_N29
\fen|k[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(30));

-- Location: LCCOMB_X5_Y6_N30
\fen|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Add2~62_combout\ = \fen|Add2~61\ $ (\fen|k\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fen|k\(31),
	cin => \fen|Add2~61\,
	combout => \fen|Add2~62_combout\);

-- Location: LCFF_X5_Y6_N31
\fen|k[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|k\(31));

-- Location: LCCOMB_X6_Y7_N2
\fen|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~2_combout\ = (\fen|Equal2~1_combout\ & (\fen|Equal2~0_combout\ & !\fen|k\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal2~1_combout\,
	datac => \fen|Equal2~0_combout\,
	datad => \fen|k\(31),
	combout => \fen|Equal2~2_combout\);

-- Location: LCCOMB_X6_Y7_N0
\fen|Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|Equal2~10_combout\ = (\fen|Equal2~3_combout\ & (\fen|Equal2~9_combout\ & (\fen|Equal2~4_combout\ & \fen|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fen|Equal2~3_combout\,
	datab => \fen|Equal2~9_combout\,
	datac => \fen|Equal2~4_combout\,
	datad => \fen|Equal2~2_combout\,
	combout => \fen|Equal2~10_combout\);

-- Location: LCCOMB_X6_Y7_N8
\fen|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fen|f~0_combout\ = \fen|f~regout\ $ (\fen|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fen|f~regout\,
	datad => \fen|Equal2~10_combout\,
	combout => \fen|f~0_combout\);

-- Location: LCFF_X6_Y7_N9
\fen|f\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fen|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fen|f~regout\);

-- Location: CLKCTRL_G1
\fen|f~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fen|f~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fen|f~clkctrl_outclk\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modkey~I\ : cycloneii_io
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
	padio => ww_modkey,
	combout => \modkey~combout\);

-- Location: LCCOMB_X17_Y13_N10
\comb_3|mkoo[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|mkoo[0]~1_combout\ = \modkey~combout\ $ (!\comb_3|mkoo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modkey~combout\,
	datac => \comb_3|mkoo\(0),
	combout => \comb_3|mkoo[0]~1_combout\);

-- Location: LCFF_X17_Y13_N11
\comb_3|mkoo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \comb_3|mkoo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|mkoo\(0));

-- Location: LCCOMB_X17_Y13_N24
\comb_3|mkoo[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|mkoo[1]~0_combout\ = \comb_3|mkoo\(1) $ (((!\modkey~combout\ & \comb_3|mkoo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modkey~combout\,
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \comb_3|mkoo[1]~0_combout\);

-- Location: LCFF_X17_Y13_N25
\comb_3|mkoo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \comb_3|mkoo[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|mkoo\(1));

-- Location: LCCOMB_X16_Y13_N20
\nao|dd[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|dd[0]~3_combout\ = !\nao|dd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nao|dd\(0),
	combout => \nao|dd[0]~3_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key2~I\ : cycloneii_io
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
	padio => ww_key2,
	combout => \key2~combout\);

-- Location: LCCOMB_X17_Y13_N0
\mc|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux1~1_combout\ = (\comb_3|mkoo\(1) & \comb_3|mkoo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \mc|Mux1~1_combout\);

-- Location: LCFF_X15_Y12_N7
\nao|k2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|k2~0_combout\,
	ena => \mc|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|k2~regout\);

-- Location: LCCOMB_X15_Y12_N28
\nao|k2k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|k2k~0_combout\ = !\key2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2~combout\,
	combout => \nao|k2k~0_combout\);

-- Location: LCFF_X15_Y12_N29
\nao|k2k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|k2k~0_combout\,
	ena => \mc|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|k2k~regout\);

-- Location: LCCOMB_X15_Y12_N6
\nao|k2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|k2~0_combout\ = (!\key2~combout\ & ((\nao|k2~regout\) # (!\nao|k2k~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2~combout\,
	datac => \nao|k2~regout\,
	datad => \nao|k2k~regout\,
	combout => \nao|k2~0_combout\);

-- Location: LCCOMB_X14_Y12_N20
\nao|cc[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|cc[0]~5_combout\ = !\nao|cc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nao|cc\(0),
	combout => \nao|cc[0]~5_combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key1~I\ : cycloneii_io
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
	padio => ww_key1,
	combout => \key1~combout\);

-- Location: LCFF_X15_Y11_N29
\nao|k1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	sdata => \nao|k1~0_combout\,
	sload => VCC,
	ena => \mc|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|k1\(0));

-- Location: LCCOMB_X15_Y11_N6
\nao|k1k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|k1k~0_combout\ = !\key1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key1~combout\,
	combout => \nao|k1k~0_combout\);

-- Location: LCFF_X15_Y11_N7
\nao|k1k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|k1k~0_combout\,
	ena => \mc|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|k1k~regout\);

-- Location: LCCOMB_X15_Y11_N0
\nao|k1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|k1~0_combout\ = \nao|k1\(0) $ (((!\key1~combout\ & !\nao|k1k~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1~combout\,
	datac => \nao|k1\(0),
	datad => \nao|k1k~regout\,
	combout => \nao|k1~0_combout\);

-- Location: LCCOMB_X14_Y12_N28
\nao|cc[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|cc[3]~4_combout\ = (\nao|k2~0_combout\ & (!\nao|k1~0_combout\ & (\comb_3|mkoo\(1) & \comb_3|mkoo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k2~0_combout\,
	datab => \nao|k1~0_combout\,
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \nao|cc[3]~4_combout\);

-- Location: LCFF_X14_Y12_N21
\nao|cc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|cc[0]~5_combout\,
	ena => \nao|cc[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|cc\(0));

-- Location: LCCOMB_X14_Y12_N14
\nao|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add1~0_combout\ = \nao|cc\(2) $ (((\nao|cc\(1) & \nao|cc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|cc\(1),
	datac => \nao|cc\(2),
	datad => \nao|cc\(0),
	combout => \nao|Add1~0_combout\);

-- Location: LCFF_X14_Y12_N15
\nao|cc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|Add1~0_combout\,
	ena => \nao|cc[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|cc\(2));

-- Location: LCCOMB_X14_Y12_N6
\nao|cc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|cc~2_combout\ = (\nao|cc\(0) & ((\nao|cc\(2) & (\nao|cc\(3) $ (\nao|cc\(1)))) # (!\nao|cc\(2) & (\nao|cc\(3) & \nao|cc\(1))))) # (!\nao|cc\(0) & (((\nao|cc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(0),
	datab => \nao|cc\(2),
	datac => \nao|cc\(3),
	datad => \nao|cc\(1),
	combout => \nao|cc~2_combout\);

-- Location: LCFF_X14_Y12_N7
\nao|cc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|cc~2_combout\,
	ena => \nao|cc[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|cc\(3));

-- Location: LCCOMB_X14_Y12_N4
\nao|cc~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|cc~3_combout\ = (\nao|cc\(0) & (!\nao|cc\(1) & ((\nao|cc\(2)) # (!\nao|cc\(3))))) # (!\nao|cc\(0) & (((\nao|cc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(2),
	datab => \nao|cc\(0),
	datac => \nao|cc\(1),
	datad => \nao|cc\(3),
	combout => \nao|cc~3_combout\);

-- Location: LCFF_X14_Y12_N5
\nao|cc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|cc~3_combout\,
	ena => \nao|cc[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|cc\(1));

-- Location: LCCOMB_X14_Y12_N22
\nao|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Equal7~0_combout\ = (\nao|cc\(0) & (!\nao|cc\(1) & (!\nao|cc\(2) & \nao|cc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(0),
	datab => \nao|cc\(1),
	datac => \nao|cc\(2),
	datad => \nao|cc\(3),
	combout => \nao|Equal7~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\nao|dd[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|dd[3]~0_combout\ = (!\nao|k1~0_combout\ & (\nao|k2~0_combout\ & (\nao|Equal7~0_combout\ & \mc|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1~0_combout\,
	datab => \nao|k2~0_combout\,
	datac => \nao|Equal7~0_combout\,
	datad => \mc|Mux1~1_combout\,
	combout => \nao|dd[3]~0_combout\);

-- Location: LCFF_X16_Y13_N21
\nao|dd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|dd[0]~3_combout\,
	ena => \nao|dd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|dd\(0));

-- Location: LCCOMB_X16_Y13_N6
\nao|dd~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|dd~1_combout\ = (\nao|dd\(1) & (((!\nao|dd\(0))))) # (!\nao|dd\(1) & (\nao|dd\(0) & ((\nao|dd\(3)) # (!\nao|dd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(2),
	datab => \nao|dd\(3),
	datac => \nao|dd\(1),
	datad => \nao|dd\(0),
	combout => \nao|dd~1_combout\);

-- Location: LCFF_X16_Y13_N7
\nao|dd[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|dd~1_combout\,
	ena => \nao|dd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|dd\(1));

-- Location: LCCOMB_X16_Y13_N14
\nao|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add2~0_combout\ = \nao|dd\(3) $ (((\nao|dd\(2) & (\nao|dd\(0) & \nao|dd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(2),
	datab => \nao|dd\(0),
	datac => \nao|dd\(3),
	datad => \nao|dd\(1),
	combout => \nao|Add2~0_combout\);

-- Location: LCFF_X16_Y13_N15
\nao|dd[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|Add2~0_combout\,
	ena => \nao|dd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|dd\(3));

-- Location: LCCOMB_X16_Y13_N28
\nao|dd~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|dd~2_combout\ = (\nao|dd\(1) & (\nao|dd\(0) $ ((\nao|dd\(2))))) # (!\nao|dd\(1) & (\nao|dd\(2) & ((\nao|dd\(3)) # (!\nao|dd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(1),
	datab => \nao|dd\(0),
	datac => \nao|dd\(2),
	datad => \nao|dd\(3),
	combout => \nao|dd~2_combout\);

-- Location: LCFF_X16_Y13_N29
\nao|dd[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|dd~2_combout\,
	ena => \nao|dd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|dd\(2));

-- Location: LCCOMB_X24_Y13_N18
\p2|display[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~14_combout\ = \p2|o\(0) $ (\p2|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datad => \p2|o\(1),
	combout => \p2|display[1]~14_combout\);

-- Location: LCFF_X24_Y13_N13
\p2|o[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	sdata => \p2|display[1]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|o\(1));

-- Location: LCCOMB_X15_Y11_N26
\p3|Mux42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~3_combout\ = (!\p2|o\(1) & ((\nao|dd\(2) & ((\nao|dd\(0)))) # (!\nao|dd\(2) & ((\nao|dd\(1)) # (!\nao|dd\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(1),
	datab => \nao|dd\(2),
	datac => \p2|o\(1),
	datad => \nao|dd\(0),
	combout => \p3|Mux42~3_combout\);

-- Location: LCCOMB_X15_Y11_N28
\nao|k1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|k1[1]~1_combout\ = (\comb_3|mkoo\(0) & (\nao|k1\(0) & \comb_3|mkoo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|mkoo\(0),
	datac => \nao|k1\(0),
	datad => \comb_3|mkoo\(1),
	combout => \nao|k1[1]~1_combout\);

-- Location: LCCOMB_X15_Y11_N20
\nao|k1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|k1[1]~2_combout\ = \nao|k1\(1) $ (((!\nao|k1k~regout\ & (!\key1~combout\ & \nao|k1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1k~regout\,
	datab => \key1~combout\,
	datac => \nao|k1\(1),
	datad => \nao|k1[1]~1_combout\,
	combout => \nao|k1[1]~2_combout\);

-- Location: LCFF_X15_Y11_N21
\nao|k1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|k1[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|k1\(1));

-- Location: LCCOMB_X16_Y17_N8
\p1|i~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|i~3_combout\ = (\p1|Add0~12_combout\ & !\p1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Add0~12_combout\,
	datad => \p1|Equal0~10_combout\,
	combout => \p1|i~3_combout\);

-- Location: LCFF_X16_Y17_N9
\p1|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(6));

-- Location: LCCOMB_X16_Y17_N14
\p1|i~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|i~2_combout\ = (\p1|Add0~10_combout\ & !\p1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Add0~10_combout\,
	datad => \p1|Equal0~10_combout\,
	combout => \p1|i~2_combout\);

-- Location: LCFF_X16_Y17_N15
\p1|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(5));

-- Location: LCCOMB_X15_Y17_N0
\p1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~0_combout\ = \p1|i\(0) $ (VCC)
-- \p1|Add0~1\ = CARRY(\p1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(0),
	datad => VCC,
	combout => \p1|Add0~0_combout\,
	cout => \p1|Add0~1\);

-- Location: LCCOMB_X16_Y17_N30
\p1|i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|i~1_combout\ = (\p1|Add0~0_combout\ & !\p1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p1|Add0~0_combout\,
	datad => \p1|Equal0~10_combout\,
	combout => \p1|i~1_combout\);

-- Location: LCFF_X16_Y17_N31
\p1|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(0));

-- Location: LCCOMB_X15_Y17_N2
\p1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~2_combout\ = (\p1|i\(1) & (!\p1|Add0~1\)) # (!\p1|i\(1) & ((\p1|Add0~1\) # (GND)))
-- \p1|Add0~3\ = CARRY((!\p1|Add0~1\) # (!\p1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(1),
	datad => VCC,
	cin => \p1|Add0~1\,
	combout => \p1|Add0~2_combout\,
	cout => \p1|Add0~3\);

-- Location: LCFF_X15_Y17_N3
\p1|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(1));

-- Location: LCCOMB_X15_Y17_N4
\p1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~4_combout\ = (\p1|i\(2) & (\p1|Add0~3\ $ (GND))) # (!\p1|i\(2) & (!\p1|Add0~3\ & VCC))
-- \p1|Add0~5\ = CARRY((\p1|i\(2) & !\p1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(2),
	datad => VCC,
	cin => \p1|Add0~3\,
	combout => \p1|Add0~4_combout\,
	cout => \p1|Add0~5\);

-- Location: LCCOMB_X16_Y17_N24
\p1|i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|i~0_combout\ = (\p1|Add0~4_combout\ & !\p1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p1|Add0~4_combout\,
	datad => \p1|Equal0~10_combout\,
	combout => \p1|i~0_combout\);

-- Location: LCFF_X16_Y17_N25
\p1|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(2));

-- Location: LCCOMB_X15_Y17_N6
\p1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~6_combout\ = (\p1|i\(3) & (!\p1|Add0~5\)) # (!\p1|i\(3) & ((\p1|Add0~5\) # (GND)))
-- \p1|Add0~7\ = CARRY((!\p1|Add0~5\) # (!\p1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(3),
	datad => VCC,
	cin => \p1|Add0~5\,
	combout => \p1|Add0~6_combout\,
	cout => \p1|Add0~7\);

-- Location: LCCOMB_X15_Y17_N8
\p1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~8_combout\ = (\p1|i\(4) & (\p1|Add0~7\ $ (GND))) # (!\p1|i\(4) & (!\p1|Add0~7\ & VCC))
-- \p1|Add0~9\ = CARRY((\p1|i\(4) & !\p1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(4),
	datad => VCC,
	cin => \p1|Add0~7\,
	combout => \p1|Add0~8_combout\,
	cout => \p1|Add0~9\);

-- Location: LCFF_X15_Y17_N9
\p1|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(4));

-- Location: LCCOMB_X16_Y17_N2
\p1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~1_combout\ = (!\p1|i\(7) & (\p1|i\(6) & (\p1|i\(5) & !\p1|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(7),
	datab => \p1|i\(6),
	datac => \p1|i\(5),
	datad => \p1|i\(4),
	combout => \p1|Equal0~1_combout\);

-- Location: LCFF_X15_Y17_N7
\p1|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(3));

-- Location: LCCOMB_X16_Y17_N4
\p1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~0_combout\ = (\p1|i\(2) & (!\p1|i\(0) & (!\p1|i\(3) & !\p1|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(2),
	datab => \p1|i\(0),
	datac => \p1|i\(3),
	datad => \p1|i\(1),
	combout => \p1|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y17_N14
\p1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~14_combout\ = (\p1|i\(7) & (!\p1|Add0~13\)) # (!\p1|i\(7) & ((\p1|Add0~13\) # (GND)))
-- \p1|Add0~15\ = CARRY((!\p1|Add0~13\) # (!\p1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(7),
	datad => VCC,
	cin => \p1|Add0~13\,
	combout => \p1|Add0~14_combout\,
	cout => \p1|Add0~15\);

-- Location: LCFF_X15_Y17_N15
\p1|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(7));

-- Location: LCCOMB_X15_Y17_N18
\p1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~18_combout\ = (\p1|i\(9) & (!\p1|Add0~17\)) # (!\p1|i\(9) & ((\p1|Add0~17\) # (GND)))
-- \p1|Add0~19\ = CARRY((!\p1|Add0~17\) # (!\p1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(9),
	datad => VCC,
	cin => \p1|Add0~17\,
	combout => \p1|Add0~18_combout\,
	cout => \p1|Add0~19\);

-- Location: LCFF_X15_Y17_N19
\p1|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(9));

-- Location: LCCOMB_X15_Y17_N22
\p1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~22_combout\ = (\p1|i\(11) & (!\p1|Add0~21\)) # (!\p1|i\(11) & ((\p1|Add0~21\) # (GND)))
-- \p1|Add0~23\ = CARRY((!\p1|Add0~21\) # (!\p1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(11),
	datad => VCC,
	cin => \p1|Add0~21\,
	combout => \p1|Add0~22_combout\,
	cout => \p1|Add0~23\);

-- Location: LCFF_X15_Y17_N23
\p1|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(11));

-- Location: LCCOMB_X15_Y17_N24
\p1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~24_combout\ = (\p1|i\(12) & (\p1|Add0~23\ $ (GND))) # (!\p1|i\(12) & (!\p1|Add0~23\ & VCC))
-- \p1|Add0~25\ = CARRY((\p1|i\(12) & !\p1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(12),
	datad => VCC,
	cin => \p1|Add0~23\,
	combout => \p1|Add0~24_combout\,
	cout => \p1|Add0~25\);

-- Location: LCCOMB_X15_Y17_N26
\p1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~26_combout\ = (\p1|i\(13) & (!\p1|Add0~25\)) # (!\p1|i\(13) & ((\p1|Add0~25\) # (GND)))
-- \p1|Add0~27\ = CARRY((!\p1|Add0~25\) # (!\p1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(13),
	datad => VCC,
	cin => \p1|Add0~25\,
	combout => \p1|Add0~26_combout\,
	cout => \p1|Add0~27\);

-- Location: LCFF_X15_Y17_N27
\p1|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(13));

-- Location: LCCOMB_X15_Y17_N28
\p1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~28_combout\ = (\p1|i\(14) & (\p1|Add0~27\ $ (GND))) # (!\p1|i\(14) & (!\p1|Add0~27\ & VCC))
-- \p1|Add0~29\ = CARRY((\p1|i\(14) & !\p1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(14),
	datad => VCC,
	cin => \p1|Add0~27\,
	combout => \p1|Add0~28_combout\,
	cout => \p1|Add0~29\);

-- Location: LCFF_X15_Y17_N29
\p1|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(14));

-- Location: LCFF_X15_Y17_N25
\p1|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(12));

-- Location: LCCOMB_X16_Y17_N26
\p1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~3_combout\ = (!\p1|i\(15) & (!\p1|i\(13) & (!\p1|i\(14) & !\p1|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(15),
	datab => \p1|i\(13),
	datac => \p1|i\(14),
	datad => \p1|i\(12),
	combout => \p1|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y17_N28
\p1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~4_combout\ = (\p1|Equal0~2_combout\ & (\p1|Equal0~1_combout\ & (\p1|Equal0~0_combout\ & \p1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~2_combout\,
	datab => \p1|Equal0~1_combout\,
	datac => \p1|Equal0~0_combout\,
	datad => \p1|Equal0~3_combout\,
	combout => \p1|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y17_N30
\p1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~30_combout\ = (\p1|i\(15) & (!\p1|Add0~29\)) # (!\p1|i\(15) & ((\p1|Add0~29\) # (GND)))
-- \p1|Add0~31\ = CARRY((!\p1|Add0~29\) # (!\p1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(15),
	datad => VCC,
	cin => \p1|Add0~29\,
	combout => \p1|Add0~30_combout\,
	cout => \p1|Add0~31\);

-- Location: LCFF_X15_Y17_N31
\p1|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(15));

-- Location: LCCOMB_X15_Y16_N0
\p1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~32_combout\ = (\p1|i\(16) & (\p1|Add0~31\ $ (GND))) # (!\p1|i\(16) & (!\p1|Add0~31\ & VCC))
-- \p1|Add0~33\ = CARRY((\p1|i\(16) & !\p1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(16),
	datad => VCC,
	cin => \p1|Add0~31\,
	combout => \p1|Add0~32_combout\,
	cout => \p1|Add0~33\);

-- Location: LCFF_X15_Y16_N1
\p1|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(16));

-- Location: LCCOMB_X15_Y16_N2
\p1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~34_combout\ = (\p1|i\(17) & (!\p1|Add0~33\)) # (!\p1|i\(17) & ((\p1|Add0~33\) # (GND)))
-- \p1|Add0~35\ = CARRY((!\p1|Add0~33\) # (!\p1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(17),
	datad => VCC,
	cin => \p1|Add0~33\,
	combout => \p1|Add0~34_combout\,
	cout => \p1|Add0~35\);

-- Location: LCFF_X15_Y16_N3
\p1|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(17));

-- Location: LCCOMB_X15_Y16_N4
\p1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~36_combout\ = (\p1|i\(18) & (\p1|Add0~35\ $ (GND))) # (!\p1|i\(18) & (!\p1|Add0~35\ & VCC))
-- \p1|Add0~37\ = CARRY((\p1|i\(18) & !\p1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(18),
	datad => VCC,
	cin => \p1|Add0~35\,
	combout => \p1|Add0~36_combout\,
	cout => \p1|Add0~37\);

-- Location: LCFF_X15_Y16_N5
\p1|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(18));

-- Location: LCCOMB_X15_Y16_N8
\p1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~40_combout\ = (\p1|i\(20) & (\p1|Add0~39\ $ (GND))) # (!\p1|i\(20) & (!\p1|Add0~39\ & VCC))
-- \p1|Add0~41\ = CARRY((\p1|i\(20) & !\p1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(20),
	datad => VCC,
	cin => \p1|Add0~39\,
	combout => \p1|Add0~40_combout\,
	cout => \p1|Add0~41\);

-- Location: LCFF_X15_Y16_N9
\p1|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(20));

-- Location: LCCOMB_X15_Y16_N10
\p1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~42_combout\ = (\p1|i\(21) & (!\p1|Add0~41\)) # (!\p1|i\(21) & ((\p1|Add0~41\) # (GND)))
-- \p1|Add0~43\ = CARRY((!\p1|Add0~41\) # (!\p1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(21),
	datad => VCC,
	cin => \p1|Add0~41\,
	combout => \p1|Add0~42_combout\,
	cout => \p1|Add0~43\);

-- Location: LCCOMB_X15_Y16_N12
\p1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~44_combout\ = (\p1|i\(22) & (\p1|Add0~43\ $ (GND))) # (!\p1|i\(22) & (!\p1|Add0~43\ & VCC))
-- \p1|Add0~45\ = CARRY((\p1|i\(22) & !\p1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(22),
	datad => VCC,
	cin => \p1|Add0~43\,
	combout => \p1|Add0~44_combout\,
	cout => \p1|Add0~45\);

-- Location: LCFF_X15_Y16_N13
\p1|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(22));

-- Location: LCFF_X15_Y16_N11
\p1|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(21));

-- Location: LCCOMB_X15_Y16_N14
\p1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~46_combout\ = (\p1|i\(23) & (!\p1|Add0~45\)) # (!\p1|i\(23) & ((\p1|Add0~45\) # (GND)))
-- \p1|Add0~47\ = CARRY((!\p1|Add0~45\) # (!\p1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(23),
	datad => VCC,
	cin => \p1|Add0~45\,
	combout => \p1|Add0~46_combout\,
	cout => \p1|Add0~47\);

-- Location: LCFF_X15_Y16_N15
\p1|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(23));

-- Location: LCCOMB_X16_Y16_N22
\p1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~6_combout\ = (!\p1|i\(20) & (!\p1|i\(22) & (!\p1|i\(21) & !\p1|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(20),
	datab => \p1|i\(22),
	datac => \p1|i\(21),
	datad => \p1|i\(23),
	combout => \p1|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y16_N16
\p1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~48_combout\ = (\p1|i\(24) & (\p1|Add0~47\ $ (GND))) # (!\p1|i\(24) & (!\p1|Add0~47\ & VCC))
-- \p1|Add0~49\ = CARRY((\p1|i\(24) & !\p1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(24),
	datad => VCC,
	cin => \p1|Add0~47\,
	combout => \p1|Add0~48_combout\,
	cout => \p1|Add0~49\);

-- Location: LCCOMB_X15_Y16_N18
\p1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~50_combout\ = (\p1|i\(25) & (!\p1|Add0~49\)) # (!\p1|i\(25) & ((\p1|Add0~49\) # (GND)))
-- \p1|Add0~51\ = CARRY((!\p1|Add0~49\) # (!\p1|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(25),
	datad => VCC,
	cin => \p1|Add0~49\,
	combout => \p1|Add0~50_combout\,
	cout => \p1|Add0~51\);

-- Location: LCFF_X15_Y16_N19
\p1|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(25));

-- Location: LCCOMB_X15_Y16_N22
\p1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~54_combout\ = (\p1|i\(27) & (!\p1|Add0~53\)) # (!\p1|i\(27) & ((\p1|Add0~53\) # (GND)))
-- \p1|Add0~55\ = CARRY((!\p1|Add0~53\) # (!\p1|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(27),
	datad => VCC,
	cin => \p1|Add0~53\,
	combout => \p1|Add0~54_combout\,
	cout => \p1|Add0~55\);

-- Location: LCFF_X15_Y16_N23
\p1|i[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(27));

-- Location: LCCOMB_X15_Y16_N24
\p1|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~56_combout\ = (\p1|i\(28) & (\p1|Add0~55\ $ (GND))) # (!\p1|i\(28) & (!\p1|Add0~55\ & VCC))
-- \p1|Add0~57\ = CARRY((\p1|i\(28) & !\p1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(28),
	datad => VCC,
	cin => \p1|Add0~55\,
	combout => \p1|Add0~56_combout\,
	cout => \p1|Add0~57\);

-- Location: LCCOMB_X15_Y16_N26
\p1|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~58_combout\ = (\p1|i\(29) & (!\p1|Add0~57\)) # (!\p1|i\(29) & ((\p1|Add0~57\) # (GND)))
-- \p1|Add0~59\ = CARRY((!\p1|Add0~57\) # (!\p1|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(29),
	datad => VCC,
	cin => \p1|Add0~57\,
	combout => \p1|Add0~58_combout\,
	cout => \p1|Add0~59\);

-- Location: LCFF_X15_Y16_N27
\p1|i[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(29));

-- Location: LCFF_X15_Y16_N29
\p1|i[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(30));

-- Location: LCFF_X15_Y16_N25
\p1|i[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(28));

-- Location: LCCOMB_X16_Y16_N14
\p1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~8_combout\ = (!\p1|i\(29) & !\p1|i\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|i\(29),
	datad => \p1|i\(28),
	combout => \p1|Equal0~8_combout\);

-- Location: LCFF_X15_Y16_N17
\p1|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|i\(24));

-- Location: LCCOMB_X16_Y16_N12
\p1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~7_combout\ = (!\p1|i\(26) & (!\p1|i\(25) & (!\p1|i\(27) & !\p1|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(26),
	datab => \p1|i\(25),
	datac => \p1|i\(27),
	datad => \p1|i\(24),
	combout => \p1|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y16_N20
\p1|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~9_combout\ = (!\p1|i\(31) & (!\p1|i\(30) & (\p1|Equal0~8_combout\ & \p1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|i\(31),
	datab => \p1|i\(30),
	datac => \p1|Equal0~8_combout\,
	datad => \p1|Equal0~7_combout\,
	combout => \p1|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y17_N10
\p1|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~10_combout\ = (\p1|Equal0~5_combout\ & (\p1|Equal0~4_combout\ & (\p1|Equal0~6_combout\ & \p1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Equal0~6_combout\,
	datad => \p1|Equal0~9_combout\,
	combout => \p1|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y13_N26
\p1|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|delay~0_combout\ = \p1|delay~regout\ $ (\p1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p1|delay~regout\,
	datad => \p1|Equal0~10_combout\,
	combout => \p1|delay~0_combout\);

-- Location: LCFF_X17_Y13_N27
\p1|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|delay~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|delay~regout\);

-- Location: LCCOMB_X15_Y11_N10
\p3|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|always0~0_combout\ = (\nao|k1\(0)) # ((\nao|k1\(1) $ (!\comb_3|mkoo\(0))) # (!\p1|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1\(0),
	datab => \nao|k1\(1),
	datac => \comb_3|mkoo\(0),
	datad => \p1|delay~regout\,
	combout => \p3|always0~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
\p2|o[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|o[0]~1_combout\ = !\p2|o\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|o\(0),
	combout => \p2|o[0]~1_combout\);

-- Location: LCFF_X21_Y13_N27
\p2|o[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	sdata => \p2|o[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|o\(0));

-- Location: LCCOMB_X16_Y11_N4
\p1|display[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~6_combout\ = (\p2|o\(0)) # (\p2|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(0),
	datad => \p2|o\(1),
	combout => \p1|display[2]~6_combout\);

-- Location: LCCOMB_X15_Y11_N4
\p3|Mux42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~2_combout\ = (\p2|o\(2) & (!\p1|display[2]~6_combout\ & ((\p3|always0~0_combout\) # (!\comb_3|mkoo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datab => \comb_3|mkoo\(1),
	datac => \p3|always0~0_combout\,
	datad => \p1|display[2]~6_combout\,
	combout => \p3|Mux42~2_combout\);

-- Location: LCCOMB_X15_Y12_N8
\p3|display[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~8_combout\ = (\p2|o\(0) & ((\nao|cc\(3)))) # (!\p2|o\(0) & (\nao|ee\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(3),
	datac => \nao|cc\(3),
	datad => \p2|o\(0),
	combout => \p3|display[0]~8_combout\);

-- Location: LCCOMB_X16_Y12_N28
\nao|ee~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~2_combout\ = (\nao|Equal8~0_combout\) # (((\nao|k1~0_combout\) # (!\nao|Equal7~0_combout\)) # (!\nao|k2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|Equal8~0_combout\,
	datab => \nao|k2~0_combout\,
	datac => \nao|Equal7~0_combout\,
	datad => \nao|k1~0_combout\,
	combout => \nao|ee~2_combout\);

-- Location: LCCOMB_X16_Y12_N0
\nao|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add5~0_combout\ = (\nao|ee\(0) & (((\nao|ee\(1) & \nao|ee~2_combout\)))) # (!\nao|ee\(0) & (\nao|ee~4_combout\ & ((!\nao|ee~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~4_combout\,
	datab => \nao|ee\(0),
	datac => \nao|ee\(1),
	datad => \nao|ee~2_combout\,
	combout => \nao|Add5~0_combout\);

-- Location: LCCOMB_X17_Y12_N30
\nao|ee~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~6_combout\ = (\nao|k1~0_combout\ & (\nao|ee\(2))) # (!\nao|k1~0_combout\ & ((\nao|k2~0_combout\ & ((\nao|ee~5_combout\))) # (!\nao|k2~0_combout\ & (\nao|ee\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(2),
	datab => \nao|k1~0_combout\,
	datac => \nao|k2~0_combout\,
	datad => \nao|ee~5_combout\,
	combout => \nao|ee~6_combout\);

-- Location: LCCOMB_X17_Y12_N8
\nao|always0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~14_combout\ = (\nao|ee~3_combout\) # (\nao|Add5~0_combout\ $ (!\nao|ee~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~3_combout\,
	datac => \nao|Add5~0_combout\,
	datad => \nao|ee~6_combout\,
	combout => \nao|always0~14_combout\);

-- Location: LCCOMB_X16_Y13_N16
\nao|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Equal8~0_combout\ = (((\nao|dd\(3)) # (\nao|dd\(1))) # (!\nao|dd\(2))) # (!\nao|dd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(0),
	datab => \nao|dd\(2),
	datac => \nao|dd\(3),
	datad => \nao|dd\(1),
	combout => \nao|Equal8~0_combout\);

-- Location: LCCOMB_X17_Y12_N4
\nao|ff~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~8_combout\ = (\nao|Equal9~0_combout\) # ((\nao|Equal8~0_combout\) # (!\nao|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|Equal9~0_combout\,
	datac => \nao|Equal8~0_combout\,
	datad => \nao|Equal7~0_combout\,
	combout => \nao|ff~8_combout\);

-- Location: LCCOMB_X17_Y12_N22
\nao|ff~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~9_combout\ = \nao|ff\(1) $ (((\nao|ff\(0) & !\nao|ff~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(0),
	datac => \nao|ff~8_combout\,
	datad => \nao|ff\(1),
	combout => \nao|ff~9_combout\);

-- Location: LCCOMB_X17_Y12_N24
\nao|ff~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~17_combout\ = (\nao|k1~0_combout\ & ((\nao|always0~14_combout\) # (\nao|always0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|k1~0_combout\,
	datac => \nao|always0~14_combout\,
	datad => \nao|always0~16_combout\,
	combout => \nao|ff~17_combout\);

-- Location: LCCOMB_X19_Y12_N20
\nao|ff~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~21_combout\ = (!\nao|k1~0_combout\ & (\nao|ff\(0) $ (((\nao|k2~0_combout\ & !\nao|ff~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k2~0_combout\,
	datab => \nao|k1~0_combout\,
	datac => \nao|ff~8_combout\,
	datad => \nao|ff\(0),
	combout => \nao|ff~21_combout\);

-- Location: LCCOMB_X16_Y12_N12
\nao|ff~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~12_combout\ = \nao|ff\(0) $ (((\nao|k1~0_combout\) # ((\nao|ff~8_combout\) # (!\nao|k2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1~0_combout\,
	datab => \nao|k2~0_combout\,
	datac => \nao|ff\(0),
	datad => \nao|ff~8_combout\,
	combout => \nao|ff~12_combout\);

-- Location: LCCOMB_X17_Y12_N18
\nao|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add5~2_combout\ = \nao|ee~3_combout\ $ (((\nao|Add5~0_combout\ & \nao|ee~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~3_combout\,
	datac => \nao|Add5~0_combout\,
	datad => \nao|ee~6_combout\,
	combout => \nao|Add5~2_combout\);

-- Location: LCCOMB_X16_Y12_N16
\nao|ee~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~9_combout\ = (\nao|ee~8_combout\) # ((\nao|Add5~2_combout\ & (!\nao|Equal14~1_combout\ & \nao|ff~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~8_combout\,
	datab => \nao|Add5~2_combout\,
	datac => \nao|Equal14~1_combout\,
	datad => \nao|ff~17_combout\,
	combout => \nao|ee~9_combout\);

-- Location: LCCOMB_X17_Y13_N18
\nao|ff[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff[0]~32_combout\ = (\comb_3|mkoo\(1) & (\comb_3|mkoo\(0) & ((\nao|k2~0_combout\) # (!\nao|k1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1~0_combout\,
	datab => \nao|k2~0_combout\,
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \nao|ff[0]~32_combout\);

-- Location: LCFF_X16_Y12_N17
\nao|ee[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ee~9_combout\,
	ena => \nao|ff[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ee\(3));

-- Location: LCCOMB_X16_Y12_N6
\nao|ee~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~1_combout\ = (\nao|ee\(3) & ((\nao|ee\(1) $ (\nao|ee\(2))) # (!\nao|ee\(0)))) # (!\nao|ee\(3) & (\nao|ee\(1) & (\nao|ee\(2) & \nao|ee\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(3),
	datab => \nao|ee\(1),
	datac => \nao|ee\(2),
	datad => \nao|ee\(0),
	combout => \nao|ee~1_combout\);

-- Location: LCCOMB_X17_Y12_N6
\nao|ee~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~3_combout\ = (\nao|ee~2_combout\ & (\nao|ee\(3))) # (!\nao|ee~2_combout\ & ((\nao|ee~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ee\(3),
	datac => \nao|ee~1_combout\,
	datad => \nao|ee~2_combout\,
	combout => \nao|ee~3_combout\);

-- Location: LCCOMB_X16_Y12_N10
\nao|ee~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~4_combout\ = (\nao|ee\(1) & (((!\nao|ee\(0))))) # (!\nao|ee\(1) & (\nao|ee\(0) & ((\nao|ee\(2)) # (!\nao|ee\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(3),
	datab => \nao|ee\(1),
	datac => \nao|ee\(2),
	datad => \nao|ee\(0),
	combout => \nao|ee~4_combout\);

-- Location: LCCOMB_X19_Y12_N18
\nao|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Equal14~0_combout\ = (\nao|ee\(0) & (!\nao|ee\(1) & (\nao|ee~2_combout\))) # (!\nao|ee\(0) & (((!\nao|ee~2_combout\ & !\nao|ee~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(0),
	datab => \nao|ee\(1),
	datac => \nao|ee~2_combout\,
	datad => \nao|ee~4_combout\,
	combout => \nao|Equal14~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\nao|Equal14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Equal14~1_combout\ = (\nao|Equal14~0_combout\ & ((\nao|Add5~0_combout\ & (!\nao|ee~3_combout\ & \nao|ee~6_combout\)) # (!\nao|Add5~0_combout\ & (\nao|ee~3_combout\ & !\nao|ee~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|Add5~0_combout\,
	datab => \nao|ee~3_combout\,
	datac => \nao|ee~6_combout\,
	datad => \nao|Equal14~0_combout\,
	combout => \nao|Equal14~1_combout\);

-- Location: LCCOMB_X18_Y12_N26
\nao|ff~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~22_combout\ = (\nao|Equal14~1_combout\ & (((\nao|ff~12_combout\)))) # (!\nao|Equal14~1_combout\ & (\nao|ff~8_combout\ $ (((!\nao|ff\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff~8_combout\,
	datab => \nao|ff~12_combout\,
	datac => \nao|Equal14~1_combout\,
	datad => \nao|ff\(0),
	combout => \nao|ff~22_combout\);

-- Location: LCCOMB_X18_Y12_N22
\nao|ff~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~23_combout\ = (\nao|ff~21_combout\) # ((\nao|ff~17_combout\ & \nao|ff~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ff~21_combout\,
	datac => \nao|ff~17_combout\,
	datad => \nao|ff~22_combout\,
	combout => \nao|ff~23_combout\);

-- Location: LCCOMB_X18_Y12_N16
\nao|ff[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff[0]~20_combout\ = (\nao|ff[0]~32_combout\ & ((\nao|Equal14~1_combout\) # (!\nao|ff~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|Equal14~1_combout\,
	datac => \nao|ff[0]~32_combout\,
	datad => \nao|ff~17_combout\,
	combout => \nao|ff[0]~20_combout\);

-- Location: LCFF_X18_Y12_N23
\nao|ff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ff~23_combout\,
	ena => \nao|ff[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ff\(0));

-- Location: LCCOMB_X19_Y12_N30
\nao|ff~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~33_combout\ = \nao|ff\(2) $ (((\nao|ff\(0) & (!\nao|ff~8_combout\ & \nao|ff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(2),
	datab => \nao|ff\(0),
	datac => \nao|ff~8_combout\,
	datad => \nao|ff\(1),
	combout => \nao|ff~33_combout\);

-- Location: LCCOMB_X17_Y12_N20
\nao|ff~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~16_combout\ = (\nao|k1~0_combout\ & (\nao|ff\(1))) # (!\nao|k1~0_combout\ & ((\nao|k2~0_combout\ & ((\nao|ff~10_combout\))) # (!\nao|k2~0_combout\ & (\nao|ff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(1),
	datab => \nao|k1~0_combout\,
	datac => \nao|k2~0_combout\,
	datad => \nao|ff~10_combout\,
	combout => \nao|ff~16_combout\);

-- Location: LCCOMB_X15_Y11_N22
\nao|ff~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~31_combout\ = (\nao|k1\(0) $ (((!\nao|k1k~regout\ & !\key1~combout\)))) # (!\nao|k2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1k~regout\,
	datab => \key1~combout\,
	datac => \nao|k1\(0),
	datad => \nao|k2~0_combout\,
	combout => \nao|ff~31_combout\);

-- Location: LCCOMB_X17_Y12_N26
\nao|ff~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~13_combout\ = \nao|ff\(2) $ (((\p3|display[0]~15_combout\ & (!\nao|ff~8_combout\ & !\nao|ff~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~15_combout\,
	datab => \nao|ff\(2),
	datac => \nao|ff~8_combout\,
	datad => \nao|ff~31_combout\,
	combout => \nao|ff~13_combout\);

-- Location: LCCOMB_X18_Y12_N12
\nao|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add6~0_combout\ = \nao|ff~13_combout\ $ (((!\nao|ff~12_combout\ & \nao|ff~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ff~12_combout\,
	datac => \nao|ff~16_combout\,
	datad => \nao|ff~13_combout\,
	combout => \nao|Add6~0_combout\);

-- Location: LCCOMB_X18_Y12_N30
\nao|ff~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~24_combout\ = (\nao|Equal14~1_combout\ & ((\nao|Add6~0_combout\))) # (!\nao|Equal14~1_combout\ & (\nao|ff~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ff~33_combout\,
	datac => \nao|Equal14~1_combout\,
	datad => \nao|Add6~0_combout\,
	combout => \nao|ff~24_combout\);

-- Location: LCCOMB_X18_Y12_N18
\nao|ff~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~26_combout\ = (\nao|ff~25_combout\ & (((\nao|ff~17_combout\ & \nao|ff~24_combout\)) # (!\nao|k1~0_combout\))) # (!\nao|ff~25_combout\ & (((\nao|ff~17_combout\ & \nao|ff~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff~25_combout\,
	datab => \nao|k1~0_combout\,
	datac => \nao|ff~17_combout\,
	datad => \nao|ff~24_combout\,
	combout => \nao|ff~26_combout\);

-- Location: LCFF_X18_Y12_N19
\nao|ff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ff~26_combout\,
	ena => \nao|ff[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ff\(2));

-- Location: LCCOMB_X19_Y12_N14
\nao|ff~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~27_combout\ = \nao|ff\(3) $ (((\p3|display[0]~15_combout\ & (!\nao|ff~8_combout\ & \nao|ff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~15_combout\,
	datab => \nao|ff\(3),
	datac => \nao|ff~8_combout\,
	datad => \nao|ff\(2),
	combout => \nao|ff~27_combout\);

-- Location: LCCOMB_X18_Y12_N0
\nao|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add6~1_combout\ = \nao|ff~15_combout\ $ (((!\nao|ff~12_combout\ & (\nao|ff~16_combout\ & \nao|ff~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff~15_combout\,
	datab => \nao|ff~12_combout\,
	datac => \nao|ff~16_combout\,
	datad => \nao|ff~13_combout\,
	combout => \nao|Add6~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\nao|ff~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~28_combout\ = (\nao|Equal14~1_combout\ & ((\nao|Add6~1_combout\))) # (!\nao|Equal14~1_combout\ & (\nao|ff~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ff~27_combout\,
	datac => \nao|Equal14~1_combout\,
	datad => \nao|Add6~1_combout\,
	combout => \nao|ff~28_combout\);

-- Location: LCCOMB_X18_Y12_N8
\nao|ff~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~30_combout\ = (\nao|ff~29_combout\ & (((\nao|ff~17_combout\ & \nao|ff~28_combout\)) # (!\nao|k1~0_combout\))) # (!\nao|ff~29_combout\ & (((\nao|ff~17_combout\ & \nao|ff~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff~29_combout\,
	datab => \nao|k1~0_combout\,
	datac => \nao|ff~17_combout\,
	datad => \nao|ff~28_combout\,
	combout => \nao|ff~30_combout\);

-- Location: LCFF_X18_Y12_N9
\nao|ff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ff~30_combout\,
	ena => \nao|ff[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ff\(3));

-- Location: LCCOMB_X17_Y12_N14
\nao|always0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~12_combout\ = (\nao|ff\(3) & (\p3|display[0]~15_combout\ & (!\nao|ff~8_combout\ & \nao|ff\(2)))) # (!\nao|ff\(3) & (!\nao|ff\(2) & ((\nao|ff~8_combout\) # (!\p3|display[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~15_combout\,
	datab => \nao|ff\(3),
	datac => \nao|ff~8_combout\,
	datad => \nao|ff\(2),
	combout => \nao|always0~12_combout\);

-- Location: LCCOMB_X17_Y12_N10
\nao|always0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~13_combout\ = (\nao|ee~0_combout\ & ((\nao|ff\(0) & (!\nao|ff\(1) & !\nao|ff~8_combout\)) # (!\nao|ff\(0) & (\nao|ff\(1) & \nao|ff~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(0),
	datab => \nao|ff\(1),
	datac => \nao|ff~8_combout\,
	datad => \nao|ee~0_combout\,
	combout => \nao|always0~13_combout\);

-- Location: LCCOMB_X17_Y12_N12
\nao|ff~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~10_combout\ = (\nao|ff~9_combout\ & (((!\nao|always0~13_combout\) # (!\nao|always0~12_combout\)) # (!\nao|always0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|always0~11_combout\,
	datab => \nao|ff~9_combout\,
	datac => \nao|always0~12_combout\,
	datad => \nao|always0~13_combout\,
	combout => \nao|ff~10_combout\);

-- Location: LCCOMB_X19_Y12_N8
\nao|ff~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~11_combout\ = (!\nao|k1~0_combout\ & ((\nao|k2~0_combout\ & ((\nao|ff~10_combout\))) # (!\nao|k2~0_combout\ & (\nao|ff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k2~0_combout\,
	datab => \nao|ff\(1),
	datac => \nao|ff~10_combout\,
	datad => \nao|k1~0_combout\,
	combout => \nao|ff~11_combout\);

-- Location: LCCOMB_X18_Y12_N6
\nao|ff~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~18_combout\ = (\nao|Equal14~1_combout\ & (\nao|ff~16_combout\ $ ((!\nao|ff~12_combout\)))) # (!\nao|Equal14~1_combout\ & (((\nao|ff~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff~16_combout\,
	datab => \nao|ff~12_combout\,
	datac => \nao|Equal14~1_combout\,
	datad => \nao|ff~10_combout\,
	combout => \nao|ff~18_combout\);

-- Location: LCCOMB_X18_Y12_N20
\nao|ff~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~19_combout\ = (\nao|ff~11_combout\) # ((\nao|ff~17_combout\ & \nao|ff~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ff~11_combout\,
	datac => \nao|ff~17_combout\,
	datad => \nao|ff~18_combout\,
	combout => \nao|ff~19_combout\);

-- Location: LCFF_X18_Y12_N21
\nao|ff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ff~19_combout\,
	ena => \nao|ff[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ff\(1));

-- Location: LCCOMB_X18_Y12_N4
\p3|display[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~15_combout\ = (\nao|ff\(1) & \nao|ff\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nao|ff\(1),
	datad => \nao|ff\(0),
	combout => \p3|display[0]~15_combout\);

-- Location: LCCOMB_X18_Y12_N28
\nao|ff~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~14_combout\ = ((\nao|k1~0_combout\) # (!\nao|k2~0_combout\)) # (!\nao|ff\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ff\(2),
	datac => \nao|k2~0_combout\,
	datad => \nao|k1~0_combout\,
	combout => \nao|ff~14_combout\);

-- Location: LCCOMB_X18_Y12_N14
\nao|ff~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ff~15_combout\ = \nao|ff\(3) $ (((\p3|display[0]~15_combout\ & (!\nao|ff~8_combout\ & !\nao|ff~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(3),
	datab => \p3|display[0]~15_combout\,
	datac => \nao|ff~8_combout\,
	datad => \nao|ff~14_combout\,
	combout => \nao|ff~15_combout\);

-- Location: LCCOMB_X17_Y12_N2
\nao|always0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~16_combout\ = (\nao|always0~15_combout\) # ((\nao|ff~15_combout\) # ((\nao|ff~13_combout\) # (!\nao|ff~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|always0~15_combout\,
	datab => \nao|ff~15_combout\,
	datac => \nao|ff~16_combout\,
	datad => \nao|ff~13_combout\,
	combout => \nao|always0~16_combout\);

-- Location: LCCOMB_X16_Y12_N22
\nao|ee~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~15_combout\ = (\nao|ee~14_combout\ & (((\nao|always0~14_combout\) # (\nao|always0~16_combout\)) # (!\nao|k1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~14_combout\,
	datab => \nao|k1~0_combout\,
	datac => \nao|always0~14_combout\,
	datad => \nao|always0~16_combout\,
	combout => \nao|ee~15_combout\);

-- Location: LCFF_X16_Y12_N23
\nao|ee[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ee~15_combout\,
	ena => \nao|ff[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ee\(0));

-- Location: LCCOMB_X16_Y12_N2
\nao|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add5~1_combout\ = (\nao|ee~2_combout\ & ((\nao|ee\(0) $ (!\nao|ee\(1))))) # (!\nao|ee~2_combout\ & ((\nao|Equal9~0_combout\ & ((\nao|ee\(1)))) # (!\nao|Equal9~0_combout\ & (\nao|ee\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|Equal9~0_combout\,
	datab => \nao|ee\(0),
	datac => \nao|ee\(1),
	datad => \nao|ee~2_combout\,
	combout => \nao|Add5~1_combout\);

-- Location: LCCOMB_X16_Y12_N26
\nao|ee~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~11_combout\ = (\nao|ee~10_combout\) # ((!\nao|Add5~1_combout\ & (!\nao|Equal14~1_combout\ & \nao|ff~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee~10_combout\,
	datab => \nao|Add5~1_combout\,
	datac => \nao|Equal14~1_combout\,
	datad => \nao|ff~17_combout\,
	combout => \nao|ee~11_combout\);

-- Location: LCFF_X16_Y12_N27
\nao|ee[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ee~11_combout\,
	ena => \nao|ff[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ee\(1));

-- Location: LCCOMB_X16_Y12_N4
\nao|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Add3~0_combout\ = \nao|ee\(2) $ (((\nao|ee\(1) & \nao|ee\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ee\(1),
	datac => \nao|ee\(2),
	datad => \nao|ee\(0),
	combout => \nao|Add3~0_combout\);

-- Location: LCCOMB_X17_Y12_N0
\nao|ee~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~0_combout\ = (\nao|Equal8~0_combout\ & (\nao|ee\(2))) # (!\nao|Equal8~0_combout\ & ((\nao|Equal7~0_combout\ & ((\nao|Add3~0_combout\))) # (!\nao|Equal7~0_combout\ & (\nao|ee\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(2),
	datab => \nao|Add3~0_combout\,
	datac => \nao|Equal8~0_combout\,
	datad => \nao|Equal7~0_combout\,
	combout => \nao|ee~0_combout\);

-- Location: LCCOMB_X17_Y12_N28
\nao|ee~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~5_combout\ = (\nao|ee~0_combout\ & (((!\nao|always0~13_combout\) # (!\nao|always0~12_combout\)) # (!\nao|always0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|always0~11_combout\,
	datab => \nao|ee~0_combout\,
	datac => \nao|always0~12_combout\,
	datad => \nao|always0~13_combout\,
	combout => \nao|ee~5_combout\);

-- Location: LCCOMB_X16_Y12_N18
\nao|ee~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~12_combout\ = (!\nao|k1~0_combout\ & ((\nao|k2~0_combout\ & ((\nao|ee~5_combout\))) # (!\nao|k2~0_combout\ & (\nao|ee\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1~0_combout\,
	datab => \nao|k2~0_combout\,
	datac => \nao|ee\(2),
	datad => \nao|ee~5_combout\,
	combout => \nao|ee~12_combout\);

-- Location: LCCOMB_X16_Y12_N20
\nao|ee~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|ee~13_combout\ = (\nao|ee~12_combout\) # ((\nao|ff~17_combout\ & (\nao|Add5~0_combout\ $ (\nao|ee~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|Add5~0_combout\,
	datab => \nao|ee~12_combout\,
	datac => \nao|ee~6_combout\,
	datad => \nao|ff~17_combout\,
	combout => \nao|ee~13_combout\);

-- Location: LCFF_X16_Y12_N21
\nao|ee[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|ee~13_combout\,
	ena => \nao|ff[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|ee\(2));

-- Location: LCCOMB_X15_Y12_N20
\p3|display[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~10_combout\ = (\p2|o\(0) & (\nao|cc\(2))) # (!\p2|o\(0) & ((\nao|ee\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(2),
	datac => \nao|ee\(2),
	datad => \p2|o\(0),
	combout => \p3|display[0]~10_combout\);

-- Location: LCCOMB_X15_Y12_N30
\p3|display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~9_combout\ = (\p2|o\(0) & (\nao|cc\(1))) # (!\p2|o\(0) & ((\nao|ee\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|cc\(1),
	datac => \nao|ee\(1),
	datad => \p2|o\(0),
	combout => \p3|display[0]~9_combout\);

-- Location: LCCOMB_X15_Y12_N16
\p3|Mux42~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~5_combout\ = (\p3|display[0]~8_combout\) # ((\p3|display[0]~9_combout\) # (\p3|display[0]~11_combout\ $ (!\p3|display[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~11_combout\,
	datab => \p3|display[0]~8_combout\,
	datac => \p3|display[0]~10_combout\,
	datad => \p3|display[0]~9_combout\,
	combout => \p3|Mux42~5_combout\);

-- Location: LCCOMB_X17_Y14_N28
\p3|display[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~7_combout\ = \p2|o\(2) $ (\p2|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datad => \p2|o\(0),
	combout => \p3|display[0]~7_combout\);

-- Location: LCCOMB_X15_Y11_N14
\p3|Mux42~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~6_combout\ = (\p2|o\(1) & ((\p3|Mux42~4_combout\) # ((\p3|Mux42~5_combout\ & \p3|display[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux42~4_combout\,
	datab => \p2|o\(1),
	datac => \p3|Mux42~5_combout\,
	datad => \p3|display[0]~7_combout\,
	combout => \p3|Mux42~6_combout\);

-- Location: LCCOMB_X16_Y11_N18
\p3|Mux42~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~7_combout\ = (\p3|Mux42~1_combout\ & ((\p3|Mux42~3_combout\) # ((\p3|Mux42~6_combout\)))) # (!\p3|Mux42~1_combout\ & (\p3|Mux42~2_combout\ & ((\p3|Mux42~3_combout\) # (\p3|Mux42~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux42~1_combout\,
	datab => \p3|Mux42~3_combout\,
	datac => \p3|Mux42~2_combout\,
	datad => \p3|Mux42~6_combout\,
	combout => \p3|Mux42~7_combout\);

-- Location: LCCOMB_X15_Y12_N14
\p3|display[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~17_combout\ = (\p2|o\(1) & (\p3|display[0]~8_combout\ & ((\p3|display[0]~10_combout\) # (\p3|display[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~10_combout\,
	datab => \p2|o\(1),
	datac => \p3|display[0]~8_combout\,
	datad => \p3|display[0]~9_combout\,
	combout => \p3|display[0]~17_combout\);

-- Location: LCCOMB_X17_Y14_N10
\p2|o[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|o[2]~0_combout\ = \p2|o\(2) $ (((\p2|o\(0) & \p2|o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datac => \p2|o\(2),
	datad => \p2|o\(1),
	combout => \p2|o[2]~0_combout\);

-- Location: LCFF_X17_Y14_N11
\p2|o[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|o[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|o\(2));

-- Location: LCCOMB_X15_Y11_N12
\p3|display[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~12_combout\ = (\nao|dd\(3)) # ((\nao|dd\(1) & \nao|dd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|dd\(1),
	datac => \nao|dd\(2),
	datad => \nao|dd\(3),
	combout => \p3|display[0]~12_combout\);

-- Location: LCCOMB_X16_Y11_N24
\p3|display[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~13_combout\ = (!\p1|display[2]~6_combout\ & (\p3|display[0]~12_combout\ & ((\p3|always0~0_combout\) # (!\comb_3|mkoo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|always0~0_combout\,
	datab => \comb_3|mkoo\(1),
	datac => \p1|display[2]~6_combout\,
	datad => \p3|display[0]~12_combout\,
	combout => \p3|display[0]~13_combout\);

-- Location: LCCOMB_X18_Y12_N10
\p3|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux36~0_combout\ = (!\nao|ff\(3) & !\nao|ff\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nao|ff\(3),
	datad => \nao|ff\(2),
	combout => \p3|Mux36~0_combout\);

-- Location: LCCOMB_X16_Y11_N6
\p3|display[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~19_combout\ = (!\p3|display[0]~7_combout\ & (((\nao|ff\(0) & \nao|ff\(1))) # (!\p3|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(0),
	datab => \nao|ff\(1),
	datac => \p3|display[0]~7_combout\,
	datad => \p3|Mux36~0_combout\,
	combout => \p3|display[0]~19_combout\);

-- Location: LCCOMB_X16_Y11_N12
\p3|display[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~16_combout\ = (\p2|o\(2) & ((\p3|display[0]~13_combout\) # ((\p3|display[0]~14_combout\ & \p3|display[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~14_combout\,
	datab => \p2|o\(2),
	datac => \p3|display[0]~13_combout\,
	datad => \p3|display[0]~19_combout\,
	combout => \p3|display[0]~16_combout\);

-- Location: LCCOMB_X16_Y11_N14
\p3|display[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~18_combout\ = (!\p3|display[0]~16_combout\ & (((!\p3|display[0]~17_combout\) # (!\p3|display[0]~7_combout\)) # (!\p3|display[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~6_combout\,
	datab => \p3|display[0]~7_combout\,
	datac => \p3|display[0]~17_combout\,
	datad => \p3|display[0]~16_combout\,
	combout => \p3|display[0]~18_combout\);

-- Location: LCFF_X16_Y11_N19
\p3|display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux42~7_combout\,
	ena => \p3|display[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(0));

-- Location: LCCOMB_X22_Y13_N0
\mc|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux15~0_combout\ = (\comb_3|mkoo\(1) & ((\p3|display\(0)))) # (!\comb_3|mkoo\(1) & (\p2|display\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display\(0),
	datab => \comb_3|mkoo\(1),
	datad => \p3|display\(0),
	combout => \mc|Mux15~0_combout\);

-- Location: LCCOMB_X17_Y13_N4
\p1|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|always0~1_combout\ = (\ji|k1\(0) & (\p1|delay~regout\ & (\comb_3|mkoo\(1) & !\comb_3|mkoo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|k1\(0),
	datab => \p1|delay~regout\,
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \p1|always0~1_combout\);

-- Location: LCCOMB_X18_Y13_N22
\p1|Mux55~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~8_combout\ = (\p1|o\(2) & (!\p1|always0~1_combout\ & (\p2|o\(0) & \p2|o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p1|always0~1_combout\,
	datac => \p2|o\(0),
	datad => \p2|o\(1),
	combout => \p1|Mux55~8_combout\);

-- Location: LCCOMB_X18_Y11_N12
\ji|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Equal12~0_combout\ = (!\ji|e\(2) & (!\ji|e\(1) & (\ji|e\(3) & \ji|e\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \ji|e\(1),
	datac => \ji|e\(3),
	datad => \ji|e\(0),
	combout => \ji|Equal12~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\ji|e~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|e~0_combout\ = (!\ji|always1~3_combout\ & !\ji|Equal12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|always1~3_combout\,
	datad => \ji|Equal12~0_combout\,
	combout => \ji|e~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\ji|k1k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|k1k~0_combout\ = !\key1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1~combout\,
	combout => \ji|k1k~0_combout\);

-- Location: LCCOMB_X17_Y13_N2
\p3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Equal2~0_combout\ = (\comb_3|mkoo\(1) & !\comb_3|mkoo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \p3|Equal2~0_combout\);

-- Location: LCFF_X17_Y13_N29
\ji|k1k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|k1k~0_combout\,
	ena => \p3|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|k1k~regout\);

-- Location: LCCOMB_X17_Y13_N20
\ji|k1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|k1~0_combout\ = \ji|k1\(0) $ (((!\key1~combout\ & (!\ji|k1k~regout\ & \p3|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~combout\,
	datab => \ji|k1k~regout\,
	datac => \ji|k1\(0),
	datad => \p3|Equal2~0_combout\,
	combout => \ji|k1~0_combout\);

-- Location: LCFF_X17_Y13_N21
\ji|k1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|k1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|k1\(0));

-- Location: LCCOMB_X17_Y13_N12
\ji|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always0~0_combout\ = \ji|k1\(0) $ (((!\key1~combout\ & !\ji|k1k~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~combout\,
	datac => \ji|k1\(0),
	datad => \ji|k1k~regout\,
	combout => \ji|always0~0_combout\);

-- Location: LCFF_X17_Y11_N23
\ji|k2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	sdata => \ji|k2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|k2~regout\);

-- Location: LCCOMB_X17_Y11_N6
\ji|k2k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|k2k~0_combout\ = !\key2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key2~combout\,
	combout => \ji|k2k~0_combout\);

-- Location: LCFF_X17_Y13_N7
\ji|k2k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	sdata => \ji|k2k~0_combout\,
	sload => VCC,
	ena => \p3|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|k2k~regout\);

-- Location: LCCOMB_X17_Y11_N14
\ji|k2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|k2~1_combout\ = (\p3|Equal2~0_combout\ & (!\key2~combout\ & ((\ji|k2~regout\) # (!\ji|k2k~regout\)))) # (!\p3|Equal2~0_combout\ & (((\ji|k2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2~combout\,
	datab => \ji|k2~regout\,
	datac => \ji|k2k~regout\,
	datad => \p3|Equal2~0_combout\,
	combout => \ji|k2~1_combout\);

-- Location: LCCOMB_X17_Y11_N18
\ji|ee~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ee~6_combout\ = \ji|e\(0) $ (((\ji|always0~0_combout\ & (\ji|k2~1_combout\ & \p3|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(0),
	datab => \ji|always0~0_combout\,
	datac => \ji|k2~1_combout\,
	datad => \p3|Equal2~0_combout\,
	combout => \ji|ee~6_combout\);

-- Location: LCFF_X17_Y11_N19
\ji|ee[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ee~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ee\(0));

-- Location: LCCOMB_X17_Y11_N16
\ji|e~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|e~3_combout\ = (\ji|e~0_combout\ & ((\ji|always1~4_combout\ & (!\ji|e\(0))) # (!\ji|always1~4_combout\ & ((\ji|ee\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~4_combout\,
	datab => \ji|e~0_combout\,
	datac => \ji|e\(0),
	datad => \ji|ee\(0),
	combout => \ji|e~3_combout\);

-- Location: LCFF_X17_Y11_N17
\ji|e[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|e~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|e\(0));

-- Location: LCCOMB_X17_Y11_N8
\p1|Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux33~0_combout\ = \ji|e\(0) $ (\ji|e\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|e\(0),
	datad => \ji|e\(1),
	combout => \p1|Mux33~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\ji|k2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|k2~0_combout\ = (!\key2~combout\ & (\p3|Equal2~0_combout\ & ((\ji|k2~regout\) # (!\ji|k2k~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2~combout\,
	datab => \ji|k2~regout\,
	datac => \ji|k2k~regout\,
	datad => \p3|Equal2~0_combout\,
	combout => \ji|k2~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\ji|ee[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ee[0]~7_combout\ = (\comb_3|mkoo\(1) & (!\comb_3|mkoo\(0) & (\ji|always0~0_combout\ & \ji|k2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|mkoo\(1),
	datab => \comb_3|mkoo\(0),
	datac => \ji|always0~0_combout\,
	datad => \ji|k2~0_combout\,
	combout => \ji|ee[0]~7_combout\);

-- Location: LCCOMB_X15_Y15_N22
\ji|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add6~1_combout\ = \ji|f\(2) $ (((\ji|f\(0) & \ji|f\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|f\(2),
	datac => \ji|f\(0),
	datad => \ji|f\(1),
	combout => \ji|Add6~1_combout\);

-- Location: LCCOMB_X15_Y15_N4
\ji|ff~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ff~2_combout\ = (\ji|f\(2) & ((!\ji|ee[0]~7_combout\) # (!\ji|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|f\(2),
	datac => \ji|always0~2_combout\,
	datad => \ji|ee[0]~7_combout\,
	combout => \ji|ff~2_combout\);

-- Location: LCFF_X15_Y15_N5
\ji|ff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ff~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ff\(2));

-- Location: LCCOMB_X15_Y15_N8
\ji|f~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|f~2_combout\ = (!\ji|always1~3_combout\ & ((\ji|Equal12~0_combout\ & (\ji|Add6~1_combout\)) # (!\ji|Equal12~0_combout\ & ((\ji|ff\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal12~0_combout\,
	datab => \ji|Add6~1_combout\,
	datac => \ji|ff\(2),
	datad => \ji|always1~3_combout\,
	combout => \ji|f~2_combout\);

-- Location: LCFF_X15_Y15_N9
\ji|f[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|f\(2));

-- Location: LCCOMB_X15_Y15_N2
\ji|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add6~2_combout\ = \ji|f\(3) $ (((\ji|f\(0) & (\ji|f\(2) & \ji|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datab => \ji|f\(3),
	datac => \ji|f\(2),
	datad => \ji|f\(1),
	combout => \ji|Add6~2_combout\);

-- Location: LCCOMB_X15_Y15_N12
\ji|ff~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ff~3_combout\ = (\ji|f\(3) & ((!\ji|ee[0]~7_combout\) # (!\ji|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|f\(3),
	datac => \ji|always0~2_combout\,
	datad => \ji|ee[0]~7_combout\,
	combout => \ji|ff~3_combout\);

-- Location: LCFF_X15_Y15_N13
\ji|ff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ff~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ff\(3));

-- Location: LCCOMB_X15_Y15_N30
\ji|f~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|f~3_combout\ = (!\ji|always1~3_combout\ & ((\ji|Equal12~0_combout\ & (\ji|Add6~2_combout\)) # (!\ji|Equal12~0_combout\ & ((\ji|ff\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal12~0_combout\,
	datab => \ji|Add6~2_combout\,
	datac => \ji|always1~3_combout\,
	datad => \ji|ff\(3),
	combout => \ji|f~3_combout\);

-- Location: LCFF_X15_Y15_N31
\ji|f[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|f~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|f\(3));

-- Location: LCCOMB_X15_Y15_N10
\p1|Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux35~1_combout\ = (!\ji|f\(0) & (!\ji|f\(2) & !\ji|f\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datac => \ji|f\(2),
	datad => \ji|f\(3),
	combout => \p1|Mux35~1_combout\);

-- Location: LCCOMB_X18_Y11_N2
\ji|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always0~1_combout\ = (\ji|e\(3) & (!\ji|e\(1))) # (!\ji|e\(3) & (\ji|e\(1) & (\ji|f\(1) & \p1|Mux35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(3),
	datab => \ji|e\(1),
	datac => \ji|f\(1),
	datad => \p1|Mux35~1_combout\,
	combout => \ji|always0~1_combout\);

-- Location: LCCOMB_X18_Y11_N24
\ji|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always0~2_combout\ = (!\ji|e\(2) & (\ji|e\(0) & \ji|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \ji|e\(0),
	datad => \ji|always0~1_combout\,
	combout => \ji|always0~2_combout\);

-- Location: LCCOMB_X17_Y11_N2
\ji|ee~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ee~8_combout\ = (\ji|ee[0]~7_combout\ & (!\ji|always0~2_combout\ & (\ji|e\(0) $ (\ji|e\(1))))) # (!\ji|ee[0]~7_combout\ & (((\ji|e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(0),
	datab => \ji|e\(1),
	datac => \ji|ee[0]~7_combout\,
	datad => \ji|always0~2_combout\,
	combout => \ji|ee~8_combout\);

-- Location: LCFF_X17_Y11_N3
\ji|ee[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ee~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ee\(1));

-- Location: LCCOMB_X17_Y11_N26
\ji|e~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|e~4_combout\ = (\ji|e~0_combout\ & ((\ji|always1~4_combout\ & (\p1|Mux33~0_combout\)) # (!\ji|always1~4_combout\ & ((\ji|ee\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~4_combout\,
	datab => \p1|Mux33~0_combout\,
	datac => \ji|e~0_combout\,
	datad => \ji|ee\(1),
	combout => \ji|e~4_combout\);

-- Location: LCFF_X17_Y11_N27
\ji|e[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|e~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|e\(1));

-- Location: LCCOMB_X18_Y11_N0
\ji|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add5~1_combout\ = \ji|e\(2) $ (((\ji|e\(1) & \ji|e\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \ji|e\(1),
	datad => \ji|e\(0),
	combout => \ji|Add5~1_combout\);

-- Location: LCCOMB_X17_Y11_N12
\ji|ee~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ee~5_combout\ = (\ji|ee[0]~7_combout\ & (((\ji|Add5~1_combout\ & !\ji|always0~2_combout\)))) # (!\ji|ee[0]~7_combout\ & (\ji|e\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \ji|Add5~1_combout\,
	datac => \ji|ee[0]~7_combout\,
	datad => \ji|always0~2_combout\,
	combout => \ji|ee~5_combout\);

-- Location: LCFF_X17_Y11_N13
\ji|ee[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ee~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ee\(2));

-- Location: LCCOMB_X17_Y11_N10
\ji|e~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|e~2_combout\ = (\ji|e~0_combout\ & ((\ji|always1~4_combout\ & (\ji|Add5~1_combout\)) # (!\ji|always1~4_combout\ & ((\ji|ee\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~4_combout\,
	datab => \ji|Add5~1_combout\,
	datac => \ji|e~0_combout\,
	datad => \ji|ee\(2),
	combout => \ji|e~2_combout\);

-- Location: LCFF_X17_Y11_N11
\ji|e[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|e~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|e\(2));

-- Location: LCCOMB_X17_Y11_N30
\ji|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add5~0_combout\ = \ji|e\(3) $ (((\ji|e\(1) & (\ji|e\(0) & \ji|e\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(3),
	datab => \ji|e\(1),
	datac => \ji|e\(0),
	datad => \ji|e\(2),
	combout => \ji|Add5~0_combout\);

-- Location: LCCOMB_X17_Y11_N28
\ji|ee~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ee~4_combout\ = (\ji|ee[0]~7_combout\ & (((\ji|Add5~0_combout\ & !\ji|always0~2_combout\)))) # (!\ji|ee[0]~7_combout\ & (\ji|e\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(3),
	datab => \ji|Add5~0_combout\,
	datac => \ji|ee[0]~7_combout\,
	datad => \ji|always0~2_combout\,
	combout => \ji|ee~4_combout\);

-- Location: LCFF_X17_Y11_N29
\ji|ee[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ee~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ee\(3));

-- Location: LCCOMB_X17_Y11_N24
\ji|e~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|e~1_combout\ = (\ji|e~0_combout\ & ((\ji|always1~4_combout\ & (\ji|Add5~0_combout\)) # (!\ji|always1~4_combout\ & ((\ji|ee\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~4_combout\,
	datab => \ji|Add5~0_combout\,
	datac => \ji|e~0_combout\,
	datad => \ji|ee\(3),
	combout => \ji|e~1_combout\);

-- Location: LCFF_X17_Y11_N25
\ji|e[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|e~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|e\(3));

-- Location: LCCOMB_X18_Y11_N22
\ji|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always1~2_combout\ = (\ji|e\(2) & (!\ji|e\(0) & !\ji|e\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \ji|e\(0),
	datad => \ji|e\(1),
	combout => \ji|always1~2_combout\);

-- Location: LCCOMB_X18_Y11_N4
\ji|always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always1~3_combout\ = (\p1|Mux35~1_combout\ & (!\ji|e\(3) & (\ji|f\(1) & \ji|always1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux35~1_combout\,
	datab => \ji|e\(3),
	datac => \ji|f\(1),
	datad => \ji|always1~2_combout\,
	combout => \ji|always1~3_combout\);

-- Location: LCCOMB_X15_Y15_N0
\ji|ff~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ff~0_combout\ = (\ji|f\(0) & ((!\ji|ee[0]~7_combout\) # (!\ji|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datac => \ji|always0~2_combout\,
	datad => \ji|ee[0]~7_combout\,
	combout => \ji|ff~0_combout\);

-- Location: LCFF_X15_Y15_N1
\ji|ff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ff\(0));

-- Location: LCCOMB_X15_Y15_N24
\ji|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|f~0_combout\ = (!\ji|always1~3_combout\ & ((\ji|Equal12~0_combout\ & (!\ji|f\(0))) # (!\ji|Equal12~0_combout\ & ((\ji|ff\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal12~0_combout\,
	datab => \ji|always1~3_combout\,
	datac => \ji|f\(0),
	datad => \ji|ff\(0),
	combout => \ji|f~0_combout\);

-- Location: LCFF_X15_Y15_N25
\ji|f[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|f\(0));

-- Location: LCCOMB_X15_Y15_N26
\ji|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add6~0_combout\ = \ji|f\(0) $ (\ji|f\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|f\(0),
	datad => \ji|f\(1),
	combout => \ji|Add6~0_combout\);

-- Location: LCCOMB_X15_Y15_N28
\ji|ff~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|ff~1_combout\ = (\ji|f\(1) & ((!\ji|ee[0]~7_combout\) # (!\ji|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|f\(1),
	datac => \ji|always0~2_combout\,
	datad => \ji|ee[0]~7_combout\,
	combout => \ji|ff~1_combout\);

-- Location: LCFF_X15_Y15_N29
\ji|ff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|ff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|ff\(1));

-- Location: LCCOMB_X15_Y15_N18
\ji|f~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|f~1_combout\ = (!\ji|always1~3_combout\ & ((\ji|Equal12~0_combout\ & (\ji|Add6~0_combout\)) # (!\ji|Equal12~0_combout\ & ((\ji|ff\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal12~0_combout\,
	datab => \ji|Add6~0_combout\,
	datac => \ji|always1~3_combout\,
	datad => \ji|ff\(1),
	combout => \ji|f~1_combout\);

-- Location: LCFF_X15_Y15_N19
\ji|f[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|f\(1));

-- Location: LCCOMB_X17_Y13_N30
\p1|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|always0~0_combout\ = (\ji|k1\(0)) # (((\comb_3|mkoo\(0)) # (!\comb_3|mkoo\(1))) # (!\p1|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|k1\(0),
	datab => \p1|delay~regout\,
	datac => \comb_3|mkoo\(1),
	datad => \comb_3|mkoo\(0),
	combout => \p1|always0~0_combout\);

-- Location: LCCOMB_X18_Y13_N0
\p1|display[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~7_combout\ = (\p2|o\(1) & ((\p2|o\(0) & ((\p1|always0~0_combout\))) # (!\p2|o\(0) & (!\p1|always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p1|always0~1_combout\,
	datac => \p1|always0~0_combout\,
	datad => \p2|o\(1),
	combout => \p1|display[2]~7_combout\);

-- Location: LCCOMB_X18_Y13_N10
\p1|display[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~30_combout\ = (\p1|o\(2) & (((!\p2|o\(0) & \p1|display[2]~7_combout\)))) # (!\p1|o\(2) & ((\p1|display[2]~7_combout\) # ((!\p2|o\(1) & !\p2|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \p1|display[2]~7_combout\,
	combout => \p1|display[2]~30_combout\);

-- Location: LCCOMB_X21_Y13_N14
\p1|Mux55~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~6_combout\ = (!\p1|display[2]~30_combout\ & ((\p1|Mux55~5_combout\) # ((\p1|Mux55~8_combout\ & !\ji|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux55~5_combout\,
	datab => \p1|Mux55~8_combout\,
	datac => \ji|f\(1),
	datad => \p1|display[2]~30_combout\,
	combout => \p1|Mux55~6_combout\);

-- Location: LCCOMB_X15_Y15_N6
\p1|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux19~3_combout\ = \ji|c\(0) $ (\ji|c\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(0),
	datac => \ji|c\(1),
	combout => \p1|Mux19~3_combout\);

-- Location: LCCOMB_X19_Y11_N14
\ji|a[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|a[0]~3_combout\ = !\ji|a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|a\(0),
	combout => \ji|a[0]~3_combout\);

-- Location: LCFF_X19_Y11_N15
\ji|a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|a[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|a\(0));

-- Location: LCCOMB_X19_Y11_N16
\ji|a[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|a[2]~1_combout\ = \ji|a\(2) $ (((\ji|a\(1) & \ji|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(1),
	datac => \ji|a\(2),
	datad => \ji|a\(0),
	combout => \ji|a[2]~1_combout\);

-- Location: LCFF_X19_Y11_N17
\ji|a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|a[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|a\(2));

-- Location: LCCOMB_X19_Y11_N22
\ji|a~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|a~2_combout\ = (\ji|a\(1) & (!\ji|a\(0))) # (!\ji|a\(1) & (\ji|a\(0) & ((\ji|a\(2)) # (!\ji|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(1),
	datab => \ji|a\(0),
	datac => \ji|a\(2),
	datad => \ji|a\(3),
	combout => \ji|a~2_combout\);

-- Location: LCCOMB_X21_Y15_N20
\ji|a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|a[1]~feeder_combout\ = \ji|a~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ji|a~2_combout\,
	combout => \ji|a[1]~feeder_combout\);

-- Location: LCFF_X21_Y15_N21
\ji|a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|a\(1));

-- Location: LCCOMB_X19_Y11_N10
\ji|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|a~0_combout\ = (\ji|a\(2) & (\ji|a\(3) $ (((\ji|a\(1) & \ji|a\(0)))))) # (!\ji|a\(2) & (\ji|a\(3) & ((\ji|a\(1)) # (!\ji|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(2),
	datab => \ji|a\(1),
	datac => \ji|a\(3),
	datad => \ji|a\(0),
	combout => \ji|a~0_combout\);

-- Location: LCFF_X19_Y11_N11
\ji|a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|a\(3));

-- Location: LCCOMB_X19_Y14_N4
\ji|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Equal8~0_combout\ = (!\ji|a\(1) & (\ji|a\(3) & (\ji|a\(0) & !\ji|a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(1),
	datab => \ji|a\(3),
	datac => \ji|a\(0),
	datad => \ji|a\(2),
	combout => \ji|Equal8~0_combout\);

-- Location: LCCOMB_X19_Y14_N18
\ji|b[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|b[2]~0_combout\ = (\ji|Equal8~0_combout\ & (\ji|Add2~0_combout\ & ((!\ji|always1~0_combout\)))) # (!\ji|Equal8~0_combout\ & (((\ji|b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Add2~0_combout\,
	datab => \ji|Equal8~0_combout\,
	datac => \ji|b\(2),
	datad => \ji|always1~0_combout\,
	combout => \ji|b[2]~0_combout\);

-- Location: LCFF_X19_Y14_N19
\ji|b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|b\(2));

-- Location: LCCOMB_X19_Y14_N8
\ji|b[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|b[1]~1_combout\ = (\ji|Equal8~0_combout\ & (!\ji|always1~0_combout\ & (\ji|b\(0) $ (\ji|b\(1))))) # (!\ji|Equal8~0_combout\ & (((\ji|b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(0),
	datab => \ji|Equal8~0_combout\,
	datac => \ji|b\(1),
	datad => \ji|always1~0_combout\,
	combout => \ji|b[1]~1_combout\);

-- Location: LCFF_X19_Y14_N9
\ji|b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|b\(1));

-- Location: LCCOMB_X19_Y14_N6
\ji|b[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|b[0]~2_combout\ = \ji|Equal8~0_combout\ $ (\ji|b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|Equal8~0_combout\,
	datac => \ji|b\(0),
	combout => \ji|b[0]~2_combout\);

-- Location: LCFF_X19_Y14_N7
\ji|b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|b[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|b\(0));

-- Location: LCCOMB_X19_Y14_N0
\ji|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always1~0_combout\ = (!\ji|b\(3) & (\ji|b\(2) & (!\ji|b\(1) & \ji|b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(3),
	datab => \ji|b\(2),
	datac => \ji|b\(1),
	datad => \ji|b\(0),
	combout => \ji|always1~0_combout\);

-- Location: LCCOMB_X19_Y14_N22
\ji|always1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|always1~5_combout\ = (\ji|Equal8~0_combout\ & \ji|always1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|Equal8~0_combout\,
	datad => \ji|always1~0_combout\,
	combout => \ji|always1~5_combout\);

-- Location: LCCOMB_X16_Y15_N2
\ji|cc~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|cc~5_combout\ = (\ji|k2~0_combout\ & ((\ji|c\(0) & ((\ji|k1~0_combout\))) # (!\ji|c\(0) & (!\ji|Equal10~0_combout\ & !\ji|k1~0_combout\)))) # (!\ji|k2~0_combout\ & (((\ji|c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal10~0_combout\,
	datab => \ji|k2~0_combout\,
	datac => \ji|c\(0),
	datad => \ji|k1~0_combout\,
	combout => \ji|cc~5_combout\);

-- Location: LCFF_X16_Y15_N3
\ji|cc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|cc~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|cc\(0));

-- Location: LCCOMB_X16_Y15_N16
\ji|c~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|c~2_combout\ = (!\ji|Equal10~0_combout\ & ((\ji|always1~5_combout\ & (!\ji|c\(0))) # (!\ji|always1~5_combout\ & ((\ji|cc\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~5_combout\,
	datab => \ji|Equal10~0_combout\,
	datac => \ji|c\(0),
	datad => \ji|cc\(0),
	combout => \ji|c~2_combout\);

-- Location: LCFF_X16_Y15_N17
\ji|c[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|c~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|c\(0));

-- Location: LCCOMB_X16_Y15_N30
\ji|cc[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|cc[0]~2_combout\ = (\ji|k1~0_combout\) # (!\ji|k2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|k2~0_combout\,
	datad => \ji|k1~0_combout\,
	combout => \ji|cc[0]~2_combout\);

-- Location: LCCOMB_X16_Y15_N28
\ji|cc~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|cc~6_combout\ = (\ji|cc[0]~2_combout\ & (((\ji|c\(1))))) # (!\ji|cc[0]~2_combout\ & (!\ji|Equal10~0_combout\ & (\ji|c\(1) $ (\ji|c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal10~0_combout\,
	datab => \ji|c\(1),
	datac => \ji|c\(0),
	datad => \ji|cc[0]~2_combout\,
	combout => \ji|cc~6_combout\);

-- Location: LCFF_X16_Y15_N29
\ji|cc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|cc~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|cc\(1));

-- Location: LCCOMB_X16_Y15_N14
\ji|c~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|c~3_combout\ = (!\ji|Equal10~0_combout\ & ((\ji|always1~5_combout\ & (\p1|Mux19~3_combout\)) # (!\ji|always1~5_combout\ & ((\ji|cc\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal10~0_combout\,
	datab => \p1|Mux19~3_combout\,
	datac => \ji|always1~5_combout\,
	datad => \ji|cc\(1),
	combout => \ji|c~3_combout\);

-- Location: LCFF_X16_Y15_N15
\ji|c[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|c\(1));

-- Location: LCCOMB_X16_Y15_N26
\ji|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add3~0_combout\ = \ji|c\(3) $ (((\ji|c\(2) & (\ji|c\(1) & \ji|c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(2),
	datab => \ji|c\(1),
	datac => \ji|c\(0),
	datad => \ji|c\(3),
	combout => \ji|Add3~0_combout\);

-- Location: LCCOMB_X16_Y15_N0
\ji|cc~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|cc~3_combout\ = (\ji|cc[0]~2_combout\ & (((\ji|c\(3))))) # (!\ji|cc[0]~2_combout\ & (!\ji|Equal10~0_combout\ & (\ji|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal10~0_combout\,
	datab => \ji|Add3~0_combout\,
	datac => \ji|c\(3),
	datad => \ji|cc[0]~2_combout\,
	combout => \ji|cc~3_combout\);

-- Location: LCFF_X16_Y15_N1
\ji|cc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|cc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|cc\(3));

-- Location: LCCOMB_X16_Y15_N24
\ji|c~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|c~0_combout\ = (!\ji|Equal10~0_combout\ & ((\ji|always1~5_combout\ & (\ji|Add3~0_combout\)) # (!\ji|always1~5_combout\ & ((\ji|cc\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal10~0_combout\,
	datab => \ji|Add3~0_combout\,
	datac => \ji|always1~5_combout\,
	datad => \ji|cc\(3),
	combout => \ji|c~0_combout\);

-- Location: LCFF_X16_Y15_N25
\ji|c[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|c\(3));

-- Location: LCCOMB_X16_Y15_N20
\ji|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Equal10~0_combout\ = (!\ji|c\(2) & (!\ji|c\(1) & (\ji|c\(0) & \ji|c\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(2),
	datab => \ji|c\(1),
	datac => \ji|c\(0),
	datad => \ji|c\(3),
	combout => \ji|Equal10~0_combout\);

-- Location: LCCOMB_X19_Y13_N10
\ji|d[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|d[0]~2_combout\ = \ji|d\(0) $ (\ji|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|d\(0),
	datad => \ji|Equal10~0_combout\,
	combout => \ji|d[0]~2_combout\);

-- Location: LCFF_X19_Y13_N11
\ji|d[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|d[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|d\(0));

-- Location: LCCOMB_X19_Y13_N26
\ji|d[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|d[1]~1_combout\ = (\ji|Equal10~0_combout\ & (!\ji|always1~1_combout\ & (\ji|d\(1) $ (\ji|d\(0))))) # (!\ji|Equal10~0_combout\ & (((\ji|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~1_combout\,
	datab => \ji|Equal10~0_combout\,
	datac => \ji|d\(1),
	datad => \ji|d\(0),
	combout => \ji|d[1]~1_combout\);

-- Location: LCFF_X19_Y13_N27
\ji|d[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|d[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|d\(1));

-- Location: LCCOMB_X19_Y13_N12
\ji|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add4~0_combout\ = \ji|d\(2) $ (((\ji|d\(0) & \ji|d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|d\(0),
	datab => \ji|d\(1),
	datad => \ji|d\(2),
	combout => \ji|Add4~0_combout\);

-- Location: LCCOMB_X19_Y13_N22
\ji|d[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|d[2]~0_combout\ = (\ji|Equal10~0_combout\ & (!\ji|always1~1_combout\ & ((\ji|Add4~0_combout\)))) # (!\ji|Equal10~0_combout\ & (((\ji|d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~1_combout\,
	datab => \ji|Equal10~0_combout\,
	datac => \ji|d\(2),
	datad => \ji|Add4~0_combout\,
	combout => \ji|d[2]~0_combout\);

-- Location: LCFF_X19_Y13_N23
\ji|d[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|d[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|d\(2));

-- Location: LCCOMB_X19_Y13_N8
\p1|display[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~16_combout\ = (\p2|o\(0) & ((\ji|b\(2)))) # (!\p2|o\(0) & (\ji|d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|d\(2),
	datac => \p2|o\(0),
	datad => \ji|b\(2),
	combout => \p1|display[2]~16_combout\);

-- Location: LCCOMB_X19_Y13_N20
\p1|display[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~18_combout\ = (\p2|o\(0) & ((\ji|b\(0)))) # (!\p2|o\(0) & (\ji|d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|d\(0),
	datac => \p2|o\(0),
	datad => \ji|b\(0),
	combout => \p1|display[2]~18_combout\);

-- Location: LCCOMB_X19_Y13_N0
\p1|display[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~17_combout\ = (\p2|o\(0) & ((\ji|b\(1)))) # (!\p2|o\(0) & (\ji|d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|d\(1),
	datac => \p2|o\(0),
	datad => \ji|b\(1),
	combout => \p1|display[2]~17_combout\);

-- Location: LCCOMB_X19_Y13_N18
\p1|Mux55~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~3_combout\ = (!\p2|o\(1) & ((\p1|display[2]~16_combout\ & (!\p1|display[2]~18_combout\)) # (!\p1|display[2]~16_combout\ & (\p1|display[2]~18_combout\ & !\p1|display[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p1|display[2]~16_combout\,
	datac => \p1|display[2]~18_combout\,
	datad => \p1|display[2]~17_combout\,
	combout => \p1|Mux55~3_combout\);

-- Location: LCCOMB_X21_Y13_N8
\p1|Mux55~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~4_combout\ = (\p1|Mux55~3_combout\) # ((\p2|o\(1) & \ji|f\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(1),
	datac => \ji|f\(0),
	datad => \p1|Mux55~3_combout\,
	combout => \p1|Mux55~4_combout\);

-- Location: LCCOMB_X16_Y15_N18
\ji|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add3~1_combout\ = \ji|c\(2) $ (((\ji|c\(1) & \ji|c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(2),
	datab => \ji|c\(1),
	datac => \ji|c\(0),
	combout => \ji|Add3~1_combout\);

-- Location: LCCOMB_X16_Y15_N12
\ji|cc~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|cc~4_combout\ = (\ji|cc[0]~2_combout\ & (\ji|c\(2))) # (!\ji|cc[0]~2_combout\ & (((\ji|Add3~1_combout\ & !\ji|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(2),
	datab => \ji|Add3~1_combout\,
	datac => \ji|Equal10~0_combout\,
	datad => \ji|cc[0]~2_combout\,
	combout => \ji|cc~4_combout\);

-- Location: LCFF_X16_Y15_N13
\ji|cc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \ji|cc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|cc\(2));

-- Location: LCCOMB_X16_Y15_N10
\ji|c~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|c~1_combout\ = (!\ji|Equal10~0_combout\ & ((\ji|always1~5_combout\ & (\ji|Add3~1_combout\)) # (!\ji|always1~5_combout\ & ((\ji|cc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Equal10~0_combout\,
	datab => \ji|Add3~1_combout\,
	datac => \ji|always1~5_combout\,
	datad => \ji|cc\(2),
	combout => \ji|c~1_combout\);

-- Location: LCFF_X16_Y15_N11
\ji|c[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|c\(2));

-- Location: LCCOMB_X18_Y13_N18
\p1|display[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~10_combout\ = (!\p2|o\(0) & ((\p2|o\(1) & ((\ji|e\(2)))) # (!\p2|o\(1) & (\ji|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \ji|a\(2),
	datac => \p2|o\(1),
	datad => \ji|e\(2),
	combout => \p1|display[2]~10_combout\);

-- Location: LCCOMB_X18_Y13_N8
\p1|display[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~11_combout\ = (\p1|display[2]~10_combout\) # ((\p2|o\(0) & \ji|c\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(0),
	datac => \ji|c\(2),
	datad => \p1|display[2]~10_combout\,
	combout => \p1|display[2]~11_combout\);

-- Location: LCCOMB_X21_Y15_N30
\p1|display[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~14_combout\ = (!\p2|o\(0) & ((\p2|o\(1) & ((\ji|e\(1)))) # (!\p2|o\(1) & (\ji|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(1),
	datab => \p2|o\(0),
	datac => \p2|o\(1),
	datad => \ji|e\(1),
	combout => \p1|display[2]~14_combout\);

-- Location: LCCOMB_X21_Y15_N28
\p1|display[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~15_combout\ = (\p1|display[2]~14_combout\) # ((\p2|o\(0) & \ji|c\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(0),
	datac => \ji|c\(1),
	datad => \p1|display[2]~14_combout\,
	combout => \p1|display[2]~15_combout\);

-- Location: LCCOMB_X18_Y13_N6
\p1|display[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~8_combout\ = (!\p2|o\(0) & ((\p2|o\(1) & ((\ji|e\(3)))) # (!\p2|o\(1) & (\ji|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \ji|a\(3),
	datac => \p2|o\(1),
	datad => \ji|e\(3),
	combout => \p1|display[2]~8_combout\);

-- Location: LCCOMB_X18_Y13_N20
\p1|display[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~9_combout\ = (\p1|display[2]~8_combout\) # ((\p2|o\(0) & \ji|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(0),
	datac => \ji|c\(3),
	datad => \p1|display[2]~8_combout\,
	combout => \p1|display[2]~9_combout\);

-- Location: LCCOMB_X18_Y13_N28
\p1|Mux55~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~9_combout\ = (\p1|o\(2) & (!\p2|o\(0) & ((\p1|display[2]~7_combout\)))) # (!\p1|o\(2) & ((\p1|display[2]~7_combout\) # ((!\p2|o\(0) & !\p2|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p2|o\(0),
	datac => \p2|o\(1),
	datad => \p1|display[2]~7_combout\,
	combout => \p1|Mux55~9_combout\);

-- Location: LCCOMB_X18_Y13_N14
\p1|Mux55~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~10_combout\ = (!\p1|display[2]~9_combout\ & (\p1|Mux55~9_combout\ & ((!\p2|o\(0)) # (!\p1|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p2|o\(0),
	datac => \p1|display[2]~9_combout\,
	datad => \p1|Mux55~9_combout\,
	combout => \p1|Mux55~10_combout\);

-- Location: LCCOMB_X21_Y13_N22
\p1|Mux55~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~2_combout\ = (!\p1|display[2]~15_combout\ & (\p1|Mux55~10_combout\ & (\p1|display[2]~13_combout\ $ (\p1|display[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~13_combout\,
	datab => \p1|display[2]~11_combout\,
	datac => \p1|display[2]~15_combout\,
	datad => \p1|Mux55~10_combout\,
	combout => \p1|Mux55~2_combout\);

-- Location: LCCOMB_X21_Y13_N0
\p1|Mux55~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~7_combout\ = (\p1|Mux55~2_combout\) # ((\p1|Mux55~6_combout\ & \p1|Mux55~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Mux55~6_combout\,
	datac => \p1|Mux55~4_combout\,
	datad => \p1|Mux55~2_combout\,
	combout => \p1|Mux55~7_combout\);

-- Location: LCCOMB_X19_Y13_N30
\ji|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|Add4~1_combout\ = \ji|d\(3) $ (((\ji|d\(0) & (\ji|d\(2) & \ji|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|d\(0),
	datab => \ji|d\(2),
	datac => \ji|d\(1),
	datad => \ji|d\(3),
	combout => \ji|Add4~1_combout\);

-- Location: LCCOMB_X19_Y13_N28
\ji|d[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|d[3]~3_combout\ = (\ji|Equal10~0_combout\ & (!\ji|always1~1_combout\ & ((\ji|Add4~1_combout\)))) # (!\ji|Equal10~0_combout\ & (((\ji|d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~1_combout\,
	datab => \ji|Equal10~0_combout\,
	datac => \ji|d\(3),
	datad => \ji|Add4~1_combout\,
	combout => \ji|d[3]~3_combout\);

-- Location: LCFF_X19_Y13_N29
\ji|d[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|d[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|d\(3));

-- Location: LCCOMB_X19_Y13_N2
\p1|display[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~22_combout\ = (\p2|o\(0) & (\ji|b\(3))) # (!\p2|o\(0) & ((\ji|d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(3),
	datac => \p2|o\(0),
	datad => \ji|d\(3),
	combout => \p1|display[2]~22_combout\);

-- Location: LCCOMB_X19_Y13_N16
\p1|display[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~23_combout\ = (\p1|display[2]~22_combout\) # ((\p1|display[2]~16_combout\ & \p1|display[2]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|display[2]~22_combout\,
	datac => \p1|display[2]~16_combout\,
	datad => \p1|display[2]~17_combout\,
	combout => \p1|display[2]~23_combout\);

-- Location: LCCOMB_X16_Y15_N4
\p1|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux35~0_combout\ = (!\ji|f\(3) & !\ji|f\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|f\(3),
	datad => \ji|f\(2),
	combout => \p1|Mux35~0_combout\);

-- Location: LCCOMB_X17_Y13_N22
\p1|display[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~20_combout\ = (!\p1|always0~1_combout\ & (((\ji|f\(0) & \ji|f\(1))) # (!\p1|Mux35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datab => \p1|always0~1_combout\,
	datac => \ji|f\(1),
	datad => \p1|Mux35~0_combout\,
	combout => \p1|display[2]~20_combout\);

-- Location: LCCOMB_X17_Y13_N16
\p1|display[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~21_combout\ = (\p2|o\(1) & ((\p1|o\(2) & (\p2|o\(0) & \p1|display[2]~20_combout\)) # (!\p1|o\(2) & (!\p2|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \p1|display[2]~20_combout\,
	combout => \p1|display[2]~21_combout\);

-- Location: LCCOMB_X18_Y13_N4
\p1|display[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~29_combout\ = (\p1|o\(2) & (!\p2|o\(0) & ((\p1|display[2]~7_combout\)))) # (!\p1|o\(2) & ((\p2|o\(0) & ((\p1|display[2]~7_combout\))) # (!\p2|o\(0) & (!\p2|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p2|o\(0),
	datac => \p2|o\(1),
	datad => \p1|display[2]~7_combout\,
	combout => \p1|display[2]~29_combout\);

-- Location: LCCOMB_X21_Y13_N28
\p1|display[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~19_combout\ = (\p1|display[2]~9_combout\ & (\p1|display[2]~29_combout\ & ((\p1|display[2]~11_combout\) # (\p1|display[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~11_combout\,
	datab => \p1|display[2]~9_combout\,
	datac => \p1|display[2]~29_combout\,
	datad => \p1|display[2]~15_combout\,
	combout => \p1|display[2]~19_combout\);

-- Location: LCCOMB_X21_Y13_N6
\p1|display[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~24_combout\ = (!\p1|display[2]~21_combout\ & (!\p1|display[2]~19_combout\ & ((!\p1|display[2]~23_combout\) # (!\p1|Mux55~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux55~5_combout\,
	datab => \p1|display[2]~23_combout\,
	datac => \p1|display[2]~21_combout\,
	datad => \p1|display[2]~19_combout\,
	combout => \p1|display[2]~24_combout\);

-- Location: LCFF_X21_Y13_N1
\p1|display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux55~7_combout\,
	ena => \p1|display[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(0));

-- Location: LCFF_X22_Y13_N1
\mc|diso[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux15~0_combout\,
	sdata => \p1|display\(0),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(0));

-- Location: LCCOMB_X17_Y15_N4
\p3|Mux41~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~6_combout\ = (\nao|ee\(2) & (!\nao|ee\(3) & (\nao|ee\(1) $ (!\nao|ee\(0))))) # (!\nao|ee\(2) & (((!\nao|ee\(3))) # (!\nao|ee\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(2),
	datab => \nao|ee\(1),
	datac => \nao|ee\(0),
	datad => \nao|ee\(3),
	combout => \p3|Mux41~6_combout\);

-- Location: LCCOMB_X16_Y11_N10
\p3|display[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~14_combout\ = (\p2|o\(1) & (((!\mc|Mux1~1_combout\) # (!\p1|delay~regout\)) # (!\nao|k1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1\(0),
	datab => \p1|delay~regout\,
	datac => \p2|o\(1),
	datad => \mc|Mux1~1_combout\,
	combout => \p3|display[0]~14_combout\);

-- Location: LCCOMB_X17_Y15_N14
\p3|Mux41~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~7_combout\ = (\p3|display[0]~14_combout\ & ((\p3|Mux41~6_combout\) # ((\p3|display\(1) & \nao|ee\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display\(1),
	datab => \nao|ee\(3),
	datac => \p3|Mux41~6_combout\,
	datad => \p3|display[0]~14_combout\,
	combout => \p3|Mux41~7_combout\);

-- Location: LCCOMB_X16_Y13_N24
\p3|Mux41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~3_combout\ = ((\p2|o\(2) $ (\nao|k1\(0))) # (!\mc|Mux1~1_combout\)) # (!\p1|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datab => \p1|delay~regout\,
	datac => \nao|k1\(0),
	datad => \mc|Mux1~1_combout\,
	combout => \p3|Mux41~3_combout\);

-- Location: LCCOMB_X14_Y12_N26
\p3|Mux41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~1_combout\ = (\nao|cc\(3) & (((!\nao|cc\(2) & !\nao|cc\(1))))) # (!\nao|cc\(3) & ((\nao|cc\(0) $ (!\nao|cc\(1))) # (!\nao|cc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(0),
	datab => \nao|cc\(3),
	datac => \nao|cc\(2),
	datad => \nao|cc\(1),
	combout => \p3|Mux41~1_combout\);

-- Location: LCCOMB_X17_Y15_N18
\p3|Mux41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~0_combout\ = (\p3|display\(1) & ((\p2|o\(2)) # (\nao|cc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(2),
	datac => \p3|display\(1),
	datad => \nao|cc\(3),
	combout => \p3|Mux41~0_combout\);

-- Location: LCCOMB_X17_Y15_N2
\p3|Mux41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~2_combout\ = (\p3|Mux41~0_combout\) # ((\p2|o\(2) & (!\p3|WideOr3~0_combout\)) # (!\p2|o\(2) & ((\p3|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|WideOr3~0_combout\,
	datab => \p2|o\(2),
	datac => \p3|Mux41~1_combout\,
	datad => \p3|Mux41~0_combout\,
	combout => \p3|Mux41~2_combout\);

-- Location: LCCOMB_X17_Y15_N20
\p3|Mux41~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~4_combout\ = (\p2|o\(0) & (\p2|o\(1) & (\p3|Mux41~3_combout\ & \p3|Mux41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \p3|Mux41~3_combout\,
	datad => \p3|Mux41~2_combout\,
	combout => \p3|Mux41~4_combout\);

-- Location: LCCOMB_X16_Y13_N30
\p3|Mux41~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~8_combout\ = (\p3|display\(1) & ((\nao|dd\(1)) # (\nao|dd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|dd\(1),
	datac => \p3|display\(1),
	datad => \nao|dd\(3),
	combout => \p3|Mux41~8_combout\);

-- Location: LCCOMB_X16_Y13_N8
\p3|Mux41~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~9_combout\ = (!\nao|dd\(3) & (((!\nao|dd\(1) & !\nao|dd\(0))) # (!\nao|dd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(2),
	datab => \nao|dd\(1),
	datac => \nao|dd\(0),
	datad => \nao|dd\(3),
	combout => \p3|Mux41~9_combout\);

-- Location: LCCOMB_X15_Y13_N12
\p3|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|always0~1_combout\ = (\p3|always0~0_combout\) # (!\comb_3|mkoo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|mkoo\(1),
	datad => \p3|always0~0_combout\,
	combout => \p3|always0~1_combout\);

-- Location: LCCOMB_X16_Y13_N22
\p3|Mux41~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~10_combout\ = (!\p2|o\(1) & (\p3|always0~1_combout\ & ((\p3|Mux41~8_combout\) # (\p3|Mux41~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p3|Mux41~8_combout\,
	datac => \p3|Mux41~9_combout\,
	datad => \p3|always0~1_combout\,
	combout => \p3|Mux41~10_combout\);

-- Location: LCCOMB_X17_Y15_N16
\p3|Mux41~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux41~11_combout\ = (\p3|Mux41~4_combout\) # ((\p3|Mux41~5_combout\ & ((\p3|Mux41~7_combout\) # (\p3|Mux41~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux41~5_combout\,
	datab => \p3|Mux41~7_combout\,
	datac => \p3|Mux41~4_combout\,
	datad => \p3|Mux41~10_combout\,
	combout => \p3|Mux41~11_combout\);

-- Location: LCFF_X17_Y15_N17
\p3|display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux41~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(1));

-- Location: LCCOMB_X22_Y13_N10
\mc|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux14~0_combout\ = (\comb_3|mkoo\(1) & ((\p3|display\(1)))) # (!\comb_3|mkoo\(1) & (\p2|display\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display\(1),
	datab => \comb_3|mkoo\(1),
	datad => \p3|display\(1),
	combout => \mc|Mux14~0_combout\);

-- Location: LCCOMB_X19_Y13_N4
\p1|display[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|display[2]~28_combout\ = \p2|o\(0) $ (\p1|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(0),
	datac => \p1|o\(2),
	combout => \p1|display[2]~28_combout\);

-- Location: LCFF_X19_Y13_N5
\p1|o[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|display[2]~28_combout\,
	ena => \p2|o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|o\(2));

-- Location: LCCOMB_X18_Y13_N16
\p1|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux26~0_combout\ = (\p1|display\(1) & ((\ji|d\(3)) # ((\ji|d\(2) & \ji|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display\(1),
	datab => \ji|d\(2),
	datac => \ji|d\(1),
	datad => \ji|d\(3),
	combout => \p1|Mux26~0_combout\);

-- Location: LCCOMB_X17_Y14_N4
\p1|Mux54~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~2_combout\ = (\p1|always0~0_combout\ & (!\p1|display[2]~6_combout\ & ((\ji|always1~1_combout\) # (\p1|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|always1~1_combout\,
	datab => \p1|always0~0_combout\,
	datac => \p1|Mux26~0_combout\,
	datad => \p1|display[2]~6_combout\,
	combout => \p1|Mux54~2_combout\);

-- Location: LCCOMB_X16_Y15_N8
\p1|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux19~1_combout\ = (\ji|c\(3) & ((\ji|c\(1)) # (\ji|c\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(3),
	datac => \ji|c\(1),
	datad => \ji|c\(2),
	combout => \p1|Mux19~1_combout\);

-- Location: LCCOMB_X16_Y15_N6
\p1|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux19~0_combout\ = (!\ji|c\(3) & (\ji|c\(2) & (\ji|c\(1) $ (\ji|c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(3),
	datab => \ji|c\(1),
	datac => \ji|c\(0),
	datad => \ji|c\(2),
	combout => \p1|Mux19~0_combout\);

-- Location: LCCOMB_X17_Y14_N30
\p1|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux19~2_combout\ = (\p1|always0~0_combout\ & ((\p1|Mux19~0_combout\) # ((\p1|display\(1) & \p1|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display\(1),
	datab => \p1|always0~0_combout\,
	datac => \p1|Mux19~1_combout\,
	datad => \p1|Mux19~0_combout\,
	combout => \p1|Mux19~2_combout\);

-- Location: LCCOMB_X19_Y14_N10
\p1|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux12~0_combout\ = (\p1|display\(1) & ((\ji|b\(3)) # ((\ji|b\(2) & \ji|b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|b\(3),
	datab => \ji|b\(2),
	datac => \ji|b\(1),
	datad => \p1|display\(1),
	combout => \p1|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y14_N14
\p1|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux12~1_combout\ = (\ji|always1~0_combout\) # (\p1|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|always1~0_combout\,
	datad => \p1|Mux12~0_combout\,
	combout => \p1|Mux12~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\p1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux5~0_combout\ = \ji|a\(1) $ (((!\ji|a\(3) & \ji|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(3),
	datac => \ji|a\(0),
	datad => \ji|a\(1),
	combout => \p1|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y11_N18
\p1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux5~1_combout\ = (\ji|a\(3) & (\p1|display\(1) & ((\ji|a\(2)) # (\p1|Mux5~0_combout\)))) # (!\ji|a\(3) & (((\ji|a\(2) & \p1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(3),
	datab => \p1|display\(1),
	datac => \ji|a\(2),
	datad => \p1|Mux5~0_combout\,
	combout => \p1|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y14_N12
\p1|Mux54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~0_combout\ = (\p2|o\(0) & ((\p2|o\(1)) # ((\p1|Mux12~1_combout\)))) # (!\p2|o\(0) & (!\p2|o\(1) & ((\p1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \p1|Mux12~1_combout\,
	datad => \p1|Mux5~1_combout\,
	combout => \p1|Mux54~0_combout\);

-- Location: LCCOMB_X18_Y14_N18
\p1|Mux54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~1_combout\ = (\p2|o\(1) & ((\p1|Mux54~0_combout\ & ((\p1|Mux19~2_combout\))) # (!\p1|Mux54~0_combout\ & (\p1|display\(1))))) # (!\p2|o\(1) & (((\p1|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display\(1),
	datab => \p2|o\(1),
	datac => \p1|Mux19~2_combout\,
	datad => \p1|Mux54~0_combout\,
	combout => \p1|Mux54~1_combout\);

-- Location: LCCOMB_X18_Y14_N16
\p1|Mux54~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~8_combout\ = (\p1|o\(2) & ((\p1|Mux54~7_combout\) # ((\p1|Mux54~2_combout\)))) # (!\p1|o\(2) & (((\p1|Mux54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux54~7_combout\,
	datab => \p1|o\(2),
	datac => \p1|Mux54~2_combout\,
	datad => \p1|Mux54~1_combout\,
	combout => \p1|Mux54~8_combout\);

-- Location: LCFF_X18_Y14_N17
\p1|display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux54~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(1));

-- Location: LCFF_X22_Y13_N11
\mc|diso[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux14~0_combout\,
	sdata => \p1|display\(1),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(1));

-- Location: LCCOMB_X26_Y13_N18
\p2|display[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~11_combout\ = (\p2|o\(1) & (\p2|o\(0) $ (\p2|o\(2)))) # (!\p2|o\(1) & (!\p2|o\(0) & !\p2|o\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \p2|o\(2),
	combout => \p2|display[1]~11_combout\);

-- Location: LCCOMB_X23_Y14_N8
\pao|k1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k1~0_combout\ = (!\pao|k1\(0) & !\pao|k1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pao|k1\(0),
	datad => \pao|k1\(1),
	combout => \pao|k1~0_combout\);

-- Location: LCCOMB_X22_Y14_N16
\pao|k1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k1[0]~1_combout\ = (!\pao|k1k~regout\ & (\comb_3|mkoo\(0) & (!\key1~combout\ & !\comb_3|mkoo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|k1k~regout\,
	datab => \comb_3|mkoo\(0),
	datac => \key1~combout\,
	datad => \comb_3|mkoo\(1),
	combout => \pao|k1[0]~1_combout\);

-- Location: LCFF_X23_Y14_N9
\pao|k1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \pao|k1~0_combout\,
	ena => \pao|k1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|k1\(0));

-- Location: LCCOMB_X23_Y14_N26
\pao|k1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k1~2_combout\ = (\pao|k1\(0) & !\pao|k1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|k1\(0),
	datac => \pao|k1\(1),
	combout => \pao|k1~2_combout\);

-- Location: LCFF_X23_Y14_N27
\pao|k1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \pao|k1~2_combout\,
	ena => \pao|k1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|k1\(1));

-- Location: LCCOMB_X22_Y14_N14
\p3|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Equal2~1_combout\ = (\comb_3|mkoo\(0) & !\comb_3|mkoo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|mkoo\(0),
	datad => \comb_3|mkoo\(1),
	combout => \p3|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\pao|k2k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k2k~0_combout\ = !\key2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key2~combout\,
	combout => \pao|k2k~0_combout\);

-- Location: LCFF_X22_Y14_N27
\pao|k2k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \pao|k2k~0_combout\,
	ena => \p3|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|k2k~regout\);

-- Location: LCCOMB_X22_Y14_N24
\pao|k2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|k2[0]~2_combout\ = \pao|k2\(0) $ (((!\key2~combout\ & (\p3|Equal2~1_combout\ & !\pao|k2k~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2~combout\,
	datab => \p3|Equal2~1_combout\,
	datac => \pao|k2\(0),
	datad => \pao|k2k~regout\,
	combout => \pao|k2[0]~2_combout\);

-- Location: LCFF_X22_Y14_N25
\pao|k2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \pao|k2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|k2\(0));

-- Location: LCCOMB_X23_Y14_N16
\pao|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|always1~0_combout\ = (!\pao|k1\(1) & ((\pao|k1\(0) & ((!\pao|k2\(0)))) # (!\pao|k1\(0) & (!\pao|k2\(1) & \pao|k2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|k2\(1),
	datab => \pao|k1\(1),
	datac => \pao|k1\(0),
	datad => \pao|k2\(0),
	combout => \pao|always1~0_combout\);

-- Location: LCCOMB_X25_Y14_N22
\pao|a~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|a~2_combout\ = (!\pao|always1~1_combout\ & (!\pao|a\(0) & \pao|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~1_combout\,
	datac => \pao|a\(0),
	datad => \pao|always1~0_combout\,
	combout => \pao|a~2_combout\);

-- Location: LCCOMB_X23_Y14_N18
\pao|a[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|a[3]~1_combout\ = (\pao|k1\(1) & (\pao|k1\(0))) # (!\pao|k1\(1) & ((!\pao|k2\(0)) # (!\pao|k1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|k1\(1),
	datac => \pao|k1\(0),
	datad => \pao|k2\(0),
	combout => \pao|a[3]~1_combout\);

-- Location: LCFF_X25_Y14_N23
\pao|a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|a~2_combout\,
	ena => \pao|a[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|a\(0));

-- Location: LCCOMB_X25_Y14_N16
\pao|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|always1~1_combout\ = (\pao|a\(3) & (\pao|a\(0) & (!\pao|a\(2) & !\pao|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a\(3),
	datab => \pao|a\(0),
	datac => \pao|a\(2),
	datad => \pao|a\(1),
	combout => \pao|always1~1_combout\);

-- Location: LCCOMB_X25_Y14_N10
\pao|a~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|a~4_combout\ = (!\pao|always1~1_combout\ & (\pao|always1~0_combout\ & (\pao|a\(0) $ (\pao|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a\(0),
	datab => \pao|always1~1_combout\,
	datac => \pao|a\(1),
	datad => \pao|always1~0_combout\,
	combout => \pao|a~4_combout\);

-- Location: LCFF_X25_Y14_N11
\pao|a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|a~4_combout\,
	ena => \pao|a[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|a\(1));

-- Location: LCCOMB_X25_Y14_N18
\pao|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add2~1_combout\ = \pao|a\(2) $ (((\pao|a\(1) & \pao|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|a\(1),
	datac => \pao|a\(0),
	datad => \pao|a\(2),
	combout => \pao|Add2~1_combout\);

-- Location: LCCOMB_X25_Y14_N24
\pao|a~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|a~3_combout\ = (\pao|Add2~1_combout\ & (!\pao|always1~1_combout\ & \pao|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|Add2~1_combout\,
	datac => \pao|always1~1_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|a~3_combout\);

-- Location: LCFF_X25_Y14_N25
\pao|a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|a~3_combout\,
	ena => \pao|a[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|a\(2));

-- Location: LCCOMB_X24_Y13_N14
\pao|b~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|b~0_combout\ = (!\pao|b\(0) & \pao|always1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pao|b\(0),
	datad => \pao|always1~0_combout\,
	combout => \pao|b~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\pao|b[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|b[3]~1_combout\ = (\pao|a[3]~1_combout\ & ((\pao|always1~1_combout\) # (!\pao|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|always1~1_combout\,
	datac => \pao|a[3]~1_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|b[3]~1_combout\);

-- Location: LCFF_X24_Y13_N15
\pao|b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|b~0_combout\,
	ena => \pao|b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|b\(0));

-- Location: LCCOMB_X24_Y13_N8
\pao|c[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[0]~2_combout\ = (\pao|always1~0_combout\ & ((\pao|always1~3_combout\) # (!\pao|always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|always1~3_combout\,
	datac => \pao|always1~0_combout\,
	datad => \pao|always1~1_combout\,
	combout => \pao|c[0]~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\pao|b~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|b~3_combout\ = (\pao|c[0]~2_combout\ & (\pao|b\(2) $ (((\pao|b\(1) & \pao|b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(1),
	datab => \pao|b\(0),
	datac => \pao|b\(2),
	datad => \pao|c[0]~2_combout\,
	combout => \pao|b~3_combout\);

-- Location: LCFF_X24_Y13_N29
\pao|b[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|b~3_combout\,
	ena => \pao|b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|b\(2));

-- Location: LCCOMB_X24_Y13_N10
\pao|b~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|b~2_combout\ = (\pao|c[0]~2_combout\ & (\pao|b\(0) $ (\pao|b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|b\(0),
	datac => \pao|b\(1),
	datad => \pao|c[0]~2_combout\,
	combout => \pao|b~2_combout\);

-- Location: LCFF_X24_Y13_N11
\pao|b[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|b~2_combout\,
	ena => \pao|b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|b\(1));

-- Location: LCCOMB_X24_Y13_N22
\pao|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Add3~0_combout\ = \pao|b\(3) $ (((\pao|b\(0) & (\pao|b\(1) & \pao|b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(3),
	datab => \pao|b\(0),
	datac => \pao|b\(1),
	datad => \pao|b\(2),
	combout => \pao|Add3~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\pao|b~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|b~4_combout\ = (\pao|Add3~0_combout\ & (\pao|always1~0_combout\ & ((\pao|always1~3_combout\) # (!\pao|always1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~1_combout\,
	datab => \pao|Add3~0_combout\,
	datac => \pao|always1~0_combout\,
	datad => \pao|always1~3_combout\,
	combout => \pao|b~4_combout\);

-- Location: LCFF_X24_Y13_N21
\pao|b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|b~4_combout\,
	ena => \pao|b[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|b\(3));

-- Location: LCCOMB_X24_Y13_N2
\pao|always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|always1~3_combout\ = ((\pao|b\(2)) # ((\pao|b\(1)) # (!\pao|b\(3)))) # (!\pao|b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(0),
	datab => \pao|b\(2),
	datac => \pao|b\(3),
	datad => \pao|b\(1),
	combout => \pao|always1~3_combout\);

-- Location: LCCOMB_X23_Y14_N12
\pao|c[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[0]~3_combout\ = (\pao|Equal7~0_combout\ & (\pao|always1~0_combout\ & ((\pao|always1~3_combout\) # (!\pao|always1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Equal7~0_combout\,
	datab => \pao|always1~1_combout\,
	datac => \pao|always1~0_combout\,
	datad => \pao|always1~3_combout\,
	combout => \pao|c[0]~3_combout\);

-- Location: LCCOMB_X23_Y14_N0
\pao|c[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[0]~9_combout\ = (\pao|c[0]~3_combout\) # ((\pao|k1\(1) & ((!\pao|k1\(0)))) # (!\pao|k1\(1) & (\pao|k2\(0) & \pao|k1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|k2\(0),
	datab => \pao|k1\(1),
	datac => \pao|k1\(0),
	datad => \pao|c[0]~3_combout\,
	combout => \pao|c[0]~9_combout\);

-- Location: LCCOMB_X23_Y14_N10
\pao|c[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[3]~4_combout\ = (\pao|always1~0_combout\ & (\pao|a[3]~1_combout\ & (\pao|Equal7~0_combout\ & !\pao|c[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~0_combout\,
	datab => \pao|a[3]~1_combout\,
	datac => \pao|Equal7~0_combout\,
	datad => \pao|c[0]~3_combout\,
	combout => \pao|c[3]~4_combout\);

-- Location: LCCOMB_X23_Y14_N14
\pao|c[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[3]~8_combout\ = (\pao|Add4~1_combout\ & ((\pao|c[3]~4_combout\) # ((\pao|c[0]~9_combout\ & \pao|c\(3))))) # (!\pao|Add4~1_combout\ & (\pao|c[0]~9_combout\ & (\pao|c\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add4~1_combout\,
	datab => \pao|c[0]~9_combout\,
	datac => \pao|c\(3),
	datad => \pao|c[3]~4_combout\,
	combout => \pao|c[3]~8_combout\);

-- Location: LCFF_X23_Y14_N15
\pao|c[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|c[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|c\(3));

-- Location: LCCOMB_X23_Y14_N24
\pao|c[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[1]~5_combout\ = (\pao|c\(1) & ((\pao|c[0]~9_combout\) # ((!\pao|c\(0) & \pao|c[3]~4_combout\)))) # (!\pao|c\(1) & (\pao|c\(0) & ((\pao|c[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|c\(0),
	datab => \pao|c[0]~9_combout\,
	datac => \pao|c\(1),
	datad => \pao|c[3]~4_combout\,
	combout => \pao|c[1]~5_combout\);

-- Location: LCFF_X23_Y14_N25
\pao|c[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|c[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|c\(1));

-- Location: LCCOMB_X23_Y14_N28
\pao|c[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|c[0]~7_combout\ = (\pao|a[3]~1_combout\ & ((\pao|c\(0) & ((\pao|c[0]~3_combout\))) # (!\pao|c\(0) & (\pao|always1~0_combout\ & !\pao|c[0]~3_combout\)))) # (!\pao|a[3]~1_combout\ & (((\pao|c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~0_combout\,
	datab => \pao|a[3]~1_combout\,
	datac => \pao|c\(0),
	datad => \pao|c[0]~3_combout\,
	combout => \pao|c[0]~7_combout\);

-- Location: LCFF_X23_Y14_N29
\pao|c[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|c[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|c\(0));

-- Location: LCCOMB_X23_Y14_N20
\pao|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Equal7~0_combout\ = (\pao|c\(2)) # (((\pao|c\(1)) # (!\pao|c\(0))) # (!\pao|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|c\(2),
	datab => \pao|c\(3),
	datac => \pao|c\(1),
	datad => \pao|c\(0),
	combout => \pao|Equal7~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\pao|d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|d~4_combout\ = (\pao|Add5~0_combout\ & (\pao|always1~0_combout\ & ((\pao|always1~2_combout\) # (\pao|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add5~0_combout\,
	datab => \pao|always1~2_combout\,
	datac => \pao|Equal7~0_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|d~4_combout\);

-- Location: LCCOMB_X24_Y14_N30
\pao|d[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|d[0]~1_combout\ = (\pao|a[3]~1_combout\ & ((!\pao|always1~0_combout\) # (!\pao|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|a[3]~1_combout\,
	datac => \pao|Equal7~0_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|d[0]~1_combout\);

-- Location: LCFF_X24_Y14_N19
\pao|d[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|d~4_combout\,
	ena => \pao|d[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|d\(3));

-- Location: LCCOMB_X24_Y14_N20
\pao|d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|d~0_combout\ = (!\pao|d\(0) & \pao|always1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pao|d\(0),
	datad => \pao|always1~0_combout\,
	combout => \pao|d~0_combout\);

-- Location: LCFF_X24_Y14_N21
\pao|d[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|d~0_combout\,
	ena => \pao|d[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|d\(0));

-- Location: LCCOMB_X24_Y14_N28
\pao|e[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[0]~8_combout\ = (\pao|always1~0_combout\ & ((\pao|always1~2_combout\) # (\pao|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|always1~2_combout\,
	datac => \pao|Equal7~0_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|e[0]~8_combout\);

-- Location: LCCOMB_X24_Y14_N6
\pao|d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|d~2_combout\ = (\pao|e[0]~8_combout\ & (\pao|d\(0) $ (\pao|d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|d\(0),
	datac => \pao|d\(1),
	datad => \pao|e[0]~8_combout\,
	combout => \pao|d~2_combout\);

-- Location: LCFF_X24_Y14_N7
\pao|d[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|d~2_combout\,
	ena => \pao|d[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|d\(1));

-- Location: LCCOMB_X24_Y14_N2
\pao|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|always1~2_combout\ = ((\pao|d\(3)) # ((\pao|d\(1)) # (!\pao|d\(0)))) # (!\pao|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|d\(2),
	datab => \pao|d\(3),
	datac => \pao|d\(0),
	datad => \pao|d\(1),
	combout => \pao|always1~2_combout\);

-- Location: LCCOMB_X24_Y14_N8
\pao|e[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[0]~2_combout\ = (\pao|Equal9~0_combout\ & (\pao|always1~0_combout\ & ((\pao|always1~2_combout\) # (\pao|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Equal9~0_combout\,
	datab => \pao|always1~2_combout\,
	datac => \pao|Equal7~0_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|e[0]~2_combout\);

-- Location: LCCOMB_X24_Y14_N26
\pao|e[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[0]~9_combout\ = (\pao|e[0]~2_combout\) # ((\pao|k1\(0) & (!\pao|k1\(1) & \pao|k2\(0))) # (!\pao|k1\(0) & (\pao|k1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|k1\(0),
	datab => \pao|k1\(1),
	datac => \pao|e[0]~2_combout\,
	datad => \pao|k2\(0),
	combout => \pao|e[0]~9_combout\);

-- Location: LCCOMB_X24_Y14_N14
\pao|e[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[1]~7_combout\ = (\pao|e\(1) & ((\pao|e[0]~9_combout\) # ((!\pao|e\(0) & \pao|e[3]~3_combout\)))) # (!\pao|e\(1) & (\pao|e\(0) & ((\pao|e[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|e\(0),
	datab => \pao|e[0]~9_combout\,
	datac => \pao|e\(1),
	datad => \pao|e[3]~3_combout\,
	combout => \pao|e[1]~7_combout\);

-- Location: LCFF_X24_Y14_N15
\pao|e[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|e[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|e\(1));

-- Location: LCCOMB_X24_Y14_N22
\pao|e[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[0]~5_combout\ = (\pao|a[3]~1_combout\ & ((\pao|e[0]~2_combout\ & (\pao|e\(0))) # (!\pao|e[0]~2_combout\ & (!\pao|e\(0) & \pao|always1~0_combout\)))) # (!\pao|a[3]~1_combout\ & (((\pao|e\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a[3]~1_combout\,
	datab => \pao|e[0]~2_combout\,
	datac => \pao|e\(0),
	datad => \pao|always1~0_combout\,
	combout => \pao|e[0]~5_combout\);

-- Location: LCFF_X24_Y14_N23
\pao|e[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|e[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|e\(0));

-- Location: LCCOMB_X24_Y14_N24
\pao|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|Equal9~0_combout\ = ((\pao|e\(2)) # ((\pao|e\(1)) # (!\pao|e\(0)))) # (!\pao|e\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|e\(3),
	datab => \pao|e\(2),
	datac => \pao|e\(1),
	datad => \pao|e\(0),
	combout => \pao|Equal9~0_combout\);

-- Location: LCCOMB_X24_Y14_N10
\pao|e[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[3]~3_combout\ = (\pao|a[3]~1_combout\ & (\pao|always1~0_combout\ & (!\pao|e[0]~2_combout\ & \pao|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a[3]~1_combout\,
	datab => \pao|always1~0_combout\,
	datac => \pao|e[0]~2_combout\,
	datad => \pao|Equal9~0_combout\,
	combout => \pao|e[3]~3_combout\);

-- Location: LCCOMB_X24_Y14_N0
\pao|e[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[2]~6_combout\ = (\pao|Add6~1_combout\ & ((\pao|e[3]~3_combout\) # ((\pao|e[0]~9_combout\ & \pao|e\(2))))) # (!\pao|Add6~1_combout\ & (\pao|e[0]~9_combout\ & (\pao|e\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add6~1_combout\,
	datab => \pao|e[0]~9_combout\,
	datac => \pao|e\(2),
	datad => \pao|e[3]~3_combout\,
	combout => \pao|e[2]~6_combout\);

-- Location: LCFF_X24_Y14_N1
\pao|e[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|e[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|e\(2));

-- Location: LCCOMB_X25_Y13_N0
\p2|display[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~2_combout\ = (\p2|o\(0) & (((\pao|a\(2))))) # (!\p2|o\(0) & ((\p2|o\(1) & ((\pao|e\(2)))) # (!\p2|o\(1) & (\pao|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \pao|a\(2),
	datad => \pao|e\(2),
	combout => \p2|display[1]~2_combout\);

-- Location: LCCOMB_X26_Y13_N24
\p2|display[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~1_combout\ = (\p2|o\(0) & (((\pao|a\(0))))) # (!\p2|o\(0) & ((\p2|o\(1) & ((\pao|e\(0)))) # (!\p2|o\(1) & (\pao|a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \pao|a\(0),
	datad => \pao|e\(0),
	combout => \p2|display[1]~1_combout\);

-- Location: LCCOMB_X25_Y13_N14
\p2|display[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~3_combout\ = (\p2|o\(0) & (((\pao|a\(1))))) # (!\p2|o\(0) & ((\p2|o\(1) & ((\pao|e\(1)))) # (!\p2|o\(1) & (\pao|a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \pao|a\(1),
	datad => \pao|e\(1),
	combout => \p2|display[1]~3_combout\);

-- Location: LCCOMB_X26_Y13_N26
\p2|Mux47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux47~0_combout\ = (\p2|display[1]~0_combout\) # ((\p2|display[1]~2_combout\) # ((\p2|display[1]~1_combout\) # (!\p2|display[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~0_combout\,
	datab => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~1_combout\,
	datad => \p2|display[1]~3_combout\,
	combout => \p2|Mux47~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\pao|d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|d~3_combout\ = (\pao|e[0]~8_combout\ & (\pao|d\(2) $ (((\pao|d\(0) & \pao|d\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|d\(0),
	datab => \pao|d\(1),
	datac => \pao|d\(2),
	datad => \pao|e[0]~8_combout\,
	combout => \pao|d~3_combout\);

-- Location: LCFF_X24_Y14_N17
\pao|d[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|d~3_combout\,
	ena => \pao|d[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|d\(2));

-- Location: LCCOMB_X24_Y13_N6
\p2|display[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~9_combout\ = (!\p2|o\(1) & ((\p2|o\(0) & (\pao|b\(2))) # (!\p2|o\(0) & ((\pao|d\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \pao|b\(2),
	datac => \pao|d\(2),
	datad => \p2|o\(0),
	combout => \p2|display[1]~9_combout\);

-- Location: LCCOMB_X24_Y13_N4
\p2|display[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~10_combout\ = (\p2|display[1]~9_combout\) # ((\pao|f\(2) & \p2|o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(2),
	datac => \p2|o\(1),
	datad => \p2|display[1]~9_combout\,
	combout => \p2|display[1]~10_combout\);

-- Location: LCCOMB_X26_Y13_N12
\p2|display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~4_combout\ = (\p2|o\(1) & ((\p2|o\(2)))) # (!\p2|o\(1) & ((!\p2|o\(2)) # (!\p2|o\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \p2|o\(2),
	combout => \p2|display[1]~4_combout\);

-- Location: LCCOMB_X23_Y13_N12
\p2|display[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~5_combout\ = (!\p2|o\(1) & ((\p2|o\(0) & (\pao|b\(0))) # (!\p2|o\(0) & ((\pao|d\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p2|o\(0),
	datac => \pao|b\(0),
	datad => \pao|d\(0),
	combout => \p2|display[1]~5_combout\);

-- Location: LCCOMB_X24_Y13_N24
\p2|display[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~6_combout\ = (\p2|display[1]~5_combout\) # ((\pao|f\(0) & \p2|o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(0),
	datab => \p2|o\(1),
	datad => \p2|display[1]~5_combout\,
	combout => \p2|display[1]~6_combout\);

-- Location: LCCOMB_X25_Y13_N6
\p2|Mux47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux47~1_combout\ = ((\p2|display[1]~10_combout\) # ((\p2|display[1]~6_combout\) # (!\p2|display[1]~4_combout\))) # (!\p2|display[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~8_combout\,
	datab => \p2|display[1]~10_combout\,
	datac => \p2|display[1]~4_combout\,
	datad => \p2|display[1]~6_combout\,
	combout => \p2|Mux47~1_combout\);

-- Location: LCCOMB_X25_Y13_N16
\p2|Mux47~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux47~2_combout\ = (\p2|display[1]~11_combout\ & (!\p2|Mux47~0_combout\)) # (!\p2|display[1]~11_combout\ & ((!\p2|Mux47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|display[1]~11_combout\,
	datac => \p2|Mux47~0_combout\,
	datad => \p2|Mux47~1_combout\,
	combout => \p2|Mux47~2_combout\);

-- Location: LCCOMB_X26_Y13_N14
\p2|display[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~20_combout\ = (\p2|display[1]~0_combout\ & (\p2|o\(1) & ((\p2|display[1]~2_combout\) # (\p2|display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~0_combout\,
	datab => \p2|o\(1),
	datac => \p2|display[1]~2_combout\,
	datad => \p2|display[1]~3_combout\,
	combout => \p2|display[1]~20_combout\);

-- Location: LCCOMB_X26_Y13_N16
\p2|display[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~12_combout\ = (\p2|o\(0) & (\pao|b\(3))) # (!\p2|o\(0) & ((\pao|d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datac => \pao|b\(3),
	datad => \pao|d\(3),
	combout => \p2|display[1]~12_combout\);

-- Location: LCCOMB_X23_Y13_N28
\pao|f~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f~6_combout\ = (\pao|Add7~0_combout\ & (\pao|always1~0_combout\ & ((\pao|f[0]~0_combout\) # (\pao|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add7~0_combout\,
	datab => \pao|f[0]~0_combout\,
	datac => \pao|Equal9~0_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|f~6_combout\);

-- Location: LCCOMB_X23_Y13_N20
\pao|f[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f[0]~2_combout\ = (\pao|a[3]~1_combout\ & ((!\pao|Equal9~0_combout\) # (!\pao|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~0_combout\,
	datac => \pao|Equal9~0_combout\,
	datad => \pao|a[3]~1_combout\,
	combout => \pao|f[0]~2_combout\);

-- Location: LCFF_X23_Y13_N29
\pao|f[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|f~6_combout\,
	ena => \pao|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|f\(3));

-- Location: LCCOMB_X23_Y13_N26
\pao|f[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f[0]~3_combout\ = (\pao|always1~0_combout\ & ((\pao|f[0]~0_combout\) # (\pao|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~0_combout\,
	datab => \pao|f[0]~0_combout\,
	datac => \pao|Equal9~0_combout\,
	combout => \pao|f[0]~3_combout\);

-- Location: LCCOMB_X23_Y13_N10
\pao|f~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f~5_combout\ = (\pao|f[0]~3_combout\ & (\pao|f\(2) $ (((\pao|f\(1) & \pao|f\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(1),
	datab => \pao|f\(0),
	datac => \pao|f\(2),
	datad => \pao|f[0]~3_combout\,
	combout => \pao|f~5_combout\);

-- Location: LCFF_X23_Y13_N11
\pao|f[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|f~5_combout\,
	ena => \pao|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|f\(2));

-- Location: LCCOMB_X23_Y13_N30
\pao|f[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f[0]~0_combout\ = (\pao|f\(1)) # ((\pao|f\(3)) # ((!\pao|f\(2)) # (!\pao|f\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(1),
	datab => \pao|f\(3),
	datac => \pao|f\(0),
	datad => \pao|f\(2),
	combout => \pao|f[0]~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\pao|f~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f~1_combout\ = (\pao|always1~0_combout\ & (!\pao|f\(0) & ((\pao|Equal9~0_combout\) # (\pao|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|always1~0_combout\,
	datab => \pao|Equal9~0_combout\,
	datac => \pao|f\(0),
	datad => \pao|f[0]~0_combout\,
	combout => \pao|f~1_combout\);

-- Location: LCFF_X23_Y13_N15
\pao|f[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|f~1_combout\,
	ena => \pao|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|f\(0));

-- Location: LCCOMB_X23_Y13_N16
\pao|f~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|f~4_combout\ = (\pao|f[0]~3_combout\ & (\pao|f\(0) $ (\pao|f\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pao|f\(0),
	datac => \pao|f\(1),
	datad => \pao|f[0]~3_combout\,
	combout => \pao|f~4_combout\);

-- Location: LCFF_X23_Y13_N17
\pao|f[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|f~4_combout\,
	ena => \pao|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|f\(1));

-- Location: LCCOMB_X24_Y13_N0
\p2|display[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~7_combout\ = (!\p2|o\(1) & ((\p2|o\(0) & (\pao|b\(1))) # (!\p2|o\(0) & ((\pao|d\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(1),
	datab => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \pao|d\(1),
	combout => \p2|display[1]~7_combout\);

-- Location: LCCOMB_X24_Y13_N26
\p2|display[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~8_combout\ = (\p2|display[1]~7_combout\) # ((\p2|o\(1) & \pao|f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \pao|f\(1),
	datad => \p2|display[1]~7_combout\,
	combout => \p2|display[1]~8_combout\);

-- Location: LCCOMB_X25_Y13_N20
\p2|display[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~13_combout\ = (!\p2|o\(1) & ((\p2|display[1]~12_combout\) # ((\p2|display[1]~10_combout\ & \p2|display[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p2|display[1]~10_combout\,
	datac => \p2|display[1]~12_combout\,
	datad => \p2|display[1]~8_combout\,
	combout => \p2|display[1]~13_combout\);

-- Location: LCCOMB_X25_Y14_N12
\pao|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|a~0_combout\ = (\pao|Add2~0_combout\ & (!\pao|always1~1_combout\ & \pao|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add2~0_combout\,
	datac => \pao|always1~1_combout\,
	datad => \pao|always1~0_combout\,
	combout => \pao|a~0_combout\);

-- Location: LCFF_X25_Y14_N13
\pao|a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|a~0_combout\,
	ena => \pao|a[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|a\(3));

-- Location: LCCOMB_X24_Y14_N12
\pao|e[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pao|e[3]~4_combout\ = (\pao|Add6~0_combout\ & ((\pao|e[3]~3_combout\) # ((\pao|e[0]~9_combout\ & \pao|e\(3))))) # (!\pao|Add6~0_combout\ & (\pao|e[0]~9_combout\ & (\pao|e\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|Add6~0_combout\,
	datab => \pao|e[0]~9_combout\,
	datac => \pao|e\(3),
	datad => \pao|e[3]~3_combout\,
	combout => \pao|e[3]~4_combout\);

-- Location: LCFF_X24_Y14_N13
\pao|e[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f100Hz~clkctrl_outclk\,
	datain => \pao|e[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pao|e\(3));

-- Location: LCCOMB_X26_Y13_N20
\p2|display[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~0_combout\ = (\p2|o\(1) & ((\p2|o\(0) & (\pao|a\(3))) # (!\p2|o\(0) & ((\pao|e\(3)))))) # (!\p2|o\(1) & (((\pao|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p2|o\(0),
	datac => \pao|a\(3),
	datad => \pao|e\(3),
	combout => \p2|display[1]~0_combout\);

-- Location: LCCOMB_X25_Y13_N24
\p2|display[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~18_combout\ = (\p2|display[1]~0_combout\ & ((\p2|display[1]~2_combout\) # (\p2|display[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~3_combout\,
	datad => \p2|display[1]~0_combout\,
	combout => \p2|display[1]~18_combout\);

-- Location: LCCOMB_X25_Y13_N18
\p2|display[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~15_combout\ = (!\p2|o\(1) & ((\p2|o\(0) & (\pao|b\(3))) # (!\p2|o\(0) & ((\pao|d\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(3),
	datab => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \pao|d\(3),
	combout => \p2|display[1]~15_combout\);

-- Location: LCCOMB_X25_Y13_N4
\p2|display[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~16_combout\ = (\p2|display[1]~15_combout\) # ((\p2|o\(1) & \pao|f\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|o\(1),
	datac => \pao|f\(3),
	datad => \p2|display[1]~15_combout\,
	combout => \p2|display[1]~16_combout\);

-- Location: LCCOMB_X25_Y13_N22
\p2|display[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~17_combout\ = (\p2|display[1]~16_combout\) # ((\p2|display[1]~10_combout\ & \p2|display[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|display[1]~16_combout\,
	datac => \p2|display[1]~10_combout\,
	datad => \p2|display[1]~8_combout\,
	combout => \p2|display[1]~17_combout\);

-- Location: LCCOMB_X25_Y13_N10
\p2|display[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~19_combout\ = (\p2|o\(2) & ((\p2|display[1]~14_combout\) # ((\p2|display[1]~17_combout\)))) # (!\p2|o\(2) & (!\p2|display[1]~14_combout\ & (\p2|display[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datab => \p2|display[1]~14_combout\,
	datac => \p2|display[1]~18_combout\,
	datad => \p2|display[1]~17_combout\,
	combout => \p2|display[1]~19_combout\);

-- Location: LCCOMB_X25_Y13_N28
\p2|display[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~21_combout\ = (\p2|display[1]~14_combout\ & ((\p2|display[1]~19_combout\ & (!\p2|display[1]~20_combout\)) # (!\p2|display[1]~19_combout\ & ((!\p2|display[1]~13_combout\))))) # (!\p2|display[1]~14_combout\ & 
-- (((!\p2|display[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~14_combout\,
	datab => \p2|display[1]~20_combout\,
	datac => \p2|display[1]~13_combout\,
	datad => \p2|display[1]~19_combout\,
	combout => \p2|display[1]~21_combout\);

-- Location: LCFF_X25_Y13_N17
\p2|display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux47~2_combout\,
	ena => \p2|display[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(2));

-- Location: LCCOMB_X22_Y13_N24
\mc|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux13~0_combout\ = (\comb_3|mkoo\(1) & (\p3|display\(2))) # (!\comb_3|mkoo\(1) & ((\p2|display\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display\(2),
	datab => \comb_3|mkoo\(1),
	datad => \p2|display\(2),
	combout => \mc|Mux13~0_combout\);

-- Location: LCCOMB_X21_Y13_N4
\p1|Mux53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux53~0_combout\ = (!\p1|display[2]~13_combout\ & (\p1|display[2]~15_combout\ & !\p1|display[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~13_combout\,
	datac => \p1|display[2]~15_combout\,
	datad => \p1|display[2]~11_combout\,
	combout => \p1|Mux53~0_combout\);

-- Location: LCCOMB_X18_Y13_N30
\p1|Mux55~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux55~5_combout\ = (!\p2|o\(1) & ((\p1|o\(2) & (!\p2|o\(0) & \p1|always0~0_combout\)) # (!\p1|o\(2) & (\p2|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p2|o\(0),
	datac => \p1|always0~0_combout\,
	datad => \p2|o\(1),
	combout => \p1|Mux55~5_combout\);

-- Location: LCCOMB_X19_Y13_N14
\p1|Mux53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux53~1_combout\ = (!\p1|display[2]~16_combout\ & (!\p1|display[2]~18_combout\ & \p1|display[2]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|display[2]~16_combout\,
	datac => \p1|display[2]~18_combout\,
	datad => \p1|display[2]~17_combout\,
	combout => \p1|Mux53~1_combout\);

-- Location: LCCOMB_X18_Y13_N24
\p1|Mux53~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux53~2_combout\ = (\ji|f\(1) & ((\p1|Mux55~8_combout\) # ((\p1|Mux55~5_combout\ & \p1|Mux53~1_combout\)))) # (!\ji|f\(1) & (\p1|Mux55~5_combout\ & (\p1|Mux53~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(1),
	datab => \p1|Mux55~5_combout\,
	datac => \p1|Mux53~1_combout\,
	datad => \p1|Mux55~8_combout\,
	combout => \p1|Mux53~2_combout\);

-- Location: LCCOMB_X21_Y13_N30
\p1|Mux53~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux53~3_combout\ = (\p1|display[2]~30_combout\ & (\p1|Mux53~0_combout\ & ((\p1|Mux55~10_combout\)))) # (!\p1|display[2]~30_combout\ & ((\p1|Mux53~2_combout\) # ((\p1|Mux53~0_combout\ & \p1|Mux55~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~30_combout\,
	datab => \p1|Mux53~0_combout\,
	datac => \p1|Mux53~2_combout\,
	datad => \p1|Mux55~10_combout\,
	combout => \p1|Mux53~3_combout\);

-- Location: LCFF_X21_Y13_N31
\p1|display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux53~3_combout\,
	ena => \p1|display[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(2));

-- Location: LCFF_X22_Y13_N25
\mc|diso[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux13~0_combout\,
	sdata => \p1|display\(2),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(2));

-- Location: LCCOMB_X16_Y11_N16
\p3|Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~0_combout\ = (\p2|o\(2) & (((!\mc|Mux1~1_combout\) # (!\nao|k1\(0))) # (!\p1|delay~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datab => \p1|delay~regout\,
	datac => \nao|k1\(0),
	datad => \mc|Mux1~1_combout\,
	combout => \p3|Mux42~0_combout\);

-- Location: LCCOMB_X15_Y11_N2
\p3|display[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~6_combout\ = ((\nao|k1\(0) $ (!\p2|o\(0))) # (!\mc|Mux1~1_combout\)) # (!\p1|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|k1\(0),
	datab => \p1|delay~regout\,
	datac => \p2|o\(0),
	datad => \mc|Mux1~1_combout\,
	combout => \p3|display[0]~6_combout\);

-- Location: LCCOMB_X16_Y11_N30
\p3|Mux42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~1_combout\ = (\p2|o\(1) & ((\p3|display[0]~7_combout\ & ((\p3|display[0]~6_combout\))) # (!\p3|display[0]~7_combout\ & (\p3|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p3|display[0]~7_combout\,
	datac => \p3|Mux42~0_combout\,
	datad => \p3|display[0]~6_combout\,
	combout => \p3|Mux42~1_combout\);

-- Location: LCCOMB_X15_Y12_N10
\p3|display[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|display[0]~11_combout\ = (\p2|o\(0) & ((\nao|cc\(0)))) # (!\p2|o\(0) & (\nao|ee\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nao|ee\(0),
	datac => \nao|cc\(0),
	datad => \p2|o\(0),
	combout => \p3|display[0]~11_combout\);

-- Location: LCCOMB_X15_Y12_N26
\p3|Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux39~0_combout\ = (\p3|display[0]~8_combout\) # ((\p3|display[0]~10_combout\ & (\p3|display[0]~9_combout\ $ (\p3|display[0]~11_combout\))) # (!\p3|display[0]~10_combout\ & ((\p3|display[0]~9_combout\) # (!\p3|display[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~10_combout\,
	datab => \p3|display[0]~9_combout\,
	datac => \p3|display[0]~8_combout\,
	datad => \p3|display[0]~11_combout\,
	combout => \p3|Mux39~0_combout\);

-- Location: LCCOMB_X15_Y11_N18
\p3|Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux39~1_combout\ = (\p2|o\(1) & ((\p3|Mux42~4_combout\) # ((\p3|display[0]~7_combout\ & \p3|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux42~4_combout\,
	datab => \p2|o\(1),
	datac => \p3|display[0]~7_combout\,
	datad => \p3|Mux39~0_combout\,
	combout => \p3|Mux39~1_combout\);

-- Location: LCCOMB_X16_Y11_N26
\p3|Mux39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux39~2_combout\ = (\p3|Mux42~2_combout\ & ((\p3|Mux42~3_combout\) # ((\p3|Mux39~1_combout\)))) # (!\p3|Mux42~2_combout\ & (\p3|Mux42~1_combout\ & ((\p3|Mux42~3_combout\) # (\p3|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|Mux42~2_combout\,
	datab => \p3|Mux42~3_combout\,
	datac => \p3|Mux42~1_combout\,
	datad => \p3|Mux39~1_combout\,
	combout => \p3|Mux39~2_combout\);

-- Location: LCFF_X16_Y11_N27
\p3|display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux39~2_combout\,
	ena => \p3|display[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(3));

-- Location: LCCOMB_X22_Y13_N2
\mc|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux12~0_combout\ = (\comb_3|mkoo\(1) & ((\p3|display\(3)))) # (!\comb_3|mkoo\(1) & (\p2|display\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display\(3),
	datab => \comb_3|mkoo\(1),
	datad => \p3|display\(3),
	combout => \mc|Mux12~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\p1|Mux52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux52~0_combout\ = (\p1|Mux55~10_combout\ & ((\p1|display[2]~13_combout\ & (\p1|display[2]~11_combout\ $ (!\p1|display[2]~15_combout\))) # (!\p1|display[2]~13_combout\ & (\p1|display[2]~11_combout\ & !\p1|display[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~13_combout\,
	datab => \p1|display[2]~11_combout\,
	datac => \p1|display[2]~15_combout\,
	datad => \p1|Mux55~10_combout\,
	combout => \p1|Mux52~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\p1|Mux52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux52~1_combout\ = (\p1|Mux52~0_combout\) # ((\p1|Mux55~6_combout\ & \p1|Mux55~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|Mux55~6_combout\,
	datac => \p1|Mux55~4_combout\,
	datad => \p1|Mux52~0_combout\,
	combout => \p1|Mux52~1_combout\);

-- Location: LCFF_X21_Y13_N25
\p1|display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux52~1_combout\,
	ena => \p1|display[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(3));

-- Location: LCFF_X22_Y13_N3
\mc|diso[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux12~0_combout\,
	sdata => \p1|display\(3),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(3));

-- Location: LCCOMB_X15_Y11_N16
\p3|Mux42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux42~4_combout\ = (\nao|ff\(1) & (\p2|o\(0) $ ((!\p2|o\(2))))) # (!\nao|ff\(1) & (!\nao|ff\(0) & (\p2|o\(0) $ (!\p2|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(2),
	datac => \nao|ff\(1),
	datad => \nao|ff\(0),
	combout => \p3|Mux42~4_combout\);

-- Location: LCCOMB_X15_Y12_N4
\p3|Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux38~0_combout\ = (\p2|o\(0) & (((!\nao|cc\(0) & !\p2|o\(2))))) # (!\p2|o\(0) & (!\nao|ee\(0) & ((\p2|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \nao|ee\(0),
	datac => \nao|cc\(0),
	datad => \p2|o\(2),
	combout => \p3|Mux38~0_combout\);

-- Location: LCCOMB_X15_Y12_N2
\p3|Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux38~1_combout\ = (\p3|Mux38~0_combout\ & (((\p3|display[0]~9_combout\) # (\p3|display[0]~8_combout\)) # (!\p3|display[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display[0]~10_combout\,
	datab => \p3|display[0]~9_combout\,
	datac => \p3|Mux38~0_combout\,
	datad => \p3|display[0]~8_combout\,
	combout => \p3|Mux38~1_combout\);

-- Location: LCCOMB_X16_Y11_N28
\p3|Mux38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux38~2_combout\ = (\p2|o\(1) & (\p3|Mux42~1_combout\ & ((\p3|Mux42~4_combout\) # (\p3|Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p3|Mux42~4_combout\,
	datac => \p3|Mux38~1_combout\,
	datad => \p3|Mux42~1_combout\,
	combout => \p3|Mux38~2_combout\);

-- Location: LCCOMB_X16_Y11_N20
\p3|Mux38~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux38~3_combout\ = (\p3|Mux38~2_combout\) # ((!\nao|dd\(0) & (!\nao|dd\(2) & \p3|Mux42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(0),
	datab => \nao|dd\(2),
	datac => \p3|Mux42~2_combout\,
	datad => \p3|Mux38~2_combout\,
	combout => \p3|Mux38~3_combout\);

-- Location: LCFF_X16_Y11_N21
\p3|display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|Mux38~3_combout\,
	ena => \p3|display[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|display\(4));

-- Location: LCCOMB_X22_Y13_N20
\mc|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux11~0_combout\ = (\comb_3|mkoo\(1) & ((\p3|display\(4)))) # (!\comb_3|mkoo\(1) & (\p2|display\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display\(4),
	datab => \comb_3|mkoo\(1),
	datad => \p3|display\(4),
	combout => \mc|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y13_N24
\p1|Mux51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux51~0_combout\ = (\p2|o\(1) & (\ji|f\(0))) # (!\p2|o\(1) & (((\p1|display[2]~16_combout\) # (\p1|display[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datab => \p1|display[2]~16_combout\,
	datac => \p1|display[2]~18_combout\,
	datad => \p2|o\(1),
	combout => \p1|Mux51~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\p1|Mux51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux51~1_combout\ = (\p1|display[2]~13_combout\) # ((\p1|display[2]~11_combout\ & (!\p1|display[2]~9_combout\ & !\p1|display[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~13_combout\,
	datab => \p1|display[2]~11_combout\,
	datac => \p1|display[2]~9_combout\,
	datad => \p1|display[2]~15_combout\,
	combout => \p1|Mux51~1_combout\);

-- Location: LCCOMB_X21_Y13_N18
\p1|Mux51~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux51~2_combout\ = (\p1|display[2]~30_combout\ & ((\p1|Mux51~1_combout\) # ((\p1|Mux51~0_combout\ & \p1|Mux55~6_combout\)))) # (!\p1|display[2]~30_combout\ & (\p1|Mux51~0_combout\ & (\p1|Mux55~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~30_combout\,
	datab => \p1|Mux51~0_combout\,
	datac => \p1|Mux55~6_combout\,
	datad => \p1|Mux51~1_combout\,
	combout => \p1|Mux51~2_combout\);

-- Location: LCFF_X21_Y13_N19
\p1|display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux51~2_combout\,
	ena => \p1|display[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(4));

-- Location: LCFF_X22_Y13_N21
\mc|diso[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux11~0_combout\,
	sdata => \p1|display\(4),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(4));

-- Location: LCCOMB_X26_Y13_N8
\p2|Mux44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux44~1_combout\ = (\p2|display[1]~2_combout\ & (\p2|display[1]~1_combout\ & \p2|display[1]~3_combout\)) # (!\p2|display[1]~2_combout\ & ((\p2|display[1]~1_combout\) # (\p2|display[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~2_combout\,
	datac => \p2|display[1]~1_combout\,
	datad => \p2|display[1]~3_combout\,
	combout => \p2|Mux44~1_combout\);

-- Location: LCCOMB_X26_Y13_N10
\p2|Mux49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux49~0_combout\ = (!\p2|display[1]~0_combout\ & ((\p2|o\(0) & (\p2|o\(1) & !\p2|o\(2))) # (!\p2|o\(0) & (\p2|o\(1) $ (!\p2|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \p2|display[1]~0_combout\,
	datad => \p2|o\(2),
	combout => \p2|Mux49~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\p2|Mux45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux45~0_combout\ = (\p2|o\(1) & (\p2|o\(0) & \p2|o\(2))) # (!\p2|o\(1) & (\p2|o\(0) $ (\p2|o\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datac => \p2|o\(0),
	datad => \p2|o\(2),
	combout => \p2|Mux45~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\p2|Mux44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux44~0_combout\ = (\p2|Mux45~0_combout\ & (!\p2|display[1]~10_combout\ & ((\p2|display[1]~8_combout\) # (\p2|display[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|display[1]~8_combout\,
	datab => \p2|Mux45~0_combout\,
	datac => \p2|display[1]~10_combout\,
	datad => \p2|display[1]~6_combout\,
	combout => \p2|Mux44~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\p2|Mux44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux44~2_combout\ = (\p2|Mux44~0_combout\) # ((\p2|Mux44~1_combout\ & \p2|Mux49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|Mux44~1_combout\,
	datac => \p2|Mux49~0_combout\,
	datad => \p2|Mux44~0_combout\,
	combout => \p2|Mux44~2_combout\);

-- Location: LCFF_X25_Y13_N31
\p2|display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux44~2_combout\,
	ena => \p2|display[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(5));

-- Location: LCCOMB_X22_Y13_N22
\mc|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux10~0_combout\ = (\comb_3|mkoo\(1) & (\p3|display\(5))) # (!\comb_3|mkoo\(1) & ((\p2|display\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display\(5),
	datab => \comb_3|mkoo\(1),
	datad => \p2|display\(5),
	combout => \mc|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y13_N6
\p1|Mux50~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux50~2_combout\ = (!\p1|display[2]~16_combout\ & (\p1|Mux55~5_combout\ & ((\p1|display[2]~18_combout\) # (\p1|display[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~18_combout\,
	datab => \p1|display[2]~16_combout\,
	datac => \p1|Mux55~5_combout\,
	datad => \p1|display[2]~17_combout\,
	combout => \p1|Mux50~2_combout\);

-- Location: LCCOMB_X17_Y13_N8
\p1|Mux50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux50~1_combout\ = (\p1|Mux55~8_combout\ & ((\ji|f\(0)) # (\ji|f\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datac => \ji|f\(1),
	datad => \p1|Mux55~8_combout\,
	combout => \p1|Mux50~1_combout\);

-- Location: LCCOMB_X21_Y13_N10
\p1|Mux50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux50~0_combout\ = (\p1|Mux55~10_combout\ & ((\p1|display[2]~13_combout\ & ((\p1|display[2]~15_combout\) # (!\p1|display[2]~11_combout\))) # (!\p1|display[2]~13_combout\ & (!\p1|display[2]~11_combout\ & \p1|display[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~13_combout\,
	datab => \p1|display[2]~11_combout\,
	datac => \p1|display[2]~15_combout\,
	datad => \p1|Mux55~10_combout\,
	combout => \p1|Mux50~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\p1|Mux50~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux50~3_combout\ = (\p1|Mux50~0_combout\) # ((!\p1|display[2]~30_combout\ & ((\p1|Mux50~2_combout\) # (\p1|Mux50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display[2]~30_combout\,
	datab => \p1|Mux50~2_combout\,
	datac => \p1|Mux50~1_combout\,
	datad => \p1|Mux50~0_combout\,
	combout => \p1|Mux50~3_combout\);

-- Location: LCFF_X21_Y13_N21
\p1|display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux50~3_combout\,
	ena => \p1|display[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(5));

-- Location: LCFF_X22_Y13_N23
\mc|diso[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux10~0_combout\,
	sdata => \p1|display\(5),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(5));

-- Location: LCCOMB_X23_Y13_N22
\p2|Mux43~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~7_combout\ = (\pao|f\(3) & (((\p2|display\(6))))) # (!\pao|f\(3) & ((\pao|f\(2) & (\pao|f\(1) & \p2|display\(6))) # (!\pao|f\(2) & (!\pao|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|f\(2),
	datab => \pao|f\(3),
	datac => \pao|f\(1),
	datad => \p2|display\(6),
	combout => \p2|Mux43~7_combout\);

-- Location: LCCOMB_X25_Y14_N0
\p2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux7~0_combout\ = (\pao|a\(2) & ((\pao|a\(3)) # ((\pao|a\(0) & \pao|a\(1))))) # (!\pao|a\(2) & (((!\pao|a\(1) & !\pao|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a\(2),
	datab => \pao|a\(0),
	datac => \pao|a\(1),
	datad => \pao|a\(3),
	combout => \p2|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y14_N26
\p2|Mux43~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~4_combout\ = (\pao|a\(3) & (\p2|display\(6) & ((\pao|a\(1)) # (\p2|Mux7~0_combout\)))) # (!\pao|a\(3) & (((\p2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a\(1),
	datab => \pao|a\(3),
	datac => \p2|display\(6),
	datad => \p2|Mux7~0_combout\,
	combout => \p2|Mux43~4_combout\);

-- Location: LCCOMB_X24_Y15_N16
\p2|Mux43~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~8_combout\ = (\p2|o\(2) & (\p2|Mux43~7_combout\)) # (!\p2|o\(2) & ((\p2|Mux43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datac => \p2|Mux43~7_combout\,
	datad => \p2|Mux43~4_combout\,
	combout => \p2|Mux43~8_combout\);

-- Location: LCCOMB_X23_Y15_N28
\p2|Mux43~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~3_combout\ = (\pao|d\(3) & (((\p2|display\(6))))) # (!\pao|d\(3) & ((\pao|d\(1) & (\p2|display\(6) & \pao|d\(2))) # (!\pao|d\(1) & ((!\pao|d\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|d\(1),
	datab => \p2|display\(6),
	datac => \pao|d\(3),
	datad => \pao|d\(2),
	combout => \p2|Mux43~3_combout\);

-- Location: LCCOMB_X24_Y15_N20
\p2|Mux43~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~5_combout\ = (\p2|o\(0) & (((\p2|o\(2))))) # (!\p2|o\(0) & ((\p2|o\(2) & (\p2|Mux43~3_combout\)) # (!\p2|o\(2) & ((\p2|Mux43~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|Mux43~3_combout\,
	datac => \p2|o\(2),
	datad => \p2|Mux43~4_combout\,
	combout => \p2|Mux43~5_combout\);

-- Location: LCCOMB_X24_Y15_N18
\p2|Mux43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~2_combout\ = (\pao|b\(3) & (((\p2|display\(6))))) # (!\pao|b\(3) & ((\pao|b\(2) & (\p2|display\(6) & \pao|b\(1))) # (!\pao|b\(2) & ((!\pao|b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(2),
	datab => \p2|display\(6),
	datac => \pao|b\(3),
	datad => \pao|b\(1),
	combout => \p2|Mux43~2_combout\);

-- Location: LCCOMB_X24_Y15_N26
\p2|Mux43~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~6_combout\ = (\p2|o\(0) & ((\p2|o\(1)) # ((!\p2|Mux43~5_combout\ & \p2|Mux43~2_combout\)))) # (!\p2|o\(0) & (!\p2|o\(1) & (\p2|Mux43~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|o\(1),
	datac => \p2|Mux43~5_combout\,
	datad => \p2|Mux43~2_combout\,
	combout => \p2|Mux43~6_combout\);

-- Location: LCCOMB_X24_Y15_N8
\p2|Mux43~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux43~9_combout\ = (\p2|o\(1) & ((\p2|Mux43~6_combout\ & ((\p2|Mux43~8_combout\))) # (!\p2|Mux43~6_combout\ & (\p2|Mux43~1_combout\)))) # (!\p2|o\(1) & (((\p2|Mux43~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|Mux43~1_combout\,
	datab => \p2|o\(1),
	datac => \p2|Mux43~8_combout\,
	datad => \p2|Mux43~6_combout\,
	combout => \p2|Mux43~9_combout\);

-- Location: LCFF_X24_Y15_N9
\p2|display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux43~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(6));

-- Location: LCCOMB_X22_Y13_N12
\mc|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux9~0_combout\ = (\comb_3|mkoo\(1) & (\p3|display\(6))) # (!\comb_3|mkoo\(1) & ((\p2|display\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|display\(6),
	datab => \comb_3|mkoo\(1),
	datad => \p2|display\(6),
	combout => \mc|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y13_N26
\p1|Mux49~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux49~3_combout\ = (\ji|d\(3) & (((\p1|display\(6))))) # (!\ji|d\(3) & ((\ji|d\(1) & (\ji|d\(2) & \p1|display\(6))) # (!\ji|d\(1) & (!\ji|d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|d\(1),
	datab => \ji|d\(2),
	datac => \p1|display\(6),
	datad => \ji|d\(3),
	combout => \p1|Mux49~3_combout\);

-- Location: LCCOMB_X19_Y11_N4
\p1|Mux49~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux49~4_combout\ = (!\p2|o\(1) & ((\p2|o\(0)) # ((\p1|always0~0_combout\ & \p1|Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p2|o\(0),
	datac => \p1|always0~0_combout\,
	datad => \p1|Mux49~3_combout\,
	combout => \p1|Mux49~4_combout\);

-- Location: LCCOMB_X17_Y13_N6
\p1|Mux54~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~3_combout\ = (!\p1|always0~1_combout\ & \p2|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|always0~1_combout\,
	datad => \p2|o\(1),
	combout => \p1|Mux54~3_combout\);

-- Location: LCCOMB_X18_Y11_N14
\p1|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux28~0_combout\ = (\ji|e\(2) & ((\ji|e\(3)) # ((\ji|e\(0) & \ji|e\(1))))) # (!\ji|e\(2) & (((!\ji|e\(3) & !\ji|e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \ji|e\(0),
	datac => \ji|e\(3),
	datad => \ji|e\(1),
	combout => \p1|Mux28~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\p1|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux28~1_combout\ = (\ji|e\(3) & (\p1|display\(6) & ((\ji|e\(1)) # (\p1|Mux28~0_combout\)))) # (!\ji|e\(3) & (((\p1|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(3),
	datab => \ji|e\(1),
	datac => \p1|Mux28~0_combout\,
	datad => \p1|display\(6),
	combout => \p1|Mux28~1_combout\);

-- Location: LCCOMB_X18_Y11_N28
\p1|Mux35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux35~2_combout\ = (\ji|f\(1) & (\p1|display\(6) & ((!\p1|Mux35~1_combout\)))) # (!\ji|f\(1) & ((\p1|Mux35~0_combout\) # ((\p1|display\(6) & !\p1|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(1),
	datab => \p1|display\(6),
	datac => \p1|Mux35~0_combout\,
	datad => \p1|Mux35~1_combout\,
	combout => \p1|Mux35~2_combout\);

-- Location: LCCOMB_X18_Y11_N30
\p1|Mux49~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux49~2_combout\ = (\p1|Mux54~3_combout\ & ((\p2|o\(0) & ((\p1|Mux35~2_combout\))) # (!\p2|o\(0) & (\p1|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p1|Mux54~3_combout\,
	datac => \p1|Mux28~1_combout\,
	datad => \p1|Mux35~2_combout\,
	combout => \p1|Mux49~2_combout\);

-- Location: LCCOMB_X16_Y15_N22
\p1|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux14~0_combout\ = (\ji|c\(1) & ((\ji|c\(3)) # ((!\ji|c\(2)) # (!\ji|c\(0))))) # (!\ji|c\(1) & (((\ji|c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|c\(3),
	datab => \ji|c\(1),
	datac => \ji|c\(0),
	datad => \ji|c\(2),
	combout => \p1|Mux14~0_combout\);

-- Location: LCCOMB_X19_Y11_N8
\p1|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux14~1_combout\ = (\p1|always0~0_combout\ & ((\ji|c\(3) & (\p1|display\(6) & \p1|Mux14~0_combout\)) # (!\ji|c\(3) & ((!\p1|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display\(6),
	datab => \p1|always0~0_combout\,
	datac => \ji|c\(3),
	datad => \p1|Mux14~0_combout\,
	combout => \p1|Mux14~1_combout\);

-- Location: LCCOMB_X19_Y11_N26
\p1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux0~0_combout\ = (\ji|a\(2) & ((\ji|a\(3)) # ((\ji|a\(0) & \ji|a\(1))))) # (!\ji|a\(2) & (((!\ji|a\(1) & !\ji|a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(2),
	datab => \ji|a\(0),
	datac => \ji|a\(1),
	datad => \ji|a\(3),
	combout => \p1|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\p1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux0~1_combout\ = (\ji|a\(3) & (\p1|display\(6) & ((\ji|a\(1)) # (\p1|Mux0~0_combout\)))) # (!\ji|a\(3) & (((\p1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|a\(3),
	datab => \ji|a\(1),
	datac => \p1|display\(6),
	datad => \p1|Mux0~0_combout\,
	combout => \p1|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y14_N16
\ji|b[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ji|b[3]~3_combout\ = (\ji|Equal8~0_combout\ & (\ji|Add2~1_combout\ & ((!\ji|always1~0_combout\)))) # (!\ji|Equal8~0_combout\ & (((\ji|b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|Add2~1_combout\,
	datab => \ji|Equal8~0_combout\,
	datac => \ji|b\(3),
	datad => \ji|always1~0_combout\,
	combout => \ji|b[3]~3_combout\);

-- Location: LCFF_X19_Y14_N17
\ji|b[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \ji|b[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ji|b\(3));

-- Location: LCCOMB_X19_Y11_N12
\p1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux7~0_combout\ = (\ji|b\(3) & (\p1|display\(6))) # (!\ji|b\(3) & ((\ji|b\(2) & (\p1|display\(6) & \ji|b\(1))) # (!\ji|b\(2) & ((!\ji|b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|display\(6),
	datab => \ji|b\(2),
	datac => \ji|b\(1),
	datad => \ji|b\(3),
	combout => \p1|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y11_N30
\p1|Mux49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux49~0_combout\ = (\p2|o\(1) & (\p2|o\(0))) # (!\p2|o\(1) & ((\p2|o\(0) & ((\p1|Mux7~0_combout\))) # (!\p2|o\(0) & (\p1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p2|o\(0),
	datac => \p1|Mux0~1_combout\,
	datad => \p1|Mux7~0_combout\,
	combout => \p1|Mux49~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\p1|Mux49~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux49~1_combout\ = (\p2|o\(1) & ((\p1|Mux49~0_combout\ & (\p1|Mux14~1_combout\)) # (!\p1|Mux49~0_combout\ & ((\p1|display\(6)))))) # (!\p2|o\(1) & (((\p1|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p1|Mux14~1_combout\,
	datac => \p1|display\(6),
	datad => \p1|Mux49~0_combout\,
	combout => \p1|Mux49~1_combout\);

-- Location: LCCOMB_X19_Y11_N24
\p1|Mux49~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux49~5_combout\ = (\p1|o\(2) & ((\p1|Mux49~4_combout\) # ((\p1|Mux49~2_combout\)))) # (!\p1|o\(2) & (((\p1|Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datab => \p1|Mux49~4_combout\,
	datac => \p1|Mux49~2_combout\,
	datad => \p1|Mux49~1_combout\,
	combout => \p1|Mux49~5_combout\);

-- Location: LCFF_X19_Y11_N25
\p1|display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux49~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(6));

-- Location: LCFF_X22_Y13_N13
\mc|diso[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux9~0_combout\,
	sdata => \p1|display\(6),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(6));

-- Location: LCCOMB_X24_Y15_N2
\p2|Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~0_combout\ = (!\p2|o\(2) & ((\pao|b\(3)) # ((\pao|b\(2) & \pao|b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|b\(2),
	datab => \pao|b\(3),
	datac => \p2|o\(2),
	datad => \pao|b\(1),
	combout => \p2|Mux42~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\p2|Mux42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~1_combout\ = (\p2|o\(2) & ((\pao|d\(3)) # ((\pao|d\(1) & \pao|d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|d\(1),
	datab => \pao|d\(2),
	datac => \p2|o\(2),
	datad => \pao|d\(3),
	combout => \p2|Mux42~1_combout\);

-- Location: LCCOMB_X25_Y14_N20
\p2|Mux42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~2_combout\ = (\pao|a\(3) & (!\p2|o\(2) & ((\pao|a\(1)) # (\pao|a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pao|a\(1),
	datab => \pao|a\(2),
	datac => \pao|a\(3),
	datad => \p2|o\(2),
	combout => \p2|Mux42~2_combout\);

-- Location: LCCOMB_X24_Y15_N30
\p2|Mux42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~3_combout\ = (\p2|display\(7) & ((\p2|o\(0)) # ((\p2|Mux42~1_combout\) # (\p2|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|display\(7),
	datac => \p2|Mux42~1_combout\,
	datad => \p2|Mux42~2_combout\,
	combout => \p2|Mux42~3_combout\);

-- Location: LCCOMB_X24_Y15_N0
\p2|Mux42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~4_combout\ = (\p2|o\(1) & (\p2|o\(0))) # (!\p2|o\(1) & (\p2|Mux42~3_combout\ & ((\p2|Mux42~0_combout\) # (!\p2|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p2|Mux42~0_combout\,
	datac => \p2|o\(1),
	datad => \p2|Mux42~3_combout\,
	combout => \p2|Mux42~4_combout\);

-- Location: LCCOMB_X24_Y15_N14
\p2|Mux42~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~5_combout\ = (\p2|o\(2) & (\pao|e\(3) & ((\pao|e\(1)) # (\pao|e\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(2),
	datab => \pao|e\(1),
	datac => \pao|e\(2),
	datad => \pao|e\(3),
	combout => \p2|Mux42~5_combout\);

-- Location: LCCOMB_X24_Y15_N28
\p2|Mux42~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~7_combout\ = (\p2|Mux42~4_combout\ & ((\p2|Mux42~6_combout\) # ((\p2|Mux42~2_combout\)))) # (!\p2|Mux42~4_combout\ & (((\p2|Mux42~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|Mux42~6_combout\,
	datab => \p2|Mux42~2_combout\,
	datac => \p2|Mux42~5_combout\,
	datad => \p2|Mux42~4_combout\,
	combout => \p2|Mux42~7_combout\);

-- Location: LCCOMB_X24_Y15_N22
\p2|Mux42~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux42~8_combout\ = (\p2|o\(1) & (((\p2|display\(7) & \p2|Mux42~7_combout\)))) # (!\p2|o\(1) & (\p2|Mux42~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(1),
	datab => \p2|Mux42~4_combout\,
	datac => \p2|display\(7),
	datad => \p2|Mux42~7_combout\,
	combout => \p2|Mux42~8_combout\);

-- Location: LCFF_X24_Y15_N23
\p2|display[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux42~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|display\(7));

-- Location: LCCOMB_X22_Y14_N0
\mc|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux8~0_combout\ = (!\comb_3|mkoo\(1) & \p2|display\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|mkoo\(1),
	datad => \p2|display\(7),
	combout => \mc|Mux8~0_combout\);

-- Location: LCCOMB_X15_Y15_N16
\p1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|WideOr5~0_combout\ = (\ji|f\(3)) # ((\ji|f\(2)) # ((\ji|f\(0) & \ji|f\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|f\(0),
	datab => \ji|f\(3),
	datac => \ji|f\(2),
	datad => \ji|f\(1),
	combout => \p1|WideOr5~0_combout\);

-- Location: LCCOMB_X18_Y14_N8
\p1|Mux54~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux54~5_combout\ = (\ji|e\(3) & ((\ji|e\(1)) # (\ji|e\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ji|e\(1),
	datac => \ji|e\(3),
	datad => \ji|e\(2),
	combout => \p1|Mux54~5_combout\);

-- Location: LCCOMB_X18_Y14_N22
\p1|Mux48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux48~0_combout\ = (\p1|Mux54~3_combout\ & ((\p2|o\(0) & (\p1|WideOr5~0_combout\)) # (!\p2|o\(0) & ((\p1|Mux54~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p1|WideOr5~0_combout\,
	datac => \p1|Mux54~5_combout\,
	datad => \p1|Mux54~3_combout\,
	combout => \p1|Mux48~0_combout\);

-- Location: LCCOMB_X18_Y14_N28
\p1|Mux48~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux48~2_combout\ = (\p1|Mux48~0_combout\) # ((\p1|Mux48~1_combout\ & (\p1|always0~0_combout\ & !\p1|display[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux48~1_combout\,
	datab => \p1|always0~0_combout\,
	datac => \p1|display[2]~6_combout\,
	datad => \p1|Mux48~0_combout\,
	combout => \p1|Mux48~2_combout\);

-- Location: LCCOMB_X18_Y14_N30
\p1|Mux48~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Mux48~5_combout\ = (\p1|o\(2) & (((\p1|display\(7) & \p1|Mux48~2_combout\)))) # (!\p1|o\(2) & (\p1|Mux48~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Mux48~4_combout\,
	datab => \p1|o\(2),
	datac => \p1|display\(7),
	datad => \p1|Mux48~2_combout\,
	combout => \p1|Mux48~5_combout\);

-- Location: LCFF_X18_Y14_N31
\p1|display[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|Mux48~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|display\(7));

-- Location: LCFF_X22_Y14_N1
\mc|diso[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux8~0_combout\,
	sdata => \p1|display\(7),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|diso\(7));

-- Location: LCFF_X16_Y11_N5
\p2|led_dig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|display[2]~6_combout\,
	sdata => VCC,
	sload => \p2|o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(0));

-- Location: LCCOMB_X17_Y14_N20
\mc|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux7~0_combout\ = (\comb_3|mkoo\(1) & (\p2|led_dig\(2))) # (!\comb_3|mkoo\(1) & ((\p2|led_dig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|led_dig\(2),
	datab => \comb_3|mkoo\(1),
	datad => \p2|led_dig\(0),
	combout => \mc|Mux7~0_combout\);

-- Location: LCCOMB_X15_Y14_N4
\p1|led_dig[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[0]~feeder_combout\ = \p1|display[2]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1|display[2]~6_combout\,
	combout => \p1|led_dig[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N12
\p1|led_dig[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[1]~0_combout\ = (\p1|o\(2)) # ((\p2|o\(0)) # (!\p2|o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|o\(2),
	datac => \p2|o\(1),
	datad => \p2|o\(0),
	combout => \p1|led_dig[1]~0_combout\);

-- Location: LCFF_X15_Y14_N5
\p1|led_dig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[0]~feeder_combout\,
	sdata => VCC,
	sload => \p1|o\(2),
	ena => \p1|led_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(0));

-- Location: LCFF_X17_Y14_N21
\mc|lego[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux7~0_combout\,
	sdata => \p1|led_dig\(0),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(0));

-- Location: LCCOMB_X19_Y14_N30
\p2|display[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~23_combout\ = (\p2|o\(1)) # (!\p2|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|o\(0),
	datad => \p2|o\(1),
	combout => \p2|display[1]~23_combout\);

-- Location: LCCOMB_X19_Y14_N20
\p2|led_dig[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|led_dig[1]~feeder_combout\ = \p2|display[1]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~23_combout\,
	combout => \p2|led_dig[1]~feeder_combout\);

-- Location: LCFF_X19_Y14_N21
\p2|led_dig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|led_dig[1]~feeder_combout\,
	sdata => VCC,
	sload => \p2|o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(1));

-- Location: LCCOMB_X17_Y15_N8
\p2|display[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|display[1]~22_combout\ = (\p2|o\(0)) # (!\p2|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|o\(1),
	datad => \p2|o\(0),
	combout => \p2|display[1]~22_combout\);

-- Location: LCCOMB_X21_Y15_N14
\p3|led_dig[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|led_dig[1]~feeder_combout\ = \p2|display[1]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~22_combout\,
	combout => \p3|led_dig[1]~feeder_combout\);

-- Location: LCFF_X21_Y15_N15
\p3|led_dig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|led_dig[1]~feeder_combout\,
	sdata => VCC,
	sload => \p2|o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|led_dig\(1));

-- Location: LCCOMB_X22_Y14_N2
\mc|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux6~0_combout\ = (\comb_3|mkoo\(1) & ((\p3|led_dig\(1)))) # (!\comb_3|mkoo\(1) & (\p2|led_dig\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|mkoo\(1),
	datab => \p2|led_dig\(1),
	datad => \p3|led_dig\(1),
	combout => \mc|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y14_N2
\p1|led_dig[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[1]~feeder_combout\ = \p2|display[1]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~23_combout\,
	combout => \p1|led_dig[1]~feeder_combout\);

-- Location: LCFF_X15_Y14_N3
\p1|led_dig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[1]~feeder_combout\,
	sdata => VCC,
	sload => \p1|o\(2),
	ena => \p1|led_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(1));

-- Location: LCFF_X22_Y14_N3
\mc|lego[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux6~0_combout\,
	sdata => \p1|led_dig\(1),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(1));

-- Location: LCCOMB_X16_Y14_N4
\p2|led_dig[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|led_dig[3]~feeder_combout\ = \p1|display[2]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1|display[2]~6_combout\,
	combout => \p2|led_dig[3]~feeder_combout\);

-- Location: LCFF_X16_Y14_N5
\p2|led_dig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|led_dig[3]~feeder_combout\,
	sdata => VCC,
	sload => \p2|ALT_INV_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(3));

-- Location: LCCOMB_X17_Y14_N22
\mc|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux5~0_combout\ = (\comb_3|mkoo\(1) & ((\p2|led_dig\(3)))) # (!\comb_3|mkoo\(1) & (\p2|led_dig\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|led_dig\(2),
	datab => \comb_3|mkoo\(1),
	datad => \p2|led_dig\(3),
	combout => \mc|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y14_N14
\p1|led_dig[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[2]~1_combout\ = (\p1|o\(2)) # (((!\p2|o\(0) & \p1|led_dig\(2))) # (!\p2|o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datab => \p1|o\(2),
	datac => \p1|led_dig\(2),
	datad => \p2|o\(1),
	combout => \p1|led_dig[2]~1_combout\);

-- Location: LCFF_X17_Y14_N15
\p1|led_dig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(2));

-- Location: LCFF_X17_Y14_N23
\mc|lego[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux5~0_combout\,
	sdata => \p1|led_dig\(2),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(2));

-- Location: LCCOMB_X22_Y14_N12
\mc|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux4~0_combout\ = (\comb_3|mkoo\(1) & (\p2|led_dig\(1))) # (!\comb_3|mkoo\(1) & ((\p2|led_dig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|mkoo\(1),
	datab => \p2|led_dig\(1),
	datad => \p2|led_dig\(3),
	combout => \mc|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y14_N0
\p1|led_dig[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[3]~feeder_combout\ = \p1|display[2]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1|display[2]~6_combout\,
	combout => \p1|led_dig[3]~feeder_combout\);

-- Location: LCFF_X18_Y14_N1
\p1|led_dig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[3]~feeder_combout\,
	sdata => VCC,
	sload => \p1|ALT_INV_o\(2),
	ena => \p1|led_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(3));

-- Location: LCFF_X22_Y14_N13
\mc|lego[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux4~0_combout\,
	sdata => \p1|led_dig\(3),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(3));

-- Location: LCCOMB_X17_Y14_N24
\mc|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux3~0_combout\ = (\comb_3|mkoo\(1) & ((\p2|led_dig\(0)))) # (!\comb_3|mkoo\(1) & (\p2|led_dig\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|led_dig\(4),
	datab => \comb_3|mkoo\(1),
	datad => \p2|led_dig\(0),
	combout => \mc|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y14_N14
\p1|led_dig[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[4]~feeder_combout\ = \p2|display[1]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~22_combout\,
	combout => \p1|led_dig[4]~feeder_combout\);

-- Location: LCFF_X18_Y14_N15
\p1|led_dig[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[4]~feeder_combout\,
	sdata => VCC,
	sload => \p1|ALT_INV_o\(2),
	ena => \p1|led_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(4));

-- Location: LCFF_X17_Y14_N25
\mc|lego[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux3~0_combout\,
	sdata => \p1|led_dig\(4),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(4));

-- Location: LCCOMB_X21_Y15_N22
\p3|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Mux35~0_combout\ = (!\p2|o\(1)) # (!\p2|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|o\(0),
	datad => \p2|o\(1),
	combout => \p3|Mux35~0_combout\);

-- Location: LCCOMB_X21_Y14_N16
\p3|led_dig[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|led_dig[5]~feeder_combout\ = \p3|Mux35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p3|Mux35~0_combout\,
	combout => \p3|led_dig[5]~feeder_combout\);

-- Location: LCFF_X21_Y14_N17
\p3|led_dig[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p3|led_dig[5]~feeder_combout\,
	sdata => VCC,
	sload => \p2|ALT_INV_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|led_dig\(5));

-- Location: LCCOMB_X22_Y14_N10
\mc|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux2~0_combout\ = (\comb_3|mkoo\(1) & ((\p3|led_dig\(5)))) # (!\comb_3|mkoo\(1) & (\p2|led_dig\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|led_dig\(5),
	datab => \p3|led_dig\(5),
	datad => \comb_3|mkoo\(1),
	combout => \mc|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y14_N4
\p1|led_dig[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[5]~feeder_combout\ = \p3|Mux35~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p3|Mux35~0_combout\,
	combout => \p1|led_dig[5]~feeder_combout\);

-- Location: LCFF_X18_Y14_N5
\p1|led_dig[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[5]~feeder_combout\,
	sdata => VCC,
	sload => \p1|ALT_INV_o\(2),
	ena => \p1|led_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(5));

-- Location: LCFF_X22_Y14_N11
\mc|lego[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux2~0_combout\,
	sdata => \p1|led_dig\(5),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(5));

-- Location: LCCOMB_X17_Y14_N16
\mc|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux1~0_combout\ = (\p2|led_dig\(4)) # ((!\comb_3|mkoo\(1)) # (!\comb_3|mkoo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|led_dig\(4),
	datab => \comb_3|mkoo\(0),
	datad => \comb_3|mkoo\(1),
	combout => \mc|Mux1~0_combout\);

-- Location: LCFF_X17_Y14_N17
\mc|lego[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(6));

-- Location: LCCOMB_X17_Y14_N0
\p2|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|Mux35~0_combout\ = (\p2|o\(0) & ((\p2|o\(1)) # (!\p2|o\(2)))) # (!\p2|o\(0) & ((\p2|o\(2)) # (!\p2|o\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|o\(0),
	datac => \p2|o\(2),
	datad => \p2|o\(1),
	combout => \p2|Mux35~0_combout\);

-- Location: LCFF_X17_Y14_N1
\p2|led_dig[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p2|Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|led_dig\(7));

-- Location: LCCOMB_X17_Y14_N18
\mc|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mc|Mux0~0_combout\ = (\comb_3|mkoo\(1) & (\p3|led_dig\(7))) # (!\comb_3|mkoo\(1) & ((\p2|led_dig\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|led_dig\(7),
	datab => \comb_3|mkoo\(1),
	datad => \p2|led_dig\(7),
	combout => \mc|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y14_N26
\p1|led_dig[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|led_dig[7]~feeder_combout\ = \p2|display[1]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|display[1]~23_combout\,
	combout => \p1|led_dig[7]~feeder_combout\);

-- Location: LCFF_X18_Y14_N27
\p1|led_dig[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p1|led_dig[7]~feeder_combout\,
	sdata => VCC,
	sload => \p1|ALT_INV_o\(2),
	ena => \p1|led_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|led_dig\(7));

-- Location: LCFF_X17_Y14_N19
\mc|lego[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \mc|Mux0~0_combout\,
	sdata => \p1|led_dig\(7),
	sload => \comb_3|ALT_INV_mkoo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mc|lego\(7));

-- Location: LCCOMB_X18_Y15_N14
\p4|r[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|r[0]~1_combout\ = !\p4|r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p4|r\(0),
	combout => \p4|r[0]~1_combout\);

-- Location: LCCOMB_X15_Y15_N20
\nao|always0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~8_combout\ = (\nao|ff\(2) & (\ji|f\(2) & (\nao|ff\(3) $ (!\ji|f\(3))))) # (!\nao|ff\(2) & (!\ji|f\(2) & (\nao|ff\(3) $ (!\ji|f\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ff\(2),
	datab => \nao|ff\(3),
	datac => \ji|f\(2),
	datad => \ji|f\(3),
	combout => \nao|always0~8_combout\);

-- Location: LCCOMB_X15_Y13_N22
\nao|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~2_combout\ = (\ji|d\(1) & (\nao|dd\(1) & (\nao|dd\(0) $ (!\ji|d\(0))))) # (!\ji|d\(1) & (!\nao|dd\(1) & (\nao|dd\(0) $ (!\ji|d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|d\(1),
	datab => \nao|dd\(1),
	datac => \nao|dd\(0),
	datad => \ji|d\(0),
	combout => \nao|always0~2_combout\);

-- Location: LCCOMB_X15_Y12_N22
\nao|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~0_combout\ = (\nao|cc\(0) & (\ji|c\(0) & (\nao|cc\(1) $ (!\ji|c\(1))))) # (!\nao|cc\(0) & (!\ji|c\(0) & (\nao|cc\(1) $ (!\ji|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|cc\(0),
	datab => \ji|c\(0),
	datac => \nao|cc\(1),
	datad => \ji|c\(1),
	combout => \nao|always0~0_combout\);

-- Location: LCCOMB_X16_Y13_N26
\nao|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~3_combout\ = (\nao|dd\(2) & (\ji|d\(2) & (\ji|d\(3) $ (!\nao|dd\(3))))) # (!\nao|dd\(2) & (!\ji|d\(2) & (\ji|d\(3) $ (!\nao|dd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|dd\(2),
	datab => \ji|d\(3),
	datac => \ji|d\(2),
	datad => \nao|dd\(3),
	combout => \nao|always0~3_combout\);

-- Location: LCCOMB_X15_Y13_N24
\nao|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~4_combout\ = (\nao|always0~1_combout\ & (\nao|always0~2_combout\ & (\nao|always0~0_combout\ & \nao|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|always0~1_combout\,
	datab => \nao|always0~2_combout\,
	datac => \nao|always0~0_combout\,
	datad => \nao|always0~3_combout\,
	combout => \nao|always0~4_combout\);

-- Location: LCCOMB_X19_Y12_N24
\nao|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|Equal2~0_combout\ = \ji|e\(3) $ (\nao|ee\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ji|e\(3),
	datad => \nao|ee\(3),
	combout => \nao|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y12_N10
\nao|always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~5_combout\ = (\nao|ee\(0) & (\ji|e\(0) & (\nao|ee\(1) $ (!\ji|e\(1))))) # (!\nao|ee\(0) & (!\ji|e\(0) & (\nao|ee\(1) $ (!\ji|e\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|ee\(0),
	datab => \nao|ee\(1),
	datac => \ji|e\(1),
	datad => \ji|e\(0),
	combout => \nao|always0~5_combout\);

-- Location: LCCOMB_X19_Y12_N6
\nao|always0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~6_combout\ = (!\nao|Equal2~0_combout\ & (\nao|always0~5_combout\ & (\ji|e\(2) $ (!\nao|ee\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ji|e\(2),
	datab => \nao|ee\(2),
	datac => \nao|Equal2~0_combout\,
	datad => \nao|always0~5_combout\,
	combout => \nao|always0~6_combout\);

-- Location: LCCOMB_X19_Y15_N30
\nao|always0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \nao|always0~9_combout\ = (\nao|always0~7_combout\ & (\nao|always0~8_combout\ & (\nao|always0~4_combout\ & \nao|always0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nao|always0~7_combout\,
	datab => \nao|always0~8_combout\,
	datac => \nao|always0~4_combout\,
	datad => \nao|always0~6_combout\,
	combout => \nao|always0~9_combout\);

-- Location: LCFF_X19_Y15_N31
\nao|linerow\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f1Hz~clkctrl_outclk\,
	datain => \nao|always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nao|linerow~regout\);

-- Location: LCFF_X18_Y15_N15
\p4|r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|r[0]~1_combout\,
	ena => \nao|linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|r\(0));

-- Location: LCCOMB_X18_Y15_N20
\p4|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|Add0~0_combout\ = \p4|r\(1) $ (\p4|r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|Add0~0_combout\);

-- Location: LCFF_X18_Y15_N21
\p4|r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|Add0~0_combout\,
	ena => \nao|linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|r\(1));

-- Location: LCCOMB_X19_Y15_N16
\p4|line~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~0_combout\ = (!\p4|r\(2) & (!\p4|r\(1) & !\p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~0_combout\);

-- Location: LCFF_X19_Y15_N17
\p4|line[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~0_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(0));

-- Location: LCCOMB_X19_Y15_N26
\p4|line~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~1_combout\ = (!\p4|r\(2) & (!\p4|r\(1) & \p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~1_combout\);

-- Location: LCFF_X19_Y15_N27
\p4|line[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~1_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(1));

-- Location: LCCOMB_X19_Y15_N20
\p4|line~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~2_combout\ = (!\p4|r\(2) & (\p4|r\(1) & !\p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~2_combout\);

-- Location: LCFF_X19_Y15_N21
\p4|line[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~2_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(2));

-- Location: LCCOMB_X19_Y15_N22
\p4|line~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~3_combout\ = (!\p4|r\(2) & (\p4|r\(1) & \p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~3_combout\);

-- Location: LCFF_X19_Y15_N23
\p4|line[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~3_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(3));

-- Location: LCCOMB_X19_Y15_N4
\p4|line~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~4_combout\ = (\p4|r\(2) & (!\p4|r\(1) & !\p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~4_combout\);

-- Location: LCFF_X19_Y15_N5
\p4|line[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~4_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(4));

-- Location: LCCOMB_X19_Y15_N10
\p4|line~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~5_combout\ = (\p4|r\(2) & (!\p4|r\(1) & \p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~5_combout\);

-- Location: LCFF_X19_Y15_N11
\p4|line[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~5_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(5));

-- Location: LCCOMB_X19_Y15_N28
\p4|line~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~6_combout\ = (\p4|r\(2) & (\p4|r\(1) & !\p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~6_combout\);

-- Location: LCFF_X19_Y15_N29
\p4|line[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~6_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(6));

-- Location: LCCOMB_X19_Y15_N18
\p4|line~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|line~7_combout\ = (\p4|r\(2) & (\p4|r\(1) & \p4|r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(2),
	datac => \p4|r\(1),
	datad => \p4|r\(0),
	combout => \p4|line~7_combout\);

-- Location: LCFF_X19_Y15_N19
\p4|line[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|line~7_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|line\(7));

-- Location: LCCOMB_X18_Y15_N30
\p4|r[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|r[2]~0_combout\ = \p4|r\(2) $ (((\p4|r\(0) & (\p4|r\(1) & \nao|linerow~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(0),
	datab => \p4|r\(1),
	datac => \p4|r\(2),
	datad => \nao|linerow~regout\,
	combout => \p4|r[2]~0_combout\);

-- Location: LCFF_X18_Y15_N31
\p4|r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|r[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|r\(2));

-- Location: LCCOMB_X18_Y15_N26
\p4|row~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|row~0_combout\ = (\p4|r\(0) & ((!\p4|r\(2)) # (!\p4|r\(1)))) # (!\p4|r\(0) & ((\p4|r\(1)) # (\p4|r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p4|r\(0),
	datac => \p4|r\(1),
	datad => \p4|r\(2),
	combout => \p4|row~0_combout\);

-- Location: LCCOMB_X18_Y15_N24
\p4|row~0_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|row~0_wirecell_combout\ = !\p4|row~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p4|row~0_combout\,
	combout => \p4|row~0_wirecell_combout\);

-- Location: LCFF_X18_Y15_N25
\p4|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|row~0_wirecell_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|row\(0));

-- Location: LCFF_X18_Y15_N27
\p4|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|row~0_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|row\(1));

-- Location: LCCOMB_X19_Y15_N12
\p4|row~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|row~1_combout\ = \p4|r\(2) $ (\p4|r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p4|r\(2),
	datad => \p4|r\(0),
	combout => \p4|row~1_combout\);

-- Location: LCFF_X19_Y15_N13
\p4|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|row~1_combout\,
	sclr => \nao|ALT_INV_linerow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|row\(2));

-- Location: LCCOMB_X18_Y15_N28
\p4|row~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p4|row~2_combout\ = (\nao|linerow~regout\ & (\p4|r\(0) $ (\p4|r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|r\(0),
	datab => \p4|r\(1),
	datad => \nao|linerow~regout\,
	combout => \p4|row~2_combout\);

-- Location: LCFF_X18_Y15_N29
\p4|row[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \fen|f~clkctrl_outclk\,
	datain => \p4|row~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p4|row\(6));

-- Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[0]~I\ : cycloneii_io
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
	datain => \mc|diso\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(0));

-- Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[1]~I\ : cycloneii_io
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
	datain => \mc|diso\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(1));

-- Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[2]~I\ : cycloneii_io
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
	datain => \mc|diso\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(2));

-- Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[3]~I\ : cycloneii_io
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
	datain => \mc|diso\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(3));

-- Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[4]~I\ : cycloneii_io
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
	datain => \mc|diso\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(4));

-- Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[5]~I\ : cycloneii_io
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
	datain => \mc|diso\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(5));

-- Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[6]~I\ : cycloneii_io
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
	datain => \mc|diso\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(6));

-- Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dis[7]~I\ : cycloneii_io
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
	datain => \mc|diso\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dis(7));

-- Location: PIN_150,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[0]~I\ : cycloneii_io
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
	datain => \mc|lego\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(0));

-- Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[1]~I\ : cycloneii_io
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
	datain => \mc|lego\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(1));

-- Location: PIN_152,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[2]~I\ : cycloneii_io
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
	datain => \mc|lego\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(2));

-- Location: PIN_151,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[3]~I\ : cycloneii_io
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
	datain => \mc|lego\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(3));

-- Location: PIN_205,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[4]~I\ : cycloneii_io
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
	datain => \mc|lego\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(4));

-- Location: PIN_206,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[5]~I\ : cycloneii_io
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
	datain => \mc|lego\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(5));

-- Location: PIN_207,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[6]~I\ : cycloneii_io
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
	datain => \mc|lego\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(6));

-- Location: PIN_208,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leg[7]~I\ : cycloneii_io
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
	datain => \mc|lego\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leg(7));

-- Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[0]~I\ : cycloneii_io
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
	datain => \p4|line\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(0));

-- Location: PIN_181,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[1]~I\ : cycloneii_io
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
	datain => \p4|line\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(1));

-- Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[2]~I\ : cycloneii_io
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
	datain => \p4|line\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(2));

-- Location: PIN_191,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[3]~I\ : cycloneii_io
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
	datain => \p4|line\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(3));

-- Location: PIN_185,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[4]~I\ : cycloneii_io
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
	datain => \p4|line\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(4));

-- Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[5]~I\ : cycloneii_io
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
	datain => \p4|line\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(5));

-- Location: PIN_179,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[6]~I\ : cycloneii_io
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
	datain => \p4|line\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(6));

-- Location: PIN_180,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\line[7]~I\ : cycloneii_io
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
	datain => \p4|line\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_line(7));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[0]~I\ : cycloneii_io
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
	datain => \p4|row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(0));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[1]~I\ : cycloneii_io
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
	datain => \p4|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[2]~I\ : cycloneii_io
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
	datain => \p4|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[3]~I\ : cycloneii_io
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
	datain => \p4|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[4]~I\ : cycloneii_io
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
	datain => \p4|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(4));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[5]~I\ : cycloneii_io
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
	datain => \p4|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(5));

-- Location: PIN_187,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[6]~I\ : cycloneii_io
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
	datain => \p4|row\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(6));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[7]~I\ : cycloneii_io
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
	datain => \p4|row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(7));
END structure;


