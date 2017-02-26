-- Copyright (C) 1991-2006 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files any of the foregoing 
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
-- PROGRAM "Quartus II"
-- VERSION "Version 6.0 Build 178 04/27/2006 SJ Full Version"

-- DATE "05/08/2008 16:41:55"

-- 
-- Device: Altera EP1K30QC208-3 Package PQFP208
-- 

-- 
-- This VHDL file should be used for PRIMETIME only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY 	zi IS
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
END zi;

ARCHITECTURE structure OF zi IS
SIGNAL GNDs : std_logic_vector(1024 DOWNTO 0);
SIGNAL VCCs : std_logic_vector(1024 DOWNTO 0);
SIGNAL gnd : std_logic;
SIGNAL vcc : std_logic;
SIGNAL lcell_ff_enable_asynch_arcs_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_modkey : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_dis : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_line : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(7 DOWNTO 0);
SIGNAL \modkey~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \fen|Equal2~339_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~339_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|WideOr54~9_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|WideOr54~9_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector19~132_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector19~132_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector47~1232_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector47~1232_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector37~117_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector37~117_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector30~253_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector30~253_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector30~254_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector30~254_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2047_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2047_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2048_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2048_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k1[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k1[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector21~119_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector21~119_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector14~30_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector14~30_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector14~31_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector14~31_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector36~1093_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector36~1093_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector36~1094_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector36~1094_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector14~25_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector14~25_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector14~26_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector14~26_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector14~27_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector14~27_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector28~25_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector28~25_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector28~26_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector28~26_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector28~27_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector28~27_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1123_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1123_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1163_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1163_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~360_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~360_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~360_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~360_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f[0]~190_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f[0]~190_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f~191_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f~191_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|b[0]~141_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|b[0]~141_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|always1~114_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|always1~114_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|d[0]~141_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|d[0]~141_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|always1~115_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|always1~115_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|c[0]~121_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|c[0]~121_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|e[0]~129_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|e[0]~129_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~339_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~339_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|cc[0]~11_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|cc[0]~11_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector20~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector20~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector20~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector20~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector26~134_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector26~134_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector42~850_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector42~850_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector8~119_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector8~119_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector10~222_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector10~222_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector42~853_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector42~853_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~352_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~352_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~360_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~360_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~354_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~354_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~361_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~361_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~356_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~356_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~362_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~362_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~358_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~358_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|k[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|k[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal2~363_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal2~363_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|WideOr33~9_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|WideOr33~9_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|WideOr57~9_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|WideOr57~9_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector33~92_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector33~92_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1519_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1519_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~81_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~81_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector26~113_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector26~113_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector47~1237_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector47~1237_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector5~127_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector5~127_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector47~1239_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector47~1239_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector9~77_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector9~77_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector32~88_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector32~88_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1852_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1852_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector17~17_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector17~17_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector17~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector17~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector24~115_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector24~115_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector39~833_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector39~833_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector39~835_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector39~835_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector23~115_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector23~115_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector38~1209_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector38~1209_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector9~78_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector9~78_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector38~1211_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector38~1211_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k2k~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k2k~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k2[1]~22_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k2[1]~22_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~339_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~339_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3162_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3162_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3163_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3163_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3164_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3164_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3165_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3165_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3166_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3166_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3170_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3170_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3168_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3168_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3171_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3171_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector16~261_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector16~261_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector16~263_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector16~263_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector15~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector15~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector15~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector15~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~519_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~519_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector37~933_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector37~933_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector37~934_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector37~934_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector8~120_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector8~120_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector37~936_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector37~936_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector22~114_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector22~114_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector22~116_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector22~116_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector1~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector1~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector1~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector1~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector51~1311_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector51~1311_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector1~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector1~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector1~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector1~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector22~121_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector22~121_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector22~122_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector22~122_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector43~1384_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector43~1384_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector40~140_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector40~140_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|dd[0]~11_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|dd[0]~11_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k1[1]~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k1[1]~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~520_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~520_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~521_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~521_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~522_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~522_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~523_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~523_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~524_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~524_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~525_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~525_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector35~124_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector35~124_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1170_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1170_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector0~21_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector0~21_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector0~22_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector0~22_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1172_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1172_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~373_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~373_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~381_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~381_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~375_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~375_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~382_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~382_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~377_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~377_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~383_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~383_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~379_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~379_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|i[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|i[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Equal0~384_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Equal0~384_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|result_node|cs_buffer[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~373_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~373_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~381_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~381_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~375_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~375_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~382_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~382_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~377_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~377_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~383_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~383_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~379_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~379_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|i[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|i[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal0~384_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal0~384_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k1k~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k1k~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k1[0]~56_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k1[0]~56_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal4~43_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal4~43_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~546_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~546_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~551_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~551_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~352_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~352_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~360_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~360_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~354_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~354_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~361_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~361_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~356_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~356_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~362_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~362_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~358_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~358_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|i[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|i[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal0~363_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal0~363_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|result_node|cs_buffer[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add2|adder|unreg_res_node[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add2|adder|unreg_res_node[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector5~100_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector5~100_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|result_node|cs_buffer[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector18~93_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector18~93_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector11~88_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector11~88_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector16~257_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector16~257_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector16~259_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector16~259_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~352_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~352_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~360_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~360_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~354_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~354_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~361_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~361_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~356_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~356_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~362_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~362_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~358_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~358_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|j[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|j[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Equal1~363_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Equal1~363_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|result_node|cs_buffer[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Add0|adder|unreg_res_node[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Add0|adder|unreg_res_node[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Add0|adder|unreg_res_node[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Add0|adder|unreg_res_node[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[27]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[27]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[26]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[26]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[25]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[25]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[24]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[24]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[30]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[30]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[29]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[29]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[28]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[28]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[16]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[16]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[19]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[19]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[18]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[18]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[17]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[17]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[23]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[23]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[22]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[22]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[21]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[21]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[20]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[20]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[10]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[10]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[9]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[9]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[11]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[11]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[8]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[8]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[15]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[15]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[14]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[14]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[13]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[13]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[12]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[12]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|result_node|cs_buffer[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add0|adder|unreg_res_node[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add0|adder|unreg_res_node[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|Add1|adder|unreg_res_node[31]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|Add1|adder|unreg_res_node[31]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_4|mkoo[1]~1_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_4|mkoo[1]~1_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \fen|f~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|f~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_4|mkoo[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_4|mkoo[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|f1Hz~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|f1Hz~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|a[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|a[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|a[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|a[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|a[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|a[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|a[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|a[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add2|adder|result_node|cs_buffer[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add2|adder|result_node|cs_buffer[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|b[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|b[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add2|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add2|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|b[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|b[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~86_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~86_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~89_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~89_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add2|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add2|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|b[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|b[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add2|adder|unreg_res_node[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add2|adder|unreg_res_node[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|b[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|b[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~75_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~75_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector10~221_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector10~221_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1312_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1312_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \key1~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ji|k1k~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|k1k~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|k1[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|k1[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_4|mkoo[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_4|mkoo[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|delay~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|delay~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|always0~39_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|always0~39_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|o[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|o[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|o[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|o[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1307_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1307_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \key2~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ji|k2k~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|k2k~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal4~41_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal4~41_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|k2~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|k2~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|cc~501_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|cc~501_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|k1~122_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|k1~122_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|cc[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|cc[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|cc[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|cc[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|cc~503_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|cc~503_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add3~73_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add3~73_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|cc[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|cc[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|cc[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|cc[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|c_rtl_0|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Equal10~26_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Equal10~26_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector20~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector20~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector20~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector20~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add4|adder|result_node|cs_buffer[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add4|adder|result_node|cs_buffer[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|d[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|d[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add4|adder|result_node|cs_buffer[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add4|adder|result_node|cs_buffer[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|d[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|d[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~85_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~85_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~88_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~88_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add4|adder|result_node|cs_buffer[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add4|adder|result_node|cs_buffer[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|d[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|d[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector24~226_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector24~226_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|o[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|o[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1314_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1314_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1319_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1319_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector6~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector6~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector6~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector6~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ee[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ee[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ee~439_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ee~439_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ff~278_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ff~278_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ff[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ff[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Equal12~31_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Equal12~31_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ff[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ff[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ff[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ff[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ff[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ff[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|f_rtl_1|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector40~139_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector40~139_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always0~128_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always0~128_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add5~72_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add5~72_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ee[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ee[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|e[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|e[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ee~440_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ee~440_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add5~71_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add5~71_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ee[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ee[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|e[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|e[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Equal12~30_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Equal12~30_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|e~612_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|e~612_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|e[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|e[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|ee[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|ee[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add5~70_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add5~70_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|e[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|e[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~76_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~76_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|always1~77_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|always1~77_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector39~119_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector39~119_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector40~141_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector40~141_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector34~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector34~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector34~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector34~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1318_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1318_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1322_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1322_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1321_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1321_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \fen|f100Hz~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fen|f100Hz~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|Equal7~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|Equal7~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k2[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k2[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k2[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k2[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k1[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k1[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|k1[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|k1[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|always1~113_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|always1~113_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|a~180_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|a~180_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|c~122_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|c~122_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector20~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector20~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector20~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector20~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|a~181_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|a~181_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|Equal5~26_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|Equal5~26_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|b~142_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|b~142_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector13~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector13~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector13~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector13~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|e~130_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|e~130_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|e_rtl_6|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|Equal9~12_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|Equal9~12_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f~192_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f~192_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|f_rtl_7|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1844_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1844_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1116_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1116_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector56~1214_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector56~1214_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector34~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector34~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector34~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector34~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|d~142_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|d~142_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector53~1202_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector53~1202_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector56~1212_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector56~1212_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector6~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector6~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector6~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector6~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector56~1213_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector56~1213_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector56~1217_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector56~1217_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector56~1216_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector56~1216_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k1k~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k1k~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k1[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k1[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|delay~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|delay~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Equal4~42_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Equal4~42_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|always0~129_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|always0~129_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector38~1203_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector38~1203_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|cc[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|cc[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add1~66_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add1~66_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|cc[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|cc[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Equal7~27_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Equal7~27_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|cc[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|cc[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|cc[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|cc[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector6~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector6~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector6~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector6~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector15~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector15~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector12~108_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector12~108_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector47~1231_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector47~1231_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Decoder6~70_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Decoder6~70_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Decoder6~69_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Decoder6~69_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector33~128_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector33~128_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector33~129_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector33~129_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector47~1228_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector47~1228_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|always0~38_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|always0~38_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector48~1306_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector48~1306_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector47~1230_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector47~1230_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|a_rtl_2|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector26~104_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector26~104_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|d_rtl_5|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector22~115_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector22~115_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1524_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1524_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1527_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1527_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector12~100_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector12~100_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1515_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1515_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1516_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1516_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|c_rtl_4|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector19~100_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector19~100_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector19~101_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector19~101_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1514_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1514_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1517_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1517_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector55~1526_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector55~1526_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector5~131_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector5~131_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|dd[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|dd[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|dd[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|dd[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add2~73_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add2~73_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|dd[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|dd[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Equal8~27_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Equal8~27_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|dd[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|dd[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector12~109_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector12~109_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|always0~130_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|always0~130_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|always0~131_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|always0~131_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector42~851_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector42~851_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector41~1068_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector41~1068_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k2k~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k2k~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k2~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k2~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k2~56_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k2~56_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~959_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~959_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|cc[0]~186_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|cc[0]~186_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~962_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~962_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~958_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~958_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff~843_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff~843_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add6~48_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add6~48_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff~844_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff~844_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff~846_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff~846_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff~848_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff~848_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add4~146_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add4~146_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add6~49_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add6~49_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff~845_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff~845_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ff~847_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ff~847_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add6~50_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add6~50_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|k1[0]~84_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|k1[0]~84_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~960_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~960_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~527_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~527_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~526_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~526_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~6_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~6_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add5~39_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add5~39_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~967_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~967_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~963_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~963_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~964_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~964_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add3~66_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add3~66_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~961_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~961_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Equal14~31_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Equal14~31_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~966_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~966_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Equal9~29_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Equal9~29_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~965_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~965_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|Add5~40_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|Add5~40_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee~968_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee~968_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|ee[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|ee[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector19~131_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector19~131_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector19~132_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector19~132_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector41~1067_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector41~1067_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector42~849_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector42~849_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector41~1069_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector41~1069_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector41~1071_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector41~1071_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector14~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector14~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector39~120_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector39~120_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector32~94_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector32~94_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector32~95_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector32~95_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector18~94_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector18~94_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector46~1636_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector46~1636_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector11~107_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector11~107_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector11~108_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector11~108_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector4~89_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector4~89_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector46~1634_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector46~1634_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector25~112_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector25~112_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector25~113_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector25~113_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector46~1635_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector46~1635_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector46~1639_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector46~1639_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector46~1638_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector46~1638_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|Equal5~25_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|Equal5~25_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector4~88_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector4~88_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector25~103_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector25~103_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector25~104_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector25~104_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1851_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1851_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Decoder6~79_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Decoder6~79_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1849_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1849_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector18~89_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector18~89_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1857_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1857_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1860_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1860_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1850_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1850_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector54~1859_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector54~1859_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector4~93_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector4~93_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector11~108_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector11~108_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector40~1249_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector40~1249_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector25~116_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector25~116_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~514_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~514_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector40~1255_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector40~1255_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector40~1258_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector40~1258_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector40~1250_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector40~1250_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector40~1257_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector40~1257_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector13~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector13~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector45~1291_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector45~1291_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector17~17_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector17~17_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector17~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector17~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector45~1297_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector45~1297_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector3~12_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector3~12_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector3~13_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector3~13_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector38~117_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector38~117_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector31~17_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector31~17_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector31~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector31~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector45~1296_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector45~1296_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector45~1300_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector45~1300_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector45~1299_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector45~1299_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector17~12_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector17~12_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector17~13_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector17~13_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector10~12_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector10~12_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector10~13_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector10~13_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector53~1205_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector53~1205_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector31~12_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector31~12_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector31~13_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector31~13_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector53~1203_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector53~1203_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector3~12_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector3~12_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector3~13_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector3~13_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector53~1204_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector53~1204_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector53~1208_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector53~1208_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector53~1207_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector53~1207_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector3~17_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector3~17_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector3~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector3~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector12~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector12~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|Add4|adder|unreg_res_node[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|Add4|adder|unreg_res_node[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ji|d[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ji|d[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector23~81_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector23~81_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector23~82_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector23~82_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2046_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2046_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2053_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2053_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2055_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2055_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2041_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2041_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2042_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2042_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2044_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2044_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector44~2045_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector44~2045_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pao|b_rtl_3|wysi_counter|q[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3150_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3150_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3151_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3151_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3148_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3148_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3147_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3147_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3149_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3149_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3152_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3152_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3154_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3154_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3144_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3144_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector52~3146_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector52~3146_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector2~257_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector2~257_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector2~259_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector2~259_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector11~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector11~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector43~1386_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector43~1386_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector29~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector29~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector29~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector29~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector15~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector15~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector15~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector15~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector8~116_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector8~116_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector8~117_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector8~117_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector43~1383_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector43~1383_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector43~1385_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector43~1385_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector43~1388_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector43~1388_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector29~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector29~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector29~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector29~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector15~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector15~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector15~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector15~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector40~44_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector40~44_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector51~1308_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector51~1308_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector51~1309_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector51~1309_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector8~18_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector8~18_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector8~19_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector8~19_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector51~1310_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector51~1310_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector51~1313_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector51~1313_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector1~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector1~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector1~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector1~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector10~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector10~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector21~98_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector21~98_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1162_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1162_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1164_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1164_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector28~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector28~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector28~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector28~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector14~23_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector14~23_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector14~24_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector14~24_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1160_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1160_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|Selector42~1161_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|Selector42~1161_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|display[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|display[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector7~26_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector7~26_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector7~25_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector7~25_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector7~27_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector7~27_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector0~29_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector0~29_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector0~28_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector0~28_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector0~30_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector0~30_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1121_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1121_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1122_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1122_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1119_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1119_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1117_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1117_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1118_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1118_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|Selector50~1120_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|Selector50~1120_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p2|display[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|display[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector7~95_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector7~95_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector36~1092_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector36~1092_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector0~30_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector0~30_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector0~31_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector0~31_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|Selector36~1091_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|Selector36~1091_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p3|display[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p3|display[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|Selector9~87_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|Selector9~87_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|diso[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|diso[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p1|led_dig[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p1|led_dig[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mc|lego[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mc|lego[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|r[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|r[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|r[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|r[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|r[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|r[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~544_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~544_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~550_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~550_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~542_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~542_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~549_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~549_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~540_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~540_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|always0~548_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|always0~548_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \nao|linerow~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \nao|linerow~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[3]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[3]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[4]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[4]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[5]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[5]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|line[7]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|line[7]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[0]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[0]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[1]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[1]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[2]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[2]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[1]~331_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[1]~331_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[2]~332_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[2]~332_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[2]~333_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[2]~333_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[6]~I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[6]~I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \p4|row[0]~334_I_modesel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p4|row[0]~334_I_pathsel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \dis[0]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[1]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[2]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[3]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[4]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[5]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[6]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dis[7]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[0]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[1]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[2]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[3]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[4]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[5]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[6]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \leg[7]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[0]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[1]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[2]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[3]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[4]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[5]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[6]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \line[7]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[0]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[1]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[2]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[3]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[4]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[5]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[6]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \row[7]~I_modesel\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \fen|Equal2~339\ : std_logic;
SIGNAL \p1|WideOr54~9\ : std_logic;
SIGNAL \p1|Selector19~132\ : std_logic;
SIGNAL \p1|Selector47~1232\ : std_logic;
SIGNAL \p1|Selector37~117\ : std_logic;
SIGNAL \p1|Selector30~253\ : std_logic;
SIGNAL \p1|Selector30~254\ : std_logic;
SIGNAL \p1|Selector44~2047\ : std_logic;
SIGNAL \p1|Selector44~2048\ : std_logic;
SIGNAL \nao|k1[1]\ : std_logic;
SIGNAL \p3|Selector21~119\ : std_logic;
SIGNAL \p3|Selector14~30\ : std_logic;
SIGNAL \p3|Selector14~31\ : std_logic;
SIGNAL \p3|Selector36~1093\ : std_logic;
SIGNAL \p3|Selector36~1094\ : std_logic;
SIGNAL \p2|Selector14~25\ : std_logic;
SIGNAL \p2|Selector14~26\ : std_logic;
SIGNAL \p2|Selector14~27\ : std_logic;
SIGNAL \p2|Selector28~25\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|q[3]\ : std_logic;
SIGNAL \p2|Selector28~26\ : std_logic;
SIGNAL \p2|Selector28~27\ : std_logic;
SIGNAL \p2|Selector50~1123\ : std_logic;
SIGNAL \p1|Selector42~1163\ : std_logic;
SIGNAL \p3|Equal0~360\ : std_logic;
SIGNAL \p1|Equal0~360\ : std_logic;
SIGNAL \pao|f[0]~190\ : std_logic;
SIGNAL \pao|f~191\ : std_logic;
SIGNAL \pao|b[0]~141\ : std_logic;
SIGNAL \pao|always1~114\ : std_logic;
SIGNAL \pao|d[0]~141\ : std_logic;
SIGNAL \pao|always1~115\ : std_logic;
SIGNAL \pao|c[0]~121\ : std_logic;
SIGNAL \pao|e[0]~129\ : std_logic;
SIGNAL \fen|Equal0~339\ : std_logic;
SIGNAL \nao|cc[0]~11\ : std_logic;
SIGNAL \p3|Selector20~23\ : std_logic;
SIGNAL \p3|Selector20~24\ : std_logic;
SIGNAL \p3|Selector26~134\ : std_logic;
SIGNAL \p3|Selector42~857\ : std_logic;
SIGNAL \p3|Selector42~850\ : std_logic;
SIGNAL \p3|Selector8~119\ : std_logic;
SIGNAL \p3|Selector10~222\ : std_logic;
SIGNAL \p3|Selector42~853\ : std_logic;
SIGNAL \fen|k[27]\ : std_logic;
SIGNAL \fen|k[26]\ : std_logic;
SIGNAL \fen|k[25]\ : std_logic;
SIGNAL \fen|k[24]\ : std_logic;
SIGNAL \fen|Equal2~370\ : std_logic;
SIGNAL \fen|Equal2~352\ : std_logic;
SIGNAL \fen|k[31]\ : std_logic;
SIGNAL \fen|k[30]\ : std_logic;
SIGNAL \fen|k[29]\ : std_logic;
SIGNAL \fen|k[28]\ : std_logic;
SIGNAL \fen|Equal2~360\ : std_logic;
SIGNAL \fen|k[19]\ : std_logic;
SIGNAL \fen|k[18]\ : std_logic;
SIGNAL \fen|k[17]\ : std_logic;
SIGNAL \fen|k[16]\ : std_logic;
SIGNAL \fen|Equal2~373\ : std_logic;
SIGNAL \fen|Equal2~354\ : std_logic;
SIGNAL \fen|k[23]\ : std_logic;
SIGNAL \fen|k[22]\ : std_logic;
SIGNAL \fen|k[21]\ : std_logic;
SIGNAL \fen|k[20]\ : std_logic;
SIGNAL \fen|Equal2~361\ : std_logic;
SIGNAL \fen|k[10]\ : std_logic;
SIGNAL \fen|k[9]\ : std_logic;
SIGNAL \fen|k[8]\ : std_logic;
SIGNAL \fen|k[11]\ : std_logic;
SIGNAL \fen|Equal2~376\ : std_logic;
SIGNAL \fen|Equal2~356\ : std_logic;
SIGNAL \fen|k[13]\ : std_logic;
SIGNAL \fen|k[15]\ : std_logic;
SIGNAL \fen|k[14]\ : std_logic;
SIGNAL \fen|k[12]\ : std_logic;
SIGNAL \fen|Equal2~362\ : std_logic;
SIGNAL \fen|k[3]\ : std_logic;
SIGNAL \fen|k[2]\ : std_logic;
SIGNAL \fen|k[1]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[0]\ : std_logic;
SIGNAL \fen|k[0]\ : std_logic;
SIGNAL \fen|Equal2~379\ : std_logic;
SIGNAL \fen|Equal2~358\ : std_logic;
SIGNAL \fen|k[7]\ : std_logic;
SIGNAL \fen|k[6]\ : std_logic;
SIGNAL \fen|k[5]\ : std_logic;
SIGNAL \fen|k[4]\ : std_logic;
SIGNAL \fen|Equal2~363\ : std_logic;
SIGNAL \p3|WideOr33~9\ : std_logic;
SIGNAL \p3|Selector41~1069\ : std_logic;
SIGNAL \p2|WideOr57~9\ : std_logic;
SIGNAL \p2|Selector55~1517\ : std_logic;
SIGNAL \p2|Selector33~92\ : std_logic;
SIGNAL \p2|Selector55~1519\ : std_logic;
SIGNAL \ji|always1~81\ : std_logic;
SIGNAL \p1|Selector26~113\ : std_logic;
SIGNAL \p1|Selector47~1246\ : std_logic;
SIGNAL \p1|Selector47~1237\ : std_logic;
SIGNAL \p1|Selector5~127\ : std_logic;
SIGNAL \p1|Selector47~1239\ : std_logic;
SIGNAL \p3|Selector9~77\ : std_logic;
SIGNAL \p3|Selector40~1250\ : std_logic;
SIGNAL \p2|Selector54~1850\ : std_logic;
SIGNAL \p2|Selector32~88\ : std_logic;
SIGNAL \p2|Selector54~1852\ : std_logic;
SIGNAL \p3|Selector17~17\ : std_logic;
SIGNAL \p3|Selector17~18\ : std_logic;
SIGNAL \p3|Selector24~115\ : std_logic;
SIGNAL \p3|Selector39~838\ : std_logic;
SIGNAL \p3|Selector39~833\ : std_logic;
SIGNAL \p3|Selector39~835\ : std_logic;
SIGNAL \p3|Selector2~257\ : std_logic;
SIGNAL \p3|Selector23~115\ : std_logic;
SIGNAL \p3|Selector38~1215\ : std_logic;
SIGNAL \p3|Selector38~1209\ : std_logic;
SIGNAL \p3|Selector9~78\ : std_logic;
SIGNAL \p3|Selector38~1211\ : std_logic;
SIGNAL \pao|k2k\ : std_logic;
SIGNAL \pao|k2[1]~22\ : std_logic;
SIGNAL \fen|Equal1~339\ : std_logic;
SIGNAL \p2|Selector52~3162\ : std_logic;
SIGNAL \p2|Selector52~3163\ : std_logic;
SIGNAL \p2|Selector52~3186\ : std_logic;
SIGNAL \p2|Selector52~3164\ : std_logic;
SIGNAL \p2|Selector52~3165\ : std_logic;
SIGNAL \p2|Selector52~3166\ : std_logic;
SIGNAL \p2|Selector52~3170\ : std_logic;
SIGNAL \p2|Selector52~3191\ : std_logic;
SIGNAL \p2|Selector52~3168\ : std_logic;
SIGNAL \p2|Selector52~3171\ : std_logic;
SIGNAL \p1|Selector44~2053\ : std_logic;
SIGNAL \p1|Selector16~266\ : std_logic;
SIGNAL \p1|Selector16~261\ : std_logic;
SIGNAL \p1|Selector16~263\ : std_logic;
SIGNAL \p3|Selector15~23\ : std_logic;
SIGNAL \p3|Selector15~24\ : std_logic;
SIGNAL \nao|always0~519\ : std_logic;
SIGNAL \p3|Selector37~933\ : std_logic;
SIGNAL \p3|Selector37~940\ : std_logic;
SIGNAL \p3|Selector37~934\ : std_logic;
SIGNAL \p3|Selector8~120\ : std_logic;
SIGNAL \p3|Selector37~936\ : std_logic;
SIGNAL \p2|Selector51~1310\ : std_logic;
SIGNAL \p2|Selector22~114\ : std_logic;
SIGNAL \p2|Selector22~116\ : std_logic;
SIGNAL \p2|Selector1~18\ : std_logic;
SIGNAL \p2|Selector1~19\ : std_logic;
SIGNAL \p2|Selector51~1311\ : std_logic;
SIGNAL \p1|Selector1~18\ : std_logic;
SIGNAL \p1|Selector1~19\ : std_logic;
SIGNAL \p1|Selector22~121\ : std_logic;
SIGNAL \p1|Selector22~122\ : std_logic;
SIGNAL \p1|Selector43~1384\ : std_logic;
SIGNAL \p1|Selector43~1385\ : std_logic;
SIGNAL \p1|Selector40~140\ : std_logic;
SIGNAL \nao|dd[0]~11\ : std_logic;
SIGNAL \nao|k1[1]~87\ : std_logic;
SIGNAL \nao|always0~520\ : std_logic;
SIGNAL \nao|always0~521\ : std_logic;
SIGNAL \nao|always0~522\ : std_logic;
SIGNAL \nao|always0~523\ : std_logic;
SIGNAL \nao|always0~524\ : std_logic;
SIGNAL \nao|always0~525\ : std_logic;
SIGNAL \p1|Selector35~124\ : std_logic;
SIGNAL \p1|Selector42~1180\ : std_logic;
SIGNAL \p1|Selector42~1170\ : std_logic;
SIGNAL \p1|Selector0~21\ : std_logic;
SIGNAL \p1|Selector0~22\ : std_logic;
SIGNAL \p1|Selector42~1172\ : std_logic;
SIGNAL \p3|i[27]\ : std_logic;
SIGNAL \p3|i[26]\ : std_logic;
SIGNAL \p3|i[25]\ : std_logic;
SIGNAL \p3|i[24]\ : std_logic;
SIGNAL \p3|Equal0~391\ : std_logic;
SIGNAL \p3|Equal0~373\ : std_logic;
SIGNAL \p3|i[31]\ : std_logic;
SIGNAL \p3|i[30]\ : std_logic;
SIGNAL \p3|i[29]\ : std_logic;
SIGNAL \p3|i[28]\ : std_logic;
SIGNAL \p3|Equal0~381\ : std_logic;
SIGNAL \p3|i[19]\ : std_logic;
SIGNAL \p3|i[18]\ : std_logic;
SIGNAL \p3|i[17]\ : std_logic;
SIGNAL \p3|i[16]\ : std_logic;
SIGNAL \p3|Equal0~394\ : std_logic;
SIGNAL \p3|Equal0~375\ : std_logic;
SIGNAL \p3|i[23]\ : std_logic;
SIGNAL \p3|i[22]\ : std_logic;
SIGNAL \p3|i[21]\ : std_logic;
SIGNAL \p3|i[20]\ : std_logic;
SIGNAL \p3|Equal0~382\ : std_logic;
SIGNAL \p3|i[11]\ : std_logic;
SIGNAL \p3|i[10]\ : std_logic;
SIGNAL \p3|i[9]\ : std_logic;
SIGNAL \p3|i[8]\ : std_logic;
SIGNAL \p3|Equal0~397\ : std_logic;
SIGNAL \p3|Equal0~377\ : std_logic;
SIGNAL \p3|i[15]\ : std_logic;
SIGNAL \p3|i[14]\ : std_logic;
SIGNAL \p3|i[13]\ : std_logic;
SIGNAL \p3|i[12]\ : std_logic;
SIGNAL \p3|Equal0~383\ : std_logic;
SIGNAL \p3|i[2]\ : std_logic;
SIGNAL \p3|i[3]\ : std_logic;
SIGNAL \p3|i[1]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[0]\ : std_logic;
SIGNAL \p3|i[0]\ : std_logic;
SIGNAL \p3|Equal0~400\ : std_logic;
SIGNAL \p3|Equal0~379\ : std_logic;
SIGNAL \p3|i[6]\ : std_logic;
SIGNAL \p3|i[5]\ : std_logic;
SIGNAL \p3|i[7]\ : std_logic;
SIGNAL \p3|i[4]\ : std_logic;
SIGNAL \p3|Equal0~384\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[27]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[27]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[26]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[26]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[25]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[25]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[24]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[24]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[30]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[30]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[29]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[29]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[28]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[28]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[19]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[19]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[18]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[18]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[17]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[17]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[16]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[16]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[23]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[23]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[22]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[22]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[21]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[21]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[20]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[20]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[10]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[10]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[9]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[9]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[8]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[8]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[11]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[11]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[13]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[13]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[15]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[15]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[14]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[14]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[12]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[12]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[3]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[3]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[2]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[1]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[7]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[7]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[6]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[6]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[5]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[5]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cout[4]\ : std_logic;
SIGNAL \fen|Add2|adder|result_node|cs_buffer[4]\ : std_logic;
SIGNAL \p1|i[27]\ : std_logic;
SIGNAL \p1|i[26]\ : std_logic;
SIGNAL \p1|i[25]\ : std_logic;
SIGNAL \p1|i[24]\ : std_logic;
SIGNAL \p1|Equal0~391\ : std_logic;
SIGNAL \p1|Equal0~373\ : std_logic;
SIGNAL \p1|i[31]\ : std_logic;
SIGNAL \p1|i[30]\ : std_logic;
SIGNAL \p1|i[29]\ : std_logic;
SIGNAL \p1|i[28]\ : std_logic;
SIGNAL \p1|Equal0~381\ : std_logic;
SIGNAL \p1|i[19]\ : std_logic;
SIGNAL \p1|i[18]\ : std_logic;
SIGNAL \p1|i[17]\ : std_logic;
SIGNAL \p1|i[16]\ : std_logic;
SIGNAL \p1|Equal0~394\ : std_logic;
SIGNAL \p1|Equal0~375\ : std_logic;
SIGNAL \p1|i[23]\ : std_logic;
SIGNAL \p1|i[22]\ : std_logic;
SIGNAL \p1|i[21]\ : std_logic;
SIGNAL \p1|i[20]\ : std_logic;
SIGNAL \p1|Equal0~382\ : std_logic;
SIGNAL \p1|i[11]\ : std_logic;
SIGNAL \p1|i[10]\ : std_logic;
SIGNAL \p1|i[9]\ : std_logic;
SIGNAL \p1|i[8]\ : std_logic;
SIGNAL \p1|Equal0~397\ : std_logic;
SIGNAL \p1|Equal0~377\ : std_logic;
SIGNAL \p1|i[15]\ : std_logic;
SIGNAL \p1|i[14]\ : std_logic;
SIGNAL \p1|i[13]\ : std_logic;
SIGNAL \p1|i[12]\ : std_logic;
SIGNAL \p1|Equal0~383\ : std_logic;
SIGNAL \p1|i[2]\ : std_logic;
SIGNAL \p1|i[3]\ : std_logic;
SIGNAL \p1|i[1]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[0]\ : std_logic;
SIGNAL \p1|i[0]\ : std_logic;
SIGNAL \p1|Equal0~400\ : std_logic;
SIGNAL \p1|Equal0~379\ : std_logic;
SIGNAL \p1|i[6]\ : std_logic;
SIGNAL \p1|i[5]\ : std_logic;
SIGNAL \p1|i[7]\ : std_logic;
SIGNAL \p1|i[4]\ : std_logic;
SIGNAL \p1|Equal0~384\ : std_logic;
SIGNAL \ji|always1~85\ : std_logic;
SIGNAL \ji|always1~86\ : std_logic;
SIGNAL \ji|always1~87\ : std_logic;
SIGNAL \pao|k1k\ : std_logic;
SIGNAL \pao|k1[0]~56\ : std_logic;
SIGNAL \p1|Equal4~43\ : std_logic;
SIGNAL \nao|always0~540\ : std_logic;
SIGNAL \nao|always0~542\ : std_logic;
SIGNAL \nao|always0~544\ : std_logic;
SIGNAL \nao|always0~577\ : std_logic;
SIGNAL \nao|always0~546\ : std_logic;
SIGNAL \nao|always0~551\ : std_logic;
SIGNAL \fen|i[27]\ : std_logic;
SIGNAL \fen|i[26]\ : std_logic;
SIGNAL \fen|i[25]\ : std_logic;
SIGNAL \fen|i[24]\ : std_logic;
SIGNAL \fen|Equal0~370\ : std_logic;
SIGNAL \fen|Equal0~352\ : std_logic;
SIGNAL \fen|i[31]\ : std_logic;
SIGNAL \fen|i[30]\ : std_logic;
SIGNAL \fen|i[29]\ : std_logic;
SIGNAL \fen|i[28]\ : std_logic;
SIGNAL \fen|Equal0~360\ : std_logic;
SIGNAL \fen|i[19]\ : std_logic;
SIGNAL \fen|i[18]\ : std_logic;
SIGNAL \fen|i[17]\ : std_logic;
SIGNAL \fen|i[16]\ : std_logic;
SIGNAL \fen|Equal0~373\ : std_logic;
SIGNAL \fen|Equal0~354\ : std_logic;
SIGNAL \fen|i[23]\ : std_logic;
SIGNAL \fen|i[20]\ : std_logic;
SIGNAL \fen|i[22]\ : std_logic;
SIGNAL \fen|i[21]\ : std_logic;
SIGNAL \fen|Equal0~361\ : std_logic;
SIGNAL \fen|i[10]\ : std_logic;
SIGNAL \fen|i[9]\ : std_logic;
SIGNAL \fen|i[11]\ : std_logic;
SIGNAL \fen|i[8]\ : std_logic;
SIGNAL \fen|Equal0~376\ : std_logic;
SIGNAL \fen|Equal0~356\ : std_logic;
SIGNAL \fen|i[15]\ : std_logic;
SIGNAL \fen|i[12]\ : std_logic;
SIGNAL \fen|i[14]\ : std_logic;
SIGNAL \fen|i[13]\ : std_logic;
SIGNAL \fen|Equal0~362\ : std_logic;
SIGNAL \fen|i[3]\ : std_logic;
SIGNAL \fen|i[2]\ : std_logic;
SIGNAL \fen|i[1]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[0]\ : std_logic;
SIGNAL \fen|i[0]\ : std_logic;
SIGNAL \fen|Equal0~379\ : std_logic;
SIGNAL \fen|Equal0~358\ : std_logic;
SIGNAL \fen|i[6]\ : std_logic;
SIGNAL \fen|i[5]\ : std_logic;
SIGNAL \fen|i[4]\ : std_logic;
SIGNAL \fen|i[7]\ : std_logic;
SIGNAL \fen|Equal0~363\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[27]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[27]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[26]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[26]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[25]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[25]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[24]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[24]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[30]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[30]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[29]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[29]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[28]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[28]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[19]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[19]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[18]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[18]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[17]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[17]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[16]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[16]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[23]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[23]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[22]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[22]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[21]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[21]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[20]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[20]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[11]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[11]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[10]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[10]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[9]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[9]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[8]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[8]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[15]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[15]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[14]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[14]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[13]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[13]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[12]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[12]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[2]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[3]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[3]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[1]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[6]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[6]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[5]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[5]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[7]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[7]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cout[4]\ : std_logic;
SIGNAL \p3|Add0|adder|result_node|cs_buffer[4]\ : std_logic;
SIGNAL \p2|Selector56~1213\ : std_logic;
SIGNAL \p2|Selector56~1217\ : std_logic;
SIGNAL \p1|Selector48~1318\ : std_logic;
SIGNAL \p1|Selector48~1322\ : std_logic;
SIGNAL \fen|Add2|adder|unreg_res_node[31]\ : std_logic;
SIGNAL \p2|Selector55~1524\ : std_logic;
SIGNAL \p2|Selector5~100\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[27]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[27]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[26]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[26]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[25]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[25]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[24]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[24]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[30]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[30]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[29]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[29]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[28]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[28]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[19]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[19]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[18]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[18]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[17]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[17]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[16]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[16]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[23]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[23]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[22]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[22]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[21]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[21]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[20]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[20]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[11]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[11]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[10]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[10]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[9]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[9]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[8]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[8]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[15]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[15]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[14]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[14]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[13]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[13]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[12]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[12]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[2]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[3]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[3]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[1]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[6]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[6]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[5]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[5]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[7]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[7]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cout[4]\ : std_logic;
SIGNAL \p1|Add0|adder|result_node|cs_buffer[4]\ : std_logic;
SIGNAL \p3|Selector40~1255\ : std_logic;
SIGNAL \p3|Selector18~93\ : std_logic;
SIGNAL \p2|Selector54~1857\ : std_logic;
SIGNAL \p2|Selector11~88\ : std_logic;
SIGNAL \p1|Selector46~1635\ : std_logic;
SIGNAL \p1|Selector46~1639\ : std_logic;
SIGNAL \p2|Selector53~1204\ : std_logic;
SIGNAL \p2|Selector53~1208\ : std_logic;
SIGNAL \p1|Selector45~1296\ : std_logic;
SIGNAL \p1|Selector45~1300\ : std_logic;
SIGNAL \p3|Selector16~262\ : std_logic;
SIGNAL \p3|Selector16~257\ : std_logic;
SIGNAL \p3|Selector16~259\ : std_logic;
SIGNAL \fen|j[27]\ : std_logic;
SIGNAL \fen|j[26]\ : std_logic;
SIGNAL \fen|j[25]\ : std_logic;
SIGNAL \fen|j[24]\ : std_logic;
SIGNAL \fen|Equal1~370\ : std_logic;
SIGNAL \fen|Equal1~352\ : std_logic;
SIGNAL \fen|j[31]\ : std_logic;
SIGNAL \fen|j[30]\ : std_logic;
SIGNAL \fen|j[29]\ : std_logic;
SIGNAL \fen|j[28]\ : std_logic;
SIGNAL \fen|Equal1~360\ : std_logic;
SIGNAL \fen|j[16]\ : std_logic;
SIGNAL \fen|j[19]\ : std_logic;
SIGNAL \fen|j[18]\ : std_logic;
SIGNAL \fen|j[17]\ : std_logic;
SIGNAL \fen|Equal1~373\ : std_logic;
SIGNAL \fen|Equal1~354\ : std_logic;
SIGNAL \fen|j[23]\ : std_logic;
SIGNAL \fen|j[22]\ : std_logic;
SIGNAL \fen|j[21]\ : std_logic;
SIGNAL \fen|j[20]\ : std_logic;
SIGNAL \fen|Equal1~361\ : std_logic;
SIGNAL \fen|j[10]\ : std_logic;
SIGNAL \fen|j[9]\ : std_logic;
SIGNAL \fen|j[11]\ : std_logic;
SIGNAL \fen|j[8]\ : std_logic;
SIGNAL \fen|Equal1~376\ : std_logic;
SIGNAL \fen|Equal1~356\ : std_logic;
SIGNAL \fen|j[15]\ : std_logic;
SIGNAL \fen|j[14]\ : std_logic;
SIGNAL \fen|j[13]\ : std_logic;
SIGNAL \fen|j[12]\ : std_logic;
SIGNAL \fen|Equal1~362\ : std_logic;
SIGNAL \fen|j[3]\ : std_logic;
SIGNAL \fen|j[2]\ : std_logic;
SIGNAL \fen|j[1]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[0]\ : std_logic;
SIGNAL \fen|j[0]\ : std_logic;
SIGNAL \fen|Equal1~379\ : std_logic;
SIGNAL \fen|Equal1~358\ : std_logic;
SIGNAL \fen|j[7]\ : std_logic;
SIGNAL \fen|j[4]\ : std_logic;
SIGNAL \fen|j[6]\ : std_logic;
SIGNAL \fen|j[5]\ : std_logic;
SIGNAL \fen|Equal1~363\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[27]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[27]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[26]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[26]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[25]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[25]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[24]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[24]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[30]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[30]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[29]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[29]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[28]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[28]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[19]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[19]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[18]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[18]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[17]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[17]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[16]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[16]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[23]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[23]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[20]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[20]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[22]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[22]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[21]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[21]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[10]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[10]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[9]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[9]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[11]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[11]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[8]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[8]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[15]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[15]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[12]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[12]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[14]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[14]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[13]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[13]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[3]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[3]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[2]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[1]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[6]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[6]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[5]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[5]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[4]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[4]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cout[7]\ : std_logic;
SIGNAL \fen|Add0|adder|result_node|cs_buffer[7]\ : std_logic;
SIGNAL \p3|Add0|adder|unreg_res_node[31]\ : std_logic;
SIGNAL \p1|Add0|adder|unreg_res_node[31]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[27]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[27]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[26]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[26]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[25]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[25]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[24]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[24]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[30]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[30]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[29]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[29]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[28]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[28]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[16]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[16]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[19]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[19]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[18]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[18]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[17]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[17]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[23]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[23]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[22]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[22]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[21]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[21]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[20]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[20]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[10]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[10]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[9]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[9]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[11]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[11]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[8]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[8]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[15]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[15]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[14]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[14]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[13]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[13]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[12]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[12]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[3]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[3]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[2]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[1]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[7]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[7]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[4]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[4]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[6]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[6]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cout[5]\ : std_logic;
SIGNAL \fen|Add1|adder|result_node|cs_buffer[5]\ : std_logic;
SIGNAL \fen|Add0|adder|unreg_res_node[31]\ : std_logic;
SIGNAL \fen|Add1|adder|unreg_res_node[31]\ : std_logic;
SIGNAL \comb_4|mkoo[1]~1\ : std_logic;
SIGNAL \modkey~dataout\ : std_logic;
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \fen|f\ : std_logic;
SIGNAL \comb_4|mkoo[0]\ : std_logic;
SIGNAL \fen|f1Hz\ : std_logic;
SIGNAL \ji|a[0]\ : std_logic;
SIGNAL \ji|a[2]\ : std_logic;
SIGNAL \ji|a[3]\ : std_logic;
SIGNAL \ji|a[1]\ : std_logic;
SIGNAL \ji|Add2|adder|result_node|cs_buffer[0]\ : std_logic;
SIGNAL \ji|b[0]\ : std_logic;
SIGNAL \ji|Add2|adder|result_node|cout[0]\ : std_logic;
SIGNAL \ji|Add2|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \ji|b[1]\ : std_logic;
SIGNAL \ji|always1~100\ : std_logic;
SIGNAL \ji|always1~89\ : std_logic;
SIGNAL \ji|Add2|adder|result_node|cout[1]\ : std_logic;
SIGNAL \ji|Add2|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \ji|b[2]\ : std_logic;
SIGNAL \ji|Add2|adder|result_node|cout[2]\ : std_logic;
SIGNAL \ji|Add2|adder|unreg_res_node[3]\ : std_logic;
SIGNAL \ji|b[3]\ : std_logic;
SIGNAL \ji|always1~75\ : std_logic;
SIGNAL \p1|Selector10~221\ : std_logic;
SIGNAL \p1|Selector48~1312\ : std_logic;
SIGNAL \key1~dataout\ : std_logic;
SIGNAL \ji|k1k\ : std_logic;
SIGNAL \ji|k1[0]\ : std_logic;
SIGNAL \comb_4|mkoo[1]\ : std_logic;
SIGNAL \p1|delay\ : std_logic;
SIGNAL \p1|always0~39\ : std_logic;
SIGNAL \p1|o[0]\ : std_logic;
SIGNAL \p1|o[1]\ : std_logic;
SIGNAL \p1|Selector48~1307\ : std_logic;
SIGNAL \key2~dataout\ : std_logic;
SIGNAL \ji|k2k\ : std_logic;
SIGNAL \p1|Equal4~41\ : std_logic;
SIGNAL \ji|k2\ : std_logic;
SIGNAL \ji|cc~501\ : std_logic;
SIGNAL \ji|k1~122\ : std_logic;
SIGNAL \ji|cc[0]\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|q[0]\ : std_logic;
SIGNAL \ji|cc[1]\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|q[1]\ : std_logic;
SIGNAL \ji|cc~503\ : std_logic;
SIGNAL \ji|Add3~73\ : std_logic;
SIGNAL \ji|cc[3]\ : std_logic;
SIGNAL \ji|cc[2]\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|q[3]\ : std_logic;
SIGNAL \ji|Equal10~26\ : std_logic;
SIGNAL \ji|c_rtl_0|wysi_counter|q[2]\ : std_logic;
SIGNAL \p1|Selector20~23\ : std_logic;
SIGNAL \p1|Selector20~24\ : std_logic;
SIGNAL \ji|Add4|adder|result_node|cs_buffer[0]\ : std_logic;
SIGNAL \ji|d[0]\ : std_logic;
SIGNAL \ji|Add4|adder|result_node|cout[0]\ : std_logic;
SIGNAL \ji|Add4|adder|result_node|cs_buffer[1]\ : std_logic;
SIGNAL \ji|d[1]\ : std_logic;
SIGNAL \ji|always1~98\ : std_logic;
SIGNAL \ji|always1~88\ : std_logic;
SIGNAL \ji|Add4|adder|result_node|cout[1]\ : std_logic;
SIGNAL \ji|Add4|adder|result_node|cs_buffer[2]\ : std_logic;
SIGNAL \ji|d[2]\ : std_logic;
SIGNAL \p1|Selector24~226\ : std_logic;
SIGNAL \p1|o[2]\ : std_logic;
SIGNAL \p1|Selector48~1314\ : std_logic;
SIGNAL \p1|Selector48~1319\ : std_logic;
SIGNAL \p1|Selector6~18\ : std_logic;
SIGNAL \p1|Selector6~19\ : std_logic;
SIGNAL \ji|ee[0]\ : std_logic;
SIGNAL \ji|ee~439\ : std_logic;
SIGNAL \ji|ff~278\ : std_logic;
SIGNAL \ji|ff[1]\ : std_logic;
SIGNAL \ji|Equal12~31\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|q[0]\ : std_logic;
SIGNAL \ji|ff[0]\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|q[1]\ : std_logic;
SIGNAL \ji|ff[3]\ : std_logic;
SIGNAL \ji|ff[2]\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|q[3]\ : std_logic;
SIGNAL \p1|Selector40~139\ : std_logic;
SIGNAL \ji|always0~128\ : std_logic;
SIGNAL \ji|Add5~72\ : std_logic;
SIGNAL \ji|ee[2]\ : std_logic;
SIGNAL \ji|e[2]\ : std_logic;
SIGNAL \ji|ee~440\ : std_logic;
SIGNAL \ji|Add5~71\ : std_logic;
SIGNAL \ji|ee[3]\ : std_logic;
SIGNAL \ji|e[3]\ : std_logic;
SIGNAL \ji|Equal12~30\ : std_logic;
SIGNAL \ji|e~612\ : std_logic;
SIGNAL \ji|e[0]\ : std_logic;
SIGNAL \ji|ee[1]\ : std_logic;
SIGNAL \ji|Add5~70\ : std_logic;
SIGNAL \ji|e[1]\ : std_logic;
SIGNAL \ji|always1~76\ : std_logic;
SIGNAL \ji|always1~77\ : std_logic;
SIGNAL \ji|f_rtl_1|wysi_counter|q[2]\ : std_logic;
SIGNAL \p1|Selector39~119\ : std_logic;
SIGNAL \p1|Selector40~141\ : std_logic;
SIGNAL \p1|Selector34~23\ : std_logic;
SIGNAL \p1|Selector34~24\ : std_logic;
SIGNAL \p1|Selector48~1331\ : std_logic;
SIGNAL \p1|Selector48~1334\ : std_logic;
SIGNAL \p1|Selector48~1321\ : std_logic;
SIGNAL \p1|display[0]\ : std_logic;
SIGNAL \fen|f100Hz\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|q[0]\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|q[1]\ : std_logic;
SIGNAL \pao|Equal7~24\ : std_logic;
SIGNAL \pao|k2[0]\ : std_logic;
SIGNAL \pao|k2[1]\ : std_logic;
SIGNAL \pao|k1[1]\ : std_logic;
SIGNAL \pao|k1[0]\ : std_logic;
SIGNAL \pao|always1~113\ : std_logic;
SIGNAL \pao|a~180\ : std_logic;
SIGNAL \pao|c~122\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|q[2]\ : std_logic;
SIGNAL \p2|Selector20~18\ : std_logic;
SIGNAL \p2|Selector20~19\ : std_logic;
SIGNAL \pao|a~181\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|q[0]\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|q[2]\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|q[1]\ : std_logic;
SIGNAL \pao|Equal5~26\ : std_logic;
SIGNAL \pao|b~142\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|q[2]\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|q[1]\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|q[0]\ : std_logic;
SIGNAL \p2|Selector13~18\ : std_logic;
SIGNAL \p2|Selector13~19\ : std_logic;
SIGNAL \pao|e~130\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|q[0]\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|q[2]\ : std_logic;
SIGNAL \pao|e_rtl_6|wysi_counter|q[1]\ : std_logic;
SIGNAL \pao|Equal9~12\ : std_logic;
SIGNAL \pao|f~192\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|q[2]\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|q[3]\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|q[1]\ : std_logic;
SIGNAL \p2|Selector54~1844\ : std_logic;
SIGNAL \pao|f_rtl_7|wysi_counter|q[0]\ : std_logic;
SIGNAL \p2|Selector50~1116\ : std_logic;
SIGNAL \p2|Selector56~1214\ : std_logic;
SIGNAL \p2|Selector34~18\ : std_logic;
SIGNAL \p2|Selector34~19\ : std_logic;
SIGNAL \pao|d~142\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|counter_cell[0]~COUT\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|q[1]\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|counter_cell[1]~COUT\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|q[2]\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|q[0]\ : std_logic;
SIGNAL \p2|Selector53~1202\ : std_logic;
SIGNAL \p2|Selector56~1212\ : std_logic;
SIGNAL \p2|Selector6~18\ : std_logic;
SIGNAL \p2|Selector6~19\ : std_logic;
SIGNAL \p2|Selector56~1223\ : std_logic;
SIGNAL \p2|Selector56~1226\ : std_logic;
SIGNAL \p2|Selector56~1216\ : std_logic;
SIGNAL \p2|display[0]\ : std_logic;
SIGNAL \nao|k1k\ : std_logic;
SIGNAL \nao|k1[0]\ : std_logic;
SIGNAL \p3|delay\ : std_logic;
SIGNAL \p1|Equal4~42\ : std_logic;
SIGNAL \p3|always0~129\ : std_logic;
SIGNAL \p3|Selector38~1203\ : std_logic;
SIGNAL \nao|cc[0]\ : std_logic;
SIGNAL \nao|Add1~66\ : std_logic;
SIGNAL \nao|cc[3]\ : std_logic;
SIGNAL \nao|Equal7~27\ : std_logic;
SIGNAL \nao|cc[1]\ : std_logic;
SIGNAL \nao|cc[2]\ : std_logic;
SIGNAL \p3|Selector6~23\ : std_logic;
SIGNAL \p3|Selector6~24\ : std_logic;
SIGNAL \p3|display[0]\ : std_logic;
SIGNAL \mc|Selector15~87\ : std_logic;
SIGNAL \mc|diso[0]\ : std_logic;
SIGNAL \p1|Selector12~108\ : std_logic;
SIGNAL \p1|Selector47~1231\ : std_logic;
SIGNAL \p1|Decoder6~70\ : std_logic;
SIGNAL \p1|Decoder6~69\ : std_logic;
SIGNAL \p1|Selector33~128\ : std_logic;
SIGNAL \p1|Selector33~129\ : std_logic;
SIGNAL \p1|Selector47~1228\ : std_logic;
SIGNAL \p1|always0~38\ : std_logic;
SIGNAL \p1|Selector48~1306\ : std_logic;
SIGNAL \p1|Selector47~1230\ : std_logic;
SIGNAL \p1|display[1]\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \pao|a_rtl_2|wysi_counter|q[3]\ : std_logic;
SIGNAL \p2|Selector26~104\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \pao|d_rtl_5|wysi_counter|q[3]\ : std_logic;
SIGNAL \p2|Selector22~115\ : std_logic;
SIGNAL \p2|Selector55~1538\ : std_logic;
SIGNAL \p2|Selector55~1527\ : std_logic;
SIGNAL \p2|Selector12~100\ : std_logic;
SIGNAL \p2|Selector55~1515\ : std_logic;
SIGNAL \p2|Selector55~1516\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \pao|c_rtl_4|wysi_counter|q[3]\ : std_logic;
SIGNAL \p2|Selector19~100\ : std_logic;
SIGNAL \p2|Selector19~101\ : std_logic;
SIGNAL \p2|Selector55~1514\ : std_logic;
SIGNAL \p2|Selector55~1534\ : std_logic;
SIGNAL \p2|Selector55~1526\ : std_logic;
SIGNAL \p2|display[1]\ : std_logic;
SIGNAL \p3|Selector5~131\ : std_logic;
SIGNAL \nao|dd[0]\ : std_logic;
SIGNAL \nao|dd[1]\ : std_logic;
SIGNAL \nao|Add2~73\ : std_logic;
SIGNAL \nao|dd[3]\ : std_logic;
SIGNAL \nao|Equal8~27\ : std_logic;
SIGNAL \nao|dd[2]\ : std_logic;
SIGNAL \p3|Selector12~109\ : std_logic;
SIGNAL \p3|always0~130\ : std_logic;
SIGNAL \p3|always0~131\ : std_logic;
SIGNAL \p3|Selector42~851\ : std_logic;
SIGNAL \p3|Selector41~1068\ : std_logic;
SIGNAL \nao|k2k\ : std_logic;
SIGNAL \nao|k2\ : std_logic;
SIGNAL \nao|k2~56\ : std_logic;
SIGNAL \nao|ee~959\ : std_logic;
SIGNAL \nao|cc[0]~186\ : std_logic;
SIGNAL \nao|ee~962\ : std_logic;
SIGNAL \nao|ee~958\ : std_logic;
SIGNAL \nao|ff~843\ : std_logic;
SIGNAL \nao|ff[0]\ : std_logic;
SIGNAL \nao|Add6~48\ : std_logic;
SIGNAL \nao|ff~844\ : std_logic;
SIGNAL \nao|ff~846\ : std_logic;
SIGNAL \nao|ff~848\ : std_logic;
SIGNAL \nao|ff[1]\ : std_logic;
SIGNAL \nao|Add4~146\ : std_logic;
SIGNAL \nao|Add6~49\ : std_logic;
SIGNAL \nao|ff[2]\ : std_logic;
SIGNAL \nao|ff~845\ : std_logic;
SIGNAL \nao|ff[3]\ : std_logic;
SIGNAL \nao|ff~847\ : std_logic;
SIGNAL \nao|Add6~50\ : std_logic;
SIGNAL \nao|k1[0]~84\ : std_logic;
SIGNAL \nao|ee[0]\ : std_logic;
SIGNAL \nao|ee~960\ : std_logic;
SIGNAL \nao|always0~527\ : std_logic;
SIGNAL \nao|always0~526\ : std_logic;
SIGNAL \nao|always0~6\ : std_logic;
SIGNAL \nao|Add5~39\ : std_logic;
SIGNAL \nao|ee~967\ : std_logic;
SIGNAL \nao|ee[2]\ : std_logic;
SIGNAL \nao|ee~963\ : std_logic;
SIGNAL \nao|ee~964\ : std_logic;
SIGNAL \nao|Add3~66\ : std_logic;
SIGNAL \nao|ee~961\ : std_logic;
SIGNAL \nao|Equal14~31\ : std_logic;
SIGNAL \nao|ee~966\ : std_logic;
SIGNAL \nao|ee[1]\ : std_logic;
SIGNAL \nao|Equal9~29\ : std_logic;
SIGNAL \nao|ee~965\ : std_logic;
SIGNAL \nao|Add5~40\ : std_logic;
SIGNAL \nao|ee~968\ : std_logic;
SIGNAL \nao|ee[3]\ : std_logic;
SIGNAL \p3|Selector19~131\ : std_logic;
SIGNAL \p3|Selector19~132\ : std_logic;
SIGNAL \p3|Selector41~1067\ : std_logic;
SIGNAL \p3|Selector42~849\ : std_logic;
SIGNAL \p3|Selector41~1076\ : std_logic;
SIGNAL \p3|Selector41~1071\ : std_logic;
SIGNAL \p3|display[1]\ : std_logic;
SIGNAL \mc|Selector14~87\ : std_logic;
SIGNAL \mc|diso[1]\ : std_logic;
SIGNAL \p1|Selector39~120\ : std_logic;
SIGNAL \p1|Selector32~94\ : std_logic;
SIGNAL \p1|Selector32~95\ : std_logic;
SIGNAL \p1|Selector18~94\ : std_logic;
SIGNAL \p1|Selector46~1636\ : std_logic;
SIGNAL \p1|Selector11~107\ : std_logic;
SIGNAL \p1|Selector11~108\ : std_logic;
SIGNAL \p1|Selector4~89\ : std_logic;
SIGNAL \p1|Selector46~1634\ : std_logic;
SIGNAL \p1|Selector25~112\ : std_logic;
SIGNAL \p1|Selector25~113\ : std_logic;
SIGNAL \p1|Selector46~1645\ : std_logic;
SIGNAL \p1|Selector46~1648\ : std_logic;
SIGNAL \p1|Selector46~1638\ : std_logic;
SIGNAL \p1|display[2]\ : std_logic;
SIGNAL \pao|Equal5~25\ : std_logic;
SIGNAL \p2|Selector4~88\ : std_logic;
SIGNAL \p2|Selector25~103\ : std_logic;
SIGNAL \p2|Selector25~104\ : std_logic;
SIGNAL \p2|Selector54~1851\ : std_logic;
SIGNAL \p1|Decoder6~79\ : std_logic;
SIGNAL \p2|Selector54~1849\ : std_logic;
SIGNAL \p2|Selector18~89\ : std_logic;
SIGNAL \p2|Selector54~1871\ : std_logic;
SIGNAL \p2|Selector54~1860\ : std_logic;
SIGNAL \p2|Selector54~1866\ : std_logic;
SIGNAL \p2|Selector54~1859\ : std_logic;
SIGNAL \p2|display[2]\ : std_logic;
SIGNAL \p3|Selector4~93\ : std_logic;
SIGNAL \p3|Selector11~108\ : std_logic;
SIGNAL \p3|Selector40~1249\ : std_logic;
SIGNAL \p3|Selector25~116\ : std_logic;
SIGNAL \nao|always0~514\ : std_logic;
SIGNAL \p3|Selector40~1266\ : std_logic;
SIGNAL \p3|Selector40~1258\ : std_logic;
SIGNAL \p3|Selector40~1263\ : std_logic;
SIGNAL \p3|Selector40~1257\ : std_logic;
SIGNAL \p3|display[2]\ : std_logic;
SIGNAL \mc|Selector13~87\ : std_logic;
SIGNAL \mc|diso[2]\ : std_logic;
SIGNAL \p1|Selector45~1291\ : std_logic;
SIGNAL \p1|Selector17~17\ : std_logic;
SIGNAL \p1|Selector17~18\ : std_logic;
SIGNAL \p1|Selector45~1297\ : std_logic;
SIGNAL \p1|Selector3~12\ : std_logic;
SIGNAL \p1|Selector3~13\ : std_logic;
SIGNAL \p1|Selector38~117\ : std_logic;
SIGNAL \p1|Selector31~17\ : std_logic;
SIGNAL \p1|Selector31~18\ : std_logic;
SIGNAL \p1|Selector45~1306\ : std_logic;
SIGNAL \p1|Selector45~1309\ : std_logic;
SIGNAL \p1|Selector45~1299\ : std_logic;
SIGNAL \p1|display[3]\ : std_logic;
SIGNAL \p2|Selector17~12\ : std_logic;
SIGNAL \p2|Selector17~13\ : std_logic;
SIGNAL \p2|Selector10~12\ : std_logic;
SIGNAL \p2|Selector10~13\ : std_logic;
SIGNAL \p2|Selector53~1205\ : std_logic;
SIGNAL \p2|Selector31~12\ : std_logic;
SIGNAL \p2|Selector31~13\ : std_logic;
SIGNAL \p2|Selector53~1203\ : std_logic;
SIGNAL \p2|Selector3~12\ : std_logic;
SIGNAL \p2|Selector3~13\ : std_logic;
SIGNAL \p2|Selector53~1215\ : std_logic;
SIGNAL \p2|Selector53~1218\ : std_logic;
SIGNAL \p2|Selector53~1207\ : std_logic;
SIGNAL \p2|display[3]\ : std_logic;
SIGNAL \p3|Selector3~17\ : std_logic;
SIGNAL \p3|Selector3~18\ : std_logic;
SIGNAL \p3|display[3]\ : std_logic;
SIGNAL \mc|Selector12~87\ : std_logic;
SIGNAL \mc|diso[3]\ : std_logic;
SIGNAL \ji|Add4|adder|result_node|cout[2]\ : std_logic;
SIGNAL \ji|Add4|adder|unreg_res_node[3]\ : std_logic;
SIGNAL \ji|d[3]\ : std_logic;
SIGNAL \p1|Selector23~81\ : std_logic;
SIGNAL \p1|Selector23~82\ : std_logic;
SIGNAL \p1|Selector44~2046\ : std_logic;
SIGNAL \p1|Selector44~2065\ : std_logic;
SIGNAL \p1|Selector44~2055\ : std_logic;
SIGNAL \p1|Selector44~2041\ : std_logic;
SIGNAL \p1|Selector44~2042\ : std_logic;
SIGNAL \p1|Selector44~2044\ : std_logic;
SIGNAL \p1|Selector44~2045\ : std_logic;
SIGNAL \p1|display[4]\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|counter_cell[2]~COUT\ : std_logic;
SIGNAL \pao|b_rtl_3|wysi_counter|q[3]\ : std_logic;
SIGNAL \p2|Selector52~3150\ : std_logic;
SIGNAL \p2|Selector52~3151\ : std_logic;
SIGNAL \p2|Selector52~3148\ : std_logic;
SIGNAL \p2|Selector52~3147\ : std_logic;
SIGNAL \p2|Selector52~3149\ : std_logic;
SIGNAL \p2|Selector52~3152\ : std_logic;
SIGNAL \p2|Selector52~3154\ : std_logic;
SIGNAL \p2|Selector52~3144\ : std_logic;
SIGNAL \p2|Selector52~3146\ : std_logic;
SIGNAL \p2|display[4]\ : std_logic;
SIGNAL \p3|Selector2~262\ : std_logic;
SIGNAL \p3|Selector2~259\ : std_logic;
SIGNAL \p3|display[4]\ : std_logic;
SIGNAL \mc|Selector11~87\ : std_logic;
SIGNAL \mc|diso[4]\ : std_logic;
SIGNAL \p1|Selector43~1386\ : std_logic;
SIGNAL \p1|Selector29~23\ : std_logic;
SIGNAL \p1|Selector29~24\ : std_logic;
SIGNAL \p1|Selector15~23\ : std_logic;
SIGNAL \p1|Selector15~24\ : std_logic;
SIGNAL \p1|Selector8~116\ : std_logic;
SIGNAL \p1|Selector8~117\ : std_logic;
SIGNAL \p1|Selector43~1383\ : std_logic;
SIGNAL \p1|Selector43~1393\ : std_logic;
SIGNAL \p1|Selector43~1388\ : std_logic;
SIGNAL \p1|display[5]\ : std_logic;
SIGNAL \p2|Selector29~18\ : std_logic;
SIGNAL \p2|Selector29~19\ : std_logic;
SIGNAL \p2|Selector15~18\ : std_logic;
SIGNAL \p2|Selector15~19\ : std_logic;
SIGNAL \p2|Selector40~44\ : std_logic;
SIGNAL \p2|Selector51~1308\ : std_logic;
SIGNAL \p2|Selector51~1309\ : std_logic;
SIGNAL \p2|Selector8~18\ : std_logic;
SIGNAL \p2|Selector8~19\ : std_logic;
SIGNAL \p2|Selector51~1318\ : std_logic;
SIGNAL \p2|Selector51~1313\ : std_logic;
SIGNAL \p2|display[5]\ : std_logic;
SIGNAL \p3|Selector1~23\ : std_logic;
SIGNAL \p3|Selector1~24\ : std_logic;
SIGNAL \p3|display[5]\ : std_logic;
SIGNAL \mc|Selector10~87\ : std_logic;
SIGNAL \mc|diso[5]\ : std_logic;
SIGNAL \p1|Selector21~98\ : std_logic;
SIGNAL \p1|Selector42~1162\ : std_logic;
SIGNAL \p1|Selector42~1164\ : std_logic;
SIGNAL \p1|Selector28~23\ : std_logic;
SIGNAL \p1|Selector28~24\ : std_logic;
SIGNAL \p1|Selector14~23\ : std_logic;
SIGNAL \p1|Selector14~24\ : std_logic;
SIGNAL \p1|Selector42~1160\ : std_logic;
SIGNAL \p1|Selector42~1161\ : std_logic;
SIGNAL \p1|display[6]\ : std_logic;
SIGNAL \p2|Selector7~26\ : std_logic;
SIGNAL \p2|Selector7~25\ : std_logic;
SIGNAL \p2|Selector7~27\ : std_logic;
SIGNAL \p2|Selector0~29\ : std_logic;
SIGNAL \p2|Selector0~28\ : std_logic;
SIGNAL \p2|Selector0~30\ : std_logic;
SIGNAL \p2|Selector50~1121\ : std_logic;
SIGNAL \p2|Selector50~1122\ : std_logic;
SIGNAL \p2|Selector50~1119\ : std_logic;
SIGNAL \p2|Selector50~1117\ : std_logic;
SIGNAL \p2|Selector50~1118\ : std_logic;
SIGNAL \p2|Selector50~1120\ : std_logic;
SIGNAL \p2|display[6]\ : std_logic;
SIGNAL \p3|Selector7~95\ : std_logic;
SIGNAL \p3|Selector36~1092\ : std_logic;
SIGNAL \p3|Selector0~30\ : std_logic;
SIGNAL \p3|Selector0~31\ : std_logic;
SIGNAL \p3|Selector36~1091\ : std_logic;
SIGNAL \p3|display[6]\ : std_logic;
SIGNAL \mc|Selector9~87\ : std_logic;
SIGNAL \mc|diso[6]\ : std_logic;
SIGNAL \p1|led_dig[0]\ : std_logic;
SIGNAL \mc|lego[0]\ : std_logic;
SIGNAL \p1|led_dig[1]\ : std_logic;
SIGNAL \mc|lego[1]\ : std_logic;
SIGNAL \p1|led_dig[2]\ : std_logic;
SIGNAL \mc|lego[2]\ : std_logic;
SIGNAL \p1|led_dig[3]\ : std_logic;
SIGNAL \mc|lego[3]\ : std_logic;
SIGNAL \p1|led_dig[4]\ : std_logic;
SIGNAL \mc|lego[4]\ : std_logic;
SIGNAL \p1|led_dig[5]\ : std_logic;
SIGNAL \mc|lego[5]\ : std_logic;
SIGNAL \p1|led_dig[6]\ : std_logic;
SIGNAL \mc|lego[6]\ : std_logic;
SIGNAL \p1|led_dig[7]\ : std_logic;
SIGNAL \mc|lego[7]\ : std_logic;
SIGNAL \p4|r[0]\ : std_logic;
SIGNAL \p4|r[1]\ : std_logic;
SIGNAL \p4|r[2]\ : std_logic;
SIGNAL \nao|always0~574\ : std_logic;
SIGNAL \nao|always0~550\ : std_logic;
SIGNAL \nao|always0~571\ : std_logic;
SIGNAL \nao|always0~549\ : std_logic;
SIGNAL \nao|always0~568\ : std_logic;
SIGNAL \nao|always0~548\ : std_logic;
SIGNAL \nao|linerow\ : std_logic;
SIGNAL \p4|line[0]\ : std_logic;
SIGNAL \p4|line[1]\ : std_logic;
SIGNAL \p4|line[2]\ : std_logic;
SIGNAL \p4|line[3]\ : std_logic;
SIGNAL \p4|line[4]\ : std_logic;
SIGNAL \p4|line[5]\ : std_logic;
SIGNAL \p4|line[6]\ : std_logic;
SIGNAL \p4|line[7]\ : std_logic;
SIGNAL \p4|row[0]\ : std_logic;
SIGNAL \p4|row[1]\ : std_logic;
SIGNAL \p4|row[2]\ : std_logic;
SIGNAL \p4|row[1]~331\ : std_logic;
SIGNAL \p4|row[2]~332\ : std_logic;
SIGNAL \p4|row[2]~333\ : std_logic;
SIGNAL \p4|row[6]\ : std_logic;
SIGNAL \p4|row[0]~334\ : std_logic;
COMPONENT flex10ke_lcell
PORT (
	dataa : IN STD_LOGIC;
	datab : IN STD_LOGIC;
	datac : IN STD_LOGIC;
	datad : IN STD_LOGIC;
	aclr : IN STD_LOGIC;
	aload : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cascin : IN STD_LOGIC;
	combout : OUT STD_LOGIC;
	regout : OUT STD_LOGIC;
	cout : OUT STD_LOGIC;
	cascout : OUT STD_LOGIC;
	modesel : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	pathsel : IN STD_LOGIC_VECTOR(9 DOWNTO 0));
END COMPONENT;

COMPONENT flex10ke_io
PORT (
	datain : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	ena : IN STD_LOGIC;
	aclr : IN STD_LOGIC;
	oe : IN STD_LOGIC;
	dataout : OUT STD_LOGIC;
	padio : INOUT STD_LOGIC;
	modesel : IN STD_LOGIC_VECTOR(10 DOWNTO 0));
END COMPONENT;


COMPONENT INV
    PORT (
	IN1 : IN std_logic;
	Y :  OUT std_logic);
END COMPONENT;

COMPONENT AND1
    PORT (
	IN1 : IN std_logic;
	Y :  OUT std_logic);
END COMPONENT;
BEGIN

ww_clk <= clk;
ww_modkey <= modkey;
ww_key1 <= key1;
ww_key2 <= key2;
dis <= ww_dis;
leg <= ww_leg;
line <= ww_line;
row <= ww_row;

gnd <= '0';
vcc <= '1';
GNDs <= (OTHERS => '0');
VCCs <= (OTHERS => '1');

\modkey~I_modesel\ <= "01010000001";
\fen|Equal2~339_I_modesel\ <= "1000001";
\fen|Equal2~339_I_pathsel\ <= "0000001111";
\p1|WideOr54~9_I_modesel\ <= "1000001";
\p1|WideOr54~9_I_pathsel\ <= "0000001111";
\p1|Selector19~132_I_modesel\ <= "1000001";
\p1|Selector19~132_I_pathsel\ <= "0000001111";
\p1|Selector47~1232_I_modesel\ <= "1000001";
\p1|Selector47~1232_I_pathsel\ <= "0000001111";
\p1|Selector37~117_I_modesel\ <= "1000001";
\p1|Selector37~117_I_pathsel\ <= "0000001110";
\p1|Selector30~253_I_modesel\ <= "1000001";
\p1|Selector30~253_I_pathsel\ <= "0000001111";
\p1|Selector30~254_I_modesel\ <= "1000001";
\p1|Selector30~254_I_pathsel\ <= "0000001111";
\p1|Selector44~2047_I_modesel\ <= "1000001";
\p1|Selector44~2047_I_pathsel\ <= "0000001111";
\p1|Selector44~2048_I_modesel\ <= "1000001";
\p1|Selector44~2048_I_pathsel\ <= "0000001110";
\nao|k1[1]~I_modesel\ <= "0100001";
\nao|k1[1]~I_pathsel\ <= "0000001110";
\p3|Selector21~119_I_modesel\ <= "1000001";
\p3|Selector21~119_I_pathsel\ <= "0000001111";
\p3|Selector14~30_I_modesel\ <= "1000001";
\p3|Selector14~30_I_pathsel\ <= "0000001111";
\p3|Selector14~31_I_modesel\ <= "1000001";
\p3|Selector14~31_I_pathsel\ <= "0000001111";
\p3|Selector36~1093_I_modesel\ <= "1000001";
\p3|Selector36~1093_I_pathsel\ <= "0000001111";
\p3|Selector36~1094_I_modesel\ <= "1000001";
\p3|Selector36~1094_I_pathsel\ <= "0000001111";
\p2|Selector14~25_I_modesel\ <= "1000001";
\p2|Selector14~25_I_pathsel\ <= "0000001100";
\p2|Selector14~26_I_modesel\ <= "1000001";
\p2|Selector14~26_I_pathsel\ <= "0000001111";
\p2|Selector14~27_I_modesel\ <= "1000001";
\p2|Selector14~27_I_pathsel\ <= "0000001111";
\p2|Selector28~25_I_modesel\ <= "1000001";
\p2|Selector28~25_I_pathsel\ <= "0000001100";
\pao|e_rtl_6|wysi_counter|q[2]~I_modesel\ <= "1001000";
\pao|e_rtl_6|wysi_counter|q[2]~I_pathsel\ <= "1000100001";
\pao|e_rtl_6|wysi_counter|q[3]~I_modesel\ <= "1001000";
\pao|e_rtl_6|wysi_counter|q[3]~I_pathsel\ <= "0000100001";
\p2|Selector28~26_I_modesel\ <= "1000001";
\p2|Selector28~26_I_pathsel\ <= "0000001111";
\p2|Selector28~27_I_modesel\ <= "1000001";
\p2|Selector28~27_I_pathsel\ <= "0000001111";
\p2|Selector50~1123_I_modesel\ <= "1000001";
\p2|Selector50~1123_I_pathsel\ <= "0000001111";
\p1|Selector42~1163_I_modesel\ <= "1000001";
\p1|Selector42~1163_I_pathsel\ <= "0000001111";
\p3|Equal0~360_I_modesel\ <= "1000001";
\p3|Equal0~360_I_pathsel\ <= "0000001111";
\p1|Equal0~360_I_modesel\ <= "1000001";
\p1|Equal0~360_I_pathsel\ <= "0000001111";
\pao|f[0]~190_I_modesel\ <= "1000001";
\pao|f[0]~190_I_pathsel\ <= "0000001100";
\pao|f~191_I_modesel\ <= "1000001";
\pao|f~191_I_pathsel\ <= "0000001111";
\pao|b[0]~141_I_modesel\ <= "1000001";
\pao|b[0]~141_I_pathsel\ <= "0000001100";
\pao|always1~114_I_modesel\ <= "1000001";
\pao|always1~114_I_pathsel\ <= "0000001111";
\pao|d[0]~141_I_modesel\ <= "1000001";
\pao|d[0]~141_I_pathsel\ <= "0000001100";
\pao|always1~115_I_modesel\ <= "1000001";
\pao|always1~115_I_pathsel\ <= "0000001111";
\pao|c[0]~121_I_modesel\ <= "1000001";
\pao|c[0]~121_I_pathsel\ <= "0000001110";
\pao|e[0]~129_I_modesel\ <= "1000001";
\pao|e[0]~129_I_pathsel\ <= "0000001110";
\fen|Equal0~339_I_modesel\ <= "1000001";
\fen|Equal0~339_I_pathsel\ <= "0000001111";
\nao|cc[0]~11_I_modesel\ <= "1000001";
\nao|cc[0]~11_I_pathsel\ <= "0000001100";
\p3|Selector20~23_I_modesel\ <= "1000001";
\p3|Selector20~23_I_pathsel\ <= "0000001111";
\p3|Selector20~24_I_modesel\ <= "1000001";
\p3|Selector20~24_I_pathsel\ <= "0000001111";
\p3|Selector26~134_I_modesel\ <= "1000001";
\p3|Selector26~134_I_pathsel\ <= "0000001110";
\p3|Selector42~850_I_modesel\ <= "1000001";
\p3|Selector42~850_I_pathsel\ <= "0000001111";
\p3|Selector8~119_I_modesel\ <= "1000001";
\p3|Selector8~119_I_pathsel\ <= "0000001100";
\p3|Selector10~222_I_modesel\ <= "1000001";
\p3|Selector10~222_I_pathsel\ <= "0000001111";
\p3|Selector42~853_I_modesel\ <= "1000001";
\p3|Selector42~853_I_pathsel\ <= "0000001111";
\fen|k[27]~I_modesel\ <= "1000001";
\fen|k[27]~I_pathsel\ <= "0000001000";
\fen|k[26]~I_modesel\ <= "1000001";
\fen|k[26]~I_pathsel\ <= "0000001000";
\fen|k[25]~I_modesel\ <= "1000001";
\fen|k[25]~I_pathsel\ <= "0000001000";
\fen|k[24]~I_modesel\ <= "1000001";
\fen|k[24]~I_pathsel\ <= "0000001000";
\fen|Equal2~352_I_modesel\ <= "1000001";
\fen|Equal2~352_I_pathsel\ <= "0000001111";
\fen|k[31]~I_modesel\ <= "1000001";
\fen|k[31]~I_pathsel\ <= "0000001000";
\fen|k[30]~I_modesel\ <= "1000001";
\fen|k[30]~I_pathsel\ <= "0000001000";
\fen|k[29]~I_modesel\ <= "1000001";
\fen|k[29]~I_pathsel\ <= "0000001000";
\fen|k[28]~I_modesel\ <= "1000001";
\fen|k[28]~I_pathsel\ <= "0000001000";
\fen|Equal2~360_I_modesel\ <= "1000001";
\fen|Equal2~360_I_pathsel\ <= "0000001111";
\fen|k[19]~I_modesel\ <= "1000001";
\fen|k[19]~I_pathsel\ <= "0000001000";
\fen|k[18]~I_modesel\ <= "1000001";
\fen|k[18]~I_pathsel\ <= "0000001000";
\fen|k[17]~I_modesel\ <= "1000001";
\fen|k[17]~I_pathsel\ <= "0000001000";
\fen|k[16]~I_modesel\ <= "1000001";
\fen|k[16]~I_pathsel\ <= "0000001000";
\fen|Equal2~354_I_modesel\ <= "1000001";
\fen|Equal2~354_I_pathsel\ <= "0000001111";
\fen|k[23]~I_modesel\ <= "1000001";
\fen|k[23]~I_pathsel\ <= "0000001000";
\fen|k[22]~I_modesel\ <= "1000001";
\fen|k[22]~I_pathsel\ <= "0000001000";
\fen|k[21]~I_modesel\ <= "1000001";
\fen|k[21]~I_pathsel\ <= "0000001000";
\fen|k[20]~I_modesel\ <= "1000001";
\fen|k[20]~I_pathsel\ <= "0000001000";
\fen|Equal2~361_I_modesel\ <= "1000001";
\fen|Equal2~361_I_pathsel\ <= "0000001111";
\fen|k[10]~I_modesel\ <= "1000001";
\fen|k[10]~I_pathsel\ <= "0000001100";
\fen|k[9]~I_modesel\ <= "1000001";
\fen|k[9]~I_pathsel\ <= "0000001100";
\fen|k[8]~I_modesel\ <= "1000001";
\fen|k[8]~I_pathsel\ <= "0000001100";
\fen|k[11]~I_modesel\ <= "1000001";
\fen|k[11]~I_pathsel\ <= "0000001000";
\fen|Equal2~356_I_modesel\ <= "1000001";
\fen|Equal2~356_I_pathsel\ <= "0000001111";
\fen|k[13]~I_modesel\ <= "1000001";
\fen|k[13]~I_pathsel\ <= "0000001100";
\fen|k[15]~I_modesel\ <= "1000001";
\fen|k[15]~I_pathsel\ <= "0000001000";
\fen|k[14]~I_modesel\ <= "1000001";
\fen|k[14]~I_pathsel\ <= "0000001000";
\fen|k[12]~I_modesel\ <= "1000001";
\fen|k[12]~I_pathsel\ <= "0000001000";
\fen|Equal2~362_I_modesel\ <= "1000001";
\fen|Equal2~362_I_pathsel\ <= "0000001111";
\fen|k[3]~I_modesel\ <= "1000001";
\fen|k[3]~I_pathsel\ <= "0000001000";
\fen|k[2]~I_modesel\ <= "1000001";
\fen|k[2]~I_pathsel\ <= "0000001000";
\fen|k[1]~I_modesel\ <= "1000001";
\fen|k[1]~I_pathsel\ <= "0000001000";
\fen|k[0]~I_modesel\ <= "1000010";
\fen|k[0]~I_pathsel\ <= "0010000010";
\fen|Equal2~358_I_modesel\ <= "1000001";
\fen|Equal2~358_I_pathsel\ <= "0000001111";
\fen|k[7]~I_modesel\ <= "1000001";
\fen|k[7]~I_pathsel\ <= "0000001000";
\fen|k[6]~I_modesel\ <= "1000001";
\fen|k[6]~I_pathsel\ <= "0000001000";
\fen|k[5]~I_modesel\ <= "1000001";
\fen|k[5]~I_pathsel\ <= "0000001000";
\fen|k[4]~I_modesel\ <= "1000001";
\fen|k[4]~I_pathsel\ <= "0000001100";
\fen|Equal2~363_I_modesel\ <= "1000001";
\fen|Equal2~363_I_pathsel\ <= "0000001111";
\p3|WideOr33~9_I_modesel\ <= "1000001";
\p3|WideOr33~9_I_pathsel\ <= "0000001111";
\p2|WideOr57~9_I_modesel\ <= "1000001";
\p2|WideOr57~9_I_pathsel\ <= "0000001111";
\p2|Selector33~92_I_modesel\ <= "1000001";
\p2|Selector33~92_I_pathsel\ <= "0000001111";
\p2|Selector55~1519_I_modesel\ <= "1000001";
\p2|Selector55~1519_I_pathsel\ <= "0000001111";
\ji|always1~81_I_modesel\ <= "1000001";
\ji|always1~81_I_pathsel\ <= "0000001100";
\p1|Selector26~113_I_modesel\ <= "1000001";
\p1|Selector26~113_I_pathsel\ <= "0000001111";
\p1|Selector47~1237_I_modesel\ <= "1000001";
\p1|Selector47~1237_I_pathsel\ <= "0000001111";
\p1|Selector5~127_I_modesel\ <= "1000001";
\p1|Selector5~127_I_pathsel\ <= "0000001111";
\p1|Selector47~1239_I_modesel\ <= "1000001";
\p1|Selector47~1239_I_pathsel\ <= "0000001111";
\p3|Selector9~77_I_modesel\ <= "1000001";
\p3|Selector9~77_I_pathsel\ <= "0000001100";
\p2|Selector32~88_I_modesel\ <= "1000001";
\p2|Selector32~88_I_pathsel\ <= "0000001111";
\p2|Selector54~1852_I_modesel\ <= "1000001";
\p2|Selector54~1852_I_pathsel\ <= "0000001111";
\p3|Selector17~17_I_modesel\ <= "1000001";
\p3|Selector17~17_I_pathsel\ <= "0000001111";
\p3|Selector17~18_I_modesel\ <= "1000001";
\p3|Selector17~18_I_pathsel\ <= "0000001111";
\p3|Selector24~115_I_modesel\ <= "1000001";
\p3|Selector24~115_I_pathsel\ <= "0000001110";
\p3|Selector39~833_I_modesel\ <= "1000001";
\p3|Selector39~833_I_pathsel\ <= "0000001111";
\p3|Selector39~835_I_modesel\ <= "1000001";
\p3|Selector39~835_I_pathsel\ <= "0000001111";
\p3|Selector23~115_I_modesel\ <= "1000001";
\p3|Selector23~115_I_pathsel\ <= "0000001110";
\p3|Selector38~1209_I_modesel\ <= "1000001";
\p3|Selector38~1209_I_pathsel\ <= "0000001111";
\p3|Selector9~78_I_modesel\ <= "1000001";
\p3|Selector9~78_I_pathsel\ <= "0000001111";
\p3|Selector38~1211_I_modesel\ <= "1000001";
\p3|Selector38~1211_I_pathsel\ <= "0000001111";
\pao|k2k~I_modesel\ <= "0100001";
\pao|k2k~I_pathsel\ <= "0000001000";
\pao|k2[1]~22_I_modesel\ <= "1000001";
\pao|k2[1]~22_I_pathsel\ <= "0000001111";
\fen|Equal1~339_I_modesel\ <= "1000001";
\fen|Equal1~339_I_pathsel\ <= "0000001111";
\p2|Selector52~3162_I_modesel\ <= "1000001";
\p2|Selector52~3162_I_pathsel\ <= "0000001111";
\p2|Selector52~3163_I_modesel\ <= "1000001";
\p2|Selector52~3163_I_pathsel\ <= "0000001111";
\p2|Selector52~3164_I_modesel\ <= "1000001";
\p2|Selector52~3164_I_pathsel\ <= "0000001111";
\p2|Selector52~3165_I_modesel\ <= "1000001";
\p2|Selector52~3165_I_pathsel\ <= "0000001110";
\p2|Selector52~3166_I_modesel\ <= "1000001";
\p2|Selector52~3166_I_pathsel\ <= "0000001111";
\p2|Selector52~3170_I_modesel\ <= "1000001";
\p2|Selector52~3170_I_pathsel\ <= "0000001111";
\p2|Selector52~3168_I_modesel\ <= "1000001";
\p2|Selector52~3168_I_pathsel\ <= "0000001111";
\p2|Selector52~3171_I_modesel\ <= "1000001";
\p2|Selector52~3171_I_pathsel\ <= "0000001111";
\p1|Selector16~261_I_modesel\ <= "1000001";
\p1|Selector16~261_I_pathsel\ <= "0000001111";
\p1|Selector16~263_I_modesel\ <= "1000001";
\p1|Selector16~263_I_pathsel\ <= "0000001111";
\p3|Selector15~23_I_modesel\ <= "1000001";
\p3|Selector15~23_I_pathsel\ <= "0000001111";
\p3|Selector15~24_I_modesel\ <= "1000001";
\p3|Selector15~24_I_pathsel\ <= "0000001111";
\nao|always0~519_I_modesel\ <= "1000001";
\nao|always0~519_I_pathsel\ <= "0000001100";
\p3|Selector37~933_I_modesel\ <= "1000001";
\p3|Selector37~933_I_pathsel\ <= "0000001111";
\p3|Selector37~934_I_modesel\ <= "1000001";
\p3|Selector37~934_I_pathsel\ <= "0000001111";
\p3|Selector8~120_I_modesel\ <= "1000001";
\p3|Selector8~120_I_pathsel\ <= "0000001111";
\p3|Selector37~936_I_modesel\ <= "1000001";
\p3|Selector37~936_I_pathsel\ <= "0000001111";
\p2|Selector22~114_I_modesel\ <= "1000001";
\p2|Selector22~114_I_pathsel\ <= "0000001110";
\p2|Selector22~116_I_modesel\ <= "1000001";
\p2|Selector22~116_I_pathsel\ <= "0000001111";
\p2|Selector1~18_I_modesel\ <= "1000001";
\p2|Selector1~18_I_pathsel\ <= "0000001111";
\p2|Selector1~19_I_modesel\ <= "1000001";
\p2|Selector1~19_I_pathsel\ <= "0000001111";
\p2|Selector51~1311_I_modesel\ <= "1000001";
\p2|Selector51~1311_I_pathsel\ <= "0000001111";
\p1|Selector1~18_I_modesel\ <= "1000001";
\p1|Selector1~18_I_pathsel\ <= "0000001111";
\p1|Selector1~19_I_modesel\ <= "1000001";
\p1|Selector1~19_I_pathsel\ <= "0000001111";
\p1|Selector22~121_I_modesel\ <= "1000001";
\p1|Selector22~121_I_pathsel\ <= "0000001110";
\p1|Selector22~122_I_modesel\ <= "1000001";
\p1|Selector22~122_I_pathsel\ <= "0000001111";
\p1|Selector43~1384_I_modesel\ <= "1000001";
\p1|Selector43~1384_I_pathsel\ <= "0000001111";
\p1|Selector40~140_I_modesel\ <= "1000001";
\p1|Selector40~140_I_pathsel\ <= "0000001100";
\nao|dd[0]~11_I_modesel\ <= "1000001";
\nao|dd[0]~11_I_pathsel\ <= "0000001100";
\nao|k1[1]~87_I_modesel\ <= "1000001";
\nao|k1[1]~87_I_pathsel\ <= "0000001100";
\nao|always0~520_I_modesel\ <= "1000001";
\nao|always0~520_I_pathsel\ <= "0000001111";
\nao|always0~521_I_modesel\ <= "1000001";
\nao|always0~521_I_pathsel\ <= "0000001111";
\nao|always0~522_I_modesel\ <= "1000001";
\nao|always0~522_I_pathsel\ <= "0000001111";
\nao|always0~523_I_modesel\ <= "1000001";
\nao|always0~523_I_pathsel\ <= "0000001111";
\nao|always0~524_I_modesel\ <= "1000001";
\nao|always0~524_I_pathsel\ <= "0000001111";
\nao|always0~525_I_modesel\ <= "1000001";
\nao|always0~525_I_pathsel\ <= "0000001110";
\p1|Selector35~124_I_modesel\ <= "1000001";
\p1|Selector35~124_I_pathsel\ <= "0000001111";
\p1|Selector42~1170_I_modesel\ <= "1000001";
\p1|Selector42~1170_I_pathsel\ <= "0000001111";
\p1|Selector0~21_I_modesel\ <= "1000001";
\p1|Selector0~21_I_pathsel\ <= "0000001111";
\p1|Selector0~22_I_modesel\ <= "1000001";
\p1|Selector0~22_I_pathsel\ <= "0000001111";
\p1|Selector42~1172_I_modesel\ <= "1000001";
\p1|Selector42~1172_I_pathsel\ <= "0000001111";
\p3|i[27]~I_modesel\ <= "1000001";
\p3|i[27]~I_pathsel\ <= "0000001000";
\p3|i[26]~I_modesel\ <= "1000001";
\p3|i[26]~I_pathsel\ <= "0000001000";
\p3|i[25]~I_modesel\ <= "1000001";
\p3|i[25]~I_pathsel\ <= "0000001000";
\p3|i[24]~I_modesel\ <= "1000001";
\p3|i[24]~I_pathsel\ <= "0000001000";
\p3|Equal0~373_I_modesel\ <= "1000001";
\p3|Equal0~373_I_pathsel\ <= "0000001111";
\p3|i[31]~I_modesel\ <= "1000001";
\p3|i[31]~I_pathsel\ <= "0000001000";
\p3|i[30]~I_modesel\ <= "1000001";
\p3|i[30]~I_pathsel\ <= "0000001000";
\p3|i[29]~I_modesel\ <= "1000001";
\p3|i[29]~I_pathsel\ <= "0000001000";
\p3|i[28]~I_modesel\ <= "1000001";
\p3|i[28]~I_pathsel\ <= "0000001000";
\p3|Equal0~381_I_modesel\ <= "1000001";
\p3|Equal0~381_I_pathsel\ <= "0000001111";
\p3|i[19]~I_modesel\ <= "1000001";
\p3|i[19]~I_pathsel\ <= "0000001000";
\p3|i[18]~I_modesel\ <= "1000001";
\p3|i[18]~I_pathsel\ <= "0000001000";
\p3|i[17]~I_modesel\ <= "1000001";
\p3|i[17]~I_pathsel\ <= "0000001000";
\p3|i[16]~I_modesel\ <= "1000001";
\p3|i[16]~I_pathsel\ <= "0000001000";
\p3|Equal0~375_I_modesel\ <= "1000001";
\p3|Equal0~375_I_pathsel\ <= "0000001111";
\p3|i[23]~I_modesel\ <= "1000001";
\p3|i[23]~I_pathsel\ <= "0000001000";
\p3|i[22]~I_modesel\ <= "1000001";
\p3|i[22]~I_pathsel\ <= "0000001000";
\p3|i[21]~I_modesel\ <= "1000001";
\p3|i[21]~I_pathsel\ <= "0000001000";
\p3|i[20]~I_modesel\ <= "1000001";
\p3|i[20]~I_pathsel\ <= "0000001000";
\p3|Equal0~382_I_modesel\ <= "1000001";
\p3|Equal0~382_I_pathsel\ <= "0000001111";
\p3|i[11]~I_modesel\ <= "1000001";
\p3|i[11]~I_pathsel\ <= "0000001000";
\p3|i[10]~I_modesel\ <= "1000001";
\p3|i[10]~I_pathsel\ <= "0000001000";
\p3|i[9]~I_modesel\ <= "1000001";
\p3|i[9]~I_pathsel\ <= "0000001000";
\p3|i[8]~I_modesel\ <= "1000001";
\p3|i[8]~I_pathsel\ <= "0000001000";
\p3|Equal0~377_I_modesel\ <= "1000001";
\p3|Equal0~377_I_pathsel\ <= "0000001111";
\p3|i[15]~I_modesel\ <= "1000001";
\p3|i[15]~I_pathsel\ <= "0000001000";
\p3|i[14]~I_modesel\ <= "1000001";
\p3|i[14]~I_pathsel\ <= "0000001000";
\p3|i[13]~I_modesel\ <= "1000001";
\p3|i[13]~I_pathsel\ <= "0000001000";
\p3|i[12]~I_modesel\ <= "1000001";
\p3|i[12]~I_pathsel\ <= "0000001000";
\p3|Equal0~383_I_modesel\ <= "1000001";
\p3|Equal0~383_I_pathsel\ <= "0000001111";
\p3|i[2]~I_modesel\ <= "1000001";
\p3|i[2]~I_pathsel\ <= "0000001100";
\p3|i[3]~I_modesel\ <= "1000001";
\p3|i[3]~I_pathsel\ <= "0000001000";
\p3|i[1]~I_modesel\ <= "1000001";
\p3|i[1]~I_pathsel\ <= "0000001000";
\p3|i[0]~I_modesel\ <= "1000010";
\p3|i[0]~I_pathsel\ <= "0011000011";
\p3|Equal0~379_I_modesel\ <= "1000001";
\p3|Equal0~379_I_pathsel\ <= "0000001111";
\p3|i[6]~I_modesel\ <= "1000001";
\p3|i[6]~I_pathsel\ <= "0000001100";
\p3|i[5]~I_modesel\ <= "1000001";
\p3|i[5]~I_pathsel\ <= "0000001100";
\p3|i[7]~I_modesel\ <= "1000001";
\p3|i[7]~I_pathsel\ <= "0000001000";
\p3|i[4]~I_modesel\ <= "1000001";
\p3|i[4]~I_pathsel\ <= "0000001000";
\p3|Equal0~384_I_modesel\ <= "1000001";
\p3|Equal0~384_I_pathsel\ <= "0000001111";
\fen|Add2|adder|result_node|cs_buffer[27]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[27]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[26]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[26]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[25]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[25]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[24]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[24]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[30]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[30]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[29]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[29]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[28]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[28]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[19]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[19]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[18]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[18]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[17]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[17]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[16]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[16]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[23]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[23]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[22]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[22]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[21]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[21]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[20]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[20]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[10]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[10]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[9]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[9]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[8]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[8]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[11]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[11]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[13]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[13]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[15]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[15]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[14]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[14]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[12]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[12]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[3]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[3]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[7]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[7]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[6]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[6]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[5]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[5]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|result_node|cs_buffer[4]~I_modesel\ <= "1000010";
\fen|Add2|adder|result_node|cs_buffer[4]~I_pathsel\ <= "0110010010";
\p1|i[27]~I_modesel\ <= "1000001";
\p1|i[27]~I_pathsel\ <= "0000001000";
\p1|i[26]~I_modesel\ <= "1000001";
\p1|i[26]~I_pathsel\ <= "0000001000";
\p1|i[25]~I_modesel\ <= "1000001";
\p1|i[25]~I_pathsel\ <= "0000001000";
\p1|i[24]~I_modesel\ <= "1000001";
\p1|i[24]~I_pathsel\ <= "0000001000";
\p1|Equal0~373_I_modesel\ <= "1000001";
\p1|Equal0~373_I_pathsel\ <= "0000001111";
\p1|i[31]~I_modesel\ <= "1000001";
\p1|i[31]~I_pathsel\ <= "0000001000";
\p1|i[30]~I_modesel\ <= "1000001";
\p1|i[30]~I_pathsel\ <= "0000001000";
\p1|i[29]~I_modesel\ <= "1000001";
\p1|i[29]~I_pathsel\ <= "0000001000";
\p1|i[28]~I_modesel\ <= "1000001";
\p1|i[28]~I_pathsel\ <= "0000001000";
\p1|Equal0~381_I_modesel\ <= "1000001";
\p1|Equal0~381_I_pathsel\ <= "0000001111";
\p1|i[19]~I_modesel\ <= "1000001";
\p1|i[19]~I_pathsel\ <= "0000001000";
\p1|i[18]~I_modesel\ <= "1000001";
\p1|i[18]~I_pathsel\ <= "0000001000";
\p1|i[17]~I_modesel\ <= "1000001";
\p1|i[17]~I_pathsel\ <= "0000001000";
\p1|i[16]~I_modesel\ <= "1000001";
\p1|i[16]~I_pathsel\ <= "0000001000";
\p1|Equal0~375_I_modesel\ <= "1000001";
\p1|Equal0~375_I_pathsel\ <= "0000001111";
\p1|i[23]~I_modesel\ <= "1000001";
\p1|i[23]~I_pathsel\ <= "0000001000";
\p1|i[22]~I_modesel\ <= "1000001";
\p1|i[22]~I_pathsel\ <= "0000001000";
\p1|i[21]~I_modesel\ <= "1000001";
\p1|i[21]~I_pathsel\ <= "0000001000";
\p1|i[20]~I_modesel\ <= "1000001";
\p1|i[20]~I_pathsel\ <= "0000001000";
\p1|Equal0~382_I_modesel\ <= "1000001";
\p1|Equal0~382_I_pathsel\ <= "0000001111";
\p1|i[11]~I_modesel\ <= "1000001";
\p1|i[11]~I_pathsel\ <= "0000001000";
\p1|i[10]~I_modesel\ <= "1000001";
\p1|i[10]~I_pathsel\ <= "0000001000";
\p1|i[9]~I_modesel\ <= "1000001";
\p1|i[9]~I_pathsel\ <= "0000001000";
\p1|i[8]~I_modesel\ <= "1000001";
\p1|i[8]~I_pathsel\ <= "0000001000";
\p1|Equal0~377_I_modesel\ <= "1000001";
\p1|Equal0~377_I_pathsel\ <= "0000001111";
\p1|i[15]~I_modesel\ <= "1000001";
\p1|i[15]~I_pathsel\ <= "0000001000";
\p1|i[14]~I_modesel\ <= "1000001";
\p1|i[14]~I_pathsel\ <= "0000001000";
\p1|i[13]~I_modesel\ <= "1000001";
\p1|i[13]~I_pathsel\ <= "0000001000";
\p1|i[12]~I_modesel\ <= "1000001";
\p1|i[12]~I_pathsel\ <= "0000001000";
\p1|Equal0~383_I_modesel\ <= "1000001";
\p1|Equal0~383_I_pathsel\ <= "0000001111";
\p1|i[2]~I_modesel\ <= "1000001";
\p1|i[2]~I_pathsel\ <= "0000001100";
\p1|i[3]~I_modesel\ <= "1000001";
\p1|i[3]~I_pathsel\ <= "0000001000";
\p1|i[1]~I_modesel\ <= "1000001";
\p1|i[1]~I_pathsel\ <= "0000001000";
\p1|i[0]~I_modesel\ <= "1000010";
\p1|i[0]~I_pathsel\ <= "0011000011";
\p1|Equal0~379_I_modesel\ <= "1000001";
\p1|Equal0~379_I_pathsel\ <= "0000001111";
\p1|i[6]~I_modesel\ <= "1000001";
\p1|i[6]~I_pathsel\ <= "0000001100";
\p1|i[5]~I_modesel\ <= "1000001";
\p1|i[5]~I_pathsel\ <= "0000001100";
\p1|i[7]~I_modesel\ <= "1000001";
\p1|i[7]~I_pathsel\ <= "0000001000";
\p1|i[4]~I_modesel\ <= "1000001";
\p1|i[4]~I_pathsel\ <= "0000001000";
\p1|Equal0~384_I_modesel\ <= "1000001";
\p1|Equal0~384_I_pathsel\ <= "0000001111";
\ji|always1~87_I_modesel\ <= "1000001";
\ji|always1~87_I_pathsel\ <= "0000001111";
\pao|k1k~I_modesel\ <= "0100001";
\pao|k1k~I_pathsel\ <= "0000001000";
\pao|k1[0]~56_I_modesel\ <= "1000001";
\pao|k1[0]~56_I_pathsel\ <= "0000001111";
\p1|Equal4~43_I_modesel\ <= "1000001";
\p1|Equal4~43_I_pathsel\ <= "0000001100";
\nao|always0~546_I_modesel\ <= "1000001";
\nao|always0~546_I_pathsel\ <= "0000001111";
\nao|always0~551_I_modesel\ <= "1000001";
\nao|always0~551_I_pathsel\ <= "0000001111";
\fen|i[27]~I_modesel\ <= "1000001";
\fen|i[27]~I_pathsel\ <= "0000001000";
\fen|i[26]~I_modesel\ <= "1000001";
\fen|i[26]~I_pathsel\ <= "0000001000";
\fen|i[25]~I_modesel\ <= "1000001";
\fen|i[25]~I_pathsel\ <= "0000001000";
\fen|i[24]~I_modesel\ <= "1000001";
\fen|i[24]~I_pathsel\ <= "0000001000";
\fen|Equal0~352_I_modesel\ <= "1000001";
\fen|Equal0~352_I_pathsel\ <= "0000001111";
\fen|i[31]~I_modesel\ <= "1000001";
\fen|i[31]~I_pathsel\ <= "0000001000";
\fen|i[30]~I_modesel\ <= "1000001";
\fen|i[30]~I_pathsel\ <= "0000001000";
\fen|i[29]~I_modesel\ <= "1000001";
\fen|i[29]~I_pathsel\ <= "0000001000";
\fen|i[28]~I_modesel\ <= "1000001";
\fen|i[28]~I_pathsel\ <= "0000001000";
\fen|Equal0~360_I_modesel\ <= "1000001";
\fen|Equal0~360_I_pathsel\ <= "0000001111";
\fen|i[19]~I_modesel\ <= "1000001";
\fen|i[19]~I_pathsel\ <= "0000001100";
\fen|i[18]~I_modesel\ <= "1000001";
\fen|i[18]~I_pathsel\ <= "0000001000";
\fen|i[17]~I_modesel\ <= "1000001";
\fen|i[17]~I_pathsel\ <= "0000001000";
\fen|i[16]~I_modesel\ <= "1000001";
\fen|i[16]~I_pathsel\ <= "0000001000";
\fen|Equal0~354_I_modesel\ <= "1000001";
\fen|Equal0~354_I_pathsel\ <= "0000001111";
\fen|i[23]~I_modesel\ <= "1000001";
\fen|i[23]~I_pathsel\ <= "0000001100";
\fen|i[20]~I_modesel\ <= "1000001";
\fen|i[20]~I_pathsel\ <= "0000001100";
\fen|i[22]~I_modesel\ <= "1000001";
\fen|i[22]~I_pathsel\ <= "0000001000";
\fen|i[21]~I_modesel\ <= "1000001";
\fen|i[21]~I_pathsel\ <= "0000001000";
\fen|Equal0~361_I_modesel\ <= "1000001";
\fen|Equal0~361_I_pathsel\ <= "0000001111";
\fen|i[10]~I_modesel\ <= "1000001";
\fen|i[10]~I_pathsel\ <= "0000001100";
\fen|i[9]~I_modesel\ <= "1000001";
\fen|i[9]~I_pathsel\ <= "0000001100";
\fen|i[11]~I_modesel\ <= "1000001";
\fen|i[11]~I_pathsel\ <= "0000001000";
\fen|i[8]~I_modesel\ <= "1000001";
\fen|i[8]~I_pathsel\ <= "0000001000";
\fen|Equal0~356_I_modesel\ <= "1000001";
\fen|Equal0~356_I_pathsel\ <= "0000001111";
\fen|i[15]~I_modesel\ <= "1000001";
\fen|i[15]~I_pathsel\ <= "0000001100";
\fen|i[12]~I_modesel\ <= "1000001";
\fen|i[12]~I_pathsel\ <= "0000001100";
\fen|i[14]~I_modesel\ <= "1000001";
\fen|i[14]~I_pathsel\ <= "0000001000";
\fen|i[13]~I_modesel\ <= "1000001";
\fen|i[13]~I_pathsel\ <= "0000001000";
\fen|Equal0~362_I_modesel\ <= "1000001";
\fen|Equal0~362_I_pathsel\ <= "0000001111";
\fen|i[3]~I_modesel\ <= "1000001";
\fen|i[3]~I_pathsel\ <= "0000001000";
\fen|i[2]~I_modesel\ <= "1000001";
\fen|i[2]~I_pathsel\ <= "0000001000";
\fen|i[1]~I_modesel\ <= "1000001";
\fen|i[1]~I_pathsel\ <= "0000001000";
\fen|i[0]~I_modesel\ <= "1000010";
\fen|i[0]~I_pathsel\ <= "0010000010";
\fen|Equal0~358_I_modesel\ <= "1000001";
\fen|Equal0~358_I_pathsel\ <= "0000001111";
\fen|i[6]~I_modesel\ <= "1000001";
\fen|i[6]~I_pathsel\ <= "0000001000";
\fen|i[5]~I_modesel\ <= "1000001";
\fen|i[5]~I_pathsel\ <= "0000001000";
\fen|i[4]~I_modesel\ <= "1000001";
\fen|i[4]~I_pathsel\ <= "0000001000";
\fen|i[7]~I_modesel\ <= "1000001";
\fen|i[7]~I_pathsel\ <= "0000001100";
\fen|Equal0~363_I_modesel\ <= "1000001";
\fen|Equal0~363_I_pathsel\ <= "0000001111";
\p3|Add0|adder|result_node|cs_buffer[27]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[27]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[26]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[26]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[25]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[25]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[24]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[24]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[30]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[30]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[29]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[29]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[28]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[28]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[19]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[19]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[18]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[18]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[17]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[17]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[16]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[16]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[23]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[23]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[22]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[22]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[21]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[21]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[20]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[20]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[11]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[11]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[10]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[10]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[9]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[9]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[8]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[8]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[15]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[15]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[14]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[14]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[13]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[13]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[12]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[12]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[3]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[3]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[6]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[6]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[5]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[5]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[7]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[7]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|result_node|cs_buffer[4]~I_modesel\ <= "1000010";
\p3|Add0|adder|result_node|cs_buffer[4]~I_pathsel\ <= "0110010010";
\fen|Add2|adder|unreg_res_node[31]~I_modesel\ <= "1000001";
\fen|Add2|adder|unreg_res_node[31]~I_pathsel\ <= "0000011000";
\p2|Selector5~100_I_modesel\ <= "1000001";
\p2|Selector5~100_I_pathsel\ <= "0000001111";
\p1|Add0|adder|result_node|cs_buffer[27]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[27]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[26]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[26]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[25]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[25]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[24]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[24]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[30]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[30]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[29]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[29]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[28]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[28]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[19]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[19]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[18]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[18]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[17]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[17]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[16]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[16]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[23]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[23]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[22]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[22]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[21]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[21]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[20]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[20]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[11]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[11]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[10]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[10]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[9]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[9]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[8]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[8]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[15]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[15]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[14]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[14]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[13]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[13]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[12]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[12]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[3]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[3]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[6]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[6]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[5]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[5]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[7]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[7]~I_pathsel\ <= "0110010010";
\p1|Add0|adder|result_node|cs_buffer[4]~I_modesel\ <= "1000010";
\p1|Add0|adder|result_node|cs_buffer[4]~I_pathsel\ <= "0110010010";
\p3|Selector18~93_I_modesel\ <= "1000001";
\p3|Selector18~93_I_pathsel\ <= "0000001111";
\p2|Selector11~88_I_modesel\ <= "1000001";
\p2|Selector11~88_I_pathsel\ <= "0000001111";
\p3|Selector16~257_I_modesel\ <= "1000001";
\p3|Selector16~257_I_pathsel\ <= "0000001111";
\p3|Selector16~259_I_modesel\ <= "1000001";
\p3|Selector16~259_I_pathsel\ <= "0000001111";
\fen|j[27]~I_modesel\ <= "1000001";
\fen|j[27]~I_pathsel\ <= "0000001000";
\fen|j[26]~I_modesel\ <= "1000001";
\fen|j[26]~I_pathsel\ <= "0000001000";
\fen|j[25]~I_modesel\ <= "1000001";
\fen|j[25]~I_pathsel\ <= "0000001000";
\fen|j[24]~I_modesel\ <= "1000001";
\fen|j[24]~I_pathsel\ <= "0000001000";
\fen|Equal1~352_I_modesel\ <= "1000001";
\fen|Equal1~352_I_pathsel\ <= "0000001111";
\fen|j[31]~I_modesel\ <= "1000001";
\fen|j[31]~I_pathsel\ <= "0000001000";
\fen|j[30]~I_modesel\ <= "1000001";
\fen|j[30]~I_pathsel\ <= "0000001000";
\fen|j[29]~I_modesel\ <= "1000001";
\fen|j[29]~I_pathsel\ <= "0000001000";
\fen|j[28]~I_modesel\ <= "1000001";
\fen|j[28]~I_pathsel\ <= "0000001000";
\fen|Equal1~360_I_modesel\ <= "1000001";
\fen|Equal1~360_I_pathsel\ <= "0000001111";
\fen|j[16]~I_modesel\ <= "1000001";
\fen|j[16]~I_pathsel\ <= "0000001100";
\fen|j[19]~I_modesel\ <= "1000001";
\fen|j[19]~I_pathsel\ <= "0000001000";
\fen|j[18]~I_modesel\ <= "1000001";
\fen|j[18]~I_pathsel\ <= "0000001000";
\fen|j[17]~I_modesel\ <= "1000001";
\fen|j[17]~I_pathsel\ <= "0000001000";
\fen|Equal1~354_I_modesel\ <= "1000001";
\fen|Equal1~354_I_pathsel\ <= "0000001111";
\fen|j[23]~I_modesel\ <= "1000001";
\fen|j[23]~I_pathsel\ <= "0000001000";
\fen|j[22]~I_modesel\ <= "1000001";
\fen|j[22]~I_pathsel\ <= "0000001000";
\fen|j[21]~I_modesel\ <= "1000001";
\fen|j[21]~I_pathsel\ <= "0000001000";
\fen|j[20]~I_modesel\ <= "1000001";
\fen|j[20]~I_pathsel\ <= "0000001000";
\fen|Equal1~361_I_modesel\ <= "1000001";
\fen|Equal1~361_I_pathsel\ <= "0000001111";
\fen|j[10]~I_modesel\ <= "1000001";
\fen|j[10]~I_pathsel\ <= "0000001100";
\fen|j[9]~I_modesel\ <= "1000001";
\fen|j[9]~I_pathsel\ <= "0000001100";
\fen|j[11]~I_modesel\ <= "1000001";
\fen|j[11]~I_pathsel\ <= "0000001000";
\fen|j[8]~I_modesel\ <= "1000001";
\fen|j[8]~I_pathsel\ <= "0000001000";
\fen|Equal1~356_I_modesel\ <= "1000001";
\fen|Equal1~356_I_pathsel\ <= "0000001111";
\fen|j[15]~I_modesel\ <= "1000001";
\fen|j[15]~I_pathsel\ <= "0000001100";
\fen|j[14]~I_modesel\ <= "1000001";
\fen|j[14]~I_pathsel\ <= "0000001000";
\fen|j[13]~I_modesel\ <= "1000001";
\fen|j[13]~I_pathsel\ <= "0000001000";
\fen|j[12]~I_modesel\ <= "1000001";
\fen|j[12]~I_pathsel\ <= "0000001000";
\fen|Equal1~362_I_modesel\ <= "1000001";
\fen|Equal1~362_I_pathsel\ <= "0000001111";
\fen|j[3]~I_modesel\ <= "1000001";
\fen|j[3]~I_pathsel\ <= "0000001000";
\fen|j[2]~I_modesel\ <= "1000001";
\fen|j[2]~I_pathsel\ <= "0000001000";
\fen|j[1]~I_modesel\ <= "1000001";
\fen|j[1]~I_pathsel\ <= "0000001000";
\fen|j[0]~I_modesel\ <= "1000010";
\fen|j[0]~I_pathsel\ <= "0010000010";
\fen|Equal1~358_I_modesel\ <= "1000001";
\fen|Equal1~358_I_pathsel\ <= "0000001111";
\fen|j[7]~I_modesel\ <= "1000001";
\fen|j[7]~I_pathsel\ <= "0000001100";
\fen|j[4]~I_modesel\ <= "1000001";
\fen|j[4]~I_pathsel\ <= "0000001000";
\fen|j[6]~I_modesel\ <= "1000001";
\fen|j[6]~I_pathsel\ <= "0000001000";
\fen|j[5]~I_modesel\ <= "1000001";
\fen|j[5]~I_pathsel\ <= "0000001100";
\fen|Equal1~363_I_modesel\ <= "1000001";
\fen|Equal1~363_I_pathsel\ <= "0000001111";
\fen|Add0|adder|result_node|cs_buffer[27]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[27]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[26]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[26]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[25]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[25]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[24]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[24]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[30]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[30]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[29]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[29]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[28]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[28]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[19]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[19]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[18]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[18]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[17]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[17]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[16]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[16]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[23]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[23]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[20]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[20]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[22]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[22]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[21]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[21]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[10]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[10]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[9]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[9]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[11]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[11]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[8]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[8]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[15]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[15]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[12]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[12]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[14]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[14]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[13]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[13]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[3]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[3]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[6]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[6]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[5]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[5]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[4]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[4]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|result_node|cs_buffer[7]~I_modesel\ <= "1000010";
\fen|Add0|adder|result_node|cs_buffer[7]~I_pathsel\ <= "0110010010";
\p3|Add0|adder|unreg_res_node[31]~I_modesel\ <= "1000001";
\p3|Add0|adder|unreg_res_node[31]~I_pathsel\ <= "0000011000";
\p1|Add0|adder|unreg_res_node[31]~I_modesel\ <= "1000001";
\p1|Add0|adder|unreg_res_node[31]~I_pathsel\ <= "0000011000";
\fen|Add1|adder|result_node|cs_buffer[27]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[27]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[26]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[26]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[25]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[25]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[24]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[24]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[30]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[30]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[29]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[29]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[28]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[28]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[16]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[16]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[19]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[19]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[18]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[18]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[17]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[17]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[23]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[23]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[22]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[22]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[21]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[21]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[20]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[20]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[10]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[10]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[9]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[9]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[11]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[11]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[8]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[8]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[15]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[15]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[14]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[14]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[13]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[13]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[12]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[12]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[3]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[3]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[7]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[7]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[4]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[4]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[6]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[6]~I_pathsel\ <= "0110010010";
\fen|Add1|adder|result_node|cs_buffer[5]~I_modesel\ <= "1000010";
\fen|Add1|adder|result_node|cs_buffer[5]~I_pathsel\ <= "0110010010";
\fen|Add0|adder|unreg_res_node[31]~I_modesel\ <= "1000001";
\fen|Add0|adder|unreg_res_node[31]~I_pathsel\ <= "0000011000";
\fen|Add1|adder|unreg_res_node[31]~I_modesel\ <= "1000001";
\fen|Add1|adder|unreg_res_node[31]~I_pathsel\ <= "0000011000";
\comb_4|mkoo[1]~1_I_modesel\ <= "1000001";
\comb_4|mkoo[1]~1_I_pathsel\ <= "0000001000";
\clk~I_modesel\ <= "01010000001";
\fen|f~I_modesel\ <= "0100001";
\fen|f~I_pathsel\ <= "0000001000";
\comb_4|mkoo[0]~I_modesel\ <= "0100001";
\comb_4|mkoo[0]~I_pathsel\ <= "0000001000";
\fen|f1Hz~I_modesel\ <= "0100001";
\fen|f1Hz~I_pathsel\ <= "0000001000";
\ji|a[0]~I_modesel\ <= "1000001";
\ji|a[0]~I_pathsel\ <= "0000001000";
\ji|a[2]~I_modesel\ <= "1000001";
\ji|a[2]~I_pathsel\ <= "0000001110";
\ji|a[3]~I_modesel\ <= "1000001";
\ji|a[3]~I_pathsel\ <= "0000001111";
\ji|a[1]~I_modesel\ <= "1000001";
\ji|a[1]~I_pathsel\ <= "0000001111";
\ji|Add2|adder|result_node|cs_buffer[0]~I_modesel\ <= "1000010";
\ji|Add2|adder|result_node|cs_buffer[0]~I_pathsel\ <= "0011000011";
\ji|b[0]~I_modesel\ <= "1000001";
\ji|b[0]~I_pathsel\ <= "0000001000";
\ji|Add2|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\ji|Add2|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\ji|b[1]~I_modesel\ <= "1000001";
\ji|b[1]~I_pathsel\ <= "0000001100";
\ji|always1~86_I_modesel\ <= "1000001";
\ji|always1~86_I_pathsel\ <= "0000001111";
\ji|always1~89_I_modesel\ <= "1000001";
\ji|always1~89_I_pathsel\ <= "0000001111";
\ji|Add2|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\ji|Add2|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\ji|b[2]~I_modesel\ <= "1000001";
\ji|b[2]~I_pathsel\ <= "0000001100";
\ji|Add2|adder|unreg_res_node[3]~I_modesel\ <= "1000001";
\ji|Add2|adder|unreg_res_node[3]~I_pathsel\ <= "0000011000";
\ji|b[3]~I_modesel\ <= "1000001";
\ji|b[3]~I_pathsel\ <= "0000001000";
\ji|always1~75_I_modesel\ <= "1000001";
\ji|always1~75_I_pathsel\ <= "0000001100";
\p1|Selector10~221_I_modesel\ <= "1000001";
\p1|Selector10~221_I_pathsel\ <= "0000001111";
\p1|Selector48~1312_I_modesel\ <= "1000001";
\p1|Selector48~1312_I_pathsel\ <= "0000001111";
\key1~I_modesel\ <= "01010000001";
\ji|k1k~I_modesel\ <= "0100001";
\ji|k1k~I_pathsel\ <= "0000001000";
\ji|k1[0]~I_modesel\ <= "1000001";
\ji|k1[0]~I_pathsel\ <= "0000001111";
\comb_4|mkoo[1]~I_modesel\ <= "0100001";
\comb_4|mkoo[1]~I_pathsel\ <= "0000001100";
\p1|delay~I_modesel\ <= "0100001";
\p1|delay~I_pathsel\ <= "0000001000";
\p1|always0~39_I_modesel\ <= "1000001";
\p1|always0~39_I_pathsel\ <= "0000001111";
\p1|o[0]~I_modesel\ <= "1000001";
\p1|o[0]~I_pathsel\ <= "0000001000";
\p1|o[1]~I_modesel\ <= "1000001";
\p1|o[1]~I_pathsel\ <= "0000001100";
\p1|Selector48~1307_I_modesel\ <= "1000001";
\p1|Selector48~1307_I_pathsel\ <= "0000001100";
\key2~I_modesel\ <= "01010000001";
\ji|k2k~I_modesel\ <= "0100001";
\ji|k2k~I_pathsel\ <= "0000001000";
\p1|Equal4~41_I_modesel\ <= "1000001";
\p1|Equal4~41_I_pathsel\ <= "0000001100";
\ji|k2~I_modesel\ <= "1000001";
\ji|k2~I_pathsel\ <= "0000001111";
\ji|cc~501_I_modesel\ <= "1000001";
\ji|cc~501_I_pathsel\ <= "0000001111";
\ji|k1~122_I_modesel\ <= "1000001";
\ji|k1~122_I_pathsel\ <= "0000001111";
\ji|cc[0]~I_modesel\ <= "1000001";
\ji|cc[0]~I_pathsel\ <= "0000001110";
\ji|c_rtl_0|wysi_counter|q[0]~I_modesel\ <= "1001000";
\ji|c_rtl_0|wysi_counter|q[0]~I_pathsel\ <= "1000100000";
\ji|cc[1]~I_modesel\ <= "1000001";
\ji|cc[1]~I_pathsel\ <= "0000001111";
\ji|c_rtl_0|wysi_counter|q[1]~I_modesel\ <= "1001000";
\ji|c_rtl_0|wysi_counter|q[1]~I_pathsel\ <= "1000100000";
\ji|cc~503_I_modesel\ <= "1000001";
\ji|cc~503_I_pathsel\ <= "0000001100";
\ji|Add3~73_I_modesel\ <= "1000001";
\ji|Add3~73_I_pathsel\ <= "0000001111";
\ji|cc[3]~I_modesel\ <= "1000001";
\ji|cc[3]~I_pathsel\ <= "0000001111";
\ji|cc[2]~I_modesel\ <= "1000001";
\ji|cc[2]~I_pathsel\ <= "0000001111";
\ji|c_rtl_0|wysi_counter|q[2]~I_modesel\ <= "1001000";
\ji|c_rtl_0|wysi_counter|q[2]~I_pathsel\ <= "1000100000";
\ji|c_rtl_0|wysi_counter|q[3]~I_modesel\ <= "1001000";
\ji|c_rtl_0|wysi_counter|q[3]~I_pathsel\ <= "0000100000";
\ji|Equal10~26_I_modesel\ <= "1000001";
\ji|Equal10~26_I_pathsel\ <= "0000001111";
\p1|Selector20~23_I_modesel\ <= "1000001";
\p1|Selector20~23_I_pathsel\ <= "0000001111";
\p1|Selector20~24_I_modesel\ <= "1000001";
\p1|Selector20~24_I_pathsel\ <= "0000001111";
\ji|Add4|adder|result_node|cs_buffer[0]~I_modesel\ <= "1000010";
\ji|Add4|adder|result_node|cs_buffer[0]~I_pathsel\ <= "0011000011";
\ji|d[0]~I_modesel\ <= "1000001";
\ji|d[0]~I_pathsel\ <= "0000001000";
\ji|Add4|adder|result_node|cs_buffer[1]~I_modesel\ <= "1000010";
\ji|Add4|adder|result_node|cs_buffer[1]~I_pathsel\ <= "0110010010";
\ji|d[1]~I_modesel\ <= "1000001";
\ji|d[1]~I_pathsel\ <= "0000001100";
\ji|always1~85_I_modesel\ <= "1000001";
\ji|always1~85_I_pathsel\ <= "0000001111";
\ji|always1~88_I_modesel\ <= "1000001";
\ji|always1~88_I_pathsel\ <= "0000001111";
\ji|Add4|adder|result_node|cs_buffer[2]~I_modesel\ <= "1000010";
\ji|Add4|adder|result_node|cs_buffer[2]~I_pathsel\ <= "0110010010";
\ji|d[2]~I_modesel\ <= "1000001";
\ji|d[2]~I_pathsel\ <= "0000001100";
\p1|Selector24~226_I_modesel\ <= "1000001";
\p1|Selector24~226_I_pathsel\ <= "0000001111";
\p1|o[2]~I_modesel\ <= "1000001";
\p1|o[2]~I_pathsel\ <= "0000001110";
\p1|Selector48~1314_I_modesel\ <= "1000001";
\p1|Selector48~1314_I_pathsel\ <= "0000001100";
\p1|Selector48~1319_I_modesel\ <= "1000001";
\p1|Selector48~1319_I_pathsel\ <= "0000001111";
\p1|Selector6~18_I_modesel\ <= "1000001";
\p1|Selector6~18_I_pathsel\ <= "0000001111";
\p1|Selector6~19_I_modesel\ <= "1000001";
\p1|Selector6~19_I_pathsel\ <= "0000001111";
\ji|ee[0]~I_modesel\ <= "1000001";
\ji|ee[0]~I_pathsel\ <= "0000001110";
\ji|ee~439_I_modesel\ <= "1000001";
\ji|ee~439_I_pathsel\ <= "0000001100";
\ji|ff~278_I_modesel\ <= "1000001";
\ji|ff~278_I_pathsel\ <= "0000001111";
\ji|ff[1]~I_modesel\ <= "1000001";
\ji|ff[1]~I_pathsel\ <= "0000001100";
\ji|Equal12~31_I_modesel\ <= "1000001";
\ji|Equal12~31_I_pathsel\ <= "0000001111";
\ji|f_rtl_1|wysi_counter|q[0]~I_modesel\ <= "1001000";
\ji|f_rtl_1|wysi_counter|q[0]~I_pathsel\ <= "1000100000";
\ji|ff[0]~I_modesel\ <= "1000001";
\ji|ff[0]~I_pathsel\ <= "0000001100";
\ji|f_rtl_1|wysi_counter|q[1]~I_modesel\ <= "1001000";
\ji|f_rtl_1|wysi_counter|q[1]~I_pathsel\ <= "1000100000";
\ji|ff[3]~I_modesel\ <= "1000001";
\ji|ff[3]~I_pathsel\ <= "0000001100";
\ji|ff[2]~I_modesel\ <= "1000001";
\ji|ff[2]~I_pathsel\ <= "0000001100";
\ji|f_rtl_1|wysi_counter|q[2]~I_modesel\ <= "1001000";
\ji|f_rtl_1|wysi_counter|q[2]~I_pathsel\ <= "1000100000";
\ji|f_rtl_1|wysi_counter|q[3]~I_modesel\ <= "1001000";
\ji|f_rtl_1|wysi_counter|q[3]~I_pathsel\ <= "0000100000";
\p1|Selector40~139_I_modesel\ <= "1000001";
\p1|Selector40~139_I_pathsel\ <= "0000001110";
\ji|always0~128_I_modesel\ <= "1000001";
\ji|always0~128_I_pathsel\ <= "0000001111";
\ji|Add5~72_I_modesel\ <= "1000001";
\ji|Add5~72_I_pathsel\ <= "0000001110";
\ji|ee[2]~I_modesel\ <= "1000001";
\ji|ee[2]~I_pathsel\ <= "0000001111";
\ji|e[2]~I_modesel\ <= "1000001";
\ji|e[2]~I_pathsel\ <= "0000001111";
\ji|ee~440_I_modesel\ <= "1000001";
\ji|ee~440_I_pathsel\ <= "0000001111";
\ji|Add5~71_I_modesel\ <= "1000001";
\ji|Add5~71_I_pathsel\ <= "0000001111";
\ji|ee[3]~I_modesel\ <= "1000001";
\ji|ee[3]~I_pathsel\ <= "0000001111";
\ji|e[3]~I_modesel\ <= "1000001";
\ji|e[3]~I_pathsel\ <= "0000001111";
\ji|Equal12~30_I_modesel\ <= "1000001";
\ji|Equal12~30_I_pathsel\ <= "0000001100";
\ji|e~612_I_modesel\ <= "1000001";
\ji|e~612_I_pathsel\ <= "0000001111";
\ji|e[0]~I_modesel\ <= "1000001";
\ji|e[0]~I_pathsel\ <= "0000001111";
\ji|ee[1]~I_modesel\ <= "1000001";
\ji|ee[1]~I_pathsel\ <= "0000001111";
\ji|Add5~70_I_modesel\ <= "1000001";
\ji|Add5~70_I_pathsel\ <= "0000001100";
\ji|e[1]~I_modesel\ <= "1000001";
\ji|e[1]~I_pathsel\ <= "0000001111";
\ji|always1~76_I_modesel\ <= "1000001";
\ji|always1~76_I_pathsel\ <= "0000001110";
\ji|always1~77_I_modesel\ <= "1000001";
\ji|always1~77_I_pathsel\ <= "0000001111";
\p1|Selector39~119_I_modesel\ <= "1000001";
\p1|Selector39~119_I_pathsel\ <= "0000001110";
\p1|Selector40~141_I_modesel\ <= "1000001";
\p1|Selector40~141_I_pathsel\ <= "0000001110";
\p1|Selector34~23_I_modesel\ <= "1000001";
\p1|Selector34~23_I_pathsel\ <= "0000001111";
\p1|Selector34~24_I_modesel\ <= "1000001";
\p1|Selector34~24_I_pathsel\ <= "0000001111";
\p1|Selector48~1318_I_modesel\ <= "1000001";
\p1|Selector48~1318_I_pathsel\ <= "0000001111";
\p1|Selector48~1322_I_modesel\ <= "1000001";
\p1|Selector48~1322_I_pathsel\ <= "0000001111";
\p1|Selector48~1321_I_modesel\ <= "1000001";
\p1|Selector48~1321_I_pathsel\ <= "0000001111";
\p1|display[0]~I_modesel\ <= "1000001";
\p1|display[0]~I_pathsel\ <= "0000001000";
\fen|f100Hz~I_modesel\ <= "0100001";
\fen|f100Hz~I_pathsel\ <= "0000001000";
\pao|c_rtl_4|wysi_counter|q[0]~I_modesel\ <= "1001000";
\pao|c_rtl_4|wysi_counter|q[0]~I_pathsel\ <= "1000100001";
\pao|c_rtl_4|wysi_counter|q[1]~I_modesel\ <= "1001000";
\pao|c_rtl_4|wysi_counter|q[1]~I_pathsel\ <= "1000100001";
\pao|Equal7~24_I_modesel\ <= "1000001";
\pao|Equal7~24_I_pathsel\ <= "0000001111";
\pao|k2[0]~I_modesel\ <= "0100001";
\pao|k2[0]~I_pathsel\ <= "0000001000";
\pao|k2[1]~I_modesel\ <= "0100001";
\pao|k2[1]~I_pathsel\ <= "0000001100";
\pao|k1[1]~I_modesel\ <= "0100001";
\pao|k1[1]~I_pathsel\ <= "0000001100";
\pao|k1[0]~I_modesel\ <= "0100001";
\pao|k1[0]~I_pathsel\ <= "0000001100";
\pao|always1~113_I_modesel\ <= "1000001";
\pao|always1~113_I_pathsel\ <= "0000001111";
\pao|a~180_I_modesel\ <= "1000001";
\pao|a~180_I_pathsel\ <= "0000001110";
\pao|c~122_I_modesel\ <= "1000001";
\pao|c~122_I_pathsel\ <= "0000001110";
\pao|c_rtl_4|wysi_counter|q[2]~I_modesel\ <= "1001000";
\pao|c_rtl_4|wysi_counter|q[2]~I_pathsel\ <= "1000100001";
\p2|Selector20~18_I_modesel\ <= "1000001";
\p2|Selector20~18_I_pathsel\ <= "0000001111";
\p2|Selector20~19_I_modesel\ <= "1000001";
\p2|Selector20~19_I_pathsel\ <= "0000001111";
\pao|a~181_I_modesel\ <= "1000001";
\pao|a~181_I_pathsel\ <= "0000001110";
\pao|a_rtl_2|wysi_counter|q[0]~I_modesel\ <= "1001000";
\pao|a_rtl_2|wysi_counter|q[0]~I_pathsel\ <= "1000100001";
\pao|a_rtl_2|wysi_counter|q[1]~I_modesel\ <= "1001000";
\pao|a_rtl_2|wysi_counter|q[1]~I_pathsel\ <= "1000100001";
\pao|a_rtl_2|wysi_counter|q[2]~I_modesel\ <= "1001000";
\pao|a_rtl_2|wysi_counter|q[2]~I_pathsel\ <= "1000100001";
\pao|Equal5~26_I_modesel\ <= "1000001";
\pao|Equal5~26_I_pathsel\ <= "0000001111";
\pao|b~142_I_modesel\ <= "1000001";
\pao|b~142_I_pathsel\ <= "0000001111";
\pao|b_rtl_3|wysi_counter|q[0]~I_modesel\ <= "1001000";
\pao|b_rtl_3|wysi_counter|q[0]~I_pathsel\ <= "1000100001";
\pao|b_rtl_3|wysi_counter|q[1]~I_modesel\ <= "1001000";
\pao|b_rtl_3|wysi_counter|q[1]~I_pathsel\ <= "1000100001";
\pao|b_rtl_3|wysi_counter|q[2]~I_modesel\ <= "1001000";
\pao|b_rtl_3|wysi_counter|q[2]~I_pathsel\ <= "1000100001";
\p2|Selector13~18_I_modesel\ <= "1000001";
\p2|Selector13~18_I_pathsel\ <= "0000001111";
\p2|Selector13~19_I_modesel\ <= "1000001";
\p2|Selector13~19_I_pathsel\ <= "0000001111";
\pao|e~130_I_modesel\ <= "1000001";
\pao|e~130_I_pathsel\ <= "0000001110";
\pao|e_rtl_6|wysi_counter|q[0]~I_modesel\ <= "1001000";
\pao|e_rtl_6|wysi_counter|q[0]~I_pathsel\ <= "1000100001";
\pao|e_rtl_6|wysi_counter|q[1]~I_modesel\ <= "1001000";
\pao|e_rtl_6|wysi_counter|q[1]~I_pathsel\ <= "1000100001";
\pao|Equal9~12_I_modesel\ <= "1000001";
\pao|Equal9~12_I_pathsel\ <= "0000001111";
\pao|f~192_I_modesel\ <= "1000001";
\pao|f~192_I_pathsel\ <= "0000001111";
\pao|f_rtl_7|wysi_counter|q[0]~I_modesel\ <= "1001000";
\pao|f_rtl_7|wysi_counter|q[0]~I_pathsel\ <= "1000100001";
\pao|f_rtl_7|wysi_counter|q[1]~I_modesel\ <= "1001000";
\pao|f_rtl_7|wysi_counter|q[1]~I_pathsel\ <= "1000100001";
\pao|f_rtl_7|wysi_counter|q[2]~I_modesel\ <= "1001000";
\pao|f_rtl_7|wysi_counter|q[2]~I_pathsel\ <= "1000100001";
\pao|f_rtl_7|wysi_counter|q[3]~I_modesel\ <= "1001000";
\pao|f_rtl_7|wysi_counter|q[3]~I_pathsel\ <= "0000100001";
\p2|Selector54~1844_I_modesel\ <= "1000001";
\p2|Selector54~1844_I_pathsel\ <= "0000001110";
\p2|Selector50~1116_I_modesel\ <= "1000001";
\p2|Selector50~1116_I_pathsel\ <= "0000001110";
\p2|Selector56~1214_I_modesel\ <= "1000001";
\p2|Selector56~1214_I_pathsel\ <= "0000001110";
\p2|Selector34~18_I_modesel\ <= "1000001";
\p2|Selector34~18_I_pathsel\ <= "0000001111";
\p2|Selector34~19_I_modesel\ <= "1000001";
\p2|Selector34~19_I_pathsel\ <= "0000001111";
\pao|d~142_I_modesel\ <= "1000001";
\pao|d~142_I_pathsel\ <= "0000001111";
\pao|d_rtl_5|wysi_counter|q[0]~I_modesel\ <= "1001000";
\pao|d_rtl_5|wysi_counter|q[0]~I_pathsel\ <= "1000100001";
\pao|d_rtl_5|wysi_counter|q[1]~I_modesel\ <= "1001000";
\pao|d_rtl_5|wysi_counter|q[1]~I_pathsel\ <= "1000100001";
\pao|d_rtl_5|wysi_counter|q[2]~I_modesel\ <= "1001000";
\pao|d_rtl_5|wysi_counter|q[2]~I_pathsel\ <= "1000100001";
\p2|Selector53~1202_I_modesel\ <= "1000001";
\p2|Selector53~1202_I_pathsel\ <= "0000001111";
\p2|Selector56~1212_I_modesel\ <= "1000001";
\p2|Selector56~1212_I_pathsel\ <= "0000001111";
\p2|Selector6~18_I_modesel\ <= "1000001";
\p2|Selector6~18_I_pathsel\ <= "0000001111";
\p2|Selector6~19_I_modesel\ <= "1000001";
\p2|Selector6~19_I_pathsel\ <= "0000001111";
\p2|Selector56~1213_I_modesel\ <= "1000001";
\p2|Selector56~1213_I_pathsel\ <= "0000001111";
\p2|Selector56~1217_I_modesel\ <= "1000001";
\p2|Selector56~1217_I_pathsel\ <= "0000001111";
\p2|Selector56~1216_I_modesel\ <= "1000001";
\p2|Selector56~1216_I_pathsel\ <= "0000001111";
\p2|display[0]~I_modesel\ <= "1000001";
\p2|display[0]~I_pathsel\ <= "0000001000";
\nao|k1k~I_modesel\ <= "0100001";
\nao|k1k~I_pathsel\ <= "0000001000";
\nao|k1[0]~I_modesel\ <= "0100001";
\nao|k1[0]~I_pathsel\ <= "0000001110";
\p3|delay~I_modesel\ <= "0100001";
\p3|delay~I_pathsel\ <= "0000001000";
\p1|Equal4~42_I_modesel\ <= "1000001";
\p1|Equal4~42_I_pathsel\ <= "0000001100";
\p3|always0~129_I_modesel\ <= "1000001";
\p3|always0~129_I_pathsel\ <= "0000001110";
\p3|Selector38~1203_I_modesel\ <= "1000001";
\p3|Selector38~1203_I_pathsel\ <= "0000001111";
\nao|cc[0]~I_modesel\ <= "0100001";
\nao|cc[0]~I_pathsel\ <= "0000001000";
\nao|Add1~66_I_modesel\ <= "1000001";
\nao|Add1~66_I_pathsel\ <= "0000001111";
\nao|cc[3]~I_modesel\ <= "0100001";
\nao|cc[3]~I_pathsel\ <= "0000001100";
\nao|Equal7~27_I_modesel\ <= "1000001";
\nao|Equal7~27_I_pathsel\ <= "0000001111";
\nao|cc[1]~I_modesel\ <= "0100001";
\nao|cc[1]~I_pathsel\ <= "0000001110";
\nao|cc[2]~I_modesel\ <= "0100001";
\nao|cc[2]~I_pathsel\ <= "0000001110";
\p3|Selector6~23_I_modesel\ <= "1000001";
\p3|Selector6~23_I_pathsel\ <= "0000001111";
\p3|Selector6~24_I_modesel\ <= "1000001";
\p3|Selector6~24_I_pathsel\ <= "0000001111";
\p3|display[0]~I_modesel\ <= "1000001";
\p3|display[0]~I_pathsel\ <= "0000001111";
\mc|Selector15~87_I_modesel\ <= "1000001";
\mc|Selector15~87_I_pathsel\ <= "0000001110";
\mc|diso[0]~I_modesel\ <= "1000001";
\mc|diso[0]~I_pathsel\ <= "0000001110";
\p1|Selector12~108_I_modesel\ <= "1000001";
\p1|Selector12~108_I_pathsel\ <= "0000001111";
\p1|Selector47~1231_I_modesel\ <= "1000001";
\p1|Selector47~1231_I_pathsel\ <= "0000001111";
\p1|Decoder6~70_I_modesel\ <= "1000001";
\p1|Decoder6~70_I_pathsel\ <= "0000001100";
\p1|Decoder6~69_I_modesel\ <= "1000001";
\p1|Decoder6~69_I_pathsel\ <= "0000001100";
\p1|Selector33~128_I_modesel\ <= "1000001";
\p1|Selector33~128_I_pathsel\ <= "0000001110";
\p1|Selector33~129_I_modesel\ <= "1000001";
\p1|Selector33~129_I_pathsel\ <= "0000001111";
\p1|Selector47~1228_I_modesel\ <= "1000001";
\p1|Selector47~1228_I_pathsel\ <= "0000001111";
\p1|always0~38_I_modesel\ <= "1000001";
\p1|always0~38_I_pathsel\ <= "0000001111";
\p1|Selector48~1306_I_modesel\ <= "1000001";
\p1|Selector48~1306_I_pathsel\ <= "0000001110";
\p1|Selector47~1230_I_modesel\ <= "1000001";
\p1|Selector47~1230_I_pathsel\ <= "0000001111";
\p1|display[1]~I_modesel\ <= "1000001";
\p1|display[1]~I_pathsel\ <= "0000001111";
\pao|a_rtl_2|wysi_counter|q[3]~I_modesel\ <= "1001000";
\pao|a_rtl_2|wysi_counter|q[3]~I_pathsel\ <= "0000100001";
\p2|Selector26~104_I_modesel\ <= "1000001";
\p2|Selector26~104_I_pathsel\ <= "0000001111";
\pao|d_rtl_5|wysi_counter|q[3]~I_modesel\ <= "1001000";
\pao|d_rtl_5|wysi_counter|q[3]~I_pathsel\ <= "0000100001";
\p2|Selector22~115_I_modesel\ <= "1000001";
\p2|Selector22~115_I_pathsel\ <= "0000001100";
\p2|Selector55~1524_I_modesel\ <= "1000001";
\p2|Selector55~1524_I_pathsel\ <= "0000001111";
\p2|Selector55~1527_I_modesel\ <= "1000001";
\p2|Selector55~1527_I_pathsel\ <= "0000001111";
\p2|Selector12~100_I_modesel\ <= "1000001";
\p2|Selector12~100_I_pathsel\ <= "0000001111";
\p2|Selector55~1515_I_modesel\ <= "1000001";
\p2|Selector55~1515_I_pathsel\ <= "0000001100";
\p2|Selector55~1516_I_modesel\ <= "1000001";
\p2|Selector55~1516_I_pathsel\ <= "0000001111";
\pao|c_rtl_4|wysi_counter|q[3]~I_modesel\ <= "1001000";
\pao|c_rtl_4|wysi_counter|q[3]~I_pathsel\ <= "0000100001";
\p2|Selector19~100_I_modesel\ <= "1000001";
\p2|Selector19~100_I_pathsel\ <= "0000001111";
\p2|Selector19~101_I_modesel\ <= "1000001";
\p2|Selector19~101_I_pathsel\ <= "0000001110";
\p2|Selector55~1514_I_modesel\ <= "1000001";
\p2|Selector55~1514_I_pathsel\ <= "0000001111";
\p2|Selector55~1517_I_modesel\ <= "1000001";
\p2|Selector55~1517_I_pathsel\ <= "0000001111";
\p2|Selector55~1526_I_modesel\ <= "1000001";
\p2|Selector55~1526_I_pathsel\ <= "0000001111";
\p2|display[1]~I_modesel\ <= "1000001";
\p2|display[1]~I_pathsel\ <= "0000001000";
\p3|Selector5~131_I_modesel\ <= "1000001";
\p3|Selector5~131_I_pathsel\ <= "0000001111";
\nao|dd[0]~I_modesel\ <= "0100001";
\nao|dd[0]~I_pathsel\ <= "0000001000";
\nao|dd[1]~I_modesel\ <= "0100001";
\nao|dd[1]~I_pathsel\ <= "0000001110";
\nao|Add2~73_I_modesel\ <= "1000001";
\nao|Add2~73_I_pathsel\ <= "0000001100";
\nao|dd[3]~I_modesel\ <= "0100001";
\nao|dd[3]~I_pathsel\ <= "0000001110";
\nao|Equal8~27_I_modesel\ <= "1000001";
\nao|Equal8~27_I_pathsel\ <= "0000001111";
\nao|dd[2]~I_modesel\ <= "0100001";
\nao|dd[2]~I_pathsel\ <= "0000001110";
\p3|Selector12~109_I_modesel\ <= "1000001";
\p3|Selector12~109_I_pathsel\ <= "0000001111";
\p3|always0~130_I_modesel\ <= "1000001";
\p3|always0~130_I_pathsel\ <= "0000001100";
\p3|always0~131_I_modesel\ <= "1000001";
\p3|always0~131_I_pathsel\ <= "0000001111";
\p3|Selector42~851_I_modesel\ <= "1000001";
\p3|Selector42~851_I_pathsel\ <= "0000001110";
\p3|Selector41~1068_I_modesel\ <= "1000001";
\p3|Selector41~1068_I_pathsel\ <= "0000001111";
\nao|k2k~I_modesel\ <= "0100001";
\nao|k2k~I_pathsel\ <= "0000001000";
\nao|k2~I_modesel\ <= "0100001";
\nao|k2~I_pathsel\ <= "0000001110";
\nao|k2~56_I_modesel\ <= "1000001";
\nao|k2~56_I_pathsel\ <= "0000001110";
\nao|ee~959_I_modesel\ <= "1000001";
\nao|ee~959_I_pathsel\ <= "0000001111";
\nao|cc[0]~186_I_modesel\ <= "1000001";
\nao|cc[0]~186_I_pathsel\ <= "0000001111";
\nao|ee~962_I_modesel\ <= "1000001";
\nao|ee~962_I_pathsel\ <= "0000001100";
\nao|ee~958_I_modesel\ <= "1000001";
\nao|ee~958_I_pathsel\ <= "0000001110";
\nao|ff~843_I_modesel\ <= "1000001";
\nao|ff~843_I_pathsel\ <= "0000001110";
\nao|ff[0]~I_modesel\ <= "0100001";
\nao|ff[0]~I_pathsel\ <= "0000001110";
\nao|Add6~48_I_modesel\ <= "1000001";
\nao|Add6~48_I_pathsel\ <= "0000001111";
\nao|ff~844_I_modesel\ <= "1000001";
\nao|ff~844_I_pathsel\ <= "0000001111";
\nao|ff~846_I_modesel\ <= "1000001";
\nao|ff~846_I_pathsel\ <= "0000001111";
\nao|ff~848_I_modesel\ <= "1000001";
\nao|ff~848_I_pathsel\ <= "0000001111";
\nao|ff[1]~I_modesel\ <= "0100001";
\nao|ff[1]~I_pathsel\ <= "0000001000";
\nao|Add4~146_I_modesel\ <= "1000001";
\nao|Add4~146_I_pathsel\ <= "0000001110";
\nao|Add6~49_I_modesel\ <= "1000001";
\nao|Add6~49_I_pathsel\ <= "0000001100";
\nao|ff[2]~I_modesel\ <= "0100001";
\nao|ff[2]~I_pathsel\ <= "0000001110";
\nao|ff~845_I_modesel\ <= "1000001";
\nao|ff~845_I_pathsel\ <= "0000001110";
\nao|ff[3]~I_modesel\ <= "0100001";
\nao|ff[3]~I_pathsel\ <= "0000001110";
\nao|ff~847_I_modesel\ <= "1000001";
\nao|ff~847_I_pathsel\ <= "0000001111";
\nao|Add6~50_I_modesel\ <= "1000001";
\nao|Add6~50_I_pathsel\ <= "0000001111";
\nao|k1[0]~84_I_modesel\ <= "1000001";
\nao|k1[0]~84_I_pathsel\ <= "0000001110";
\nao|ee[0]~I_modesel\ <= "0100001";
\nao|ee[0]~I_pathsel\ <= "0000001110";
\nao|ee~960_I_modesel\ <= "1000001";
\nao|ee~960_I_pathsel\ <= "0000001111";
\nao|always0~527_I_modesel\ <= "1000001";
\nao|always0~527_I_pathsel\ <= "0000001111";
\nao|always0~526_I_modesel\ <= "1000001";
\nao|always0~526_I_pathsel\ <= "0000001111";
\nao|always0~6_I_modesel\ <= "1000001";
\nao|always0~6_I_pathsel\ <= "0000001110";
\nao|Add5~39_I_modesel\ <= "1000001";
\nao|Add5~39_I_pathsel\ <= "0000001100";
\nao|ee~967_I_modesel\ <= "1000001";
\nao|ee~967_I_pathsel\ <= "0000001111";
\nao|ee[2]~I_modesel\ <= "0100001";
\nao|ee[2]~I_pathsel\ <= "0000001000";
\nao|ee~963_I_modesel\ <= "1000001";
\nao|ee~963_I_pathsel\ <= "0000001111";
\nao|ee~964_I_modesel\ <= "1000001";
\nao|ee~964_I_pathsel\ <= "0000001111";
\nao|Add3~66_I_modesel\ <= "1000001";
\nao|Add3~66_I_pathsel\ <= "0000001111";
\nao|ee~961_I_modesel\ <= "1000001";
\nao|ee~961_I_pathsel\ <= "0000001111";
\nao|Equal14~31_I_modesel\ <= "1000001";
\nao|Equal14~31_I_pathsel\ <= "0000001111";
\nao|ee~966_I_modesel\ <= "1000001";
\nao|ee~966_I_pathsel\ <= "0000001111";
\nao|ee[1]~I_modesel\ <= "0100001";
\nao|ee[1]~I_pathsel\ <= "0000001000";
\nao|Equal9~29_I_modesel\ <= "1000001";
\nao|Equal9~29_I_pathsel\ <= "0000001111";
\nao|ee~965_I_modesel\ <= "1000001";
\nao|ee~965_I_pathsel\ <= "0000001111";
\nao|Add5~40_I_modesel\ <= "1000001";
\nao|Add5~40_I_pathsel\ <= "0000001111";
\nao|ee~968_I_modesel\ <= "1000001";
\nao|ee~968_I_pathsel\ <= "0000001111";
\nao|ee[3]~I_modesel\ <= "0100001";
\nao|ee[3]~I_pathsel\ <= "0000001000";
\p3|Selector19~131_I_modesel\ <= "1000001";
\p3|Selector19~131_I_pathsel\ <= "0000001111";
\p3|Selector19~132_I_modesel\ <= "1000001";
\p3|Selector19~132_I_pathsel\ <= "0000001110";
\p3|Selector41~1067_I_modesel\ <= "1000001";
\p3|Selector41~1067_I_pathsel\ <= "0000001111";
\p3|Selector42~849_I_modesel\ <= "1000001";
\p3|Selector42~849_I_pathsel\ <= "0000001111";
\p3|Selector41~1069_I_modesel\ <= "1000001";
\p3|Selector41~1069_I_pathsel\ <= "0000001111";
\p3|Selector41~1071_I_modesel\ <= "1000001";
\p3|Selector41~1071_I_pathsel\ <= "0000001111";
\p3|display[1]~I_modesel\ <= "1000001";
\p3|display[1]~I_pathsel\ <= "0000001000";
\mc|Selector14~87_I_modesel\ <= "1000001";
\mc|Selector14~87_I_pathsel\ <= "0000001110";
\mc|diso[1]~I_modesel\ <= "1000001";
\mc|diso[1]~I_pathsel\ <= "0000001110";
\p1|Selector39~120_I_modesel\ <= "1000001";
\p1|Selector39~120_I_pathsel\ <= "0000001110";
\p1|Selector32~94_I_modesel\ <= "1000001";
\p1|Selector32~94_I_pathsel\ <= "0000001111";
\p1|Selector32~95_I_modesel\ <= "1000001";
\p1|Selector32~95_I_pathsel\ <= "0000001110";
\p1|Selector18~94_I_modesel\ <= "1000001";
\p1|Selector18~94_I_pathsel\ <= "0000001111";
\p1|Selector46~1636_I_modesel\ <= "1000001";
\p1|Selector46~1636_I_pathsel\ <= "0000001111";
\p1|Selector11~107_I_modesel\ <= "1000001";
\p1|Selector11~107_I_pathsel\ <= "0000001110";
\p1|Selector11~108_I_modesel\ <= "1000001";
\p1|Selector11~108_I_pathsel\ <= "0000001111";
\p1|Selector4~89_I_modesel\ <= "1000001";
\p1|Selector4~89_I_pathsel\ <= "0000001111";
\p1|Selector46~1634_I_modesel\ <= "1000001";
\p1|Selector46~1634_I_pathsel\ <= "0000001111";
\p1|Selector25~112_I_modesel\ <= "1000001";
\p1|Selector25~112_I_pathsel\ <= "0000001110";
\p1|Selector25~113_I_modesel\ <= "1000001";
\p1|Selector25~113_I_pathsel\ <= "0000001111";
\p1|Selector46~1635_I_modesel\ <= "1000001";
\p1|Selector46~1635_I_pathsel\ <= "0000001111";
\p1|Selector46~1639_I_modesel\ <= "1000001";
\p1|Selector46~1639_I_pathsel\ <= "0000001111";
\p1|Selector46~1638_I_modesel\ <= "1000001";
\p1|Selector46~1638_I_pathsel\ <= "0000001111";
\p1|display[2]~I_modesel\ <= "1000001";
\p1|display[2]~I_pathsel\ <= "0000001000";
\pao|Equal5~25_I_modesel\ <= "1000001";
\pao|Equal5~25_I_pathsel\ <= "0000001100";
\p2|Selector4~88_I_modesel\ <= "1000001";
\p2|Selector4~88_I_pathsel\ <= "0000001111";
\p2|Selector25~103_I_modesel\ <= "1000001";
\p2|Selector25~103_I_pathsel\ <= "0000001110";
\p2|Selector25~104_I_modesel\ <= "1000001";
\p2|Selector25~104_I_pathsel\ <= "0000001111";
\p2|Selector54~1851_I_modesel\ <= "1000001";
\p2|Selector54~1851_I_pathsel\ <= "0000001111";
\p1|Decoder6~79_I_modesel\ <= "1000001";
\p1|Decoder6~79_I_pathsel\ <= "0000001100";
\p2|Selector54~1849_I_modesel\ <= "1000001";
\p2|Selector54~1849_I_pathsel\ <= "0000001111";
\p2|Selector18~89_I_modesel\ <= "1000001";
\p2|Selector18~89_I_pathsel\ <= "0000001111";
\p2|Selector54~1857_I_modesel\ <= "1000001";
\p2|Selector54~1857_I_pathsel\ <= "0000001111";
\p2|Selector54~1860_I_modesel\ <= "1000001";
\p2|Selector54~1860_I_pathsel\ <= "0000001111";
\p2|Selector54~1850_I_modesel\ <= "1000001";
\p2|Selector54~1850_I_pathsel\ <= "0000001111";
\p2|Selector54~1859_I_modesel\ <= "1000001";
\p2|Selector54~1859_I_pathsel\ <= "0000001111";
\p2|display[2]~I_modesel\ <= "1000001";
\p2|display[2]~I_pathsel\ <= "0000001000";
\p3|Selector4~93_I_modesel\ <= "1000001";
\p3|Selector4~93_I_pathsel\ <= "0000001111";
\p3|Selector11~108_I_modesel\ <= "1000001";
\p3|Selector11~108_I_pathsel\ <= "0000001111";
\p3|Selector40~1249_I_modesel\ <= "1000001";
\p3|Selector40~1249_I_pathsel\ <= "0000001111";
\p3|Selector25~116_I_modesel\ <= "1000001";
\p3|Selector25~116_I_pathsel\ <= "0000001110";
\nao|always0~514_I_modesel\ <= "1000001";
\nao|always0~514_I_pathsel\ <= "0000001110";
\p3|Selector40~1255_I_modesel\ <= "1000001";
\p3|Selector40~1255_I_pathsel\ <= "0000001111";
\p3|Selector40~1258_I_modesel\ <= "1000001";
\p3|Selector40~1258_I_pathsel\ <= "0000001111";
\p3|Selector40~1250_I_modesel\ <= "1000001";
\p3|Selector40~1250_I_pathsel\ <= "0000001111";
\p3|Selector40~1257_I_modesel\ <= "1000001";
\p3|Selector40~1257_I_pathsel\ <= "0000001111";
\p3|display[2]~I_modesel\ <= "1000001";
\p3|display[2]~I_pathsel\ <= "0000001000";
\mc|Selector13~87_I_modesel\ <= "1000001";
\mc|Selector13~87_I_pathsel\ <= "0000001110";
\mc|diso[2]~I_modesel\ <= "1000001";
\mc|diso[2]~I_pathsel\ <= "0000001110";
\p1|Selector45~1291_I_modesel\ <= "1000001";
\p1|Selector45~1291_I_pathsel\ <= "0000001111";
\p1|Selector17~17_I_modesel\ <= "1000001";
\p1|Selector17~17_I_pathsel\ <= "0000001111";
\p1|Selector17~18_I_modesel\ <= "1000001";
\p1|Selector17~18_I_pathsel\ <= "0000001111";
\p1|Selector45~1297_I_modesel\ <= "1000001";
\p1|Selector45~1297_I_pathsel\ <= "0000001111";
\p1|Selector3~12_I_modesel\ <= "1000001";
\p1|Selector3~12_I_pathsel\ <= "0000001111";
\p1|Selector3~13_I_modesel\ <= "1000001";
\p1|Selector3~13_I_pathsel\ <= "0000001111";
\p1|Selector38~117_I_modesel\ <= "1000001";
\p1|Selector38~117_I_pathsel\ <= "0000001110";
\p1|Selector31~17_I_modesel\ <= "1000001";
\p1|Selector31~17_I_pathsel\ <= "0000001111";
\p1|Selector31~18_I_modesel\ <= "1000001";
\p1|Selector31~18_I_pathsel\ <= "0000001111";
\p1|Selector45~1296_I_modesel\ <= "1000001";
\p1|Selector45~1296_I_pathsel\ <= "0000001111";
\p1|Selector45~1300_I_modesel\ <= "1000001";
\p1|Selector45~1300_I_pathsel\ <= "0000001111";
\p1|Selector45~1299_I_modesel\ <= "1000001";
\p1|Selector45~1299_I_pathsel\ <= "0000001111";
\p1|display[3]~I_modesel\ <= "1000001";
\p1|display[3]~I_pathsel\ <= "0000001000";
\p2|Selector17~12_I_modesel\ <= "1000001";
\p2|Selector17~12_I_pathsel\ <= "0000001111";
\p2|Selector17~13_I_modesel\ <= "1000001";
\p2|Selector17~13_I_pathsel\ <= "0000001111";
\p2|Selector10~12_I_modesel\ <= "1000001";
\p2|Selector10~12_I_pathsel\ <= "0000001111";
\p2|Selector10~13_I_modesel\ <= "1000001";
\p2|Selector10~13_I_pathsel\ <= "0000001111";
\p2|Selector53~1205_I_modesel\ <= "1000001";
\p2|Selector53~1205_I_pathsel\ <= "0000001110";
\p2|Selector31~12_I_modesel\ <= "1000001";
\p2|Selector31~12_I_pathsel\ <= "0000001111";
\p2|Selector31~13_I_modesel\ <= "1000001";
\p2|Selector31~13_I_pathsel\ <= "0000001111";
\p2|Selector53~1203_I_modesel\ <= "1000001";
\p2|Selector53~1203_I_pathsel\ <= "0000001111";
\p2|Selector3~12_I_modesel\ <= "1000001";
\p2|Selector3~12_I_pathsel\ <= "0000001111";
\p2|Selector3~13_I_modesel\ <= "1000001";
\p2|Selector3~13_I_pathsel\ <= "0000001111";
\p2|Selector53~1204_I_modesel\ <= "1000001";
\p2|Selector53~1204_I_pathsel\ <= "0000001111";
\p2|Selector53~1208_I_modesel\ <= "1000001";
\p2|Selector53~1208_I_pathsel\ <= "0000001111";
\p2|Selector53~1207_I_modesel\ <= "1000001";
\p2|Selector53~1207_I_pathsel\ <= "0000001111";
\p2|display[3]~I_modesel\ <= "1000001";
\p2|display[3]~I_pathsel\ <= "0000001000";
\p3|Selector3~17_I_modesel\ <= "1000001";
\p3|Selector3~17_I_pathsel\ <= "0000001111";
\p3|Selector3~18_I_modesel\ <= "1000001";
\p3|Selector3~18_I_pathsel\ <= "0000001111";
\p3|display[3]~I_modesel\ <= "1000001";
\p3|display[3]~I_pathsel\ <= "0000001111";
\mc|Selector12~87_I_modesel\ <= "1000001";
\mc|Selector12~87_I_pathsel\ <= "0000001110";
\mc|diso[3]~I_modesel\ <= "1000001";
\mc|diso[3]~I_pathsel\ <= "0000001110";
\ji|Add4|adder|unreg_res_node[3]~I_modesel\ <= "1000001";
\ji|Add4|adder|unreg_res_node[3]~I_pathsel\ <= "0000011000";
\ji|d[3]~I_modesel\ <= "1000001";
\ji|d[3]~I_pathsel\ <= "0000001000";
\p1|Selector23~81_I_modesel\ <= "1000001";
\p1|Selector23~81_I_pathsel\ <= "0000001111";
\p1|Selector23~82_I_modesel\ <= "1000001";
\p1|Selector23~82_I_pathsel\ <= "0000001111";
\p1|Selector44~2046_I_modesel\ <= "1000001";
\p1|Selector44~2046_I_pathsel\ <= "0000001111";
\p1|Selector44~2053_I_modesel\ <= "1000001";
\p1|Selector44~2053_I_pathsel\ <= "0000001111";
\p1|Selector44~2055_I_modesel\ <= "1000001";
\p1|Selector44~2055_I_pathsel\ <= "0000001111";
\p1|Selector44~2041_I_modesel\ <= "1000001";
\p1|Selector44~2041_I_pathsel\ <= "0000001111";
\p1|Selector44~2042_I_modesel\ <= "1000001";
\p1|Selector44~2042_I_pathsel\ <= "0000001111";
\p1|Selector44~2044_I_modesel\ <= "1000001";
\p1|Selector44~2044_I_pathsel\ <= "0000001111";
\p1|Selector44~2045_I_modesel\ <= "1000001";
\p1|Selector44~2045_I_pathsel\ <= "0000001111";
\p1|display[4]~I_modesel\ <= "1000001";
\p1|display[4]~I_pathsel\ <= "0000001111";
\pao|b_rtl_3|wysi_counter|q[3]~I_modesel\ <= "1001000";
\pao|b_rtl_3|wysi_counter|q[3]~I_pathsel\ <= "0000100001";
\p2|Selector52~3150_I_modesel\ <= "1000001";
\p2|Selector52~3150_I_pathsel\ <= "0000001111";
\p2|Selector52~3151_I_modesel\ <= "1000001";
\p2|Selector52~3151_I_pathsel\ <= "0000001111";
\p2|Selector52~3148_I_modesel\ <= "1000001";
\p2|Selector52~3148_I_pathsel\ <= "0000001111";
\p2|Selector52~3147_I_modesel\ <= "1000001";
\p2|Selector52~3147_I_pathsel\ <= "0000001111";
\p2|Selector52~3149_I_modesel\ <= "1000001";
\p2|Selector52~3149_I_pathsel\ <= "0000001111";
\p2|Selector52~3152_I_modesel\ <= "1000001";
\p2|Selector52~3152_I_pathsel\ <= "0000001110";
\p2|Selector52~3154_I_modesel\ <= "1000001";
\p2|Selector52~3154_I_pathsel\ <= "0000001111";
\p2|Selector52~3144_I_modesel\ <= "1000001";
\p2|Selector52~3144_I_pathsel\ <= "0000001110";
\p2|Selector52~3146_I_modesel\ <= "1000001";
\p2|Selector52~3146_I_pathsel\ <= "0000001111";
\p2|display[4]~I_modesel\ <= "1000001";
\p2|display[4]~I_pathsel\ <= "0000001110";
\p3|Selector2~257_I_modesel\ <= "1000001";
\p3|Selector2~257_I_pathsel\ <= "0000001111";
\p3|Selector2~259_I_modesel\ <= "1000001";
\p3|Selector2~259_I_pathsel\ <= "0000001111";
\p3|display[4]~I_modesel\ <= "1000001";
\p3|display[4]~I_pathsel\ <= "0000001111";
\mc|Selector11~87_I_modesel\ <= "1000001";
\mc|Selector11~87_I_pathsel\ <= "0000001110";
\mc|diso[4]~I_modesel\ <= "1000001";
\mc|diso[4]~I_pathsel\ <= "0000001110";
\p1|Selector43~1386_I_modesel\ <= "1000001";
\p1|Selector43~1386_I_pathsel\ <= "0000001111";
\p1|Selector29~23_I_modesel\ <= "1000001";
\p1|Selector29~23_I_pathsel\ <= "0000001111";
\p1|Selector29~24_I_modesel\ <= "1000001";
\p1|Selector29~24_I_pathsel\ <= "0000001111";
\p1|Selector15~23_I_modesel\ <= "1000001";
\p1|Selector15~23_I_pathsel\ <= "0000001111";
\p1|Selector15~24_I_modesel\ <= "1000001";
\p1|Selector15~24_I_pathsel\ <= "0000001111";
\p1|Selector8~116_I_modesel\ <= "1000001";
\p1|Selector8~116_I_pathsel\ <= "0000001110";
\p1|Selector8~117_I_modesel\ <= "1000001";
\p1|Selector8~117_I_pathsel\ <= "0000001111";
\p1|Selector43~1383_I_modesel\ <= "1000001";
\p1|Selector43~1383_I_pathsel\ <= "0000001111";
\p1|Selector43~1385_I_modesel\ <= "1000001";
\p1|Selector43~1385_I_pathsel\ <= "0000001111";
\p1|Selector43~1388_I_modesel\ <= "1000001";
\p1|Selector43~1388_I_pathsel\ <= "0000001111";
\p1|display[5]~I_modesel\ <= "1000001";
\p1|display[5]~I_pathsel\ <= "0000001000";
\p2|Selector29~18_I_modesel\ <= "1000001";
\p2|Selector29~18_I_pathsel\ <= "0000001111";
\p2|Selector29~19_I_modesel\ <= "1000001";
\p2|Selector29~19_I_pathsel\ <= "0000001111";
\p2|Selector15~18_I_modesel\ <= "1000001";
\p2|Selector15~18_I_pathsel\ <= "0000001111";
\p2|Selector15~19_I_modesel\ <= "1000001";
\p2|Selector15~19_I_pathsel\ <= "0000001111";
\p2|Selector40~44_I_modesel\ <= "1000001";
\p2|Selector40~44_I_pathsel\ <= "0000001100";
\p2|Selector51~1308_I_modesel\ <= "1000001";
\p2|Selector51~1308_I_pathsel\ <= "0000001111";
\p2|Selector51~1309_I_modesel\ <= "1000001";
\p2|Selector51~1309_I_pathsel\ <= "0000001111";
\p2|Selector8~18_I_modesel\ <= "1000001";
\p2|Selector8~18_I_pathsel\ <= "0000001111";
\p2|Selector8~19_I_modesel\ <= "1000001";
\p2|Selector8~19_I_pathsel\ <= "0000001111";
\p2|Selector51~1310_I_modesel\ <= "1000001";
\p2|Selector51~1310_I_pathsel\ <= "0000001111";
\p2|Selector51~1313_I_modesel\ <= "1000001";
\p2|Selector51~1313_I_pathsel\ <= "0000001111";
\p2|display[5]~I_modesel\ <= "1000001";
\p2|display[5]~I_pathsel\ <= "0000001000";
\p3|Selector1~23_I_modesel\ <= "1000001";
\p3|Selector1~23_I_pathsel\ <= "0000001111";
\p3|Selector1~24_I_modesel\ <= "1000001";
\p3|Selector1~24_I_pathsel\ <= "0000001111";
\p3|display[5]~I_modesel\ <= "1000001";
\p3|display[5]~I_pathsel\ <= "0000001111";
\mc|Selector10~87_I_modesel\ <= "1000001";
\mc|Selector10~87_I_pathsel\ <= "0000001110";
\mc|diso[5]~I_modesel\ <= "1000001";
\mc|diso[5]~I_pathsel\ <= "0000001110";
\p1|Selector21~98_I_modesel\ <= "1000001";
\p1|Selector21~98_I_pathsel\ <= "0000001111";
\p1|Selector42~1162_I_modesel\ <= "1000001";
\p1|Selector42~1162_I_pathsel\ <= "0000001110";
\p1|Selector42~1164_I_modesel\ <= "1000001";
\p1|Selector42~1164_I_pathsel\ <= "0000001111";
\p1|Selector28~23_I_modesel\ <= "1000001";
\p1|Selector28~23_I_pathsel\ <= "0000001111";
\p1|Selector28~24_I_modesel\ <= "1000001";
\p1|Selector28~24_I_pathsel\ <= "0000001111";
\p1|Selector14~23_I_modesel\ <= "1000001";
\p1|Selector14~23_I_pathsel\ <= "0000001111";
\p1|Selector14~24_I_modesel\ <= "1000001";
\p1|Selector14~24_I_pathsel\ <= "0000001111";
\p1|Selector42~1160_I_modesel\ <= "1000001";
\p1|Selector42~1160_I_pathsel\ <= "0000001110";
\p1|Selector42~1161_I_modesel\ <= "1000001";
\p1|Selector42~1161_I_pathsel\ <= "0000001111";
\p1|display[6]~I_modesel\ <= "1000001";
\p1|display[6]~I_pathsel\ <= "0000001111";
\p2|Selector7~26_I_modesel\ <= "1000001";
\p2|Selector7~26_I_pathsel\ <= "0000001111";
\p2|Selector7~25_I_modesel\ <= "1000001";
\p2|Selector7~25_I_pathsel\ <= "0000001100";
\p2|Selector7~27_I_modesel\ <= "1000001";
\p2|Selector7~27_I_pathsel\ <= "0000001111";
\p2|Selector0~29_I_modesel\ <= "1000001";
\p2|Selector0~29_I_pathsel\ <= "0000001111";
\p2|Selector0~28_I_modesel\ <= "1000001";
\p2|Selector0~28_I_pathsel\ <= "0000001100";
\p2|Selector0~30_I_modesel\ <= "1000001";
\p2|Selector0~30_I_pathsel\ <= "0000001111";
\p2|Selector50~1121_I_modesel\ <= "1000001";
\p2|Selector50~1121_I_pathsel\ <= "0000001111";
\p2|Selector50~1122_I_modesel\ <= "1000001";
\p2|Selector50~1122_I_pathsel\ <= "0000001111";
\p2|Selector50~1119_I_modesel\ <= "1000001";
\p2|Selector50~1119_I_pathsel\ <= "0000001111";
\p2|Selector50~1117_I_modesel\ <= "1000001";
\p2|Selector50~1117_I_pathsel\ <= "0000001110";
\p2|Selector50~1118_I_modesel\ <= "1000001";
\p2|Selector50~1118_I_pathsel\ <= "0000001111";
\p2|Selector50~1120_I_modesel\ <= "1000001";
\p2|Selector50~1120_I_pathsel\ <= "0000001111";
\p2|display[6]~I_modesel\ <= "1000001";
\p2|display[6]~I_pathsel\ <= "0000001111";
\p3|Selector7~95_I_modesel\ <= "1000001";
\p3|Selector7~95_I_pathsel\ <= "0000001111";
\p3|Selector36~1092_I_modesel\ <= "1000001";
\p3|Selector36~1092_I_pathsel\ <= "0000001111";
\p3|Selector0~30_I_modesel\ <= "1000001";
\p3|Selector0~30_I_pathsel\ <= "0000001111";
\p3|Selector0~31_I_modesel\ <= "1000001";
\p3|Selector0~31_I_pathsel\ <= "0000001111";
\p3|Selector36~1091_I_modesel\ <= "1000001";
\p3|Selector36~1091_I_pathsel\ <= "0000001111";
\p3|display[6]~I_modesel\ <= "1000001";
\p3|display[6]~I_pathsel\ <= "0000001111";
\mc|Selector9~87_I_modesel\ <= "1000001";
\mc|Selector9~87_I_pathsel\ <= "0000001110";
\mc|diso[6]~I_modesel\ <= "1000001";
\mc|diso[6]~I_pathsel\ <= "0000001110";
\p1|led_dig[0]~I_modesel\ <= "1000001";
\p1|led_dig[0]~I_pathsel\ <= "0000001110";
\mc|lego[0]~I_modesel\ <= "1000001";
\mc|lego[0]~I_pathsel\ <= "0000001000";
\p1|led_dig[1]~I_modesel\ <= "1000001";
\p1|led_dig[1]~I_pathsel\ <= "0000001110";
\mc|lego[1]~I_modesel\ <= "1000001";
\mc|lego[1]~I_pathsel\ <= "0000001000";
\p1|led_dig[2]~I_modesel\ <= "1000001";
\p1|led_dig[2]~I_pathsel\ <= "0000001110";
\mc|lego[2]~I_modesel\ <= "1000001";
\mc|lego[2]~I_pathsel\ <= "0000001000";
\p1|led_dig[3]~I_modesel\ <= "1000001";
\p1|led_dig[3]~I_pathsel\ <= "0000001110";
\mc|lego[3]~I_modesel\ <= "1000001";
\mc|lego[3]~I_pathsel\ <= "0000001000";
\p1|led_dig[4]~I_modesel\ <= "1000001";
\p1|led_dig[4]~I_pathsel\ <= "0000001110";
\mc|lego[4]~I_modesel\ <= "1000001";
\mc|lego[4]~I_pathsel\ <= "0000001000";
\p1|led_dig[5]~I_modesel\ <= "1000001";
\p1|led_dig[5]~I_pathsel\ <= "0000001110";
\mc|lego[5]~I_modesel\ <= "1000001";
\mc|lego[5]~I_pathsel\ <= "0000001000";
\p1|led_dig[6]~I_modesel\ <= "1000001";
\p1|led_dig[6]~I_pathsel\ <= "0000001110";
\mc|lego[6]~I_modesel\ <= "1000001";
\mc|lego[6]~I_pathsel\ <= "0000001000";
\p1|led_dig[7]~I_modesel\ <= "1000001";
\p1|led_dig[7]~I_pathsel\ <= "0000001110";
\mc|lego[7]~I_modesel\ <= "1000001";
\mc|lego[7]~I_pathsel\ <= "0000001000";
\p4|r[0]~I_modesel\ <= "0100001";
\p4|r[0]~I_pathsel\ <= "0000001000";
\p4|r[1]~I_modesel\ <= "0100001";
\p4|r[1]~I_pathsel\ <= "0000001100";
\p4|r[2]~I_modesel\ <= "0100001";
\p4|r[2]~I_pathsel\ <= "0000001110";
\nao|always0~544_I_modesel\ <= "1000001";
\nao|always0~544_I_pathsel\ <= "0000001111";
\nao|always0~550_I_modesel\ <= "1000001";
\nao|always0~550_I_pathsel\ <= "0000001111";
\nao|always0~542_I_modesel\ <= "1000001";
\nao|always0~542_I_pathsel\ <= "0000001111";
\nao|always0~549_I_modesel\ <= "1000001";
\nao|always0~549_I_pathsel\ <= "0000001111";
\nao|always0~540_I_modesel\ <= "1000001";
\nao|always0~540_I_pathsel\ <= "0000001111";
\nao|always0~548_I_modesel\ <= "1000001";
\nao|always0~548_I_pathsel\ <= "0000001111";
\nao|linerow~I_modesel\ <= "1000001";
\nao|linerow~I_pathsel\ <= "0000001111";
\p4|line[0]~I_modesel\ <= "1000001";
\p4|line[0]~I_pathsel\ <= "0000001111";
\p4|line[1]~I_modesel\ <= "1000001";
\p4|line[1]~I_pathsel\ <= "0000001111";
\p4|line[2]~I_modesel\ <= "1000001";
\p4|line[2]~I_pathsel\ <= "0000001111";
\p4|line[3]~I_modesel\ <= "1000001";
\p4|line[3]~I_pathsel\ <= "0000001111";
\p4|line[4]~I_modesel\ <= "1000001";
\p4|line[4]~I_pathsel\ <= "0000001111";
\p4|line[5]~I_modesel\ <= "1000001";
\p4|line[5]~I_pathsel\ <= "0000001111";
\p4|line[6]~I_modesel\ <= "1000001";
\p4|line[6]~I_pathsel\ <= "0000001111";
\p4|line[7]~I_modesel\ <= "1000001";
\p4|line[7]~I_pathsel\ <= "0000001111";
\p4|row[0]~I_modesel\ <= "1000001";
\p4|row[0]~I_pathsel\ <= "0000001111";
\p4|row[1]~I_modesel\ <= "1000001";
\p4|row[1]~I_pathsel\ <= "0000001111";
\p4|row[2]~I_modesel\ <= "1000001";
\p4|row[2]~I_pathsel\ <= "0000001110";
\p4|row[1]~331_I_modesel\ <= "1000001";
\p4|row[1]~331_I_pathsel\ <= "0000001111";
\p4|row[2]~332_I_modesel\ <= "1000001";
\p4|row[2]~332_I_pathsel\ <= "0000001110";
\p4|row[2]~333_I_modesel\ <= "1000001";
\p4|row[2]~333_I_pathsel\ <= "0000001110";
\p4|row[6]~I_modesel\ <= "1000001";
\p4|row[6]~I_pathsel\ <= "0000001110";
\p4|row[0]~334_I_modesel\ <= "1000001";
\p4|row[0]~334_I_pathsel\ <= "0000001111";
\dis[0]~I_modesel\ <= "10010000010";
\dis[1]~I_modesel\ <= "10010000010";
\dis[2]~I_modesel\ <= "10010000010";
\dis[3]~I_modesel\ <= "10010000010";
\dis[4]~I_modesel\ <= "10010000010";
\dis[5]~I_modesel\ <= "10010000010";
\dis[6]~I_modesel\ <= "10010000010";
\dis[7]~I_modesel\ <= "10010000010";
\leg[0]~I_modesel\ <= "10010000010";
\leg[1]~I_modesel\ <= "10010000010";
\leg[2]~I_modesel\ <= "10010000010";
\leg[3]~I_modesel\ <= "10010000010";
\leg[4]~I_modesel\ <= "10010000010";
\leg[5]~I_modesel\ <= "10010000010";
\leg[6]~I_modesel\ <= "10010000010";
\leg[7]~I_modesel\ <= "10010000010";
\line[0]~I_modesel\ <= "10010000010";
\line[1]~I_modesel\ <= "10010000010";
\line[2]~I_modesel\ <= "10010000010";
\line[3]~I_modesel\ <= "10010000010";
\line[4]~I_modesel\ <= "10010000010";
\line[5]~I_modesel\ <= "10010000010";
\line[6]~I_modesel\ <= "10010000010";
\line[7]~I_modesel\ <= "10010000010";
\row[0]~I_modesel\ <= "10010000010";
\row[1]~I_modesel\ <= "10010000010";
\row[2]~I_modesel\ <= "10010000010";
\row[3]~I_modesel\ <= "10010000010";
\row[4]~I_modesel\ <= "10010000010";
\row[5]~I_modesel\ <= "10010000010";
\row[6]~I_modesel\ <= "10010000010";
\row[7]~I_modesel\ <= "10010000010";

lcell_ff_enable_asynch_arcs : AND1
PORT MAP (
	 IN1 => GND,
	 Y => lcell_ff_enable_asynch_arcs_out);

-- atom is at PIN_191
\modkey~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "from_pin",
--	operation_mode => "input",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => GND,
	modesel => \modkey~I_modesel\,
	dataout => \modkey~dataout\,
	padio => ww_modkey);

-- atom is at LC1_E5
\fen|Equal2~339_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~339\ = \fen|Equal2~363\ & \fen|Equal2~362\ & \fen|Equal2~361\ & \fen|Equal2~360\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~339_I_pathsel\,
	dataa => \fen|Equal2~363\,
	datab => \fen|Equal2~362\,
	datac => \fen|Equal2~361\,
	datad => \fen|Equal2~360\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal2~339_I_modesel\,
	combout => \fen|Equal2~339\);

-- atom is at LC7_F23
\p1|WideOr54~9_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|WideOr54~9\ = \ji|f_rtl_1|wysi_counter|q[3]\ # \ji|f_rtl_1|wysi_counter|q[2]\ # \ji|f_rtl_1|wysi_counter|q[1]\ & \ji|f_rtl_1|wysi_counter|q[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FEEE",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|WideOr54~9_I_pathsel\,
	dataa => \ji|f_rtl_1|wysi_counter|q[3]\,
	datab => \ji|f_rtl_1|wysi_counter|q[2]\,
	datac => \ji|f_rtl_1|wysi_counter|q[1]\,
	datad => \ji|f_rtl_1|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|WideOr54~9_I_modesel\,
	combout => \p1|WideOr54~9\);

-- atom is at LC5_F21
\p1|Selector19~132_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector19~132\ = \ji|c_rtl_0|wysi_counter|q[3]\ & !\ji|c_rtl_0|wysi_counter|q[2]\ & !\ji|c_rtl_0|wysi_counter|q[1]\ # !\ji|c_rtl_0|wysi_counter|q[3]\ & (\ji|c_rtl_0|wysi_counter|q[1]\ $ !\ji|c_rtl_0|wysi_counter|q[0]\ # 
-- !\ji|c_rtl_0|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector19~132_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \ji|c_rtl_0|wysi_counter|q[2]\,
	datac => \ji|c_rtl_0|wysi_counter|q[1]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector19~132_I_modesel\,
	combout => \p1|Selector19~132\);

-- atom is at LC7_F21
\p1|Selector47~1232_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector47~1232\ = \p1|Selector48~1307\ & (\p1|Selector19~132\ # \ji|c_rtl_0|wysi_counter|q[3]\ & \p1|display[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector47~1232_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \p1|display[1]\,
	datac => \p1|Selector19~132\,
	datad => \p1|Selector48~1307\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector47~1232_I_modesel\,
	combout => \p1|Selector47~1232\);

-- atom is at LC3_F27
\p1|Selector37~117_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector37~117\ = \p1|Selector40~139\ # !\p1|Selector39~119\ & \p1|display[4]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector37~117_I_pathsel\,
	dataa => VCC,
	datab => \p1|Selector39~119\,
	datac => \p1|display[4]\,
	datad => \p1|Selector40~139\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector37~117_I_modesel\,
	combout => \p1|Selector37~117\);

-- atom is at LC4_F27
\p1|Selector30~253_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector30~253\ = \ji|e[3]\ & \p1|display[4]\ & (\ji|e[2]\ # \ji|e[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector30~253_I_pathsel\,
	dataa => \ji|e[2]\,
	datab => \ji|e[1]\,
	datac => \ji|e[3]\,
	datad => \p1|display[4]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector30~253_I_modesel\,
	combout => \p1|Selector30~253\);

-- atom is at LC5_F27
\p1|Selector30~254_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector30~254\ = !\ji|e[0]\ & (\ji|e[1]\ & !\ji|e[3]\ # !\ji|e[1]\ & (!\ji|e[2]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1105",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector30~254_I_pathsel\,
	dataa => \ji|e[0]\,
	datab => \ji|e[3]\,
	datac => \ji|e[2]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector30~254_I_modesel\,
	combout => \p1|Selector30~254\);

-- atom is at LC6_F27
\p1|Selector44~2047_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2047\ = \p1|o[0]\ & (\p1|Selector37~117\) # !\p1|o[0]\ & (\p1|Selector30~254\ # \p1|Selector30~253\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2047_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p1|Selector30~254\,
	datac => \p1|Selector30~253\,
	datad => \p1|Selector37~117\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2047_I_modesel\,
	combout => \p1|Selector44~2047\);

-- atom is at LC7_F27
\p1|Selector44~2048_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2048\ = !\p1|always0~38\ & \p1|o[1]\ & \p1|Selector44~2047\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2048_I_pathsel\,
	dataa => VCC,
	datab => \p1|always0~38\,
	datac => \p1|o[1]\,
	datad => \p1|Selector44~2047\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2048_I_modesel\,
	combout => \p1|Selector44~2048\);

-- atom is at LC6_B28
\nao|k1[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k1[1]\ = DFFEA(\nao|k1[1]\ $ (\nao|k1[0]\ & !\nao|k1k\), \fen|f1Hz\, , , \nao|k1[1]~87\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "F03C",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k1[1]~I_pathsel\,
	dataa => \nao|k1[1]~87\,
	datab => \nao|k1[0]\,
	datac => \nao|k1[1]\,
	datad => \nao|k1k\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k1[1]~I_modesel\,
	regout => \nao|k1[1]\);

-- atom is at LC2_B7
\p3|Selector21~119_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector21~119\ = \p3|Selector25~116\ & (\nao|ff[1]\ & \nao|always0~514\) # !\p3|Selector25~116\ & (\p3|display[6]\ # \nao|ff[1]\ & \nao|always0~514\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector21~119_I_pathsel\,
	dataa => \p3|Selector25~116\,
	datab => \p3|display[6]\,
	datac => \nao|ff[1]\,
	datad => \nao|always0~514\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector21~119_I_modesel\,
	combout => \p3|Selector21~119\);

-- atom is at LC3_B7
\p3|Selector14~30_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector14~30\ = \nao|ee[3]\ & \nao|ee[2]\ # !\nao|ee[3]\ & (\nao|ee[2]\ & (!\nao|ee[0]\ # !\nao|ee[1]\) # !\nao|ee[2]\ & \nao|ee[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CDC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector14~30_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[1]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector14~30_I_modesel\,
	combout => \p3|Selector14~30\);

-- atom is at LC4_B7
\p3|Selector14~31_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector14~31\ = \nao|ee[3]\ & (\p3|display[6]\ # !\p3|Selector14~30\ & !\nao|ee[1]\) # !\nao|ee[3]\ & \p3|Selector14~30\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector14~31_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \p3|Selector14~30\,
	datac => \p3|display[6]\,
	datad => \nao|ee[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector14~31_I_modesel\,
	combout => \p3|Selector14~31\);

-- atom is at LC1_B7
\p3|Selector36~1093_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector36~1093\ = \p1|o[0]\ & (\p3|Selector21~119\) # !\p1|o[0]\ & \p3|Selector14~31\ & \p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "EA40",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector36~1093_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p3|Selector14~31\,
	datac => \p1|o[1]\,
	datad => \p3|Selector21~119\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector36~1093_I_modesel\,
	combout => \p3|Selector36~1093\);

-- atom is at LC1_B17
\p3|Selector36~1094_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector36~1094\ = \p3|Selector36~1093\ & (!\p1|Equal4~42\ # !\p3|delay\ # !\nao|k1[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector36~1094_I_pathsel\,
	dataa => \nao|k1[0]\,
	datab => \p3|delay\,
	datac => \p1|Equal4~42\,
	datad => \p3|Selector36~1093\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector36~1094_I_modesel\,
	combout => \p3|Selector36~1094\);

-- atom is at LC1_E25
\p2|Selector14~25_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector14~25\ = \pao|c_rtl_4|wysi_counter|q[0]\ & \pao|c_rtl_4|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector14~25_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|c_rtl_4|wysi_counter|q[0]\,
	datad => \pao|c_rtl_4|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector14~25_I_modesel\,
	combout => \p2|Selector14~25\);

-- atom is at LC7_E25
\p2|Selector14~26_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector14~26\ = \pao|c_rtl_4|wysi_counter|q[2]\ & \pao|c_rtl_4|wysi_counter|q[3]\ # !\pao|c_rtl_4|wysi_counter|q[2]\ & (\pao|c_rtl_4|wysi_counter|q[3]\ & (\p2|display[6]\ # !\pao|c_rtl_4|wysi_counter|q[1]\) # !\pao|c_rtl_4|wysi_counter|q[3]\ & 
-- \pao|c_rtl_4|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DC9C",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector14~26_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[2]\,
	datab => \pao|c_rtl_4|wysi_counter|q[3]\,
	datac => \pao|c_rtl_4|wysi_counter|q[1]\,
	datad => \p2|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector14~26_I_modesel\,
	combout => \p2|Selector14~26\);

-- atom is at LC6_E25
\p2|Selector14~27_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector14~27\ = \p2|Selector14~26\ & (\p2|display[6]\ # !\pao|c_rtl_4|wysi_counter|q[2]\) # !\p2|Selector14~26\ & (\pao|c_rtl_4|wysi_counter|q[2]\ & !\p2|Selector14~25\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8CBC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector14~27_I_pathsel\,
	dataa => \p2|display[6]\,
	datab => \p2|Selector14~26\,
	datac => \pao|c_rtl_4|wysi_counter|q[2]\,
	datad => \p2|Selector14~25\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector14~27_I_modesel\,
	combout => \p2|Selector14~27\);

-- atom is at LC5_E32
\p2|Selector28~25_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector28~25\ = \pao|e_rtl_6|wysi_counter|q[0]\ & \pao|e_rtl_6|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector28~25_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|e_rtl_6|wysi_counter|q[0]\,
	datad => \pao|e_rtl_6|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector28~25_I_modesel\,
	combout => \p2|Selector28~25\);

-- atom is at LC3_E26
\pao|e_rtl_6|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|e_rtl_6|wysi_counter|q[2]\ = DFFEA((\pao|e_rtl_6|wysi_counter|q[2]\ $ (\pao|e[0]~129\ & \pao|e_rtl_6|wysi_counter|counter_cell[1]~COUT\)) & \pao|e~130\, \fen|f100Hz\, , , , , )
-- \pao|e_rtl_6|wysi_counter|counter_cell[2]~COUT\ = CARRY(\pao|e_rtl_6|wysi_counter|q[2]\ & (\pao|e_rtl_6|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|e_rtl_6|wysi_counter|q[2]~I_pathsel\,
	dataa => \pao|e[0]~129\,
	datab => \pao|e~130\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|e_rtl_6|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \pao|e_rtl_6|wysi_counter|q[2]~I_modesel\,
	regout => \pao|e_rtl_6|wysi_counter|q[2]\,
	cout => \pao|e_rtl_6|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC4_E26
\pao|e_rtl_6|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|e_rtl_6|wysi_counter|q[3]\ = DFFEA((\pao|e_rtl_6|wysi_counter|q[3]\ $ (\pao|e[0]~129\ & \pao|e_rtl_6|wysi_counter|counter_cell[2]~COUT\)) & \pao|e~130\, \fen|f100Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6C6C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|e_rtl_6|wysi_counter|q[3]~I_pathsel\,
	dataa => \pao|e[0]~129\,
	datab => \pao|e~130\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|e_rtl_6|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \pao|e_rtl_6|wysi_counter|q[3]~I_modesel\,
	regout => \pao|e_rtl_6|wysi_counter|q[3]\);

-- atom is at LC5_E35
\p2|Selector28~26_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector28~26\ = \pao|e_rtl_6|wysi_counter|q[2]\ & \pao|e_rtl_6|wysi_counter|q[3]\ # !\pao|e_rtl_6|wysi_counter|q[2]\ & (\pao|e_rtl_6|wysi_counter|q[3]\ & (\p2|display[6]\ # !\pao|e_rtl_6|wysi_counter|q[1]\) # !\pao|e_rtl_6|wysi_counter|q[3]\ & 
-- \pao|e_rtl_6|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DC9C",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector28~26_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[2]\,
	datab => \pao|e_rtl_6|wysi_counter|q[3]\,
	datac => \pao|e_rtl_6|wysi_counter|q[1]\,
	datad => \p2|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector28~26_I_modesel\,
	combout => \p2|Selector28~26\);

-- atom is at LC6_E32
\p2|Selector28~27_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector28~27\ = \p2|Selector28~26\ & (\p2|display[6]\ # !\pao|e_rtl_6|wysi_counter|q[2]\) # !\p2|Selector28~26\ & (\pao|e_rtl_6|wysi_counter|q[2]\ & !\p2|Selector28~25\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8CBC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector28~27_I_pathsel\,
	dataa => \p2|display[6]\,
	datab => \p2|Selector28~26\,
	datac => \pao|e_rtl_6|wysi_counter|q[2]\,
	datad => \p2|Selector28~25\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector28~27_I_modesel\,
	combout => \p2|Selector28~27\);

-- atom is at LC7_E32
\p2|Selector50~1123_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1123\ = \p1|o[0]\ & !\p1|o[2]\ & (\p2|Selector14~27\) # !\p1|o[0]\ & (\p2|Selector28~27\ # !\p1|o[2]\ & \p2|Selector14~27\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7350",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1123_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p1|o[2]\,
	datac => \p2|Selector28~27\,
	datad => \p2|Selector14~27\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1123_I_modesel\,
	combout => \p2|Selector50~1123\);

-- atom is at LC5_F29
\p1|Selector42~1163_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1163\ = \ji|b[3]\ & (\p1|display[6]\) # !\ji|b[3]\ & (\ji|b[1]\ & (\p1|display[6]\ # !\ji|b[2]\) # !\ji|b[1]\ & \ji|b[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE14",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1163_I_pathsel\,
	dataa => \ji|b[3]\,
	datab => \ji|b[1]\,
	datac => \ji|b[2]\,
	datad => \p1|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector42~1163_I_modesel\,
	combout => \p1|Selector42~1163\);

-- atom is at LC5_D10
\p3|Equal0~360_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~360\ = \p3|Equal0~384\ & \p3|Equal0~383\ & \p3|Equal0~382\ & \p3|Equal0~381\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~360_I_pathsel\,
	dataa => \p3|Equal0~384\,
	datab => \p3|Equal0~383\,
	datac => \p3|Equal0~382\,
	datad => \p3|Equal0~381\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Equal0~360_I_modesel\,
	combout => \p3|Equal0~360\);

-- atom is at LC4_F15
\p1|Equal0~360_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~360\ = \p1|Equal0~384\ & \p1|Equal0~383\ & \p1|Equal0~382\ & \p1|Equal0~381\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~360_I_pathsel\,
	dataa => \p1|Equal0~384\,
	datab => \p1|Equal0~383\,
	datac => \p1|Equal0~382\,
	datad => \p1|Equal0~381\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal0~360_I_modesel\,
	combout => \p1|Equal0~360\);

-- atom is at LC1_E18
\pao|f[0]~190_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f[0]~190\ = !\pao|Equal9~12\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f[0]~190_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|Equal9~12\,
	datad => \pao|always1~113\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|f[0]~190_I_modesel\,
	combout => \pao|f[0]~190\);

-- atom is at LC1_D28
\pao|f~191_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f~191\ = \pao|f_rtl_7|wysi_counter|q[1]\ # \pao|f_rtl_7|wysi_counter|q[3]\ # !\pao|f_rtl_7|wysi_counter|q[0]\ # !\pao|f_rtl_7|wysi_counter|q[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF7",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f~191_I_pathsel\,
	dataa => \pao|f_rtl_7|wysi_counter|q[2]\,
	datab => \pao|f_rtl_7|wysi_counter|q[0]\,
	datac => \pao|f_rtl_7|wysi_counter|q[1]\,
	datad => \pao|f_rtl_7|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|f~191_I_modesel\,
	combout => \pao|f~191\);

-- atom is at LC2_E13
\pao|b[0]~141_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|b[0]~141\ = !\pao|Equal5~26\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|b[0]~141_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|Equal5~26\,
	datad => \pao|always1~113\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|b[0]~141_I_modesel\,
	combout => \pao|b[0]~141\);

-- atom is at LC3_E13
\pao|always1~114_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|always1~114\ = \pao|b_rtl_3|wysi_counter|q[2]\ # \pao|b_rtl_3|wysi_counter|q[1]\ # !\pao|b_rtl_3|wysi_counter|q[0]\ # !\pao|b_rtl_3|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF7",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|always1~114_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[0]\,
	datac => \pao|b_rtl_3|wysi_counter|q[2]\,
	datad => \pao|b_rtl_3|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|always1~114_I_modesel\,
	combout => \pao|always1~114\);

-- atom is at LC5_E10
\pao|d[0]~141_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|d[0]~141\ = !\pao|Equal7~24\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|d[0]~141_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|Equal7~24\,
	datad => \pao|always1~113\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|d[0]~141_I_modesel\,
	combout => \pao|d[0]~141\);

-- atom is at LC6_E10
\pao|always1~115_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|always1~115\ = \pao|d_rtl_5|wysi_counter|q[3]\ # \pao|d_rtl_5|wysi_counter|q[1]\ # !\pao|d_rtl_5|wysi_counter|q[0]\ # !\pao|d_rtl_5|wysi_counter|q[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF7",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|always1~115_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[2]\,
	datab => \pao|d_rtl_5|wysi_counter|q[0]\,
	datac => \pao|d_rtl_5|wysi_counter|q[3]\,
	datad => \pao|d_rtl_5|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|always1~115_I_modesel\,
	combout => \pao|always1~115\);

-- atom is at LC1_E13
\pao|c[0]~121_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|c[0]~121\ = !\pao|always1~114\ & !\pao|Equal5~26\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0300",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|c[0]~121_I_pathsel\,
	dataa => VCC,
	datab => \pao|always1~114\,
	datac => \pao|Equal5~26\,
	datad => \pao|always1~113\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|c[0]~121_I_modesel\,
	combout => \pao|c[0]~121\);

-- atom is at LC7_E10
\pao|e[0]~129_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|e[0]~129\ = !\pao|always1~115\ & !\pao|Equal7~24\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0300",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|e[0]~129_I_pathsel\,
	dataa => VCC,
	datab => \pao|always1~115\,
	datac => \pao|Equal7~24\,
	datad => \pao|always1~113\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|e[0]~129_I_modesel\,
	combout => \pao|e[0]~129\);

-- atom is at LC7_C18
\fen|Equal0~339_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~339\ = \fen|Equal0~363\ & \fen|Equal0~362\ & \fen|Equal0~361\ & \fen|Equal0~360\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~339_I_pathsel\,
	dataa => \fen|Equal0~363\,
	datab => \fen|Equal0~362\,
	datac => \fen|Equal0~361\,
	datad => \fen|Equal0~360\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal0~339_I_modesel\,
	combout => \fen|Equal0~339\);

-- atom is at LC4_B29
\nao|cc[0]~11_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|cc[0]~11\ = \nao|cc[0]~186\ & \p1|Equal4~42\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|cc[0]~11_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|cc[0]~186\,
	datad => \p1|Equal4~42\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|cc[0]~11_I_modesel\,
	combout => \nao|cc[0]~11\);

-- atom is at LC5_B22
\p3|Selector20~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector20~23\ = \nao|ee[3]\ & \nao|ee[2]\ # !\nao|ee[3]\ & (\nao|ee[1]\ # \nao|ee[2]\ $ !\nao|ee[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector20~23_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[1]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector20~23_I_modesel\,
	combout => \p3|Selector20~23\);

-- atom is at LC3_B22
\p3|Selector20~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector20~24\ = \nao|ee[3]\ & (\p3|display[0]\ # !\p3|Selector20~23\ & !\nao|ee[1]\) # !\nao|ee[3]\ & \p3|Selector20~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector20~24_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \p3|Selector20~23\,
	datac => \p3|display[0]\,
	datad => \nao|ee[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector20~24_I_modesel\,
	combout => \p3|Selector20~24\);

-- atom is at LC3_B8
\p3|Selector26~134_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector26~134\ = \nao|always0~514\ # !\p3|Selector25~116\ & \p3|display[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector26~134_I_pathsel\,
	dataa => VCC,
	datab => \p3|Selector25~116\,
	datac => \p3|display[0]\,
	datad => \nao|always0~514\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector26~134_I_modesel\,
	combout => \p3|Selector26~134\);

-- atom is at LC7_B8
\p3|Selector42~850_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector42~857\ = \p1|o[0]\ & !\p3|Selector26~134\ # !\p1|o[0]\ & (!\p3|Selector20~24\) # !\p3|Selector42~849\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector42~850_I_pathsel\,
	dataa => \p3|Selector42~849\,
	datab => \p3|Selector26~134\,
	datac => \p3|Selector20~24\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector42~850_I_modesel\,
	cascout => \p3|Selector42~857\);

-- atom is at LC6_B20
\p3|Selector8~119_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector8~119\ = !\nao|dd[3]\ & !\nao|dd[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector8~119_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|dd[3]\,
	datad => \nao|dd[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector8~119_I_modesel\,
	combout => \p3|Selector8~119\);

-- atom is at LC8_B4
\p3|Selector10~222_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector10~222\ = !\nao|dd[3]\ & (\nao|dd[2]\ $ (\nao|dd[1]\ # !\nao|dd[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1411",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector10~222_I_pathsel\,
	dataa => \nao|dd[3]\,
	datab => \nao|dd[2]\,
	datac => \nao|dd[1]\,
	datad => \nao|dd[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector10~222_I_modesel\,
	combout => \p3|Selector10~222\);

-- atom is at LC8_B8
\p3|Selector42~853_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector42~853\ = (!\p3|Selector10~222\ & (\p3|Selector8~119\ # !\p3|display[0]\) # !\p3|Selector42~851\) & CASCADE(\p3|Selector42~857\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector42~853_I_pathsel\,
	dataa => \p3|Selector42~851\,
	datab => \p3|Selector10~222\,
	datac => \p3|display[0]\,
	datad => \p3|Selector8~119\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector42~857\,
	modesel => \p3|Selector42~853_I_modesel\,
	combout => \p3|Selector42~853\);

-- atom is at LC5_E5
\fen|k[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[27]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[27]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[27]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[27]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[27]~I_modesel\,
	regout => \fen|k[27]\);

-- atom is at LC8_E5
\fen|k[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[26]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[26]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[26]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[26]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[26]~I_modesel\,
	regout => \fen|k[26]\);

-- atom is at LC1_E15
\fen|k[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[25]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[25]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[25]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[25]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[25]~I_modesel\,
	regout => \fen|k[25]\);

-- atom is at LC2_B2
\fen|k[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[24]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[24]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[24]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[24]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[24]~I_modesel\,
	regout => \fen|k[24]\);

-- atom is at LC3_E5
\fen|Equal2~352_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~370\ = !\fen|k[24]\ & !\fen|k[25]\ & !\fen|k[26]\ & !\fen|k[27]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~352_I_pathsel\,
	dataa => \fen|k[24]\,
	datab => \fen|k[25]\,
	datac => \fen|k[26]\,
	datad => \fen|k[27]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal2~352_I_modesel\,
	cascout => \fen|Equal2~370\);

-- atom is at LC5_E11
\fen|k[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[31]\ = DFFEA(\fen|Add2|adder|unreg_res_node[31]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|unreg_res_node[31]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[31]~I_modesel\,
	regout => \fen|k[31]\);

-- atom is at LC8_E14
\fen|k[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[30]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[30]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[30]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[30]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[30]~I_modesel\,
	regout => \fen|k[30]\);

-- atom is at LC1_C11
\fen|k[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[29]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[29]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[29]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[29]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[29]~I_modesel\,
	regout => \fen|k[29]\);

-- atom is at LC2_E12
\fen|k[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[28]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[28]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[28]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[28]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[28]~I_modesel\,
	regout => \fen|k[28]\);

-- atom is at LC4_E5
\fen|Equal2~360_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~360\ = (!\fen|k[28]\ & !\fen|k[29]\ & !\fen|k[30]\ & !\fen|k[31]\) & CASCADE(\fen|Equal2~370\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~360_I_pathsel\,
	dataa => \fen|k[28]\,
	datab => \fen|k[29]\,
	datac => \fen|k[30]\,
	datad => \fen|k[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal2~370\,
	modesel => \fen|Equal2~360_I_modesel\,
	combout => \fen|Equal2~360\);

-- atom is at LC2_E5
\fen|k[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[19]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[19]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[19]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[19]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[19]~I_modesel\,
	regout => \fen|k[19]\);

-- atom is at LC2_D14
\fen|k[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[18]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[18]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[18]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[18]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[18]~I_modesel\,
	regout => \fen|k[18]\);

-- atom is at LC6_E7
\fen|k[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[17]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[17]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[17]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[17]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[17]~I_modesel\,
	regout => \fen|k[17]\);

-- atom is at LC7_D7
\fen|k[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[16]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[16]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[16]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[16]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[16]~I_modesel\,
	regout => \fen|k[16]\);

-- atom is at LC6_E5
\fen|Equal2~354_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~373\ = !\fen|k[16]\ & !\fen|k[17]\ & !\fen|k[18]\ & !\fen|k[19]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~354_I_pathsel\,
	dataa => \fen|k[16]\,
	datab => \fen|k[17]\,
	datac => \fen|k[18]\,
	datad => \fen|k[19]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal2~354_I_modesel\,
	cascout => \fen|Equal2~373\);

-- atom is at LC3_C17
\fen|k[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[23]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[23]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[23]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[23]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[23]~I_modesel\,
	regout => \fen|k[23]\);

-- atom is at LC1_E17
\fen|k[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[22]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[22]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[22]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[22]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[22]~I_modesel\,
	regout => \fen|k[22]\);

-- atom is at LC6_E1
\fen|k[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[21]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[21]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[21]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[21]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[21]~I_modesel\,
	regout => \fen|k[21]\);

-- atom is at LC2_C8
\fen|k[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[20]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[20]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[20]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[20]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[20]~I_modesel\,
	regout => \fen|k[20]\);

-- atom is at LC7_E5
\fen|Equal2~361_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~361\ = (!\fen|k[20]\ & !\fen|k[21]\ & !\fen|k[22]\ & !\fen|k[23]\) & CASCADE(\fen|Equal2~373\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~361_I_pathsel\,
	dataa => \fen|k[20]\,
	datab => \fen|k[21]\,
	datac => \fen|k[22]\,
	datad => \fen|k[23]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal2~373\,
	modesel => \fen|Equal2~361_I_modesel\,
	combout => \fen|Equal2~361\);

-- atom is at LC5_E9
\fen|k[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[10]\ = DFFEA(!\fen|Equal2~339\ & \fen|Add2|adder|result_node|cs_buffer[10]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[10]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal2~339\,
	datad => \fen|Add2|adder|result_node|cs_buffer[10]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[10]~I_modesel\,
	regout => \fen|k[10]\);

-- atom is at LC7_E9
\fen|k[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[9]\ = DFFEA(!\fen|Equal2~339\ & \fen|Add2|adder|result_node|cs_buffer[9]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[9]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal2~339\,
	datad => \fen|Add2|adder|result_node|cs_buffer[9]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[9]~I_modesel\,
	regout => \fen|k[9]\);

-- atom is at LC2_E9
\fen|k[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[8]\ = DFFEA(!\fen|Equal2~339\ & \fen|Add2|adder|result_node|cs_buffer[8]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[8]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal2~339\,
	datad => \fen|Add2|adder|result_node|cs_buffer[8]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[8]~I_modesel\,
	regout => \fen|k[8]\);

-- atom is at LC1_A16
\fen|k[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[11]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[11]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[11]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[11]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[11]~I_modesel\,
	regout => \fen|k[11]\);

-- atom is at LC3_E9
\fen|Equal2~356_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~376\ = !\fen|k[11]\ & \fen|k[8]\ & \fen|k[9]\ & \fen|k[10]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~356_I_pathsel\,
	dataa => \fen|k[11]\,
	datab => \fen|k[8]\,
	datac => \fen|k[9]\,
	datad => \fen|k[10]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal2~356_I_modesel\,
	cascout => \fen|Equal2~376\);

-- atom is at LC6_E9
\fen|k[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[13]\ = DFFEA(!\fen|Equal2~339\ & \fen|Add2|adder|result_node|cs_buffer[13]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[13]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal2~339\,
	datad => \fen|Add2|adder|result_node|cs_buffer[13]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[13]~I_modesel\,
	regout => \fen|k[13]\);

-- atom is at LC4_A5
\fen|k[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[15]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[15]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[15]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[15]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[15]~I_modesel\,
	regout => \fen|k[15]\);

-- atom is at LC2_E16
\fen|k[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[14]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[14]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[14]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[14]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[14]~I_modesel\,
	regout => \fen|k[14]\);

-- atom is at LC1_B2
\fen|k[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[12]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[12]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[12]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[12]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[12]~I_modesel\,
	regout => \fen|k[12]\);

-- atom is at LC4_E9
\fen|Equal2~362_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~362\ = (!\fen|k[12]\ & !\fen|k[14]\ & !\fen|k[15]\ & \fen|k[13]\) & CASCADE(\fen|Equal2~376\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~362_I_pathsel\,
	dataa => \fen|k[12]\,
	datab => \fen|k[14]\,
	datac => \fen|k[15]\,
	datad => \fen|k[13]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal2~376\,
	modesel => \fen|Equal2~362_I_modesel\,
	combout => \fen|Equal2~362\);

-- atom is at LC4_E3
\fen|k[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[3]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[3]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[3]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[3]~I_modesel\,
	regout => \fen|k[3]\);

-- atom is at LC1_E3
\fen|k[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[2]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[2]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[2]~I_modesel\,
	regout => \fen|k[2]\);

-- atom is at LC8_E3
\fen|k[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[1]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[1]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[1]~I_modesel\,
	regout => \fen|k[1]\);

-- atom is at LC1_E2
\fen|k[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[0]\ = DFFEA(!\fen|k[0]\, GLOBAL(\clk~dataout\), , , , , )
-- \fen|Add2|adder|result_node|cout[0]\ = CARRY(\fen|k[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "33CC",
--	operation_mode => "arithmetic",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[0]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[0]~I_modesel\,
	regout => \fen|k[0]\,
	cout => \fen|Add2|adder|result_node|cout[0]\);

-- atom is at LC2_E3
\fen|Equal2~358_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~379\ = \fen|k[0]\ & \fen|k[1]\ & \fen|k[2]\ & \fen|k[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~358_I_pathsel\,
	dataa => \fen|k[0]\,
	datab => \fen|k[1]\,
	datac => \fen|k[2]\,
	datad => \fen|k[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal2~358_I_modesel\,
	cascout => \fen|Equal2~379\);

-- atom is at LC1_E16
\fen|k[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[7]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[7]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[7]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[7]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[7]~I_modesel\,
	regout => \fen|k[7]\);

-- atom is at LC6_E3
\fen|k[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[6]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[6]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[6]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[6]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[6]~I_modesel\,
	regout => \fen|k[6]\);

-- atom is at LC5_E3
\fen|k[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[5]\ = DFFEA(\fen|Add2|adder|result_node|cs_buffer[5]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add2|adder|result_node|cs_buffer[5]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[5]~I_modesel\,
	regout => \fen|k[5]\);

-- atom is at LC8_E9
\fen|k[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|k[4]\ = DFFEA(!\fen|Equal2~339\ & \fen|Add2|adder|result_node|cs_buffer[4]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|k[4]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal2~339\,
	datad => \fen|Add2|adder|result_node|cs_buffer[4]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|k[4]~I_modesel\,
	regout => \fen|k[4]\);

-- atom is at LC3_E3
\fen|Equal2~363_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal2~363\ = (!\fen|k[4]\ & !\fen|k[5]\ & !\fen|k[6]\ & !\fen|k[7]\) & CASCADE(\fen|Equal2~379\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal2~363_I_pathsel\,
	dataa => \fen|k[4]\,
	datab => \fen|k[5]\,
	datac => \fen|k[6]\,
	datad => \fen|k[7]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal2~379\,
	modesel => \fen|Equal2~363_I_modesel\,
	combout => \fen|Equal2~363\);

-- atom is at LC5_B20
\p3|WideOr33~9_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|WideOr33~9\ = \nao|ff[3]\ # \nao|ff[2]\ # \nao|ff[1]\ & \nao|ff[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FEEE",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|WideOr33~9_I_pathsel\,
	dataa => \nao|ff[3]\,
	datab => \nao|ff[2]\,
	datac => \nao|ff[1]\,
	datad => \nao|ff[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|WideOr33~9_I_modesel\,
	combout => \p3|WideOr33~9\);

-- atom is at LC8_D28
\p2|WideOr57~9_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|WideOr57~9\ = \pao|f_rtl_7|wysi_counter|q[3]\ # \pao|f_rtl_7|wysi_counter|q[2]\ # \pao|f_rtl_7|wysi_counter|q[1]\ & \pao|f_rtl_7|wysi_counter|q[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FEEE",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|WideOr57~9_I_pathsel\,
	dataa => \pao|f_rtl_7|wysi_counter|q[3]\,
	datab => \pao|f_rtl_7|wysi_counter|q[2]\,
	datac => \pao|f_rtl_7|wysi_counter|q[1]\,
	datad => \pao|f_rtl_7|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|WideOr57~9_I_modesel\,
	combout => \p2|WideOr57~9\);

-- atom is at LC8_E35
\p2|Selector33~92_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector33~92\ = \pao|e_rtl_6|wysi_counter|q[3]\ & !\pao|e_rtl_6|wysi_counter|q[2]\ & !\pao|e_rtl_6|wysi_counter|q[1]\ # !\pao|e_rtl_6|wysi_counter|q[3]\ & (\pao|e_rtl_6|wysi_counter|q[1]\ $ !\pao|e_rtl_6|wysi_counter|q[0]\ # 
-- !\pao|e_rtl_6|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector33~92_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[2]\,
	datac => \pao|e_rtl_6|wysi_counter|q[1]\,
	datad => \pao|e_rtl_6|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector33~92_I_modesel\,
	combout => \p2|Selector33~92\);

-- atom is at LC8_E21
\p2|Selector55~1519_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1519\ = \p1|Decoder6~79\ & (\p2|Selector33~92\ # \pao|e_rtl_6|wysi_counter|q[3]\ & \p2|display[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1519_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \p2|display[1]\,
	datac => \p2|Selector33~92\,
	datad => \p1|Decoder6~79\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector55~1519_I_modesel\,
	combout => \p2|Selector55~1519\);

-- atom is at LC7_F36
\ji|always1~81_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~81\ = !\ji|d[3]\ & !\ji|d[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~81_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|d[3]\,
	datad => \ji|d[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~81_I_modesel\,
	combout => \ji|always1~81\);

-- atom is at LC1_F36
\p1|Selector26~113_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector26~113\ = !\ji|d[3]\ & (!\ji|d[0]\ & !\ji|d[1]\ # !\ji|d[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1115",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector26~113_I_pathsel\,
	dataa => \ji|d[3]\,
	datab => \ji|d[2]\,
	datac => \ji|d[0]\,
	datad => \ji|d[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector26~113_I_modesel\,
	combout => \p1|Selector26~113\);

-- atom is at LC3_F26
\p1|Selector47~1237_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector47~1246\ = !\p1|Selector26~113\ & (\ji|always1~81\ # !\p1|display[1]\) # !\p1|Selector48~1314\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector47~1237_I_pathsel\,
	dataa => \p1|Selector48~1314\,
	datab => \p1|Selector26~113\,
	datac => \p1|display[1]\,
	datad => \ji|always1~81\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector47~1237_I_modesel\,
	cascout => \p1|Selector47~1246\);

-- atom is at LC5_F1
\p1|Selector5~127_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector5~127\ = \ji|a[3]\ & !\ji|a[2]\ & !\ji|a[1]\ # !\ji|a[3]\ & (\ji|a[1]\ $ !\ji|a[0]\ # !\ji|a[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector5~127_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \ji|a[2]\,
	datac => \ji|a[1]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector5~127_I_modesel\,
	combout => \p1|Selector5~127\);

-- atom is at LC4_F26
\p1|Selector47~1239_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector47~1239\ = (\p1|o[2]\ # !\p1|Selector5~127\ & (!\p1|display[1]\ # !\ji|a[3]\)) & CASCADE(\p1|Selector47~1246\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF15",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector47~1239_I_pathsel\,
	dataa => \p1|Selector5~127\,
	datab => \ji|a[3]\,
	datac => \p1|display[1]\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector47~1246\,
	modesel => \p1|Selector47~1239_I_modesel\,
	combout => \p1|Selector47~1239\);

-- atom is at LC8_B15
\p3|Selector9~77_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector9~77\ = !\nao|dd[2]\ & !\nao|dd[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector9~77_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|dd[2]\,
	datad => \nao|dd[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector9~77_I_modesel\,
	combout => \p3|Selector9~77\);

-- atom is at LC6_E26
\p2|Selector32~88_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector32~88\ = \pao|e_rtl_6|wysi_counter|q[3]\ & (\p2|display[2]\) # !\pao|e_rtl_6|wysi_counter|q[3]\ & (\pao|e_rtl_6|wysi_counter|q[2]\ # \pao|e_rtl_6|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector32~88_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[2]\,
	datac => \pao|e_rtl_6|wysi_counter|q[0]\,
	datad => \p2|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector32~88_I_modesel\,
	combout => \p2|Selector32~88\);

-- atom is at LC7_E26
\p2|Selector54~1852_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1852\ = \p1|Decoder6~79\ & (\p2|Selector32~88\ # !\pao|e_rtl_6|wysi_counter|q[2]\ & !\pao|e_rtl_6|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1852_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[2]\,
	datab => \pao|e_rtl_6|wysi_counter|q[1]\,
	datac => \p2|Selector32~88\,
	datad => \p1|Decoder6~79\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector54~1852_I_modesel\,
	combout => \p2|Selector54~1852\);

-- atom is at LC6_B22
\p3|Selector17~17_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector17~17\ = \nao|ee[3]\ & \nao|ee[2]\ # !\nao|ee[3]\ & (\nao|ee[2]\ & (\nao|ee[1]\ $ \nao|ee[0]\) # !\nao|ee[2]\ & (\nao|ee[1]\ # !\nao|ee[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector17~17_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[1]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector17~17_I_modesel\,
	combout => \p3|Selector17~17\);

-- atom is at LC2_B22
\p3|Selector17~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector17~18\ = \nao|ee[3]\ & (\p3|display[3]\ # !\p3|Selector17~17\ & !\nao|ee[1]\) # !\nao|ee[3]\ & \p3|Selector17~17\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector17~18_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \p3|Selector17~17\,
	datac => \p3|display[3]\,
	datad => \nao|ee[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector17~18_I_modesel\,
	combout => \p3|Selector17~18\);

-- atom is at LC6_B8
\p3|Selector24~115_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector24~115\ = \nao|always0~514\ # !\p3|Selector25~116\ & \p3|display[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector24~115_I_pathsel\,
	dataa => VCC,
	datab => \p3|Selector25~116\,
	datac => \p3|display[3]\,
	datad => \nao|always0~514\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector24~115_I_modesel\,
	combout => \p3|Selector24~115\);

-- atom is at LC4_B8
\p3|Selector39~833_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector39~838\ = \p1|o[0]\ & !\p3|Selector24~115\ # !\p1|o[0]\ & (!\p3|Selector17~18\) # !\p3|Selector42~849\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector39~833_I_pathsel\,
	dataa => \p3|Selector42~849\,
	datab => \p3|Selector24~115\,
	datac => \p3|Selector17~18\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector39~833_I_modesel\,
	cascout => \p3|Selector39~838\);

-- atom is at LC5_B8
\p3|Selector39~835_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector39~835\ = (!\p3|Selector10~222\ & (\p3|Selector8~119\ # !\p3|display[3]\) # !\p3|Selector42~851\) & CASCADE(\p3|Selector39~838\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector39~835_I_pathsel\,
	dataa => \p3|Selector42~851\,
	datab => \p3|Selector10~222\,
	datac => \p3|display[3]\,
	datad => \p3|Selector8~119\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector39~838\,
	modesel => \p3|Selector39~835_I_modesel\,
	combout => \p3|Selector39~835\);

-- atom is at LC1_B15
\p3|Selector23~115_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector23~115\ = \nao|always0~514\ # !\p3|Selector25~116\ & \p3|display[4]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector23~115_I_pathsel\,
	dataa => VCC,
	datab => \p3|Selector25~116\,
	datac => \p3|display[4]\,
	datad => \nao|always0~514\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector23~115_I_modesel\,
	combout => \p3|Selector23~115\);

-- atom is at LC5_B15
\p3|Selector38~1209_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector38~1215\ = \p1|o[0]\ & !\p3|Selector23~115\ # !\p1|o[0]\ & (\p3|Selector16~259\) # !\p3|Selector42~849\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F75",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector38~1209_I_pathsel\,
	dataa => \p3|Selector42~849\,
	datab => \p3|Selector23~115\,
	datac => \p1|o[0]\,
	datad => \p3|Selector16~259\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector38~1209_I_modesel\,
	cascout => \p3|Selector38~1215\);

-- atom is at LC4_B15
\p3|Selector9~78_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector9~78\ = \p3|display[4]\ & (\nao|dd[3]\ # \nao|dd[2]\ & \nao|dd[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector9~78_I_pathsel\,
	dataa => \nao|dd[2]\,
	datab => \nao|dd[1]\,
	datac => \nao|dd[3]\,
	datad => \p3|display[4]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector9~78_I_modesel\,
	combout => \p3|Selector9~78\);

-- atom is at LC6_B15
\p3|Selector38~1211_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector38~1211\ = (!\p3|Selector9~78\ & (\nao|dd[0]\ # !\p3|Selector9~77\) # !\p3|Selector42~851\) & CASCADE(\p3|Selector38~1215\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector38~1211_I_pathsel\,
	dataa => \p3|Selector42~851\,
	datab => \p3|Selector9~78\,
	datac => \p3|Selector9~77\,
	datad => \nao|dd[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector38~1215\,
	modesel => \p3|Selector38~1211_I_modesel\,
	combout => \p3|Selector38~1211\);

-- atom is at LC5_D25
\pao|k2k~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k2k\ = DFFEA(!\key2~dataout\, GLOBAL(\fen|f\), , , \p1|Equal4~43\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k2k~I_pathsel\,
	dataa => \p1|Equal4~43\,
	datab => VCC,
	datac => VCC,
	datad => \key2~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k2k~I_modesel\,
	regout => \pao|k2k\);

-- atom is at LC2_D25
\pao|k2[1]~22_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k2[1]~22\ = !\comb_4|mkoo[1]\ & !\pao|k2k\ & !\key2~dataout\ & \comb_4|mkoo[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k2[1]~22_I_pathsel\,
	dataa => \comb_4|mkoo[1]\,
	datab => \pao|k2k\,
	datac => \key2~dataout\,
	datad => \comb_4|mkoo[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k2[1]~22_I_modesel\,
	combout => \pao|k2[1]~22\);

-- atom is at LC6_A27
\fen|Equal1~339_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~339\ = \fen|Equal1~363\ & \fen|Equal1~362\ & \fen|Equal1~361\ & \fen|Equal1~360\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~339_I_pathsel\,
	dataa => \fen|Equal1~363\,
	datab => \fen|Equal1~362\,
	datac => \fen|Equal1~361\,
	datad => \fen|Equal1~360\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal1~339_I_modesel\,
	combout => \fen|Equal1~339\);

-- atom is at LC2_E35
\p2|Selector52~3162_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3162\ = \pao|e_rtl_6|wysi_counter|q[3]\ & (\p2|display[4]\ # !\pao|e_rtl_6|wysi_counter|q[2]\ & !\pao|e_rtl_6|wysi_counter|q[1]\) # !\pao|e_rtl_6|wysi_counter|q[3]\ & (\pao|e_rtl_6|wysi_counter|q[1]\ # !\pao|e_rtl_6|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FB53",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3162_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[2]\,
	datac => \pao|e_rtl_6|wysi_counter|q[1]\,
	datad => \p2|display[4]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3162_I_modesel\,
	combout => \p2|Selector52~3162\);

-- atom is at LC1_E27
\p2|Selector52~3163_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3163\ = !\pao|d_rtl_5|wysi_counter|q[0]\ & !\p1|o[1]\ & !\pao|d_rtl_5|wysi_counter|q[2]\ & !\pao|d_rtl_5|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3163_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[0]\,
	datab => \p1|o[1]\,
	datac => \pao|d_rtl_5|wysi_counter|q[2]\,
	datad => \pao|d_rtl_5|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3163_I_modesel\,
	combout => \p2|Selector52~3163\);

-- atom is at LC1_E19
\p2|Selector52~3164_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3186\ = !\p2|Selector52~3163\ & (\pao|e_rtl_6|wysi_counter|q[0]\ # !\p2|Selector52~3162\ # !\p1|o[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5515",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3164_I_pathsel\,
	dataa => \p2|Selector52~3163\,
	datab => \p1|o[1]\,
	datac => \p2|Selector52~3162\,
	datad => \pao|e_rtl_6|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3164_I_modesel\,
	cascout => \p2|Selector52~3186\);

-- atom is at LC4_E27
\p2|Selector52~3165_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3165\ = \pao|d_rtl_5|wysi_counter|q[3]\ # \pao|d_rtl_5|wysi_counter|q[2]\ & \pao|d_rtl_5|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3165_I_pathsel\,
	dataa => VCC,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \pao|d_rtl_5|wysi_counter|q[1]\,
	datad => \pao|d_rtl_5|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3165_I_modesel\,
	combout => \p2|Selector52~3165\);

-- atom is at LC4_E35
\p2|Selector52~3166_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3166\ = \pao|e_rtl_6|wysi_counter|q[3]\ & \pao|e_rtl_6|wysi_counter|q[0]\ & (\pao|e_rtl_6|wysi_counter|q[2]\ # \pao|e_rtl_6|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3166_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[2]\,
	datab => \pao|e_rtl_6|wysi_counter|q[1]\,
	datac => \pao|e_rtl_6|wysi_counter|q[3]\,
	datad => \pao|e_rtl_6|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3166_I_modesel\,
	combout => \p2|Selector52~3166\);

-- atom is at LC2_E19
\p2|Selector52~3170_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3170\ = (\p1|o[1]\ & !\p2|Selector52~3166\ # !\p1|o[1]\ & (!\p2|Selector52~3165\) # !\p2|display[4]\) & CASCADE(\p2|Selector52~3186\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3170_I_pathsel\,
	dataa => \p2|display[4]\,
	datab => \p2|Selector52~3166\,
	datac => \p2|Selector52~3165\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector52~3186\,
	modesel => \p2|Selector52~3170_I_modesel\,
	combout => \p2|Selector52~3170\);

-- atom is at LC6_E19
\p2|Selector52~3168_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3191\ = \pao|c_rtl_4|wysi_counter|q[0]\ # \pao|c_rtl_4|wysi_counter|q[1]\ & (\pao|c_rtl_4|wysi_counter|q[3]\) # !\pao|c_rtl_4|wysi_counter|q[1]\ & \pao|c_rtl_4|wysi_counter|q[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE4",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3168_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[1]\,
	datab => \pao|c_rtl_4|wysi_counter|q[2]\,
	datac => \pao|c_rtl_4|wysi_counter|q[3]\,
	datad => \pao|c_rtl_4|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3168_I_modesel\,
	cascout => \p2|Selector52~3191\);

-- atom is at LC7_E19
\p2|Selector52~3171_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3171\ = (!\pao|c_rtl_4|wysi_counter|q[2]\ & !\pao|c_rtl_4|wysi_counter|q[1]\ # !\p2|display[4]\ # !\pao|c_rtl_4|wysi_counter|q[3]\) & CASCADE(\p2|Selector52~3191\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "777F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3171_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \p2|display[4]\,
	datac => \pao|c_rtl_4|wysi_counter|q[2]\,
	datad => \pao|c_rtl_4|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector52~3191\,
	modesel => \p2|Selector52~3171_I_modesel\,
	combout => \p2|Selector52~3171\);

-- atom is at LC6_F20
\p1|Selector16~261_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector16~266\ = \ji|c_rtl_0|wysi_counter|q[0]\ # \ji|c_rtl_0|wysi_counter|q[1]\ & (\ji|c_rtl_0|wysi_counter|q[3]\) # !\ji|c_rtl_0|wysi_counter|q[1]\ & \ji|c_rtl_0|wysi_counter|q[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE4",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector16~261_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[1]\,
	datab => \ji|c_rtl_0|wysi_counter|q[2]\,
	datac => \ji|c_rtl_0|wysi_counter|q[3]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector16~261_I_modesel\,
	cascout => \p1|Selector16~266\);

-- atom is at LC7_F20
\p1|Selector16~263_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector16~263\ = (!\ji|c_rtl_0|wysi_counter|q[2]\ & !\ji|c_rtl_0|wysi_counter|q[1]\ # !\p1|display[4]\ # !\ji|c_rtl_0|wysi_counter|q[3]\) & CASCADE(\p1|Selector16~266\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "777F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector16~263_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \p1|display[4]\,
	datac => \ji|c_rtl_0|wysi_counter|q[2]\,
	datad => \ji|c_rtl_0|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector16~266\,
	modesel => \p1|Selector16~263_I_modesel\,
	combout => \p1|Selector16~263\);

-- atom is at LC8_B22
\p3|Selector15~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector15~23\ = \nao|ee[3]\ & \nao|ee[1]\ # !\nao|ee[3]\ & (\nao|ee[1]\ & !\nao|ee[0]\ & \nao|ee[2]\ # !\nao|ee[1]\ & (\nao|ee[2]\ # !\nao|ee[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector15~23_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[1]\,
	datac => \nao|ee[0]\,
	datad => \nao|ee[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector15~23_I_modesel\,
	combout => \p3|Selector15~23\);

-- atom is at LC7_B22
\p3|Selector15~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector15~24\ = \nao|ee[3]\ & (\p3|display[5]\ # !\p3|Selector15~23\ & !\nao|ee[2]\) # !\nao|ee[3]\ & \p3|Selector15~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector15~24_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \p3|Selector15~23\,
	datac => \p3|display[5]\,
	datad => \nao|ee[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector15~24_I_modesel\,
	combout => \p3|Selector15~24\);

-- atom is at LC1_B20
\nao|always0~519_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~519\ = !\nao|ff[3]\ & !\nao|ff[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~519_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|ff[3]\,
	datad => \nao|ff[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~519_I_modesel\,
	combout => \nao|always0~519\);

-- atom is at LC2_B20
\p3|Selector37~933_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector37~933\ = \nao|always0~519\ & (\nao|ff[0]\ & \nao|ff[1]\ & \p3|display[5]\ # !\nao|ff[0]\ & !\nao|ff[1]\) # !\nao|always0~519\ & (\p3|display[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "D702",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector37~933_I_pathsel\,
	dataa => \nao|always0~519\,
	datab => \nao|ff[0]\,
	datac => \nao|ff[1]\,
	datad => \p3|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector37~933_I_modesel\,
	combout => \p3|Selector37~933\);

-- atom is at LC1_B25
\p3|Selector37~934_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector37~940\ = \p1|o[0]\ & !\p3|Selector37~933\ # !\p1|o[0]\ & (!\p3|Selector15~24\) # !\p3|Selector42~849\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector37~934_I_pathsel\,
	dataa => \p3|Selector42~849\,
	datab => \p3|Selector37~933\,
	datac => \p3|Selector15~24\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector37~934_I_modesel\,
	cascout => \p3|Selector37~940\);

-- atom is at LC7_B15
\p3|Selector8~120_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector8~120\ = !\nao|dd[3]\ & !\nao|dd[1]\ & (\nao|dd[2]\ # !\nao|dd[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1101",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector8~120_I_pathsel\,
	dataa => \nao|dd[3]\,
	datab => \nao|dd[1]\,
	datac => \nao|dd[0]\,
	datad => \nao|dd[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector8~120_I_modesel\,
	combout => \p3|Selector8~120\);

-- atom is at LC2_B25
\p3|Selector37~936_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector37~936\ = (!\p3|Selector8~120\ & (\p3|Selector9~77\ # !\p3|display[5]\) # !\p3|Selector42~851\) & CASCADE(\p3|Selector37~940\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector37~936_I_pathsel\,
	dataa => \p3|Selector42~851\,
	datab => \p3|Selector8~120\,
	datac => \p3|display[5]\,
	datad => \p3|Selector9~77\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector37~940\,
	modesel => \p3|Selector37~936_I_modesel\,
	combout => \p3|Selector37~936\);

-- atom is at LC7_E27
\p2|Selector22~114_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector22~114\ = \p2|display[5]\ & (\pao|d_rtl_5|wysi_counter|q[2]\ # \pao|d_rtl_5|wysi_counter|q[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector22~114_I_pathsel\,
	dataa => VCC,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \pao|d_rtl_5|wysi_counter|q[3]\,
	datad => \p2|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector22~114_I_modesel\,
	combout => \p2|Selector22~114\);

-- atom is at LC5_E27
\p2|Selector22~116_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector22~116\ = \p2|Selector22~114\ # \p2|Selector22~115\ & (\pao|d_rtl_5|wysi_counter|q[2]\ # !\pao|d_rtl_5|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFD0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector22~116_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[0]\,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \p2|Selector22~115\,
	datad => \p2|Selector22~114\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector22~116_I_modesel\,
	combout => \p2|Selector22~116\);

-- atom is at LC5_E34
\p2|Selector1~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector1~18\ = \pao|a_rtl_2|wysi_counter|q[3]\ & \pao|a_rtl_2|wysi_counter|q[1]\ # !\pao|a_rtl_2|wysi_counter|q[3]\ & (\pao|a_rtl_2|wysi_counter|q[1]\ & !\pao|a_rtl_2|wysi_counter|q[0]\ & \pao|a_rtl_2|wysi_counter|q[2]\ # 
-- !\pao|a_rtl_2|wysi_counter|q[1]\ & (\pao|a_rtl_2|wysi_counter|q[2]\ # !\pao|a_rtl_2|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector1~18_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \pao|a_rtl_2|wysi_counter|q[1]\,
	datac => \pao|a_rtl_2|wysi_counter|q[0]\,
	datad => \pao|a_rtl_2|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector1~18_I_modesel\,
	combout => \p2|Selector1~18\);

-- atom is at LC3_E34
\p2|Selector1~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector1~19\ = \pao|a_rtl_2|wysi_counter|q[3]\ & (\p2|display[5]\ # !\p2|Selector1~18\ & !\pao|a_rtl_2|wysi_counter|q[2]\) # !\pao|a_rtl_2|wysi_counter|q[3]\ & \p2|Selector1~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector1~19_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \p2|Selector1~18\,
	datac => \p2|display[5]\,
	datad => \pao|a_rtl_2|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector1~19_I_modesel\,
	combout => \p2|Selector1~19\);

-- atom is at LC8_E28
\p2|Selector51~1311_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector51~1311\ = !\p1|o[1]\ & (\p1|o[2]\ & (\p2|Selector22~116\) # !\p1|o[2]\ & \p2|Selector1~19\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5410",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector51~1311_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \p1|o[2]\,
	datac => \p2|Selector1~19\,
	datad => \p2|Selector22~116\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector51~1311_I_modesel\,
	combout => \p2|Selector51~1311\);

-- atom is at LC3_F31
\p1|Selector1~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector1~18\ = \ji|a[3]\ & \ji|a[1]\ # !\ji|a[3]\ & (\ji|a[1]\ & !\ji|a[0]\ & \ji|a[2]\ # !\ji|a[1]\ & (\ji|a[2]\ # !\ji|a[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector1~18_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \ji|a[1]\,
	datac => \ji|a[0]\,
	datad => \ji|a[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector1~18_I_modesel\,
	combout => \p1|Selector1~18\);

-- atom is at LC1_F31
\p1|Selector1~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector1~19\ = \ji|a[3]\ & (\p1|display[5]\ # !\p1|Selector1~18\ & !\ji|a[2]\) # !\ji|a[3]\ & \p1|Selector1~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector1~19_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \p1|Selector1~18\,
	datac => \p1|display[5]\,
	datad => \ji|a[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector1~19_I_modesel\,
	combout => \p1|Selector1~19\);

-- atom is at LC3_F36
\p1|Selector22~121_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector22~121\ = \p1|display[5]\ & (\ji|d[2]\ # \ji|d[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector22~121_I_pathsel\,
	dataa => VCC,
	datab => \ji|d[2]\,
	datac => \ji|d[3]\,
	datad => \p1|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector22~121_I_modesel\,
	combout => \p1|Selector22~121\);

-- atom is at LC6_F36
\p1|Selector22~122_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector22~122\ = \p1|Selector22~121\ # \ji|always1~81\ & (\ji|d[2]\ # !\ji|d[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFD0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector22~122_I_pathsel\,
	dataa => \ji|d[0]\,
	datab => \ji|d[2]\,
	datac => \ji|always1~81\,
	datad => \p1|Selector22~121\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector22~122_I_modesel\,
	combout => \p1|Selector22~122\);

-- atom is at LC5_F36
\p1|Selector43~1384_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector43~1384\ = \p1|o[2]\ & !\p1|always0~39\ & \p1|Selector22~122\ # !\p1|o[2]\ & (\p1|Selector1~19\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector43~1384_I_pathsel\,
	dataa => \p1|always0~39\,
	datab => \p1|o[2]\,
	datac => \p1|Selector22~122\,
	datad => \p1|Selector1~19\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector43~1384_I_modesel\,
	combout => \p1|Selector43~1384\);

-- atom is at LC5_F32
\p1|Selector40~140_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector40~140\ = !\ji|f_rtl_1|wysi_counter|q[2]\ & !\ji|f_rtl_1|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector40~140_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|f_rtl_1|wysi_counter|q[2]\,
	datad => \ji|f_rtl_1|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector40~140_I_modesel\,
	combout => \p1|Selector40~140\);

-- atom is at LC3_B29
\nao|dd[0]~11_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|dd[0]~11\ = \nao|cc[0]~11\ & \nao|Equal7~27\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|dd[0]~11_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|cc[0]~11\,
	datad => \nao|Equal7~27\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|dd[0]~11_I_modesel\,
	combout => \nao|dd[0]~11\);

-- atom is at LC8_B28
\nao|k1[1]~87_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k1[1]~87\ = !\key1~dataout\ & \p1|Equal4~42\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k1[1]~87_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \key1~dataout\,
	datad => \p1|Equal4~42\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k1[1]~87_I_modesel\,
	combout => \nao|k1[1]~87\);

-- atom is at LC1_B34
\nao|always0~520_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~520\ = \nao|ee~962\ & (\nao|Add4~146\ & \nao|ff[2]\ & \nao|ff[3]\ # !\nao|Add4~146\ & !\nao|ff[2]\ & !\nao|ff[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~520_I_pathsel\,
	dataa => \nao|Add4~146\,
	datab => \nao|ff[2]\,
	datac => \nao|ff[3]\,
	datad => \nao|ee~962\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~520_I_modesel\,
	combout => \nao|always0~520\);

-- atom is at LC2_B35
\nao|always0~521_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~521\ = \nao|ee[0]\ & \nao|ee[1]\ & (\nao|ee[3]\ $ !\nao|ee[2]\) # !\nao|ee[0]\ & !\nao|ee[3]\ & (!\nao|ee[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9005",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~521_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[0]\,
	datad => \nao|ee[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~521_I_modesel\,
	combout => \nao|always0~521\);

-- atom is at LC1_B35
\nao|always0~522_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~522\ = \nao|ee[0]\ & (\nao|Equal9~29\ & (\nao|ff[0]\) # !\nao|Equal9~29\ & \nao|always0~521\ & !\nao|ff[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "C200",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~522_I_pathsel\,
	dataa => \nao|always0~521\,
	datab => \nao|Equal9~29\,
	datac => \nao|ff[0]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~522_I_modesel\,
	combout => \nao|always0~522\);

-- atom is at LC6_B35
\nao|always0~523_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~523\ = !\nao|ee[3]\ & !\nao|ee[0]\ & !\nao|ee[1]\ & \nao|always0~514\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~523_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[0]\,
	datac => \nao|ee[1]\,
	datad => \nao|always0~514\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~523_I_modesel\,
	combout => \nao|always0~523\);

-- atom is at LC4_B34
\nao|always0~524_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~524\ = \nao|ee~962\ & (\nao|always0~522\ & \nao|always0~520\) # !\nao|ee~962\ & (\nao|always0~523\ # \nao|always0~522\ & \nao|always0~520\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~524_I_pathsel\,
	dataa => \nao|ee~962\,
	datab => \nao|always0~523\,
	datac => \nao|always0~522\,
	datad => \nao|always0~520\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~524_I_modesel\,
	combout => \nao|always0~524\);

-- atom is at LC6_B34
\nao|always0~525_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~525\ = \nao|ff~844\ & \nao|always0~524\ & \nao|ee~963\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "C000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~525_I_pathsel\,
	dataa => VCC,
	datab => \nao|ff~844\,
	datac => \nao|always0~524\,
	datad => \nao|ee~963\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~525_I_modesel\,
	combout => \nao|always0~525\);

-- atom is at LC6_F23
\p1|Selector35~124_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector35~124\ = \p1|Selector39~119\ & (\ji|f_rtl_1|wysi_counter|q[1]\ & \p1|Selector40~139\) # !\p1|Selector39~119\ & (\p1|display[6]\ # \ji|f_rtl_1|wysi_counter|q[1]\ & \p1|Selector40~139\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector35~124_I_pathsel\,
	dataa => \p1|Selector39~119\,
	datab => \p1|display[6]\,
	datac => \ji|f_rtl_1|wysi_counter|q[1]\,
	datad => \p1|Selector40~139\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector35~124_I_modesel\,
	combout => \p1|Selector35~124\);

-- atom is at LC2_F28
\p1|Selector42~1170_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1180\ = \p1|always0~38\ # !\p1|Selector35~124\ # !\p1|o[0]\ # !\p1|o[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF7F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1170_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p1|o[0]\,
	datac => \p1|Selector35~124\,
	datad => \p1|always0~38\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector42~1170_I_modesel\,
	cascout => \p1|Selector42~1180\);

-- atom is at LC6_F31
\p1|Selector0~21_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector0~21\ = \ji|a[3]\ & \ji|a[2]\ # !\ji|a[3]\ & (\ji|a[2]\ & (!\ji|a[0]\ # !\ji|a[1]\) # !\ji|a[2]\ & \ji|a[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CDC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector0~21_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \ji|a[2]\,
	datac => \ji|a[1]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector0~21_I_modesel\,
	combout => \p1|Selector0~21\);

-- atom is at LC5_F31
\p1|Selector0~22_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector0~22\ = \ji|a[3]\ & (\p1|display[6]\ # !\p1|Selector0~21\ & !\ji|a[1]\) # !\ji|a[3]\ & \p1|Selector0~21\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector0~22_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \p1|Selector0~21\,
	datac => \p1|display[6]\,
	datad => \ji|a[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector0~22_I_modesel\,
	combout => \p1|Selector0~22\);

-- atom is at LC3_F28
\p1|Selector42~1172_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1172\ = (\p1|o[2]\ # \p1|o[0]\ # !\p1|Selector0~22\ & !\p1|o[1]\) & CASCADE(\p1|Selector42~1180\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF1",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1172_I_pathsel\,
	dataa => \p1|Selector0~22\,
	datab => \p1|o[1]\,
	datac => \p1|o[2]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector42~1180\,
	modesel => \p1|Selector42~1172_I_modesel\,
	combout => \p1|Selector42~1172\);

-- atom is at LC5_D1
\p3|i[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[27]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[27]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[27]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[27]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[27]~I_modesel\,
	regout => \p3|i[27]\);

-- atom is at LC3_D1
\p3|i[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[26]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[26]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[26]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[26]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[26]~I_modesel\,
	regout => \p3|i[26]\);

-- atom is at LC6_D1
\p3|i[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[25]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[25]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[25]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[25]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[25]~I_modesel\,
	regout => \p3|i[25]\);

-- atom is at LC8_D1
\p3|i[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[24]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[24]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[24]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[24]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[24]~I_modesel\,
	regout => \p3|i[24]\);

-- atom is at LC1_D1
\p3|Equal0~373_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~391\ = !\p3|i[24]\ & !\p3|i[25]\ & !\p3|i[26]\ & !\p3|i[27]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~373_I_pathsel\,
	dataa => \p3|i[24]\,
	datab => \p3|i[25]\,
	datac => \p3|i[26]\,
	datad => \p3|i[27]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Equal0~373_I_modesel\,
	cascout => \p3|Equal0~391\);

-- atom is at LC7_D1
\p3|i[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[31]\ = DFFEA(\p3|Add0|adder|unreg_res_node[31]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|unreg_res_node[31]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[31]~I_modesel\,
	regout => \p3|i[31]\);

-- atom is at LC4_D1
\p3|i[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[30]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[30]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[30]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[30]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[30]~I_modesel\,
	regout => \p3|i[30]\);

-- atom is at LC3_D18
\p3|i[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[29]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[29]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[29]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[29]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[29]~I_modesel\,
	regout => \p3|i[29]\);

-- atom is at LC1_D3
\p3|i[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[28]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[28]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[28]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[28]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[28]~I_modesel\,
	regout => \p3|i[28]\);

-- atom is at LC2_D1
\p3|Equal0~381_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~381\ = (!\p3|i[28]\ & !\p3|i[29]\ & !\p3|i[30]\ & !\p3|i[31]\) & CASCADE(\p3|Equal0~391\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~381_I_pathsel\,
	dataa => \p3|i[28]\,
	datab => \p3|i[29]\,
	datac => \p3|i[30]\,
	datad => \p3|i[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Equal0~391\,
	modesel => \p3|Equal0~381_I_modesel\,
	combout => \p3|Equal0~381\);

-- atom is at LC7_D4
\p3|i[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[19]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[19]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[19]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[19]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[19]~I_modesel\,
	regout => \p3|i[19]\);

-- atom is at LC6_D4
\p3|i[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[18]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[18]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[18]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[18]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[18]~I_modesel\,
	regout => \p3|i[18]\);

-- atom is at LC8_D4
\p3|i[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[17]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[17]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[17]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[17]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[17]~I_modesel\,
	regout => \p3|i[17]\);

-- atom is at LC1_D4
\p3|i[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[16]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[16]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[16]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[16]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[16]~I_modesel\,
	regout => \p3|i[16]\);

-- atom is at LC2_D4
\p3|Equal0~375_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~394\ = !\p3|i[16]\ & !\p3|i[17]\ & !\p3|i[18]\ & !\p3|i[19]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~375_I_pathsel\,
	dataa => \p3|i[16]\,
	datab => \p3|i[17]\,
	datac => \p3|i[18]\,
	datad => \p3|i[19]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Equal0~375_I_modesel\,
	cascout => \p3|Equal0~394\);

-- atom is at LC5_D4
\p3|i[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[23]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[23]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[23]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[23]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[23]~I_modesel\,
	regout => \p3|i[23]\);

-- atom is at LC4_D4
\p3|i[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[22]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[22]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[22]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[22]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[22]~I_modesel\,
	regout => \p3|i[22]\);

-- atom is at LC2_D2
\p3|i[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[21]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[21]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[21]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[21]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[21]~I_modesel\,
	regout => \p3|i[21]\);

-- atom is at LC1_D16
\p3|i[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[20]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[20]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[20]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[20]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[20]~I_modesel\,
	regout => \p3|i[20]\);

-- atom is at LC3_D4
\p3|Equal0~382_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~382\ = (!\p3|i[20]\ & !\p3|i[21]\ & !\p3|i[22]\ & !\p3|i[23]\) & CASCADE(\p3|Equal0~394\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~382_I_pathsel\,
	dataa => \p3|i[20]\,
	datab => \p3|i[21]\,
	datac => \p3|i[22]\,
	datad => \p3|i[23]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Equal0~394\,
	modesel => \p3|Equal0~382_I_modesel\,
	combout => \p3|Equal0~382\);

-- atom is at LC1_D8
\p3|i[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[11]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[11]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[11]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[11]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[11]~I_modesel\,
	regout => \p3|i[11]\);

-- atom is at LC3_D8
\p3|i[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[10]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[10]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[10]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[10]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[10]~I_modesel\,
	regout => \p3|i[10]\);

-- atom is at LC2_D8
\p3|i[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[9]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[9]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[9]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[9]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[9]~I_modesel\,
	regout => \p3|i[9]\);

-- atom is at LC7_D8
\p3|i[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[8]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[8]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[8]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[8]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[8]~I_modesel\,
	regout => \p3|i[8]\);

-- atom is at LC4_D8
\p3|Equal0~377_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~397\ = !\p3|i[8]\ & !\p3|i[9]\ & !\p3|i[10]\ & !\p3|i[11]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~377_I_pathsel\,
	dataa => \p3|i[8]\,
	datab => \p3|i[9]\,
	datac => \p3|i[10]\,
	datad => \p3|i[11]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Equal0~377_I_modesel\,
	cascout => \p3|Equal0~397\);

-- atom is at LC8_D8
\p3|i[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[15]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[15]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[15]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[15]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[15]~I_modesel\,
	regout => \p3|i[15]\);

-- atom is at LC6_D8
\p3|i[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[14]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[14]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[14]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[14]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[14]~I_modesel\,
	regout => \p3|i[14]\);

-- atom is at LC2_D6
\p3|i[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[13]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[13]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[13]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[13]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[13]~I_modesel\,
	regout => \p3|i[13]\);

-- atom is at LC1_D12
\p3|i[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[12]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[12]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[12]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[12]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[12]~I_modesel\,
	regout => \p3|i[12]\);

-- atom is at LC5_D8
\p3|Equal0~383_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~383\ = (!\p3|i[12]\ & !\p3|i[13]\ & !\p3|i[14]\ & !\p3|i[15]\) & CASCADE(\p3|Equal0~397\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~383_I_pathsel\,
	dataa => \p3|i[12]\,
	datab => \p3|i[13]\,
	datac => \p3|i[14]\,
	datad => \p3|i[15]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Equal0~397\,
	modesel => \p3|Equal0~383_I_modesel\,
	combout => \p3|Equal0~383\);

-- atom is at LC8_D10
\p3|i[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[2]\ = DFFEA(!\p3|Equal0~360\ & \p3|Add0|adder|result_node|cs_buffer[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p3|Equal0~360\,
	datad => \p3|Add0|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[2]~I_modesel\,
	regout => \p3|i[2]\);

-- atom is at LC4_D10
\p3|i[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[3]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[3]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[3]~I_modesel\,
	regout => \p3|i[3]\);

-- atom is at LC3_D10
\p3|i[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[1]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[1]~I_modesel\,
	regout => \p3|i[1]\);

-- atom is at LC1_D11
\p3|i[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[0]\ = DFFEA(!\p3|Equal0~360\ & !\p3|i[0]\, GLOBAL(\fen|f\), , , , , )
-- \p3|Add0|adder|result_node|cout[0]\ = CARRY(\p3|i[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "11CC",
--	operation_mode => "arithmetic",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[0]~I_pathsel\,
	dataa => \p3|Equal0~360\,
	datab => \p3|i[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[0]~I_modesel\,
	regout => \p3|i[0]\,
	cout => \p3|Add0|adder|result_node|cout[0]\);

-- atom is at LC1_D10
\p3|Equal0~379_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~400\ = !\p3|i[0]\ & !\p3|i[1]\ & !\p3|i[3]\ & \p3|i[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~379_I_pathsel\,
	dataa => \p3|i[0]\,
	datab => \p3|i[1]\,
	datac => \p3|i[3]\,
	datad => \p3|i[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Equal0~379_I_modesel\,
	cascout => \p3|Equal0~400\);

-- atom is at LC7_D10
\p3|i[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[6]\ = DFFEA(!\p3|Equal0~360\ & \p3|Add0|adder|result_node|cs_buffer[6]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[6]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p3|Equal0~360\,
	datad => \p3|Add0|adder|result_node|cs_buffer[6]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[6]~I_modesel\,
	regout => \p3|i[6]\);

-- atom is at LC6_D10
\p3|i[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[5]\ = DFFEA(!\p3|Equal0~360\ & \p3|Add0|adder|result_node|cs_buffer[5]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p3|Equal0~360\,
	datad => \p3|Add0|adder|result_node|cs_buffer[5]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[5]~I_modesel\,
	regout => \p3|i[5]\);

-- atom is at LC1_D9
\p3|i[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[7]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[7]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[7]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[7]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[7]~I_modesel\,
	regout => \p3|i[7]\);

-- atom is at LC1_D5
\p3|i[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|i[4]\ = DFFEA(\p3|Add0|adder|result_node|cs_buffer[4]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|i[4]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Add0|adder|result_node|cs_buffer[4]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|i[4]~I_modesel\,
	regout => \p3|i[4]\);

-- atom is at LC2_D10
\p3|Equal0~384_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Equal0~384\ = (!\p3|i[4]\ & !\p3|i[7]\ & \p3|i[5]\ & \p3|i[6]\) & CASCADE(\p3|Equal0~400\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Equal0~384_I_pathsel\,
	dataa => \p3|i[4]\,
	datab => \p3|i[7]\,
	datac => \p3|i[5]\,
	datad => \p3|i[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Equal0~400\,
	modesel => \p3|Equal0~384_I_modesel\,
	combout => \p3|Equal0~384\);

-- atom is at LC4_E8
\fen|Add2|adder|result_node|cs_buffer[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[27]\ = \fen|k[27]\ $ \fen|Add2|adder|result_node|cout[26]\
-- \fen|Add2|adder|result_node|cout[27]\ = CARRY(\fen|k[27]\ & \fen|Add2|adder|result_node|cout[26]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[27]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[27]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[26]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[27]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[27]\,
	cout => \fen|Add2|adder|result_node|cout[27]\);

-- atom is at LC3_E8
\fen|Add2|adder|result_node|cs_buffer[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[26]\ = \fen|k[26]\ $ \fen|Add2|adder|result_node|cout[25]\
-- \fen|Add2|adder|result_node|cout[26]\ = CARRY(\fen|k[26]\ & \fen|Add2|adder|result_node|cout[25]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[26]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[26]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[25]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[26]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[26]\,
	cout => \fen|Add2|adder|result_node|cout[26]\);

-- atom is at LC2_E8
\fen|Add2|adder|result_node|cs_buffer[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[25]\ = \fen|k[25]\ $ \fen|Add2|adder|result_node|cout[24]\
-- \fen|Add2|adder|result_node|cout[25]\ = CARRY(\fen|k[25]\ & \fen|Add2|adder|result_node|cout[24]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[25]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[25]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[24]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[25]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[25]\,
	cout => \fen|Add2|adder|result_node|cout[25]\);

-- atom is at LC1_E8
\fen|Add2|adder|result_node|cs_buffer[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[24]\ = \fen|k[24]\ $ \fen|Add2|adder|result_node|cout[23]\
-- \fen|Add2|adder|result_node|cout[24]\ = CARRY(\fen|k[24]\ & \fen|Add2|adder|result_node|cout[23]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[24]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[24]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[23]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[24]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[24]\,
	cout => \fen|Add2|adder|result_node|cout[24]\);

-- atom is at LC7_E8
\fen|Add2|adder|result_node|cs_buffer[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[30]\ = \fen|k[30]\ $ \fen|Add2|adder|result_node|cout[29]\
-- \fen|Add2|adder|result_node|cout[30]\ = CARRY(\fen|k[30]\ & \fen|Add2|adder|result_node|cout[29]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[30]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[30]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[29]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[30]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[30]\,
	cout => \fen|Add2|adder|result_node|cout[30]\);

-- atom is at LC6_E8
\fen|Add2|adder|result_node|cs_buffer[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[29]\ = \fen|k[29]\ $ \fen|Add2|adder|result_node|cout[28]\
-- \fen|Add2|adder|result_node|cout[29]\ = CARRY(\fen|k[29]\ & \fen|Add2|adder|result_node|cout[28]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[29]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[29]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[28]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[29]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[29]\,
	cout => \fen|Add2|adder|result_node|cout[29]\);

-- atom is at LC5_E8
\fen|Add2|adder|result_node|cs_buffer[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[28]\ = \fen|k[28]\ $ \fen|Add2|adder|result_node|cout[27]\
-- \fen|Add2|adder|result_node|cout[28]\ = CARRY(\fen|k[28]\ & \fen|Add2|adder|result_node|cout[27]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[28]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[28]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[27]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[28]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[28]\,
	cout => \fen|Add2|adder|result_node|cout[28]\);

-- atom is at LC4_E6
\fen|Add2|adder|result_node|cs_buffer[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[19]\ = \fen|k[19]\ $ \fen|Add2|adder|result_node|cout[18]\
-- \fen|Add2|adder|result_node|cout[19]\ = CARRY(\fen|k[19]\ & \fen|Add2|adder|result_node|cout[18]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[19]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[19]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[18]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[19]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[19]\,
	cout => \fen|Add2|adder|result_node|cout[19]\);

-- atom is at LC3_E6
\fen|Add2|adder|result_node|cs_buffer[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[18]\ = \fen|k[18]\ $ \fen|Add2|adder|result_node|cout[17]\
-- \fen|Add2|adder|result_node|cout[18]\ = CARRY(\fen|k[18]\ & \fen|Add2|adder|result_node|cout[17]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[18]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[18]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[17]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[18]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[18]\,
	cout => \fen|Add2|adder|result_node|cout[18]\);

-- atom is at LC2_E6
\fen|Add2|adder|result_node|cs_buffer[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[17]\ = \fen|k[17]\ $ \fen|Add2|adder|result_node|cout[16]\
-- \fen|Add2|adder|result_node|cout[17]\ = CARRY(\fen|k[17]\ & \fen|Add2|adder|result_node|cout[16]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[17]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[17]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[16]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[17]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[17]\,
	cout => \fen|Add2|adder|result_node|cout[17]\);

-- atom is at LC1_E6
\fen|Add2|adder|result_node|cs_buffer[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[16]\ = \fen|k[16]\ $ \fen|Add2|adder|result_node|cout[15]\
-- \fen|Add2|adder|result_node|cout[16]\ = CARRY(\fen|k[16]\ & \fen|Add2|adder|result_node|cout[15]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[16]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[16]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[15]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[16]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[16]\,
	cout => \fen|Add2|adder|result_node|cout[16]\);

-- atom is at LC8_E6
\fen|Add2|adder|result_node|cs_buffer[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[23]\ = \fen|k[23]\ $ \fen|Add2|adder|result_node|cout[22]\
-- \fen|Add2|adder|result_node|cout[23]\ = CARRY(\fen|k[23]\ & \fen|Add2|adder|result_node|cout[22]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[23]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[23]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[22]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[23]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[23]\,
	cout => \fen|Add2|adder|result_node|cout[23]\);

-- atom is at LC7_E6
\fen|Add2|adder|result_node|cs_buffer[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[22]\ = \fen|k[22]\ $ \fen|Add2|adder|result_node|cout[21]\
-- \fen|Add2|adder|result_node|cout[22]\ = CARRY(\fen|k[22]\ & \fen|Add2|adder|result_node|cout[21]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[22]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[22]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[21]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[22]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[22]\,
	cout => \fen|Add2|adder|result_node|cout[22]\);

-- atom is at LC6_E6
\fen|Add2|adder|result_node|cs_buffer[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[21]\ = \fen|k[21]\ $ \fen|Add2|adder|result_node|cout[20]\
-- \fen|Add2|adder|result_node|cout[21]\ = CARRY(\fen|k[21]\ & \fen|Add2|adder|result_node|cout[20]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[21]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[21]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[20]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[21]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[21]\,
	cout => \fen|Add2|adder|result_node|cout[21]\);

-- atom is at LC5_E6
\fen|Add2|adder|result_node|cs_buffer[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[20]\ = \fen|k[20]\ $ \fen|Add2|adder|result_node|cout[19]\
-- \fen|Add2|adder|result_node|cout[20]\ = CARRY(\fen|k[20]\ & \fen|Add2|adder|result_node|cout[19]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[20]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[20]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[19]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[20]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[20]\,
	cout => \fen|Add2|adder|result_node|cout[20]\);

-- atom is at LC3_E4
\fen|Add2|adder|result_node|cs_buffer[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[10]\ = \fen|k[10]\ $ \fen|Add2|adder|result_node|cout[9]\
-- \fen|Add2|adder|result_node|cout[10]\ = CARRY(\fen|k[10]\ & \fen|Add2|adder|result_node|cout[9]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[10]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[10]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[9]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[10]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[10]\,
	cout => \fen|Add2|adder|result_node|cout[10]\);

-- atom is at LC2_E4
\fen|Add2|adder|result_node|cs_buffer[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[9]\ = \fen|k[9]\ $ \fen|Add2|adder|result_node|cout[8]\
-- \fen|Add2|adder|result_node|cout[9]\ = CARRY(\fen|k[9]\ & \fen|Add2|adder|result_node|cout[8]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[9]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[9]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[8]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[9]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[9]\,
	cout => \fen|Add2|adder|result_node|cout[9]\);

-- atom is at LC1_E4
\fen|Add2|adder|result_node|cs_buffer[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[8]\ = \fen|k[8]\ $ \fen|Add2|adder|result_node|cout[7]\
-- \fen|Add2|adder|result_node|cout[8]\ = CARRY(\fen|k[8]\ & \fen|Add2|adder|result_node|cout[7]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[8]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[8]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[7]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[8]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[8]\,
	cout => \fen|Add2|adder|result_node|cout[8]\);

-- atom is at LC4_E4
\fen|Add2|adder|result_node|cs_buffer[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[11]\ = \fen|k[11]\ $ \fen|Add2|adder|result_node|cout[10]\
-- \fen|Add2|adder|result_node|cout[11]\ = CARRY(\fen|k[11]\ & \fen|Add2|adder|result_node|cout[10]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[11]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[11]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[10]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[11]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[11]\,
	cout => \fen|Add2|adder|result_node|cout[11]\);

-- atom is at LC6_E4
\fen|Add2|adder|result_node|cs_buffer[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[13]\ = \fen|k[13]\ $ \fen|Add2|adder|result_node|cout[12]\
-- \fen|Add2|adder|result_node|cout[13]\ = CARRY(\fen|k[13]\ & \fen|Add2|adder|result_node|cout[12]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[13]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[13]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[12]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[13]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[13]\,
	cout => \fen|Add2|adder|result_node|cout[13]\);

-- atom is at LC8_E4
\fen|Add2|adder|result_node|cs_buffer[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[15]\ = \fen|k[15]\ $ \fen|Add2|adder|result_node|cout[14]\
-- \fen|Add2|adder|result_node|cout[15]\ = CARRY(\fen|k[15]\ & \fen|Add2|adder|result_node|cout[14]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[15]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[15]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[14]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[15]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[15]\,
	cout => \fen|Add2|adder|result_node|cout[15]\);

-- atom is at LC7_E4
\fen|Add2|adder|result_node|cs_buffer[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[14]\ = \fen|k[14]\ $ \fen|Add2|adder|result_node|cout[13]\
-- \fen|Add2|adder|result_node|cout[14]\ = CARRY(\fen|k[14]\ & \fen|Add2|adder|result_node|cout[13]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[14]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[14]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[13]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[14]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[14]\,
	cout => \fen|Add2|adder|result_node|cout[14]\);

-- atom is at LC5_E4
\fen|Add2|adder|result_node|cs_buffer[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[12]\ = \fen|k[12]\ $ \fen|Add2|adder|result_node|cout[11]\
-- \fen|Add2|adder|result_node|cout[12]\ = CARRY(\fen|k[12]\ & \fen|Add2|adder|result_node|cout[11]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[12]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[12]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[11]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[12]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[12]\,
	cout => \fen|Add2|adder|result_node|cout[12]\);

-- atom is at LC4_E2
\fen|Add2|adder|result_node|cs_buffer[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[3]\ = \fen|k[3]\ $ \fen|Add2|adder|result_node|cout[2]\
-- \fen|Add2|adder|result_node|cout[3]\ = CARRY(\fen|k[3]\ & \fen|Add2|adder|result_node|cout[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[3]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[3]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[3]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[3]\,
	cout => \fen|Add2|adder|result_node|cout[3]\);

-- atom is at LC3_E2
\fen|Add2|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[2]\ = \fen|k[2]\ $ \fen|Add2|adder|result_node|cout[1]\
-- \fen|Add2|adder|result_node|cout[2]\ = CARRY(\fen|k[2]\ & \fen|Add2|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[2]\,
	cout => \fen|Add2|adder|result_node|cout[2]\);

-- atom is at LC2_E2
\fen|Add2|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[1]\ = \fen|k[1]\ $ \fen|Add2|adder|result_node|cout[0]\
-- \fen|Add2|adder|result_node|cout[1]\ = CARRY(\fen|k[1]\ & \fen|Add2|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[1]\,
	cout => \fen|Add2|adder|result_node|cout[1]\);

-- atom is at LC8_E2
\fen|Add2|adder|result_node|cs_buffer[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[7]\ = \fen|k[7]\ $ \fen|Add2|adder|result_node|cout[6]\
-- \fen|Add2|adder|result_node|cout[7]\ = CARRY(\fen|k[7]\ & \fen|Add2|adder|result_node|cout[6]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[7]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[7]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[6]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[7]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[7]\,
	cout => \fen|Add2|adder|result_node|cout[7]\);

-- atom is at LC7_E2
\fen|Add2|adder|result_node|cs_buffer[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[6]\ = \fen|k[6]\ $ \fen|Add2|adder|result_node|cout[5]\
-- \fen|Add2|adder|result_node|cout[6]\ = CARRY(\fen|k[6]\ & \fen|Add2|adder|result_node|cout[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[6]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[6]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[5]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[6]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[6]\,
	cout => \fen|Add2|adder|result_node|cout[6]\);

-- atom is at LC6_E2
\fen|Add2|adder|result_node|cs_buffer[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[5]\ = \fen|k[5]\ $ \fen|Add2|adder|result_node|cout[4]\
-- \fen|Add2|adder|result_node|cout[5]\ = CARRY(\fen|k[5]\ & \fen|Add2|adder|result_node|cout[4]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[5]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[5]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[4]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[5]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[5]\,
	cout => \fen|Add2|adder|result_node|cout[5]\);

-- atom is at LC5_E2
\fen|Add2|adder|result_node|cs_buffer[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|result_node|cs_buffer[4]\ = \fen|k[4]\ $ \fen|Add2|adder|result_node|cout[3]\
-- \fen|Add2|adder|result_node|cout[4]\ = CARRY(\fen|k[4]\ & \fen|Add2|adder|result_node|cout[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|result_node|cs_buffer[4]~I_pathsel\,
	dataa => VCC,
	datab => \fen|k[4]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[3]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|result_node|cs_buffer[4]~I_modesel\,
	combout => \fen|Add2|adder|result_node|cs_buffer[4]\,
	cout => \fen|Add2|adder|result_node|cout[4]\);

-- atom is at LC6_F15
\p1|i[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[27]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[27]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[27]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[27]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[27]~I_modesel\,
	regout => \p1|i[27]\);

-- atom is at LC5_F15
\p1|i[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[26]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[26]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[26]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[26]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[26]~I_modesel\,
	regout => \p1|i[26]\);

-- atom is at LC2_A15
\p1|i[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[25]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[25]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[25]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[25]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[25]~I_modesel\,
	regout => \p1|i[25]\);

-- atom is at LC7_F5
\p1|i[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[24]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[24]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[24]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[24]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[24]~I_modesel\,
	regout => \p1|i[24]\);

-- atom is at LC2_F15
\p1|Equal0~373_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~391\ = !\p1|i[24]\ & !\p1|i[25]\ & !\p1|i[26]\ & !\p1|i[27]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~373_I_pathsel\,
	dataa => \p1|i[24]\,
	datab => \p1|i[25]\,
	datac => \p1|i[26]\,
	datad => \p1|i[27]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal0~373_I_modesel\,
	cascout => \p1|Equal0~391\);

-- atom is at LC4_F12
\p1|i[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[31]\ = DFFEA(\p1|Add0|adder|unreg_res_node[31]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|unreg_res_node[31]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[31]~I_modesel\,
	regout => \p1|i[31]\);

-- atom is at LC2_B11
\p1|i[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[30]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[30]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[30]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[30]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[30]~I_modesel\,
	regout => \p1|i[30]\);

-- atom is at LC4_A13
\p1|i[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[29]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[29]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[29]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[29]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[29]~I_modesel\,
	regout => \p1|i[29]\);

-- atom is at LC1_A10
\p1|i[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[28]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[28]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[28]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[28]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[28]~I_modesel\,
	regout => \p1|i[28]\);

-- atom is at LC3_F15
\p1|Equal0~381_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~381\ = (!\p1|i[28]\ & !\p1|i[29]\ & !\p1|i[30]\ & !\p1|i[31]\) & CASCADE(\p1|Equal0~391\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~381_I_pathsel\,
	dataa => \p1|i[28]\,
	datab => \p1|i[29]\,
	datac => \p1|i[30]\,
	datad => \p1|i[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Equal0~391\,
	modesel => \p1|Equal0~381_I_modesel\,
	combout => \p1|Equal0~381\);

-- atom is at LC5_F14
\p1|i[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[19]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[19]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[19]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[19]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[19]~I_modesel\,
	regout => \p1|i[19]\);

-- atom is at LC2_F14
\p1|i[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[18]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[18]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[18]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[18]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[18]~I_modesel\,
	regout => \p1|i[18]\);

-- atom is at LC7_F14
\p1|i[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[17]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[17]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[17]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[17]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[17]~I_modesel\,
	regout => \p1|i[17]\);

-- atom is at LC6_F14
\p1|i[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[16]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[16]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[16]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[16]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[16]~I_modesel\,
	regout => \p1|i[16]\);

-- atom is at LC3_F14
\p1|Equal0~375_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~394\ = !\p1|i[16]\ & !\p1|i[17]\ & !\p1|i[18]\ & !\p1|i[19]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~375_I_pathsel\,
	dataa => \p1|i[16]\,
	datab => \p1|i[17]\,
	datac => \p1|i[18]\,
	datad => \p1|i[19]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal0~375_I_modesel\,
	cascout => \p1|Equal0~394\);

-- atom is at LC1_F14
\p1|i[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[23]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[23]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[23]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[23]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[23]~I_modesel\,
	regout => \p1|i[23]\);

-- atom is at LC8_F14
\p1|i[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[22]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[22]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[22]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[22]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[22]~I_modesel\,
	regout => \p1|i[22]\);

-- atom is at LC2_A7
\p1|i[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[21]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[21]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[21]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[21]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[21]~I_modesel\,
	regout => \p1|i[21]\);

-- atom is at LC1_A11
\p1|i[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[20]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[20]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[20]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[20]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[20]~I_modesel\,
	regout => \p1|i[20]\);

-- atom is at LC4_F14
\p1|Equal0~382_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~382\ = (!\p1|i[20]\ & !\p1|i[21]\ & !\p1|i[22]\ & !\p1|i[23]\) & CASCADE(\p1|Equal0~394\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~382_I_pathsel\,
	dataa => \p1|i[20]\,
	datab => \p1|i[21]\,
	datac => \p1|i[22]\,
	datad => \p1|i[23]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Equal0~394\,
	modesel => \p1|Equal0~382_I_modesel\,
	combout => \p1|Equal0~382\);

-- atom is at LC1_F15
\p1|i[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[11]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[11]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[11]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[11]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[11]~I_modesel\,
	regout => \p1|i[11]\);

-- atom is at LC1_A8
\p1|i[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[10]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[10]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[10]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[10]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[10]~I_modesel\,
	regout => \p1|i[10]\);

-- atom is at LC8_F24
\p1|i[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[9]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[9]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[9]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[9]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[9]~I_modesel\,
	regout => \p1|i[9]\);

-- atom is at LC2_F18
\p1|i[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[8]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[8]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[8]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[8]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[8]~I_modesel\,
	regout => \p1|i[8]\);

-- atom is at LC7_F15
\p1|Equal0~377_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~397\ = !\p1|i[8]\ & !\p1|i[9]\ & !\p1|i[10]\ & !\p1|i[11]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~377_I_pathsel\,
	dataa => \p1|i[8]\,
	datab => \p1|i[9]\,
	datac => \p1|i[10]\,
	datad => \p1|i[11]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal0~377_I_modesel\,
	cascout => \p1|Equal0~397\);

-- atom is at LC1_A3
\p1|i[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[15]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[15]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[15]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[15]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[15]~I_modesel\,
	regout => \p1|i[15]\);

-- atom is at LC4_F2
\p1|i[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[14]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[14]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[14]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[14]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[14]~I_modesel\,
	regout => \p1|i[14]\);

-- atom is at LC1_A5
\p1|i[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[13]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[13]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[13]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[13]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[13]~I_modesel\,
	regout => \p1|i[13]\);

-- atom is at LC2_F3
\p1|i[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[12]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[12]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[12]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[12]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[12]~I_modesel\,
	regout => \p1|i[12]\);

-- atom is at LC8_F15
\p1|Equal0~383_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~383\ = (!\p1|i[12]\ & !\p1|i[13]\ & !\p1|i[14]\ & !\p1|i[15]\) & CASCADE(\p1|Equal0~397\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~383_I_pathsel\,
	dataa => \p1|i[12]\,
	datab => \p1|i[13]\,
	datac => \p1|i[14]\,
	datad => \p1|i[15]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Equal0~397\,
	modesel => \p1|Equal0~383_I_modesel\,
	combout => \p1|Equal0~383\);

-- atom is at LC8_F6
\p1|i[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[2]\ = DFFEA(!\p1|Equal0~360\ & \p1|Add0|adder|result_node|cs_buffer[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|Equal0~360\,
	datad => \p1|Add0|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[2]~I_modesel\,
	regout => \p1|i[2]\);

-- atom is at LC6_F6
\p1|i[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[3]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[3]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[3]~I_modesel\,
	regout => \p1|i[3]\);

-- atom is at LC4_F6
\p1|i[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[1]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[1]~I_modesel\,
	regout => \p1|i[1]\);

-- atom is at LC1_F7
\p1|i[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[0]\ = DFFEA(!\p1|Equal0~360\ & !\p1|i[0]\, GLOBAL(\fen|f\), , , , , )
-- \p1|Add0|adder|result_node|cout[0]\ = CARRY(\p1|i[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "11CC",
--	operation_mode => "arithmetic",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[0]~I_pathsel\,
	dataa => \p1|Equal0~360\,
	datab => \p1|i[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[0]~I_modesel\,
	regout => \p1|i[0]\,
	cout => \p1|Add0|adder|result_node|cout[0]\);

-- atom is at LC2_F6
\p1|Equal0~379_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~400\ = !\p1|i[0]\ & !\p1|i[1]\ & !\p1|i[3]\ & \p1|i[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~379_I_pathsel\,
	dataa => \p1|i[0]\,
	datab => \p1|i[1]\,
	datac => \p1|i[3]\,
	datad => \p1|i[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal0~379_I_modesel\,
	cascout => \p1|Equal0~400\);

-- atom is at LC5_F6
\p1|i[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[6]\ = DFFEA(!\p1|Equal0~360\ & \p1|Add0|adder|result_node|cs_buffer[6]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[6]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|Equal0~360\,
	datad => \p1|Add0|adder|result_node|cs_buffer[6]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[6]~I_modesel\,
	regout => \p1|i[6]\);

-- atom is at LC7_F6
\p1|i[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[5]\ = DFFEA(!\p1|Equal0~360\ & \p1|Add0|adder|result_node|cs_buffer[5]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|Equal0~360\,
	datad => \p1|Add0|adder|result_node|cs_buffer[5]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[5]~I_modesel\,
	regout => \p1|i[5]\);

-- atom is at LC1_F6
\p1|i[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[7]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[7]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[7]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[7]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[7]~I_modesel\,
	regout => \p1|i[7]\);

-- atom is at LC7_F10
\p1|i[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|i[4]\ = DFFEA(\p1|Add0|adder|result_node|cs_buffer[4]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|i[4]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Add0|adder|result_node|cs_buffer[4]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|i[4]~I_modesel\,
	regout => \p1|i[4]\);

-- atom is at LC3_F6
\p1|Equal0~384_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal0~384\ = (!\p1|i[4]\ & !\p1|i[7]\ & \p1|i[5]\ & \p1|i[6]\) & CASCADE(\p1|Equal0~400\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal0~384_I_pathsel\,
	dataa => \p1|i[4]\,
	datab => \p1|i[7]\,
	datac => \p1|i[5]\,
	datad => \p1|i[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Equal0~400\,
	modesel => \p1|Equal0~384_I_modesel\,
	combout => \p1|Equal0~384\);

-- atom is at LC6_F1
\ji|always1~87_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~87\ = !\ji|a[2]\ & !\ji|a[1]\ & \ji|a[3]\ & \ji|a[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~87_I_pathsel\,
	dataa => \ji|a[2]\,
	datab => \ji|a[1]\,
	datac => \ji|a[3]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~87_I_modesel\,
	combout => \ji|always1~87\);

-- atom is at LC6_D25
\pao|k1k~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k1k\ = DFFEA(!\key1~dataout\, GLOBAL(\fen|f\), , , \p1|Equal4~43\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k1k~I_pathsel\,
	dataa => \p1|Equal4~43\,
	datab => VCC,
	datac => VCC,
	datad => \key1~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k1k~I_modesel\,
	regout => \pao|k1k\);

-- atom is at LC1_D25
\pao|k1[0]~56_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k1[0]~56\ = !\comb_4|mkoo[1]\ & !\pao|k1k\ & !\key1~dataout\ & \comb_4|mkoo[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k1[0]~56_I_pathsel\,
	dataa => \comb_4|mkoo[1]\,
	datab => \pao|k1k\,
	datac => \key1~dataout\,
	datad => \comb_4|mkoo[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k1[0]~56_I_modesel\,
	combout => \pao|k1[0]~56\);

-- atom is at LC7_D25
\p1|Equal4~43_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal4~43\ = !\comb_4|mkoo[1]\ & \comb_4|mkoo[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal4~43_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \comb_4|mkoo[1]\,
	datad => \comb_4|mkoo[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal4~43_I_modesel\,
	combout => \p1|Equal4~43\);

-- atom is at LC7_B2
\nao|always0~546_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~577\ = \nao|cc[2]\ & \ji|c_rtl_0|wysi_counter|q[2]\ & (\nao|ee[2]\ $ !\ji|e[2]\) # !\nao|cc[2]\ & !\ji|c_rtl_0|wysi_counter|q[2]\ & (\nao|ee[2]\ $ !\ji|e[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~546_I_pathsel\,
	dataa => \nao|cc[2]\,
	datab => \nao|ee[2]\,
	datac => \ji|e[2]\,
	datad => \ji|c_rtl_0|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~546_I_modesel\,
	cascout => \nao|always0~577\);

-- atom is at LC8_B2
\nao|always0~551_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~551\ = (\nao|cc[1]\ & \ji|c_rtl_0|wysi_counter|q[1]\ & (\nao|ee[3]\ $ !\ji|e[3]\) # !\nao|cc[1]\ & !\ji|c_rtl_0|wysi_counter|q[1]\ & (\nao|ee[3]\ $ !\ji|e[3]\)) & CASCADE(\nao|always0~577\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~551_I_pathsel\,
	dataa => \nao|cc[1]\,
	datab => \nao|ee[3]\,
	datac => \ji|e[3]\,
	datad => \ji|c_rtl_0|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \nao|always0~577\,
	modesel => \nao|always0~551_I_modesel\,
	combout => \nao|always0~551\);

-- atom is at LC5_C12
\fen|i[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[27]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[27]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[27]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[27]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[27]~I_modesel\,
	regout => \fen|i[27]\);

-- atom is at LC1_C12
\fen|i[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[26]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[26]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[26]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[26]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[26]~I_modesel\,
	regout => \fen|i[26]\);

-- atom is at LC8_C12
\fen|i[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[25]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[25]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[25]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[25]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[25]~I_modesel\,
	regout => \fen|i[25]\);

-- atom is at LC2_C12
\fen|i[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[24]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[24]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[24]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[24]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[24]~I_modesel\,
	regout => \fen|i[24]\);

-- atom is at LC3_C12
\fen|Equal0~352_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~370\ = !\fen|i[24]\ & !\fen|i[25]\ & !\fen|i[26]\ & !\fen|i[27]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~352_I_pathsel\,
	dataa => \fen|i[24]\,
	datab => \fen|i[25]\,
	datac => \fen|i[26]\,
	datad => \fen|i[27]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal0~352_I_modesel\,
	cascout => \fen|Equal0~370\);

-- atom is at LC3_C10
\fen|i[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[31]\ = DFFEA(\fen|Add0|adder|unreg_res_node[31]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|unreg_res_node[31]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[31]~I_modesel\,
	regout => \fen|i[31]\);

-- atom is at LC7_C12
\fen|i[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[30]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[30]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[30]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[30]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[30]~I_modesel\,
	regout => \fen|i[30]\);

-- atom is at LC6_C12
\fen|i[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[29]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[29]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[29]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[29]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[29]~I_modesel\,
	regout => \fen|i[29]\);

-- atom is at LC8_C2
\fen|i[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[28]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[28]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[28]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[28]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[28]~I_modesel\,
	regout => \fen|i[28]\);

-- atom is at LC4_C12
\fen|Equal0~360_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~360\ = (!\fen|i[28]\ & !\fen|i[29]\ & !\fen|i[30]\ & !\fen|i[31]\) & CASCADE(\fen|Equal0~370\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~360_I_pathsel\,
	dataa => \fen|i[28]\,
	datab => \fen|i[29]\,
	datac => \fen|i[30]\,
	datad => \fen|i[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal0~370\,
	modesel => \fen|Equal0~360_I_modesel\,
	combout => \fen|Equal0~360\);

-- atom is at LC8_C1
\fen|i[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[19]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[19]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[19]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[19]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[19]~I_modesel\,
	regout => \fen|i[19]\);

-- atom is at LC3_C1
\fen|i[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[18]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[18]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[18]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[18]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[18]~I_modesel\,
	regout => \fen|i[18]\);

-- atom is at LC2_C1
\fen|i[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[17]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[17]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[17]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[17]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[17]~I_modesel\,
	regout => \fen|i[17]\);

-- atom is at LC1_C1
\fen|i[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[16]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[16]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[16]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[16]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[16]~I_modesel\,
	regout => \fen|i[16]\);

-- atom is at LC4_C1
\fen|Equal0~354_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~373\ = !\fen|i[16]\ & !\fen|i[17]\ & !\fen|i[18]\ & \fen|i[19]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~354_I_pathsel\,
	dataa => \fen|i[16]\,
	datab => \fen|i[17]\,
	datac => \fen|i[18]\,
	datad => \fen|i[19]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal0~354_I_modesel\,
	cascout => \fen|Equal0~373\);

-- atom is at LC7_C1
\fen|i[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[23]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[23]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[23]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[23]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[23]~I_modesel\,
	regout => \fen|i[23]\);

-- atom is at LC6_C1
\fen|i[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[20]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[20]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[20]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[20]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[20]~I_modesel\,
	regout => \fen|i[20]\);

-- atom is at LC1_C6
\fen|i[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[22]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[22]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[22]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[22]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[22]~I_modesel\,
	regout => \fen|i[22]\);

-- atom is at LC2_C28
\fen|i[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[21]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[21]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[21]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[21]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[21]~I_modesel\,
	regout => \fen|i[21]\);

-- atom is at LC5_C1
\fen|Equal0~361_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~361\ = (!\fen|i[21]\ & !\fen|i[22]\ & \fen|i[20]\ & \fen|i[23]\) & CASCADE(\fen|Equal0~373\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~361_I_pathsel\,
	dataa => \fen|i[21]\,
	datab => \fen|i[22]\,
	datac => \fen|i[20]\,
	datad => \fen|i[23]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal0~373\,
	modesel => \fen|Equal0~361_I_modesel\,
	combout => \fen|Equal0~361\);

-- atom is at LC1_C18
\fen|i[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[10]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[10]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[10]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[10]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[10]~I_modesel\,
	regout => \fen|i[10]\);

-- atom is at LC8_C18
\fen|i[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[9]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[9]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[9]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[9]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[9]~I_modesel\,
	regout => \fen|i[9]\);

-- atom is at LC1_C32
\fen|i[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[11]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[11]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[11]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[11]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[11]~I_modesel\,
	regout => \fen|i[11]\);

-- atom is at LC1_C13
\fen|i[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[8]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[8]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[8]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[8]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[8]~I_modesel\,
	regout => \fen|i[8]\);

-- atom is at LC2_C18
\fen|Equal0~356_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~376\ = !\fen|i[8]\ & !\fen|i[11]\ & \fen|i[9]\ & \fen|i[10]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~356_I_pathsel\,
	dataa => \fen|i[8]\,
	datab => \fen|i[11]\,
	datac => \fen|i[9]\,
	datad => \fen|i[10]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal0~356_I_modesel\,
	cascout => \fen|Equal0~376\);

-- atom is at LC4_C18
\fen|i[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[15]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[15]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[15]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[15]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[15]~I_modesel\,
	regout => \fen|i[15]\);

-- atom is at LC6_C18
\fen|i[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[12]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[12]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[12]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[12]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[12]~I_modesel\,
	regout => \fen|i[12]\);

-- atom is at LC1_C4
\fen|i[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[14]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[14]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[14]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[14]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[14]~I_modesel\,
	regout => \fen|i[14]\);

-- atom is at LC2_C14
\fen|i[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[13]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[13]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[13]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[13]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[13]~I_modesel\,
	regout => \fen|i[13]\);

-- atom is at LC3_C18
\fen|Equal0~362_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~362\ = (!\fen|i[13]\ & !\fen|i[14]\ & \fen|i[12]\ & \fen|i[15]\) & CASCADE(\fen|Equal0~376\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~362_I_pathsel\,
	dataa => \fen|i[13]\,
	datab => \fen|i[14]\,
	datac => \fen|i[12]\,
	datad => \fen|i[15]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal0~376\,
	modesel => \fen|Equal0~362_I_modesel\,
	combout => \fen|Equal0~362\);

-- atom is at LC3_C16
\fen|i[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[3]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[3]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[3]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[3]~I_modesel\,
	regout => \fen|i[3]\);

-- atom is at LC2_C16
\fen|i[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[2]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[2]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[2]~I_modesel\,
	regout => \fen|i[2]\);

-- atom is at LC1_C16
\fen|i[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[1]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[1]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[1]~I_modesel\,
	regout => \fen|i[1]\);

-- atom is at LC1_C3
\fen|i[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[0]\ = DFFEA(!\fen|i[0]\, GLOBAL(\clk~dataout\), , , , , )
-- \fen|Add0|adder|result_node|cout[0]\ = CARRY(\fen|i[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "33CC",
--	operation_mode => "arithmetic",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[0]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[0]~I_modesel\,
	regout => \fen|i[0]\,
	cout => \fen|Add0|adder|result_node|cout[0]\);

-- atom is at LC4_C16
\fen|Equal0~358_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~379\ = \fen|i[0]\ & \fen|i[1]\ & \fen|i[2]\ & \fen|i[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~358_I_pathsel\,
	dataa => \fen|i[0]\,
	datab => \fen|i[1]\,
	datac => \fen|i[2]\,
	datad => \fen|i[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal0~358_I_modesel\,
	cascout => \fen|Equal0~379\);

-- atom is at LC7_C16
\fen|i[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[6]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[6]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[6]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[6]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[6]~I_modesel\,
	regout => \fen|i[6]\);

-- atom is at LC6_C16
\fen|i[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[5]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[5]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[5]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[5]~I_modesel\,
	regout => \fen|i[5]\);

-- atom is at LC8_C16
\fen|i[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[4]\ = DFFEA(\fen|Add0|adder|result_node|cs_buffer[4]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[4]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add0|adder|result_node|cs_buffer[4]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[4]~I_modesel\,
	regout => \fen|i[4]\);

-- atom is at LC1_C15
\fen|i[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|i[7]\ = DFFEA(!\fen|Equal0~339\ & \fen|Add0|adder|result_node|cs_buffer[7]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|i[7]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal0~339\,
	datad => \fen|Add0|adder|result_node|cs_buffer[7]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|i[7]~I_modesel\,
	regout => \fen|i[7]\);

-- atom is at LC5_C16
\fen|Equal0~363_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal0~363\ = (!\fen|i[7]\ & \fen|i[4]\ & \fen|i[5]\ & \fen|i[6]\) & CASCADE(\fen|Equal0~379\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal0~363_I_pathsel\,
	dataa => \fen|i[7]\,
	datab => \fen|i[4]\,
	datac => \fen|i[5]\,
	datad => \fen|i[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal0~379\,
	modesel => \fen|Equal0~363_I_modesel\,
	combout => \fen|Equal0~363\);

-- atom is at LC4_D17
\p3|Add0|adder|result_node|cs_buffer[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[27]\ = \p3|i[27]\ $ \p3|Add0|adder|result_node|cout[26]\
-- \p3|Add0|adder|result_node|cout[27]\ = CARRY(\p3|i[27]\ & \p3|Add0|adder|result_node|cout[26]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[27]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[27]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[26]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[27]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[27]\,
	cout => \p3|Add0|adder|result_node|cout[27]\);

-- atom is at LC3_D17
\p3|Add0|adder|result_node|cs_buffer[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[26]\ = \p3|i[26]\ $ \p3|Add0|adder|result_node|cout[25]\
-- \p3|Add0|adder|result_node|cout[26]\ = CARRY(\p3|i[26]\ & \p3|Add0|adder|result_node|cout[25]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[26]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[26]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[25]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[26]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[26]\,
	cout => \p3|Add0|adder|result_node|cout[26]\);

-- atom is at LC2_D17
\p3|Add0|adder|result_node|cs_buffer[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[25]\ = \p3|i[25]\ $ \p3|Add0|adder|result_node|cout[24]\
-- \p3|Add0|adder|result_node|cout[25]\ = CARRY(\p3|i[25]\ & \p3|Add0|adder|result_node|cout[24]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[25]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[25]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[24]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[25]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[25]\,
	cout => \p3|Add0|adder|result_node|cout[25]\);

-- atom is at LC1_D17
\p3|Add0|adder|result_node|cs_buffer[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[24]\ = \p3|i[24]\ $ \p3|Add0|adder|result_node|cout[23]\
-- \p3|Add0|adder|result_node|cout[24]\ = CARRY(\p3|i[24]\ & \p3|Add0|adder|result_node|cout[23]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[24]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[24]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[23]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[24]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[24]\,
	cout => \p3|Add0|adder|result_node|cout[24]\);

-- atom is at LC7_D17
\p3|Add0|adder|result_node|cs_buffer[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[30]\ = \p3|i[30]\ $ \p3|Add0|adder|result_node|cout[29]\
-- \p3|Add0|adder|result_node|cout[30]\ = CARRY(\p3|i[30]\ & \p3|Add0|adder|result_node|cout[29]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[30]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[30]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[29]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[30]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[30]\,
	cout => \p3|Add0|adder|result_node|cout[30]\);

-- atom is at LC6_D17
\p3|Add0|adder|result_node|cs_buffer[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[29]\ = \p3|i[29]\ $ \p3|Add0|adder|result_node|cout[28]\
-- \p3|Add0|adder|result_node|cout[29]\ = CARRY(\p3|i[29]\ & \p3|Add0|adder|result_node|cout[28]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[29]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[29]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[28]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[29]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[29]\,
	cout => \p3|Add0|adder|result_node|cout[29]\);

-- atom is at LC5_D17
\p3|Add0|adder|result_node|cs_buffer[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[28]\ = \p3|i[28]\ $ \p3|Add0|adder|result_node|cout[27]\
-- \p3|Add0|adder|result_node|cout[28]\ = CARRY(\p3|i[28]\ & \p3|Add0|adder|result_node|cout[27]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[28]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[28]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[27]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[28]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[28]\,
	cout => \p3|Add0|adder|result_node|cout[28]\);

-- atom is at LC4_D15
\p3|Add0|adder|result_node|cs_buffer[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[19]\ = \p3|i[19]\ $ \p3|Add0|adder|result_node|cout[18]\
-- \p3|Add0|adder|result_node|cout[19]\ = CARRY(\p3|i[19]\ & \p3|Add0|adder|result_node|cout[18]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[19]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[19]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[18]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[19]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[19]\,
	cout => \p3|Add0|adder|result_node|cout[19]\);

-- atom is at LC3_D15
\p3|Add0|adder|result_node|cs_buffer[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[18]\ = \p3|i[18]\ $ \p3|Add0|adder|result_node|cout[17]\
-- \p3|Add0|adder|result_node|cout[18]\ = CARRY(\p3|i[18]\ & \p3|Add0|adder|result_node|cout[17]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[18]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[18]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[17]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[18]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[18]\,
	cout => \p3|Add0|adder|result_node|cout[18]\);

-- atom is at LC2_D15
\p3|Add0|adder|result_node|cs_buffer[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[17]\ = \p3|i[17]\ $ \p3|Add0|adder|result_node|cout[16]\
-- \p3|Add0|adder|result_node|cout[17]\ = CARRY(\p3|i[17]\ & \p3|Add0|adder|result_node|cout[16]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[17]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[17]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[16]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[17]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[17]\,
	cout => \p3|Add0|adder|result_node|cout[17]\);

-- atom is at LC1_D15
\p3|Add0|adder|result_node|cs_buffer[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[16]\ = \p3|i[16]\ $ \p3|Add0|adder|result_node|cout[15]\
-- \p3|Add0|adder|result_node|cout[16]\ = CARRY(\p3|i[16]\ & \p3|Add0|adder|result_node|cout[15]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[16]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[16]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[15]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[16]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[16]\,
	cout => \p3|Add0|adder|result_node|cout[16]\);

-- atom is at LC8_D15
\p3|Add0|adder|result_node|cs_buffer[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[23]\ = \p3|i[23]\ $ \p3|Add0|adder|result_node|cout[22]\
-- \p3|Add0|adder|result_node|cout[23]\ = CARRY(\p3|i[23]\ & \p3|Add0|adder|result_node|cout[22]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[23]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[23]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[22]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[23]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[23]\,
	cout => \p3|Add0|adder|result_node|cout[23]\);

-- atom is at LC7_D15
\p3|Add0|adder|result_node|cs_buffer[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[22]\ = \p3|i[22]\ $ \p3|Add0|adder|result_node|cout[21]\
-- \p3|Add0|adder|result_node|cout[22]\ = CARRY(\p3|i[22]\ & \p3|Add0|adder|result_node|cout[21]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[22]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[22]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[21]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[22]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[22]\,
	cout => \p3|Add0|adder|result_node|cout[22]\);

-- atom is at LC6_D15
\p3|Add0|adder|result_node|cs_buffer[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[21]\ = \p3|i[21]\ $ \p3|Add0|adder|result_node|cout[20]\
-- \p3|Add0|adder|result_node|cout[21]\ = CARRY(\p3|i[21]\ & \p3|Add0|adder|result_node|cout[20]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[21]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[21]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[20]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[21]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[21]\,
	cout => \p3|Add0|adder|result_node|cout[21]\);

-- atom is at LC5_D15
\p3|Add0|adder|result_node|cs_buffer[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[20]\ = \p3|i[20]\ $ \p3|Add0|adder|result_node|cout[19]\
-- \p3|Add0|adder|result_node|cout[20]\ = CARRY(\p3|i[20]\ & \p3|Add0|adder|result_node|cout[19]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[20]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[20]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[19]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[20]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[20]\,
	cout => \p3|Add0|adder|result_node|cout[20]\);

-- atom is at LC4_D13
\p3|Add0|adder|result_node|cs_buffer[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[11]\ = \p3|i[11]\ $ \p3|Add0|adder|result_node|cout[10]\
-- \p3|Add0|adder|result_node|cout[11]\ = CARRY(\p3|i[11]\ & \p3|Add0|adder|result_node|cout[10]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[11]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[11]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[10]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[11]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[11]\,
	cout => \p3|Add0|adder|result_node|cout[11]\);

-- atom is at LC3_D13
\p3|Add0|adder|result_node|cs_buffer[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[10]\ = \p3|i[10]\ $ \p3|Add0|adder|result_node|cout[9]\
-- \p3|Add0|adder|result_node|cout[10]\ = CARRY(\p3|i[10]\ & \p3|Add0|adder|result_node|cout[9]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[10]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[10]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[9]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[10]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[10]\,
	cout => \p3|Add0|adder|result_node|cout[10]\);

-- atom is at LC2_D13
\p3|Add0|adder|result_node|cs_buffer[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[9]\ = \p3|i[9]\ $ \p3|Add0|adder|result_node|cout[8]\
-- \p3|Add0|adder|result_node|cout[9]\ = CARRY(\p3|i[9]\ & \p3|Add0|adder|result_node|cout[8]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[9]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[9]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[8]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[9]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[9]\,
	cout => \p3|Add0|adder|result_node|cout[9]\);

-- atom is at LC1_D13
\p3|Add0|adder|result_node|cs_buffer[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[8]\ = \p3|i[8]\ $ \p3|Add0|adder|result_node|cout[7]\
-- \p3|Add0|adder|result_node|cout[8]\ = CARRY(\p3|i[8]\ & \p3|Add0|adder|result_node|cout[7]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[8]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[8]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[7]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[8]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[8]\,
	cout => \p3|Add0|adder|result_node|cout[8]\);

-- atom is at LC8_D13
\p3|Add0|adder|result_node|cs_buffer[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[15]\ = \p3|i[15]\ $ \p3|Add0|adder|result_node|cout[14]\
-- \p3|Add0|adder|result_node|cout[15]\ = CARRY(\p3|i[15]\ & \p3|Add0|adder|result_node|cout[14]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[15]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[15]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[14]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[15]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[15]\,
	cout => \p3|Add0|adder|result_node|cout[15]\);

-- atom is at LC7_D13
\p3|Add0|adder|result_node|cs_buffer[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[14]\ = \p3|i[14]\ $ \p3|Add0|adder|result_node|cout[13]\
-- \p3|Add0|adder|result_node|cout[14]\ = CARRY(\p3|i[14]\ & \p3|Add0|adder|result_node|cout[13]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[14]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[14]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[13]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[14]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[14]\,
	cout => \p3|Add0|adder|result_node|cout[14]\);

-- atom is at LC6_D13
\p3|Add0|adder|result_node|cs_buffer[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[13]\ = \p3|i[13]\ $ \p3|Add0|adder|result_node|cout[12]\
-- \p3|Add0|adder|result_node|cout[13]\ = CARRY(\p3|i[13]\ & \p3|Add0|adder|result_node|cout[12]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[13]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[13]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[12]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[13]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[13]\,
	cout => \p3|Add0|adder|result_node|cout[13]\);

-- atom is at LC5_D13
\p3|Add0|adder|result_node|cs_buffer[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[12]\ = \p3|i[12]\ $ \p3|Add0|adder|result_node|cout[11]\
-- \p3|Add0|adder|result_node|cout[12]\ = CARRY(\p3|i[12]\ & \p3|Add0|adder|result_node|cout[11]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[12]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[12]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[11]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[12]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[12]\,
	cout => \p3|Add0|adder|result_node|cout[12]\);

-- atom is at LC3_D11
\p3|Add0|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[2]\ = \p3|i[2]\ $ \p3|Add0|adder|result_node|cout[1]\
-- \p3|Add0|adder|result_node|cout[2]\ = CARRY(\p3|i[2]\ & \p3|Add0|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[2]\,
	cout => \p3|Add0|adder|result_node|cout[2]\);

-- atom is at LC4_D11
\p3|Add0|adder|result_node|cs_buffer[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[3]\ = \p3|i[3]\ $ \p3|Add0|adder|result_node|cout[2]\
-- \p3|Add0|adder|result_node|cout[3]\ = CARRY(\p3|i[3]\ & \p3|Add0|adder|result_node|cout[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[3]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[3]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[3]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[3]\,
	cout => \p3|Add0|adder|result_node|cout[3]\);

-- atom is at LC2_D11
\p3|Add0|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[1]\ = \p3|i[1]\ $ \p3|Add0|adder|result_node|cout[0]\
-- \p3|Add0|adder|result_node|cout[1]\ = CARRY(\p3|i[1]\ & \p3|Add0|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[1]\,
	cout => \p3|Add0|adder|result_node|cout[1]\);

-- atom is at LC7_D11
\p3|Add0|adder|result_node|cs_buffer[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[6]\ = \p3|i[6]\ $ \p3|Add0|adder|result_node|cout[5]\
-- \p3|Add0|adder|result_node|cout[6]\ = CARRY(\p3|i[6]\ & \p3|Add0|adder|result_node|cout[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[6]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[6]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[5]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[6]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[6]\,
	cout => \p3|Add0|adder|result_node|cout[6]\);

-- atom is at LC6_D11
\p3|Add0|adder|result_node|cs_buffer[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[5]\ = \p3|i[5]\ $ \p3|Add0|adder|result_node|cout[4]\
-- \p3|Add0|adder|result_node|cout[5]\ = CARRY(\p3|i[5]\ & \p3|Add0|adder|result_node|cout[4]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[5]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[5]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[4]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[5]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[5]\,
	cout => \p3|Add0|adder|result_node|cout[5]\);

-- atom is at LC8_D11
\p3|Add0|adder|result_node|cs_buffer[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[7]\ = \p3|i[7]\ $ \p3|Add0|adder|result_node|cout[6]\
-- \p3|Add0|adder|result_node|cout[7]\ = CARRY(\p3|i[7]\ & \p3|Add0|adder|result_node|cout[6]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[7]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[7]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[6]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[7]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[7]\,
	cout => \p3|Add0|adder|result_node|cout[7]\);

-- atom is at LC5_D11
\p3|Add0|adder|result_node|cs_buffer[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|result_node|cs_buffer[4]\ = \p3|i[4]\ $ \p3|Add0|adder|result_node|cout[3]\
-- \p3|Add0|adder|result_node|cout[4]\ = CARRY(\p3|i[4]\ & \p3|Add0|adder|result_node|cout[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|result_node|cs_buffer[4]~I_pathsel\,
	dataa => VCC,
	datab => \p3|i[4]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[3]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|result_node|cs_buffer[4]~I_modesel\,
	combout => \p3|Add0|adder|result_node|cs_buffer[4]\,
	cout => \p3|Add0|adder|result_node|cout[4]\);

-- atom is at LC8_E8
\fen|Add2|adder|unreg_res_node[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add2|adder|unreg_res_node[31]\ = \fen|Add2|adder|result_node|cout[30]\ $ \fen|k[31]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add2|adder|unreg_res_node[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|k[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add2|adder|result_node|cout[30]\,
	cascin => VCC,
	modesel => \fen|Add2|adder|unreg_res_node[31]~I_modesel\,
	combout => \fen|Add2|adder|unreg_res_node[31]\);

-- atom is at LC4_E24
\p2|Selector5~100_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector5~100\ = \pao|a_rtl_2|wysi_counter|q[3]\ & !\pao|a_rtl_2|wysi_counter|q[2]\ & !\pao|a_rtl_2|wysi_counter|q[1]\ # !\pao|a_rtl_2|wysi_counter|q[3]\ & (\pao|a_rtl_2|wysi_counter|q[1]\ $ !\pao|a_rtl_2|wysi_counter|q[0]\ # 
-- !\pao|a_rtl_2|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector5~100_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \pao|a_rtl_2|wysi_counter|q[2]\,
	datac => \pao|a_rtl_2|wysi_counter|q[1]\,
	datad => \pao|a_rtl_2|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector5~100_I_modesel\,
	combout => \p2|Selector5~100\);

-- atom is at LC4_F13
\p1|Add0|adder|result_node|cs_buffer[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[27]\ = \p1|i[27]\ $ \p1|Add0|adder|result_node|cout[26]\
-- \p1|Add0|adder|result_node|cout[27]\ = CARRY(\p1|i[27]\ & \p1|Add0|adder|result_node|cout[26]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[27]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[27]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[26]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[27]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[27]\,
	cout => \p1|Add0|adder|result_node|cout[27]\);

-- atom is at LC3_F13
\p1|Add0|adder|result_node|cs_buffer[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[26]\ = \p1|i[26]\ $ \p1|Add0|adder|result_node|cout[25]\
-- \p1|Add0|adder|result_node|cout[26]\ = CARRY(\p1|i[26]\ & \p1|Add0|adder|result_node|cout[25]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[26]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[26]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[25]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[26]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[26]\,
	cout => \p1|Add0|adder|result_node|cout[26]\);

-- atom is at LC2_F13
\p1|Add0|adder|result_node|cs_buffer[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[25]\ = \p1|i[25]\ $ \p1|Add0|adder|result_node|cout[24]\
-- \p1|Add0|adder|result_node|cout[25]\ = CARRY(\p1|i[25]\ & \p1|Add0|adder|result_node|cout[24]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[25]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[25]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[24]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[25]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[25]\,
	cout => \p1|Add0|adder|result_node|cout[25]\);

-- atom is at LC1_F13
\p1|Add0|adder|result_node|cs_buffer[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[24]\ = \p1|i[24]\ $ \p1|Add0|adder|result_node|cout[23]\
-- \p1|Add0|adder|result_node|cout[24]\ = CARRY(\p1|i[24]\ & \p1|Add0|adder|result_node|cout[23]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[24]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[24]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[23]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[24]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[24]\,
	cout => \p1|Add0|adder|result_node|cout[24]\);

-- atom is at LC7_F13
\p1|Add0|adder|result_node|cs_buffer[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[30]\ = \p1|i[30]\ $ \p1|Add0|adder|result_node|cout[29]\
-- \p1|Add0|adder|result_node|cout[30]\ = CARRY(\p1|i[30]\ & \p1|Add0|adder|result_node|cout[29]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[30]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[30]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[29]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[30]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[30]\,
	cout => \p1|Add0|adder|result_node|cout[30]\);

-- atom is at LC6_F13
\p1|Add0|adder|result_node|cs_buffer[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[29]\ = \p1|i[29]\ $ \p1|Add0|adder|result_node|cout[28]\
-- \p1|Add0|adder|result_node|cout[29]\ = CARRY(\p1|i[29]\ & \p1|Add0|adder|result_node|cout[28]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[29]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[29]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[28]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[29]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[29]\,
	cout => \p1|Add0|adder|result_node|cout[29]\);

-- atom is at LC5_F13
\p1|Add0|adder|result_node|cs_buffer[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[28]\ = \p1|i[28]\ $ \p1|Add0|adder|result_node|cout[27]\
-- \p1|Add0|adder|result_node|cout[28]\ = CARRY(\p1|i[28]\ & \p1|Add0|adder|result_node|cout[27]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[28]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[28]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[27]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[28]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[28]\,
	cout => \p1|Add0|adder|result_node|cout[28]\);

-- atom is at LC4_F11
\p1|Add0|adder|result_node|cs_buffer[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[19]\ = \p1|i[19]\ $ \p1|Add0|adder|result_node|cout[18]\
-- \p1|Add0|adder|result_node|cout[19]\ = CARRY(\p1|i[19]\ & \p1|Add0|adder|result_node|cout[18]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[19]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[19]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[18]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[19]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[19]\,
	cout => \p1|Add0|adder|result_node|cout[19]\);

-- atom is at LC3_F11
\p1|Add0|adder|result_node|cs_buffer[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[18]\ = \p1|i[18]\ $ \p1|Add0|adder|result_node|cout[17]\
-- \p1|Add0|adder|result_node|cout[18]\ = CARRY(\p1|i[18]\ & \p1|Add0|adder|result_node|cout[17]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[18]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[18]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[17]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[18]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[18]\,
	cout => \p1|Add0|adder|result_node|cout[18]\);

-- atom is at LC2_F11
\p1|Add0|adder|result_node|cs_buffer[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[17]\ = \p1|i[17]\ $ \p1|Add0|adder|result_node|cout[16]\
-- \p1|Add0|adder|result_node|cout[17]\ = CARRY(\p1|i[17]\ & \p1|Add0|adder|result_node|cout[16]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[17]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[17]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[16]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[17]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[17]\,
	cout => \p1|Add0|adder|result_node|cout[17]\);

-- atom is at LC1_F11
\p1|Add0|adder|result_node|cs_buffer[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[16]\ = \p1|i[16]\ $ \p1|Add0|adder|result_node|cout[15]\
-- \p1|Add0|adder|result_node|cout[16]\ = CARRY(\p1|i[16]\ & \p1|Add0|adder|result_node|cout[15]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[16]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[16]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[15]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[16]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[16]\,
	cout => \p1|Add0|adder|result_node|cout[16]\);

-- atom is at LC8_F11
\p1|Add0|adder|result_node|cs_buffer[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[23]\ = \p1|i[23]\ $ \p1|Add0|adder|result_node|cout[22]\
-- \p1|Add0|adder|result_node|cout[23]\ = CARRY(\p1|i[23]\ & \p1|Add0|adder|result_node|cout[22]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[23]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[23]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[22]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[23]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[23]\,
	cout => \p1|Add0|adder|result_node|cout[23]\);

-- atom is at LC7_F11
\p1|Add0|adder|result_node|cs_buffer[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[22]\ = \p1|i[22]\ $ \p1|Add0|adder|result_node|cout[21]\
-- \p1|Add0|adder|result_node|cout[22]\ = CARRY(\p1|i[22]\ & \p1|Add0|adder|result_node|cout[21]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[22]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[22]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[21]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[22]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[22]\,
	cout => \p1|Add0|adder|result_node|cout[22]\);

-- atom is at LC6_F11
\p1|Add0|adder|result_node|cs_buffer[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[21]\ = \p1|i[21]\ $ \p1|Add0|adder|result_node|cout[20]\
-- \p1|Add0|adder|result_node|cout[21]\ = CARRY(\p1|i[21]\ & \p1|Add0|adder|result_node|cout[20]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[21]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[21]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[20]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[21]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[21]\,
	cout => \p1|Add0|adder|result_node|cout[21]\);

-- atom is at LC5_F11
\p1|Add0|adder|result_node|cs_buffer[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[20]\ = \p1|i[20]\ $ \p1|Add0|adder|result_node|cout[19]\
-- \p1|Add0|adder|result_node|cout[20]\ = CARRY(\p1|i[20]\ & \p1|Add0|adder|result_node|cout[19]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[20]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[20]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[19]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[20]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[20]\,
	cout => \p1|Add0|adder|result_node|cout[20]\);

-- atom is at LC4_F9
\p1|Add0|adder|result_node|cs_buffer[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[11]\ = \p1|i[11]\ $ \p1|Add0|adder|result_node|cout[10]\
-- \p1|Add0|adder|result_node|cout[11]\ = CARRY(\p1|i[11]\ & \p1|Add0|adder|result_node|cout[10]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[11]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[11]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[10]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[11]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[11]\,
	cout => \p1|Add0|adder|result_node|cout[11]\);

-- atom is at LC3_F9
\p1|Add0|adder|result_node|cs_buffer[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[10]\ = \p1|i[10]\ $ \p1|Add0|adder|result_node|cout[9]\
-- \p1|Add0|adder|result_node|cout[10]\ = CARRY(\p1|i[10]\ & \p1|Add0|adder|result_node|cout[9]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[10]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[10]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[9]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[10]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[10]\,
	cout => \p1|Add0|adder|result_node|cout[10]\);

-- atom is at LC2_F9
\p1|Add0|adder|result_node|cs_buffer[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[9]\ = \p1|i[9]\ $ \p1|Add0|adder|result_node|cout[8]\
-- \p1|Add0|adder|result_node|cout[9]\ = CARRY(\p1|i[9]\ & \p1|Add0|adder|result_node|cout[8]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[9]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[9]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[8]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[9]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[9]\,
	cout => \p1|Add0|adder|result_node|cout[9]\);

-- atom is at LC1_F9
\p1|Add0|adder|result_node|cs_buffer[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[8]\ = \p1|i[8]\ $ \p1|Add0|adder|result_node|cout[7]\
-- \p1|Add0|adder|result_node|cout[8]\ = CARRY(\p1|i[8]\ & \p1|Add0|adder|result_node|cout[7]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[8]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[8]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[7]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[8]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[8]\,
	cout => \p1|Add0|adder|result_node|cout[8]\);

-- atom is at LC8_F9
\p1|Add0|adder|result_node|cs_buffer[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[15]\ = \p1|i[15]\ $ \p1|Add0|adder|result_node|cout[14]\
-- \p1|Add0|adder|result_node|cout[15]\ = CARRY(\p1|i[15]\ & \p1|Add0|adder|result_node|cout[14]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[15]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[15]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[14]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[15]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[15]\,
	cout => \p1|Add0|adder|result_node|cout[15]\);

-- atom is at LC7_F9
\p1|Add0|adder|result_node|cs_buffer[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[14]\ = \p1|i[14]\ $ \p1|Add0|adder|result_node|cout[13]\
-- \p1|Add0|adder|result_node|cout[14]\ = CARRY(\p1|i[14]\ & \p1|Add0|adder|result_node|cout[13]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[14]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[14]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[13]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[14]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[14]\,
	cout => \p1|Add0|adder|result_node|cout[14]\);

-- atom is at LC6_F9
\p1|Add0|adder|result_node|cs_buffer[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[13]\ = \p1|i[13]\ $ \p1|Add0|adder|result_node|cout[12]\
-- \p1|Add0|adder|result_node|cout[13]\ = CARRY(\p1|i[13]\ & \p1|Add0|adder|result_node|cout[12]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[13]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[13]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[12]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[13]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[13]\,
	cout => \p1|Add0|adder|result_node|cout[13]\);

-- atom is at LC5_F9
\p1|Add0|adder|result_node|cs_buffer[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[12]\ = \p1|i[12]\ $ \p1|Add0|adder|result_node|cout[11]\
-- \p1|Add0|adder|result_node|cout[12]\ = CARRY(\p1|i[12]\ & \p1|Add0|adder|result_node|cout[11]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[12]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[12]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[11]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[12]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[12]\,
	cout => \p1|Add0|adder|result_node|cout[12]\);

-- atom is at LC3_F7
\p1|Add0|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[2]\ = \p1|i[2]\ $ \p1|Add0|adder|result_node|cout[1]\
-- \p1|Add0|adder|result_node|cout[2]\ = CARRY(\p1|i[2]\ & \p1|Add0|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[2]\,
	cout => \p1|Add0|adder|result_node|cout[2]\);

-- atom is at LC4_F7
\p1|Add0|adder|result_node|cs_buffer[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[3]\ = \p1|i[3]\ $ \p1|Add0|adder|result_node|cout[2]\
-- \p1|Add0|adder|result_node|cout[3]\ = CARRY(\p1|i[3]\ & \p1|Add0|adder|result_node|cout[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[3]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[3]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[3]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[3]\,
	cout => \p1|Add0|adder|result_node|cout[3]\);

-- atom is at LC2_F7
\p1|Add0|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[1]\ = \p1|i[1]\ $ \p1|Add0|adder|result_node|cout[0]\
-- \p1|Add0|adder|result_node|cout[1]\ = CARRY(\p1|i[1]\ & \p1|Add0|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[1]\,
	cout => \p1|Add0|adder|result_node|cout[1]\);

-- atom is at LC7_F7
\p1|Add0|adder|result_node|cs_buffer[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[6]\ = \p1|i[6]\ $ \p1|Add0|adder|result_node|cout[5]\
-- \p1|Add0|adder|result_node|cout[6]\ = CARRY(\p1|i[6]\ & \p1|Add0|adder|result_node|cout[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[6]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[6]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[5]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[6]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[6]\,
	cout => \p1|Add0|adder|result_node|cout[6]\);

-- atom is at LC6_F7
\p1|Add0|adder|result_node|cs_buffer[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[5]\ = \p1|i[5]\ $ \p1|Add0|adder|result_node|cout[4]\
-- \p1|Add0|adder|result_node|cout[5]\ = CARRY(\p1|i[5]\ & \p1|Add0|adder|result_node|cout[4]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[5]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[5]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[4]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[5]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[5]\,
	cout => \p1|Add0|adder|result_node|cout[5]\);

-- atom is at LC8_F7
\p1|Add0|adder|result_node|cs_buffer[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[7]\ = \p1|i[7]\ $ \p1|Add0|adder|result_node|cout[6]\
-- \p1|Add0|adder|result_node|cout[7]\ = CARRY(\p1|i[7]\ & \p1|Add0|adder|result_node|cout[6]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[7]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[7]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[6]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[7]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[7]\,
	cout => \p1|Add0|adder|result_node|cout[7]\);

-- atom is at LC5_F7
\p1|Add0|adder|result_node|cs_buffer[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|result_node|cs_buffer[4]\ = \p1|i[4]\ $ \p1|Add0|adder|result_node|cout[3]\
-- \p1|Add0|adder|result_node|cout[4]\ = CARRY(\p1|i[4]\ & \p1|Add0|adder|result_node|cout[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|result_node|cs_buffer[4]~I_pathsel\,
	dataa => VCC,
	datab => \p1|i[4]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[3]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|result_node|cs_buffer[4]~I_modesel\,
	combout => \p1|Add0|adder|result_node|cs_buffer[4]\,
	cout => \p1|Add0|adder|result_node|cout[4]\);

-- atom is at LC7_B7
\p3|Selector18~93_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector18~93\ = \nao|ee[3]\ & (\p3|display[2]\) # !\nao|ee[3]\ & (\nao|ee[2]\ # \nao|ee[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector18~93_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[0]\,
	datad => \p3|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector18~93_I_modesel\,
	combout => \p3|Selector18~93\);

-- atom is at LC8_E30
\p2|Selector11~88_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector11~88\ = \pao|b_rtl_3|wysi_counter|q[3]\ & (\p2|display[2]\) # !\pao|b_rtl_3|wysi_counter|q[3]\ & (\pao|b_rtl_3|wysi_counter|q[2]\ # \pao|b_rtl_3|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector11~88_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[2]\,
	datac => \pao|b_rtl_3|wysi_counter|q[0]\,
	datad => \p2|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector11~88_I_modesel\,
	combout => \p2|Selector11~88\);

-- atom is at LC2_B15
\p3|Selector16~257_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector16~262\ = \nao|ee[0]\ # \nao|ee[1]\ & (\nao|ee[3]\) # !\nao|ee[1]\ & \nao|ee[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE4",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector16~257_I_pathsel\,
	dataa => \nao|ee[1]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[3]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector16~257_I_modesel\,
	cascout => \p3|Selector16~262\);

-- atom is at LC3_B15
\p3|Selector16~259_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector16~259\ = (!\nao|ee[2]\ & !\nao|ee[1]\ # !\p3|display[4]\ # !\nao|ee[3]\) & CASCADE(\p3|Selector16~262\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "777F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector16~259_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \p3|display[4]\,
	datac => \nao|ee[2]\,
	datad => \nao|ee[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector16~262\,
	modesel => \p3|Selector16~259_I_modesel\,
	combout => \p3|Selector16~259\);

-- atom is at LC8_A27
\fen|j[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[27]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[27]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[27]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[27]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[27]~I_modesel\,
	regout => \fen|j[27]\);

-- atom is at LC7_A27
\fen|j[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[26]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[26]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[26]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[26]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[26]~I_modesel\,
	regout => \fen|j[26]\);

-- atom is at LC1_A33
\fen|j[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[25]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[25]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[25]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[25]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[25]~I_modesel\,
	regout => \fen|j[25]\);

-- atom is at LC2_A30
\fen|j[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[24]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[24]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[24]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[24]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[24]~I_modesel\,
	regout => \fen|j[24]\);

-- atom is at LC4_A27
\fen|Equal1~352_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~370\ = !\fen|j[24]\ & !\fen|j[25]\ & !\fen|j[26]\ & !\fen|j[27]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~352_I_pathsel\,
	dataa => \fen|j[24]\,
	datab => \fen|j[25]\,
	datac => \fen|j[26]\,
	datad => \fen|j[27]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal1~352_I_modesel\,
	cascout => \fen|Equal1~370\);

-- atom is at LC2_A29
\fen|j[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[31]\ = DFFEA(\fen|Add1|adder|unreg_res_node[31]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|unreg_res_node[31]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[31]~I_modesel\,
	regout => \fen|j[31]\);

-- atom is at LC5_A18
\fen|j[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[30]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[30]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[30]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[30]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[30]~I_modesel\,
	regout => \fen|j[30]\);

-- atom is at LC6_A24
\fen|j[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[29]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[29]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[29]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[29]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[29]~I_modesel\,
	regout => \fen|j[29]\);

-- atom is at LC5_A14
\fen|j[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[28]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[28]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[28]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[28]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[28]~I_modesel\,
	regout => \fen|j[28]\);

-- atom is at LC5_A27
\fen|Equal1~360_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~360\ = (!\fen|j[28]\ & !\fen|j[29]\ & !\fen|j[30]\ & !\fen|j[31]\) & CASCADE(\fen|Equal1~370\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~360_I_pathsel\,
	dataa => \fen|j[28]\,
	datab => \fen|j[29]\,
	datac => \fen|j[30]\,
	datad => \fen|j[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal1~370\,
	modesel => \fen|Equal1~360_I_modesel\,
	combout => \fen|Equal1~360\);

-- atom is at LC1_A27
\fen|j[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[16]\ = DFFEA(!\fen|Equal1~339\ & \fen|Add1|adder|result_node|cs_buffer[16]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[16]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal1~339\,
	datad => \fen|Add1|adder|result_node|cs_buffer[16]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[16]~I_modesel\,
	regout => \fen|j[16]\);

-- atom is at LC8_A32
\fen|j[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[19]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[19]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[19]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[19]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[19]~I_modesel\,
	regout => \fen|j[19]\);

-- atom is at LC2_A13
\fen|j[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[18]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[18]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[18]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[18]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[18]~I_modesel\,
	regout => \fen|j[18]\);

-- atom is at LC1_A17
\fen|j[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[17]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[17]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[17]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[17]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[17]~I_modesel\,
	regout => \fen|j[17]\);

-- atom is at LC2_A27
\fen|Equal1~354_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~373\ = !\fen|j[17]\ & !\fen|j[18]\ & !\fen|j[19]\ & \fen|j[16]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~354_I_pathsel\,
	dataa => \fen|j[17]\,
	datab => \fen|j[18]\,
	datac => \fen|j[19]\,
	datad => \fen|j[16]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal1~354_I_modesel\,
	cascout => \fen|Equal1~373\);

-- atom is at LC5_A34
\fen|j[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[23]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[23]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[23]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[23]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[23]~I_modesel\,
	regout => \fen|j[23]\);

-- atom is at LC8_A35
\fen|j[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[22]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[22]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[22]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[22]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[22]~I_modesel\,
	regout => \fen|j[22]\);

-- atom is at LC2_A18
\fen|j[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[21]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[21]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[21]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[21]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[21]~I_modesel\,
	regout => \fen|j[21]\);

-- atom is at LC8_A31
\fen|j[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[20]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[20]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[20]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[20]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[20]~I_modesel\,
	regout => \fen|j[20]\);

-- atom is at LC3_A27
\fen|Equal1~361_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~361\ = (!\fen|j[20]\ & !\fen|j[21]\ & !\fen|j[22]\ & !\fen|j[23]\) & CASCADE(\fen|Equal1~373\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0001",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~361_I_pathsel\,
	dataa => \fen|j[20]\,
	datab => \fen|j[21]\,
	datac => \fen|j[22]\,
	datad => \fen|j[23]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal1~373\,
	modesel => \fen|Equal1~361_I_modesel\,
	combout => \fen|Equal1~361\);

-- atom is at LC4_A34
\fen|j[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[10]\ = DFFEA(!\fen|Equal1~339\ & \fen|Add1|adder|result_node|cs_buffer[10]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[10]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal1~339\,
	datad => \fen|Add1|adder|result_node|cs_buffer[10]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[10]~I_modesel\,
	regout => \fen|j[10]\);

-- atom is at LC1_A30
\fen|j[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[9]\ = DFFEA(!\fen|Equal1~339\ & \fen|Add1|adder|result_node|cs_buffer[9]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[9]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal1~339\,
	datad => \fen|Add1|adder|result_node|cs_buffer[9]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[9]~I_modesel\,
	regout => \fen|j[9]\);

-- atom is at LC2_A36
\fen|j[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[11]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[11]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[11]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[11]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[11]~I_modesel\,
	regout => \fen|j[11]\);

-- atom is at LC1_A36
\fen|j[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[8]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[8]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[8]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[8]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[8]~I_modesel\,
	regout => \fen|j[8]\);

-- atom is at LC6_A36
\fen|Equal1~356_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~376\ = !\fen|j[8]\ & !\fen|j[11]\ & \fen|j[9]\ & \fen|j[10]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~356_I_pathsel\,
	dataa => \fen|j[8]\,
	datab => \fen|j[11]\,
	datac => \fen|j[9]\,
	datad => \fen|j[10]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal1~356_I_modesel\,
	cascout => \fen|Equal1~376\);

-- atom is at LC3_A36
\fen|j[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[15]\ = DFFEA(!\fen|Equal1~339\ & \fen|Add1|adder|result_node|cs_buffer[15]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[15]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal1~339\,
	datad => \fen|Add1|adder|result_node|cs_buffer[15]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[15]~I_modesel\,
	regout => \fen|j[15]\);

-- atom is at LC1_A28
\fen|j[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[14]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[14]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[14]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[14]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[14]~I_modesel\,
	regout => \fen|j[14]\);

-- atom is at LC1_A26
\fen|j[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[13]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[13]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[13]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[13]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[13]~I_modesel\,
	regout => \fen|j[13]\);

-- atom is at LC1_A20
\fen|j[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[12]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[12]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[12]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[12]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[12]~I_modesel\,
	regout => \fen|j[12]\);

-- atom is at LC7_A36
\fen|Equal1~362_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~362\ = (!\fen|j[12]\ & !\fen|j[13]\ & !\fen|j[14]\ & \fen|j[15]\) & CASCADE(\fen|Equal1~376\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~362_I_pathsel\,
	dataa => \fen|j[12]\,
	datab => \fen|j[13]\,
	datac => \fen|j[14]\,
	datad => \fen|j[15]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal1~376\,
	modesel => \fen|Equal1~362_I_modesel\,
	combout => \fen|Equal1~362\);

-- atom is at LC1_A31
\fen|j[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[3]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[3]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[3]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[3]~I_modesel\,
	regout => \fen|j[3]\);

-- atom is at LC1_A34
\fen|j[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[2]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[2]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[2]~I_modesel\,
	regout => \fen|j[2]\);

-- atom is at LC1_A22
\fen|j[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[1]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[1]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[1]~I_modesel\,
	regout => \fen|j[1]\);

-- atom is at LC1_A19
\fen|j[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[0]\ = DFFEA(!\fen|j[0]\, GLOBAL(\clk~dataout\), , , , , )
-- \fen|Add1|adder|result_node|cout[0]\ = CARRY(\fen|j[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "33CC",
--	operation_mode => "arithmetic",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[0]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[0]~I_modesel\,
	regout => \fen|j[0]\,
	cout => \fen|Add1|adder|result_node|cout[0]\);

-- atom is at LC6_A34
\fen|Equal1~358_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~379\ = \fen|j[0]\ & \fen|j[1]\ & \fen|j[2]\ & \fen|j[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~358_I_pathsel\,
	dataa => \fen|j[0]\,
	datab => \fen|j[1]\,
	datac => \fen|j[2]\,
	datad => \fen|j[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \fen|Equal1~358_I_modesel\,
	cascout => \fen|Equal1~379\);

-- atom is at LC3_A34
\fen|j[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[7]\ = DFFEA(!\fen|Equal1~339\ & \fen|Add1|adder|result_node|cs_buffer[7]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[7]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal1~339\,
	datad => \fen|Add1|adder|result_node|cs_buffer[7]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[7]~I_modesel\,
	regout => \fen|j[7]\);

-- atom is at LC1_A29
\fen|j[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[4]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[4]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[4]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[4]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[4]~I_modesel\,
	regout => \fen|j[4]\);

-- atom is at LC2_A34
\fen|j[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[6]\ = DFFEA(\fen|Add1|adder|result_node|cs_buffer[6]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[6]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|Add1|adder|result_node|cs_buffer[6]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[6]~I_modesel\,
	regout => \fen|j[6]\);

-- atom is at LC1_A32
\fen|j[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|j[5]\ = DFFEA(!\fen|Equal1~339\ & \fen|Add1|adder|result_node|cs_buffer[5]\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|j[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \fen|Equal1~339\,
	datad => \fen|Add1|adder|result_node|cs_buffer[5]\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|j[5]~I_modesel\,
	regout => \fen|j[5]\);

-- atom is at LC7_A34
\fen|Equal1~363_I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Equal1~363\ = (!\fen|j[5]\ & !\fen|j[6]\ & \fen|j[4]\ & \fen|j[7]\) & CASCADE(\fen|Equal1~379\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Equal1~363_I_pathsel\,
	dataa => \fen|j[5]\,
	datab => \fen|j[6]\,
	datac => \fen|j[4]\,
	datad => \fen|j[7]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \fen|Equal1~379\,
	modesel => \fen|Equal1~363_I_modesel\,
	combout => \fen|Equal1~363\);

-- atom is at LC4_C9
\fen|Add0|adder|result_node|cs_buffer[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[27]\ = \fen|i[27]\ $ \fen|Add0|adder|result_node|cout[26]\
-- \fen|Add0|adder|result_node|cout[27]\ = CARRY(\fen|i[27]\ & \fen|Add0|adder|result_node|cout[26]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[27]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[27]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[26]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[27]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[27]\,
	cout => \fen|Add0|adder|result_node|cout[27]\);

-- atom is at LC3_C9
\fen|Add0|adder|result_node|cs_buffer[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[26]\ = \fen|i[26]\ $ \fen|Add0|adder|result_node|cout[25]\
-- \fen|Add0|adder|result_node|cout[26]\ = CARRY(\fen|i[26]\ & \fen|Add0|adder|result_node|cout[25]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[26]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[26]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[25]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[26]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[26]\,
	cout => \fen|Add0|adder|result_node|cout[26]\);

-- atom is at LC2_C9
\fen|Add0|adder|result_node|cs_buffer[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[25]\ = \fen|i[25]\ $ \fen|Add0|adder|result_node|cout[24]\
-- \fen|Add0|adder|result_node|cout[25]\ = CARRY(\fen|i[25]\ & \fen|Add0|adder|result_node|cout[24]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[25]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[25]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[24]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[25]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[25]\,
	cout => \fen|Add0|adder|result_node|cout[25]\);

-- atom is at LC1_C9
\fen|Add0|adder|result_node|cs_buffer[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[24]\ = \fen|i[24]\ $ \fen|Add0|adder|result_node|cout[23]\
-- \fen|Add0|adder|result_node|cout[24]\ = CARRY(\fen|i[24]\ & \fen|Add0|adder|result_node|cout[23]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[24]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[24]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[23]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[24]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[24]\,
	cout => \fen|Add0|adder|result_node|cout[24]\);

-- atom is at LC7_C9
\fen|Add0|adder|result_node|cs_buffer[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[30]\ = \fen|i[30]\ $ \fen|Add0|adder|result_node|cout[29]\
-- \fen|Add0|adder|result_node|cout[30]\ = CARRY(\fen|i[30]\ & \fen|Add0|adder|result_node|cout[29]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[30]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[30]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[29]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[30]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[30]\,
	cout => \fen|Add0|adder|result_node|cout[30]\);

-- atom is at LC6_C9
\fen|Add0|adder|result_node|cs_buffer[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[29]\ = \fen|i[29]\ $ \fen|Add0|adder|result_node|cout[28]\
-- \fen|Add0|adder|result_node|cout[29]\ = CARRY(\fen|i[29]\ & \fen|Add0|adder|result_node|cout[28]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[29]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[29]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[28]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[29]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[29]\,
	cout => \fen|Add0|adder|result_node|cout[29]\);

-- atom is at LC5_C9
\fen|Add0|adder|result_node|cs_buffer[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[28]\ = \fen|i[28]\ $ \fen|Add0|adder|result_node|cout[27]\
-- \fen|Add0|adder|result_node|cout[28]\ = CARRY(\fen|i[28]\ & \fen|Add0|adder|result_node|cout[27]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[28]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[28]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[27]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[28]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[28]\,
	cout => \fen|Add0|adder|result_node|cout[28]\);

-- atom is at LC4_C7
\fen|Add0|adder|result_node|cs_buffer[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[19]\ = \fen|i[19]\ $ \fen|Add0|adder|result_node|cout[18]\
-- \fen|Add0|adder|result_node|cout[19]\ = CARRY(\fen|i[19]\ & \fen|Add0|adder|result_node|cout[18]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[19]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[19]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[18]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[19]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[19]\,
	cout => \fen|Add0|adder|result_node|cout[19]\);

-- atom is at LC3_C7
\fen|Add0|adder|result_node|cs_buffer[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[18]\ = \fen|i[18]\ $ \fen|Add0|adder|result_node|cout[17]\
-- \fen|Add0|adder|result_node|cout[18]\ = CARRY(\fen|i[18]\ & \fen|Add0|adder|result_node|cout[17]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[18]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[18]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[17]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[18]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[18]\,
	cout => \fen|Add0|adder|result_node|cout[18]\);

-- atom is at LC2_C7
\fen|Add0|adder|result_node|cs_buffer[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[17]\ = \fen|i[17]\ $ \fen|Add0|adder|result_node|cout[16]\
-- \fen|Add0|adder|result_node|cout[17]\ = CARRY(\fen|i[17]\ & \fen|Add0|adder|result_node|cout[16]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[17]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[17]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[16]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[17]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[17]\,
	cout => \fen|Add0|adder|result_node|cout[17]\);

-- atom is at LC1_C7
\fen|Add0|adder|result_node|cs_buffer[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[16]\ = \fen|i[16]\ $ \fen|Add0|adder|result_node|cout[15]\
-- \fen|Add0|adder|result_node|cout[16]\ = CARRY(\fen|i[16]\ & \fen|Add0|adder|result_node|cout[15]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[16]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[16]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[15]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[16]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[16]\,
	cout => \fen|Add0|adder|result_node|cout[16]\);

-- atom is at LC8_C7
\fen|Add0|adder|result_node|cs_buffer[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[23]\ = \fen|i[23]\ $ \fen|Add0|adder|result_node|cout[22]\
-- \fen|Add0|adder|result_node|cout[23]\ = CARRY(\fen|i[23]\ & \fen|Add0|adder|result_node|cout[22]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[23]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[23]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[22]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[23]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[23]\,
	cout => \fen|Add0|adder|result_node|cout[23]\);

-- atom is at LC5_C7
\fen|Add0|adder|result_node|cs_buffer[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[20]\ = \fen|i[20]\ $ \fen|Add0|adder|result_node|cout[19]\
-- \fen|Add0|adder|result_node|cout[20]\ = CARRY(\fen|i[20]\ & \fen|Add0|adder|result_node|cout[19]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[20]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[20]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[19]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[20]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[20]\,
	cout => \fen|Add0|adder|result_node|cout[20]\);

-- atom is at LC7_C7
\fen|Add0|adder|result_node|cs_buffer[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[22]\ = \fen|i[22]\ $ \fen|Add0|adder|result_node|cout[21]\
-- \fen|Add0|adder|result_node|cout[22]\ = CARRY(\fen|i[22]\ & \fen|Add0|adder|result_node|cout[21]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[22]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[22]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[21]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[22]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[22]\,
	cout => \fen|Add0|adder|result_node|cout[22]\);

-- atom is at LC6_C7
\fen|Add0|adder|result_node|cs_buffer[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[21]\ = \fen|i[21]\ $ \fen|Add0|adder|result_node|cout[20]\
-- \fen|Add0|adder|result_node|cout[21]\ = CARRY(\fen|i[21]\ & \fen|Add0|adder|result_node|cout[20]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[21]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[21]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[20]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[21]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[21]\,
	cout => \fen|Add0|adder|result_node|cout[21]\);

-- atom is at LC3_C5
\fen|Add0|adder|result_node|cs_buffer[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[10]\ = \fen|i[10]\ $ \fen|Add0|adder|result_node|cout[9]\
-- \fen|Add0|adder|result_node|cout[10]\ = CARRY(\fen|i[10]\ & \fen|Add0|adder|result_node|cout[9]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[10]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[10]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[9]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[10]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[10]\,
	cout => \fen|Add0|adder|result_node|cout[10]\);

-- atom is at LC2_C5
\fen|Add0|adder|result_node|cs_buffer[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[9]\ = \fen|i[9]\ $ \fen|Add0|adder|result_node|cout[8]\
-- \fen|Add0|adder|result_node|cout[9]\ = CARRY(\fen|i[9]\ & \fen|Add0|adder|result_node|cout[8]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[9]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[9]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[8]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[9]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[9]\,
	cout => \fen|Add0|adder|result_node|cout[9]\);

-- atom is at LC4_C5
\fen|Add0|adder|result_node|cs_buffer[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[11]\ = \fen|i[11]\ $ \fen|Add0|adder|result_node|cout[10]\
-- \fen|Add0|adder|result_node|cout[11]\ = CARRY(\fen|i[11]\ & \fen|Add0|adder|result_node|cout[10]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[11]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[11]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[10]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[11]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[11]\,
	cout => \fen|Add0|adder|result_node|cout[11]\);

-- atom is at LC1_C5
\fen|Add0|adder|result_node|cs_buffer[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[8]\ = \fen|i[8]\ $ \fen|Add0|adder|result_node|cout[7]\
-- \fen|Add0|adder|result_node|cout[8]\ = CARRY(\fen|i[8]\ & \fen|Add0|adder|result_node|cout[7]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[8]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[8]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[7]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[8]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[8]\,
	cout => \fen|Add0|adder|result_node|cout[8]\);

-- atom is at LC8_C5
\fen|Add0|adder|result_node|cs_buffer[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[15]\ = \fen|i[15]\ $ \fen|Add0|adder|result_node|cout[14]\
-- \fen|Add0|adder|result_node|cout[15]\ = CARRY(\fen|i[15]\ & \fen|Add0|adder|result_node|cout[14]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[15]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[15]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[14]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[15]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[15]\,
	cout => \fen|Add0|adder|result_node|cout[15]\);

-- atom is at LC5_C5
\fen|Add0|adder|result_node|cs_buffer[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[12]\ = \fen|i[12]\ $ \fen|Add0|adder|result_node|cout[11]\
-- \fen|Add0|adder|result_node|cout[12]\ = CARRY(\fen|i[12]\ & \fen|Add0|adder|result_node|cout[11]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[12]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[12]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[11]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[12]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[12]\,
	cout => \fen|Add0|adder|result_node|cout[12]\);

-- atom is at LC7_C5
\fen|Add0|adder|result_node|cs_buffer[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[14]\ = \fen|i[14]\ $ \fen|Add0|adder|result_node|cout[13]\
-- \fen|Add0|adder|result_node|cout[14]\ = CARRY(\fen|i[14]\ & \fen|Add0|adder|result_node|cout[13]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[14]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[14]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[13]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[14]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[14]\,
	cout => \fen|Add0|adder|result_node|cout[14]\);

-- atom is at LC6_C5
\fen|Add0|adder|result_node|cs_buffer[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[13]\ = \fen|i[13]\ $ \fen|Add0|adder|result_node|cout[12]\
-- \fen|Add0|adder|result_node|cout[13]\ = CARRY(\fen|i[13]\ & \fen|Add0|adder|result_node|cout[12]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[13]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[13]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[12]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[13]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[13]\,
	cout => \fen|Add0|adder|result_node|cout[13]\);

-- atom is at LC4_C3
\fen|Add0|adder|result_node|cs_buffer[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[3]\ = \fen|i[3]\ $ \fen|Add0|adder|result_node|cout[2]\
-- \fen|Add0|adder|result_node|cout[3]\ = CARRY(\fen|i[3]\ & \fen|Add0|adder|result_node|cout[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[3]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[3]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[3]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[3]\,
	cout => \fen|Add0|adder|result_node|cout[3]\);

-- atom is at LC3_C3
\fen|Add0|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[2]\ = \fen|i[2]\ $ \fen|Add0|adder|result_node|cout[1]\
-- \fen|Add0|adder|result_node|cout[2]\ = CARRY(\fen|i[2]\ & \fen|Add0|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[2]\,
	cout => \fen|Add0|adder|result_node|cout[2]\);

-- atom is at LC2_C3
\fen|Add0|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[1]\ = \fen|i[1]\ $ \fen|Add0|adder|result_node|cout[0]\
-- \fen|Add0|adder|result_node|cout[1]\ = CARRY(\fen|i[1]\ & \fen|Add0|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[1]\,
	cout => \fen|Add0|adder|result_node|cout[1]\);

-- atom is at LC7_C3
\fen|Add0|adder|result_node|cs_buffer[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[6]\ = \fen|i[6]\ $ \fen|Add0|adder|result_node|cout[5]\
-- \fen|Add0|adder|result_node|cout[6]\ = CARRY(\fen|i[6]\ & \fen|Add0|adder|result_node|cout[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[6]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[6]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[5]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[6]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[6]\,
	cout => \fen|Add0|adder|result_node|cout[6]\);

-- atom is at LC6_C3
\fen|Add0|adder|result_node|cs_buffer[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[5]\ = \fen|i[5]\ $ \fen|Add0|adder|result_node|cout[4]\
-- \fen|Add0|adder|result_node|cout[5]\ = CARRY(\fen|i[5]\ & \fen|Add0|adder|result_node|cout[4]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[5]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[5]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[4]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[5]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[5]\,
	cout => \fen|Add0|adder|result_node|cout[5]\);

-- atom is at LC5_C3
\fen|Add0|adder|result_node|cs_buffer[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[4]\ = \fen|i[4]\ $ \fen|Add0|adder|result_node|cout[3]\
-- \fen|Add0|adder|result_node|cout[4]\ = CARRY(\fen|i[4]\ & \fen|Add0|adder|result_node|cout[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[4]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[4]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[3]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[4]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[4]\,
	cout => \fen|Add0|adder|result_node|cout[4]\);

-- atom is at LC8_C3
\fen|Add0|adder|result_node|cs_buffer[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|result_node|cs_buffer[7]\ = \fen|i[7]\ $ \fen|Add0|adder|result_node|cout[6]\
-- \fen|Add0|adder|result_node|cout[7]\ = CARRY(\fen|i[7]\ & \fen|Add0|adder|result_node|cout[6]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|result_node|cs_buffer[7]~I_pathsel\,
	dataa => VCC,
	datab => \fen|i[7]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[6]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|result_node|cs_buffer[7]~I_modesel\,
	combout => \fen|Add0|adder|result_node|cs_buffer[7]\,
	cout => \fen|Add0|adder|result_node|cout[7]\);

-- atom is at LC8_D17
\p3|Add0|adder|unreg_res_node[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Add0|adder|unreg_res_node[31]\ = \p3|Add0|adder|result_node|cout[30]\ $ \p3|i[31]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Add0|adder|unreg_res_node[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|i[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p3|Add0|adder|result_node|cout[30]\,
	cascin => VCC,
	modesel => \p3|Add0|adder|unreg_res_node[31]~I_modesel\,
	combout => \p3|Add0|adder|unreg_res_node[31]\);

-- atom is at LC8_F13
\p1|Add0|adder|unreg_res_node[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Add0|adder|unreg_res_node[31]\ = \p1|Add0|adder|result_node|cout[30]\ $ \p1|i[31]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Add0|adder|unreg_res_node[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|i[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \p1|Add0|adder|result_node|cout[30]\,
	cascin => VCC,
	modesel => \p1|Add0|adder|unreg_res_node[31]~I_modesel\,
	combout => \p1|Add0|adder|unreg_res_node[31]\);

-- atom is at LC4_A25
\fen|Add1|adder|result_node|cs_buffer[27]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[27]\ = \fen|j[27]\ $ \fen|Add1|adder|result_node|cout[26]\
-- \fen|Add1|adder|result_node|cout[27]\ = CARRY(\fen|j[27]\ & \fen|Add1|adder|result_node|cout[26]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[27]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[27]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[26]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[27]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[27]\,
	cout => \fen|Add1|adder|result_node|cout[27]\);

-- atom is at LC3_A25
\fen|Add1|adder|result_node|cs_buffer[26]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[26]\ = \fen|j[26]\ $ \fen|Add1|adder|result_node|cout[25]\
-- \fen|Add1|adder|result_node|cout[26]\ = CARRY(\fen|j[26]\ & \fen|Add1|adder|result_node|cout[25]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[26]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[26]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[25]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[26]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[26]\,
	cout => \fen|Add1|adder|result_node|cout[26]\);

-- atom is at LC2_A25
\fen|Add1|adder|result_node|cs_buffer[25]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[25]\ = \fen|j[25]\ $ \fen|Add1|adder|result_node|cout[24]\
-- \fen|Add1|adder|result_node|cout[25]\ = CARRY(\fen|j[25]\ & \fen|Add1|adder|result_node|cout[24]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[25]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[25]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[24]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[25]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[25]\,
	cout => \fen|Add1|adder|result_node|cout[25]\);

-- atom is at LC1_A25
\fen|Add1|adder|result_node|cs_buffer[24]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[24]\ = \fen|j[24]\ $ \fen|Add1|adder|result_node|cout[23]\
-- \fen|Add1|adder|result_node|cout[24]\ = CARRY(\fen|j[24]\ & \fen|Add1|adder|result_node|cout[23]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[24]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[24]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[23]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[24]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[24]\,
	cout => \fen|Add1|adder|result_node|cout[24]\);

-- atom is at LC7_A25
\fen|Add1|adder|result_node|cs_buffer[30]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[30]\ = \fen|j[30]\ $ \fen|Add1|adder|result_node|cout[29]\
-- \fen|Add1|adder|result_node|cout[30]\ = CARRY(\fen|j[30]\ & \fen|Add1|adder|result_node|cout[29]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[30]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[30]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[29]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[30]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[30]\,
	cout => \fen|Add1|adder|result_node|cout[30]\);

-- atom is at LC6_A25
\fen|Add1|adder|result_node|cs_buffer[29]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[29]\ = \fen|j[29]\ $ \fen|Add1|adder|result_node|cout[28]\
-- \fen|Add1|adder|result_node|cout[29]\ = CARRY(\fen|j[29]\ & \fen|Add1|adder|result_node|cout[28]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[29]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[29]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[28]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[29]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[29]\,
	cout => \fen|Add1|adder|result_node|cout[29]\);

-- atom is at LC5_A25
\fen|Add1|adder|result_node|cs_buffer[28]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[28]\ = \fen|j[28]\ $ \fen|Add1|adder|result_node|cout[27]\
-- \fen|Add1|adder|result_node|cout[28]\ = CARRY(\fen|j[28]\ & \fen|Add1|adder|result_node|cout[27]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[28]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[28]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[27]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[28]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[28]\,
	cout => \fen|Add1|adder|result_node|cout[28]\);

-- atom is at LC1_A23
\fen|Add1|adder|result_node|cs_buffer[16]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[16]\ = \fen|j[16]\ $ \fen|Add1|adder|result_node|cout[15]\
-- \fen|Add1|adder|result_node|cout[16]\ = CARRY(\fen|j[16]\ & \fen|Add1|adder|result_node|cout[15]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[16]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[16]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[15]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[16]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[16]\,
	cout => \fen|Add1|adder|result_node|cout[16]\);

-- atom is at LC4_A23
\fen|Add1|adder|result_node|cs_buffer[19]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[19]\ = \fen|j[19]\ $ \fen|Add1|adder|result_node|cout[18]\
-- \fen|Add1|adder|result_node|cout[19]\ = CARRY(\fen|j[19]\ & \fen|Add1|adder|result_node|cout[18]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[19]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[19]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[18]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[19]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[19]\,
	cout => \fen|Add1|adder|result_node|cout[19]\);

-- atom is at LC3_A23
\fen|Add1|adder|result_node|cs_buffer[18]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[18]\ = \fen|j[18]\ $ \fen|Add1|adder|result_node|cout[17]\
-- \fen|Add1|adder|result_node|cout[18]\ = CARRY(\fen|j[18]\ & \fen|Add1|adder|result_node|cout[17]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[18]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[18]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[17]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[18]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[18]\,
	cout => \fen|Add1|adder|result_node|cout[18]\);

-- atom is at LC2_A23
\fen|Add1|adder|result_node|cs_buffer[17]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[17]\ = \fen|j[17]\ $ \fen|Add1|adder|result_node|cout[16]\
-- \fen|Add1|adder|result_node|cout[17]\ = CARRY(\fen|j[17]\ & \fen|Add1|adder|result_node|cout[16]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[17]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[17]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[16]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[17]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[17]\,
	cout => \fen|Add1|adder|result_node|cout[17]\);

-- atom is at LC8_A23
\fen|Add1|adder|result_node|cs_buffer[23]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[23]\ = \fen|j[23]\ $ \fen|Add1|adder|result_node|cout[22]\
-- \fen|Add1|adder|result_node|cout[23]\ = CARRY(\fen|j[23]\ & \fen|Add1|adder|result_node|cout[22]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[23]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[23]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[22]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[23]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[23]\,
	cout => \fen|Add1|adder|result_node|cout[23]\);

-- atom is at LC7_A23
\fen|Add1|adder|result_node|cs_buffer[22]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[22]\ = \fen|j[22]\ $ \fen|Add1|adder|result_node|cout[21]\
-- \fen|Add1|adder|result_node|cout[22]\ = CARRY(\fen|j[22]\ & \fen|Add1|adder|result_node|cout[21]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[22]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[22]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[21]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[22]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[22]\,
	cout => \fen|Add1|adder|result_node|cout[22]\);

-- atom is at LC6_A23
\fen|Add1|adder|result_node|cs_buffer[21]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[21]\ = \fen|j[21]\ $ \fen|Add1|adder|result_node|cout[20]\
-- \fen|Add1|adder|result_node|cout[21]\ = CARRY(\fen|j[21]\ & \fen|Add1|adder|result_node|cout[20]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[21]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[21]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[20]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[21]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[21]\,
	cout => \fen|Add1|adder|result_node|cout[21]\);

-- atom is at LC5_A23
\fen|Add1|adder|result_node|cs_buffer[20]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[20]\ = \fen|j[20]\ $ \fen|Add1|adder|result_node|cout[19]\
-- \fen|Add1|adder|result_node|cout[20]\ = CARRY(\fen|j[20]\ & \fen|Add1|adder|result_node|cout[19]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[20]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[20]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[19]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[20]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[20]\,
	cout => \fen|Add1|adder|result_node|cout[20]\);

-- atom is at LC3_A21
\fen|Add1|adder|result_node|cs_buffer[10]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[10]\ = \fen|j[10]\ $ \fen|Add1|adder|result_node|cout[9]\
-- \fen|Add1|adder|result_node|cout[10]\ = CARRY(\fen|j[10]\ & \fen|Add1|adder|result_node|cout[9]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[10]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[10]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[9]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[10]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[10]\,
	cout => \fen|Add1|adder|result_node|cout[10]\);

-- atom is at LC2_A21
\fen|Add1|adder|result_node|cs_buffer[9]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[9]\ = \fen|j[9]\ $ \fen|Add1|adder|result_node|cout[8]\
-- \fen|Add1|adder|result_node|cout[9]\ = CARRY(\fen|j[9]\ & \fen|Add1|adder|result_node|cout[8]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[9]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[9]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[8]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[9]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[9]\,
	cout => \fen|Add1|adder|result_node|cout[9]\);

-- atom is at LC4_A21
\fen|Add1|adder|result_node|cs_buffer[11]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[11]\ = \fen|j[11]\ $ \fen|Add1|adder|result_node|cout[10]\
-- \fen|Add1|adder|result_node|cout[11]\ = CARRY(\fen|j[11]\ & \fen|Add1|adder|result_node|cout[10]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[11]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[11]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[10]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[11]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[11]\,
	cout => \fen|Add1|adder|result_node|cout[11]\);

-- atom is at LC1_A21
\fen|Add1|adder|result_node|cs_buffer[8]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[8]\ = \fen|j[8]\ $ \fen|Add1|adder|result_node|cout[7]\
-- \fen|Add1|adder|result_node|cout[8]\ = CARRY(\fen|j[8]\ & \fen|Add1|adder|result_node|cout[7]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[8]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[8]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[7]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[8]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[8]\,
	cout => \fen|Add1|adder|result_node|cout[8]\);

-- atom is at LC8_A21
\fen|Add1|adder|result_node|cs_buffer[15]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[15]\ = \fen|j[15]\ $ \fen|Add1|adder|result_node|cout[14]\
-- \fen|Add1|adder|result_node|cout[15]\ = CARRY(\fen|j[15]\ & \fen|Add1|adder|result_node|cout[14]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[15]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[15]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[14]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[15]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[15]\,
	cout => \fen|Add1|adder|result_node|cout[15]\);

-- atom is at LC7_A21
\fen|Add1|adder|result_node|cs_buffer[14]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[14]\ = \fen|j[14]\ $ \fen|Add1|adder|result_node|cout[13]\
-- \fen|Add1|adder|result_node|cout[14]\ = CARRY(\fen|j[14]\ & \fen|Add1|adder|result_node|cout[13]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[14]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[14]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[13]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[14]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[14]\,
	cout => \fen|Add1|adder|result_node|cout[14]\);

-- atom is at LC6_A21
\fen|Add1|adder|result_node|cs_buffer[13]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[13]\ = \fen|j[13]\ $ \fen|Add1|adder|result_node|cout[12]\
-- \fen|Add1|adder|result_node|cout[13]\ = CARRY(\fen|j[13]\ & \fen|Add1|adder|result_node|cout[12]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[13]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[13]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[12]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[13]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[13]\,
	cout => \fen|Add1|adder|result_node|cout[13]\);

-- atom is at LC5_A21
\fen|Add1|adder|result_node|cs_buffer[12]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[12]\ = \fen|j[12]\ $ \fen|Add1|adder|result_node|cout[11]\
-- \fen|Add1|adder|result_node|cout[12]\ = CARRY(\fen|j[12]\ & \fen|Add1|adder|result_node|cout[11]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[12]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[12]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[11]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[12]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[12]\,
	cout => \fen|Add1|adder|result_node|cout[12]\);

-- atom is at LC4_A19
\fen|Add1|adder|result_node|cs_buffer[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[3]\ = \fen|j[3]\ $ \fen|Add1|adder|result_node|cout[2]\
-- \fen|Add1|adder|result_node|cout[3]\ = CARRY(\fen|j[3]\ & \fen|Add1|adder|result_node|cout[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[3]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[3]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[3]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[3]\,
	cout => \fen|Add1|adder|result_node|cout[3]\);

-- atom is at LC3_A19
\fen|Add1|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[2]\ = \fen|j[2]\ $ \fen|Add1|adder|result_node|cout[1]\
-- \fen|Add1|adder|result_node|cout[2]\ = CARRY(\fen|j[2]\ & \fen|Add1|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[2]\,
	cout => \fen|Add1|adder|result_node|cout[2]\);

-- atom is at LC2_A19
\fen|Add1|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[1]\ = \fen|j[1]\ $ \fen|Add1|adder|result_node|cout[0]\
-- \fen|Add1|adder|result_node|cout[1]\ = CARRY(\fen|j[1]\ & \fen|Add1|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[1]\,
	cout => \fen|Add1|adder|result_node|cout[1]\);

-- atom is at LC8_A19
\fen|Add1|adder|result_node|cs_buffer[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[7]\ = \fen|j[7]\ $ \fen|Add1|adder|result_node|cout[6]\
-- \fen|Add1|adder|result_node|cout[7]\ = CARRY(\fen|j[7]\ & \fen|Add1|adder|result_node|cout[6]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[7]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[7]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[6]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[7]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[7]\,
	cout => \fen|Add1|adder|result_node|cout[7]\);

-- atom is at LC5_A19
\fen|Add1|adder|result_node|cs_buffer[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[4]\ = \fen|j[4]\ $ \fen|Add1|adder|result_node|cout[3]\
-- \fen|Add1|adder|result_node|cout[4]\ = CARRY(\fen|j[4]\ & \fen|Add1|adder|result_node|cout[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[4]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[4]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[3]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[4]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[4]\,
	cout => \fen|Add1|adder|result_node|cout[4]\);

-- atom is at LC7_A19
\fen|Add1|adder|result_node|cs_buffer[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[6]\ = \fen|j[6]\ $ \fen|Add1|adder|result_node|cout[5]\
-- \fen|Add1|adder|result_node|cout[6]\ = CARRY(\fen|j[6]\ & \fen|Add1|adder|result_node|cout[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[6]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[6]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[5]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[6]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[6]\,
	cout => \fen|Add1|adder|result_node|cout[6]\);

-- atom is at LC6_A19
\fen|Add1|adder|result_node|cs_buffer[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|result_node|cs_buffer[5]\ = \fen|j[5]\ $ \fen|Add1|adder|result_node|cout[4]\
-- \fen|Add1|adder|result_node|cout[5]\ = CARRY(\fen|j[5]\ & \fen|Add1|adder|result_node|cout[4]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|result_node|cs_buffer[5]~I_pathsel\,
	dataa => VCC,
	datab => \fen|j[5]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[4]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|result_node|cs_buffer[5]~I_modesel\,
	combout => \fen|Add1|adder|result_node|cs_buffer[5]\,
	cout => \fen|Add1|adder|result_node|cout[5]\);

-- atom is at LC8_C9
\fen|Add0|adder|unreg_res_node[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add0|adder|unreg_res_node[31]\ = \fen|Add0|adder|result_node|cout[30]\ $ \fen|i[31]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add0|adder|unreg_res_node[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|i[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add0|adder|result_node|cout[30]\,
	cascin => VCC,
	modesel => \fen|Add0|adder|unreg_res_node[31]~I_modesel\,
	combout => \fen|Add0|adder|unreg_res_node[31]\);

-- atom is at LC8_A25
\fen|Add1|adder|unreg_res_node[31]~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|Add1|adder|unreg_res_node[31]\ = \fen|Add1|adder|result_node|cout[30]\ $ \fen|j[31]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|Add1|adder|unreg_res_node[31]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \fen|j[31]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \fen|Add1|adder|result_node|cout[30]\,
	cascin => VCC,
	modesel => \fen|Add1|adder|unreg_res_node[31]~I_modesel\,
	combout => \fen|Add1|adder|unreg_res_node[31]\);

-- atom is at LC7_B24
\comb_4|mkoo[1]~1_I\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|mkoo[1]~1\ = !\modkey~dataout\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \comb_4|mkoo[1]~1_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \modkey~dataout\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \comb_4|mkoo[1]~1_I_modesel\,
	combout => \comb_4|mkoo[1]~1\);

-- atom is at PIN_79
\clk~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "from_pin",
--	operation_mode => "input",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => GND,
	modesel => \clk~I_modesel\,
	dataout => \clk~dataout\,
	padio => ww_clk);

-- atom is at LC1_E9
\fen|f~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|f\ = DFFEA(!\fen|f\, GLOBAL(\clk~dataout\), , , \fen|Equal2~339\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|f~I_pathsel\,
	dataa => \fen|Equal2~339\,
	datab => VCC,
	datac => VCC,
	datad => \fen|f\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|f~I_modesel\,
	regout => \fen|f\);

-- atom is at LC5_B24
\comb_4|mkoo[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|mkoo[0]\ = DFFEA(!\comb_4|mkoo[0]\, GLOBAL(\fen|f\), , , \comb_4|mkoo[1]~1\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \comb_4|mkoo[0]~I_pathsel\,
	dataa => \comb_4|mkoo[1]~1\,
	datab => VCC,
	datac => VCC,
	datad => \comb_4|mkoo[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \comb_4|mkoo[0]~I_modesel\,
	regout => \comb_4|mkoo[0]\);

-- atom is at LC5_C18
\fen|f1Hz~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|f1Hz\ = DFFEA(!\fen|f1Hz\, GLOBAL(\clk~dataout\), , , \fen|Equal0~339\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|f1Hz~I_pathsel\,
	dataa => \fen|Equal0~339\,
	datab => VCC,
	datac => VCC,
	datad => \fen|f1Hz\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|f1Hz~I_modesel\,
	regout => \fen|f1Hz\);

-- atom is at LC3_F1
\ji|a[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|a[0]\ = DFFEA(!\ji|a[0]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|a[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|a[0]~I_modesel\,
	regout => \ji|a[0]\);

-- atom is at LC1_F1
\ji|a[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|a[2]\ = DFFEA(\ji|a[2]\ $ (\ji|a[0]\ & \ji|a[1]\), \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|a[2]~I_pathsel\,
	dataa => VCC,
	datab => \ji|a[0]\,
	datac => \ji|a[1]\,
	datad => \ji|a[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|a[2]~I_modesel\,
	regout => \ji|a[2]\);

-- atom is at LC4_F1
\ji|a[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|a[3]\ = DFFEA(\ji|a[0]\ & (\ji|a[2]\ & (\ji|a[1]\ $ \ji|a[3]\) # !\ji|a[2]\ & \ji|a[1]\ & \ji|a[3]\) # !\ji|a[0]\ & (\ji|a[3]\), \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7D80",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|a[3]~I_pathsel\,
	dataa => \ji|a[0]\,
	datab => \ji|a[2]\,
	datac => \ji|a[1]\,
	datad => \ji|a[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|a[3]~I_modesel\,
	regout => \ji|a[3]\);

-- atom is at LC2_F1
\ji|a[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|a[1]\ = DFFEA(\ji|a[0]\ & !\ji|a[1]\ & (\ji|a[2]\ # !\ji|a[3]\) # !\ji|a[0]\ & \ji|a[1]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "6646",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|a[1]~I_pathsel\,
	dataa => \ji|a[0]\,
	datab => \ji|a[1]\,
	datac => \ji|a[3]\,
	datad => \ji|a[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|a[1]~I_modesel\,
	regout => \ji|a[1]\);

-- atom is at LC3_F4
\ji|Add2|adder|result_node|cs_buffer[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add2|adder|result_node|cs_buffer[0]\ = \ji|always1~87\ $ \ji|b[0]\
-- \ji|Add2|adder|result_node|cout[0]\ = CARRY(\ji|always1~87\ & \ji|b[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "6688",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add2|adder|result_node|cs_buffer[0]~I_pathsel\,
	dataa => \ji|always1~87\,
	datab => \ji|b[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Add2|adder|result_node|cs_buffer[0]~I_modesel\,
	combout => \ji|Add2|adder|result_node|cs_buffer[0]\,
	cout => \ji|Add2|adder|result_node|cout[0]\);

-- atom is at LC1_F4
\ji|b[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|b[0]\ = DFFEA(\ji|Add2|adder|result_node|cs_buffer[0]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|b[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|Add2|adder|result_node|cs_buffer[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|b[0]~I_modesel\,
	regout => \ji|b[0]\);

-- atom is at LC4_F4
\ji|Add2|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add2|adder|result_node|cs_buffer[1]\ = \ji|b[1]\ $ \ji|Add2|adder|result_node|cout[0]\
-- \ji|Add2|adder|result_node|cout[1]\ = CARRY(\ji|b[1]\ & \ji|Add2|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add2|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \ji|b[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \ji|Add2|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \ji|Add2|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \ji|Add2|adder|result_node|cs_buffer[1]\,
	cout => \ji|Add2|adder|result_node|cout[1]\);

-- atom is at LC2_F4
\ji|b[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|b[1]\ = DFFEA(!\ji|always1~89\ & \ji|Add2|adder|result_node|cs_buffer[1]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|b[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|always1~89\,
	datad => \ji|Add2|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|b[1]~I_modesel\,
	regout => \ji|b[1]\);

-- atom is at LC7_F1
\ji|always1~86_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~100\ = !\ji|b[3]\ & !\ji|b[1]\ & \ji|b[2]\ & \ji|b[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~86_I_pathsel\,
	dataa => \ji|b[3]\,
	datab => \ji|b[1]\,
	datac => \ji|b[2]\,
	datad => \ji|b[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~86_I_modesel\,
	cascout => \ji|always1~100\);

-- atom is at LC8_F1
\ji|always1~89_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~89\ = (!\ji|a[2]\ & !\ji|a[1]\ & \ji|a[3]\ & \ji|a[0]\) & CASCADE(\ji|always1~100\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~89_I_pathsel\,
	dataa => \ji|a[2]\,
	datab => \ji|a[1]\,
	datac => \ji|a[3]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \ji|always1~100\,
	modesel => \ji|always1~89_I_modesel\,
	combout => \ji|always1~89\);

-- atom is at LC5_F4
\ji|Add2|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add2|adder|result_node|cs_buffer[2]\ = \ji|b[2]\ $ \ji|Add2|adder|result_node|cout[1]\
-- \ji|Add2|adder|result_node|cout[2]\ = CARRY(\ji|b[2]\ & \ji|Add2|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add2|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \ji|b[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \ji|Add2|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \ji|Add2|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \ji|Add2|adder|result_node|cs_buffer[2]\,
	cout => \ji|Add2|adder|result_node|cout[2]\);

-- atom is at LC7_F4
\ji|b[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|b[2]\ = DFFEA(!\ji|always1~89\ & \ji|Add2|adder|result_node|cs_buffer[2]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|b[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|always1~89\,
	datad => \ji|Add2|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|b[2]~I_modesel\,
	regout => \ji|b[2]\);

-- atom is at LC6_F4
\ji|Add2|adder|unreg_res_node[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add2|adder|unreg_res_node[3]\ = \ji|Add2|adder|result_node|cout[2]\ $ \ji|b[3]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add2|adder|unreg_res_node[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|b[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \ji|Add2|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \ji|Add2|adder|unreg_res_node[3]~I_modesel\,
	combout => \ji|Add2|adder|unreg_res_node[3]\);

-- atom is at LC8_F4
\ji|b[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|b[3]\ = DFFEA(\ji|Add2|adder|unreg_res_node[3]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|b[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|Add2|adder|unreg_res_node[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|b[3]~I_modesel\,
	regout => \ji|b[3]\);

-- atom is at LC7_F29
\ji|always1~75_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~75\ = !\ji|b[3]\ & !\ji|b[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~75_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|b[3]\,
	datad => \ji|b[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~75_I_modesel\,
	combout => \ji|always1~75\);

-- atom is at LC6_F29
\p1|Selector10~221_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector10~221\ = !\ji|b[3]\ & (\ji|b[2]\ $ (\ji|b[1]\ # !\ji|b[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1411",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector10~221_I_pathsel\,
	dataa => \ji|b[3]\,
	datab => \ji|b[2]\,
	datac => \ji|b[1]\,
	datad => \ji|b[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector10~221_I_modesel\,
	combout => \p1|Selector10~221\);

-- atom is at LC1_F35
\p1|Selector48~1312_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1312\ = !\p1|o[1]\ & (\p1|Selector10~221\ # !\ji|always1~75\ & \p1|display[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5510",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1312_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \ji|always1~75\,
	datac => \p1|display[0]\,
	datad => \p1|Selector10~221\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector48~1312_I_modesel\,
	combout => \p1|Selector48~1312\);

-- atom is at PIN_192
\key1~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "from_pin",
--	operation_mode => "input",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => GND,
	modesel => \key1~I_modesel\,
	dataout => \key1~dataout\,
	padio => ww_key1);

-- atom is at LC1_B12
\ji|k1k~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|k1k\ = DFFEA(!\key1~dataout\, GLOBAL(\fen|f\), , , \p1|Equal4~41\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|k1k~I_pathsel\,
	dataa => \p1|Equal4~41\,
	datab => VCC,
	datac => VCC,
	datad => \key1~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|k1k~I_modesel\,
	regout => \ji|k1k\);

-- atom is at LC2_B12
\ji|k1[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|k1[0]\ = DFFEA(\ji|k1[0]\ $ (\p1|Equal4~41\ & !\key1~dataout\ & !\ji|k1k\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FD02",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|k1[0]~I_pathsel\,
	dataa => \p1|Equal4~41\,
	datab => \key1~dataout\,
	datac => \ji|k1k\,
	datad => \ji|k1[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|k1[0]~I_modesel\,
	regout => \ji|k1[0]\);

-- atom is at LC6_B24
\comb_4|mkoo[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \comb_4|mkoo[1]\ = DFFEA(\comb_4|mkoo[1]\ $ \comb_4|mkoo[0]\, GLOBAL(\fen|f\), , , \comb_4|mkoo[1]~1\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \comb_4|mkoo[1]~I_pathsel\,
	dataa => \comb_4|mkoo[1]~1\,
	datab => VCC,
	datac => \comb_4|mkoo[1]\,
	datad => \comb_4|mkoo[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \comb_4|mkoo[1]~I_modesel\,
	regout => \comb_4|mkoo[1]\);

-- atom is at LC4_B24
\p1|delay~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|delay\ = DFFEA(!\p1|delay\, GLOBAL(\fen|f\), , , \p1|Equal0~360\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|delay~I_pathsel\,
	dataa => \p1|Equal0~360\,
	datab => VCC,
	datac => VCC,
	datad => \p1|delay\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|delay~I_modesel\,
	regout => \p1|delay\);

-- atom is at LC1_B24
\p1|always0~39_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|always0~39\ = !\comb_4|mkoo[0]\ & !\ji|k1[0]\ & \comb_4|mkoo[1]\ & \p1|delay\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|always0~39_I_pathsel\,
	dataa => \comb_4|mkoo[0]\,
	datab => \ji|k1[0]\,
	datac => \comb_4|mkoo[1]\,
	datad => \p1|delay\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|always0~39_I_modesel\,
	combout => \p1|always0~39\);

-- atom is at LC7_E36
\p1|o[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|o[0]\ = DFFEA(!\p1|o[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|o[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|o[0]~I_modesel\,
	regout => \p1|o[0]\);

-- atom is at LC1_B10
\p1|o[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|o[1]\ = DFFEA(\p1|o[0]\ $ \p1|o[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|o[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|o[0]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|o[1]~I_modesel\,
	regout => \p1|o[1]\);

-- atom is at LC1_F20
\p1|Selector48~1307_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1307\ = !\p1|always0~39\ & \p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1307_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|always0~39\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector48~1307_I_modesel\,
	combout => \p1|Selector48~1307\);

-- atom is at PIN_193
\key2~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "from_pin",
--	operation_mode => "input",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => GND,
	modesel => \key2~I_modesel\,
	dataout => \key2~dataout\,
	padio => ww_key2);

-- atom is at LC7_B27
\ji|k2k~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|k2k\ = DFFEA(!\key2~dataout\, GLOBAL(\fen|f\), , , \p1|Equal4~41\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|k2k~I_pathsel\,
	dataa => \p1|Equal4~41\,
	datab => VCC,
	datac => VCC,
	datad => \key2~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|k2k~I_modesel\,
	regout => \ji|k2k\);

-- atom is at LC8_B24
\p1|Equal4~41_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal4~41\ = !\comb_4|mkoo[0]\ & \comb_4|mkoo[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal4~41_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \comb_4|mkoo[0]\,
	datad => \comb_4|mkoo[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal4~41_I_modesel\,
	combout => \p1|Equal4~41\);

-- atom is at LC6_B27
\ji|k2~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|k2\ = DFFEA(\p1|Equal4~41\ & !\key2~dataout\ & (\ji|k2\ # !\ji|k2k\) # !\p1|Equal4~41\ & (\ji|k2\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7704",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|k2~I_pathsel\,
	dataa => \key2~dataout\,
	datab => \p1|Equal4~41\,
	datac => \ji|k2k\,
	datad => \ji|k2\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|k2~I_modesel\,
	regout => \ji|k2\);

-- atom is at LC2_B27
\ji|cc~501_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|cc~501\ = !\key2~dataout\ & \p1|Equal4~41\ & (\ji|k2\ # !\ji|k2k\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|cc~501_I_pathsel\,
	dataa => \key2~dataout\,
	datab => \ji|k2k\,
	datac => \ji|k2\,
	datad => \p1|Equal4~41\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|cc~501_I_modesel\,
	combout => \ji|cc~501\);

-- atom is at LC7_B12
\ji|k1~122_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|k1~122\ = \ji|k1[0]\ $ (\p1|Equal4~41\ & !\key1~dataout\ & !\ji|k1k\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FD02",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|k1~122_I_pathsel\,
	dataa => \p1|Equal4~41\,
	datab => \key1~dataout\,
	datac => \ji|k1k\,
	datad => \ji|k1[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|k1~122_I_modesel\,
	combout => \ji|k1~122\);

-- atom is at LC3_B12
\ji|cc[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|cc[0]\ = DFFEA(\ji|c_rtl_0|wysi_counter|q[0]\ $ (\ji|cc~501\ & !\ji|k1~122\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F30C",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|cc[0]~I_pathsel\,
	dataa => VCC,
	datab => \ji|cc~501\,
	datac => \ji|k1~122\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|cc[0]~I_modesel\,
	regout => \ji|cc[0]\);

-- atom is at LC2_B6
\ji|c_rtl_0|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|c_rtl_0|wysi_counter|q[0]\ = DFFEA(((!\ji|c_rtl_0|wysi_counter|q[0]\ & \ji|always1~89\) # (\ji|cc[0]\ & !\ji|always1~89\)) & \ji|Equal10~26\, \fen|f1Hz\, , , , , )
-- \ji|c_rtl_0|wysi_counter|counter_cell[0]~COUT\ = CARRY(\ji|c_rtl_0|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "33AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|c_rtl_0|wysi_counter|q[0]~I_pathsel\,
	dataa => VCC,
	datab => \ji|Equal10~26\,
	datac => \ji|cc[0]\,
	datad => \ji|always1~89\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|c_rtl_0|wysi_counter|q[0]~I_modesel\,
	regout => \ji|c_rtl_0|wysi_counter|q[0]\,
	cout => \ji|c_rtl_0|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC1_B6
\ji|cc[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|cc[1]\ = DFFEA(\ji|cc~503\ & \ji|Equal10~26\ & (\ji|c_rtl_0|wysi_counter|q[0]\ $ \ji|c_rtl_0|wysi_counter|q[1]\) # !\ji|cc~503\ & (\ji|c_rtl_0|wysi_counter|q[1]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5D80",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|cc[1]~I_pathsel\,
	dataa => \ji|cc~503\,
	datab => \ji|Equal10~26\,
	datac => \ji|c_rtl_0|wysi_counter|q[0]\,
	datad => \ji|c_rtl_0|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|cc[1]~I_modesel\,
	regout => \ji|cc[1]\);

-- atom is at LC3_B6
\ji|c_rtl_0|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|c_rtl_0|wysi_counter|q[1]\ = DFFEA(((\ji|c_rtl_0|wysi_counter|q[1]\ $ \ji|c_rtl_0|wysi_counter|counter_cell[0]~COUT\ & \ji|always1~89\) # (\ji|cc[1]\ & !\ji|always1~89\)) & \ji|Equal10~26\, \fen|f1Hz\, , , , , )
-- \ji|c_rtl_0|wysi_counter|counter_cell[1]~COUT\ = CARRY(\ji|c_rtl_0|wysi_counter|q[1]\ & (\ji|c_rtl_0|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|c_rtl_0|wysi_counter|q[1]~I_pathsel\,
	dataa => VCC,
	datab => \ji|Equal10~26\,
	datac => \ji|cc[1]\,
	datad => \ji|always1~89\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => \ji|c_rtl_0|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \ji|c_rtl_0|wysi_counter|q[1]~I_modesel\,
	regout => \ji|c_rtl_0|wysi_counter|q[1]\,
	cout => \ji|c_rtl_0|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC6_B12
\ji|cc~503_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|cc~503\ = !\ji|k1~122\ & \ji|cc~501\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|cc~503_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|k1~122\,
	datad => \ji|cc~501\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|cc~503_I_modesel\,
	combout => \ji|cc~503\);

-- atom is at LC8_B6
\ji|Add3~73_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add3~73\ = \ji|c_rtl_0|wysi_counter|q[3]\ $ (\ji|c_rtl_0|wysi_counter|q[0]\ & \ji|c_rtl_0|wysi_counter|q[1]\ & \ji|c_rtl_0|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add3~73_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[0]\,
	datab => \ji|c_rtl_0|wysi_counter|q[1]\,
	datac => \ji|c_rtl_0|wysi_counter|q[2]\,
	datad => \ji|c_rtl_0|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Add3~73_I_modesel\,
	combout => \ji|Add3~73\);

-- atom is at LC7_B6
\ji|cc[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|cc[3]\ = DFFEA(\ji|cc~503\ & \ji|Equal10~26\ & \ji|Add3~73\ # !\ji|cc~503\ & (\ji|c_rtl_0|wysi_counter|q[3]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "B380",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|cc[3]~I_pathsel\,
	dataa => \ji|Equal10~26\,
	datab => \ji|cc~503\,
	datac => \ji|Add3~73\,
	datad => \ji|c_rtl_0|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|cc[3]~I_modesel\,
	regout => \ji|cc[3]\);

-- atom is at LC6_B6
\ji|cc[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|cc[2]\ = DFFEA(\ji|c_rtl_0|wysi_counter|q[2]\ $ (\ji|c_rtl_0|wysi_counter|q[0]\ & \ji|c_rtl_0|wysi_counter|q[1]\ & \ji|cc~503\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|cc[2]~I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[0]\,
	datab => \ji|c_rtl_0|wysi_counter|q[1]\,
	datac => \ji|cc~503\,
	datad => \ji|c_rtl_0|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|cc[2]~I_modesel\,
	regout => \ji|cc[2]\);

-- atom is at LC4_B6
\ji|c_rtl_0|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|c_rtl_0|wysi_counter|q[2]\ = DFFEA(((\ji|c_rtl_0|wysi_counter|q[2]\ $ \ji|c_rtl_0|wysi_counter|counter_cell[1]~COUT\ & \ji|always1~89\) # (\ji|cc[2]\ & !\ji|always1~89\)) & \ji|Equal10~26\, \fen|f1Hz\, , , , , )
-- \ji|c_rtl_0|wysi_counter|counter_cell[2]~COUT\ = CARRY(\ji|c_rtl_0|wysi_counter|q[2]\ & (\ji|c_rtl_0|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|c_rtl_0|wysi_counter|q[2]~I_pathsel\,
	dataa => VCC,
	datab => \ji|Equal10~26\,
	datac => \ji|cc[2]\,
	datad => \ji|always1~89\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => \ji|c_rtl_0|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \ji|c_rtl_0|wysi_counter|q[2]~I_modesel\,
	regout => \ji|c_rtl_0|wysi_counter|q[2]\,
	cout => \ji|c_rtl_0|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC5_B6
\ji|c_rtl_0|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|c_rtl_0|wysi_counter|q[3]\ = DFFEA(((\ji|c_rtl_0|wysi_counter|q[3]\ $ \ji|c_rtl_0|wysi_counter|counter_cell[2]~COUT\ & \ji|always1~89\) # (\ji|cc[3]\ & !\ji|always1~89\)) & \ji|Equal10~26\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3C3C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|c_rtl_0|wysi_counter|q[3]~I_pathsel\,
	dataa => VCC,
	datab => \ji|Equal10~26\,
	datac => \ji|cc[3]\,
	datad => \ji|always1~89\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => \ji|c_rtl_0|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \ji|c_rtl_0|wysi_counter|q[3]~I_modesel\,
	regout => \ji|c_rtl_0|wysi_counter|q[3]\);

-- atom is at LC7_F28
\ji|Equal10~26_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Equal10~26\ = \ji|c_rtl_0|wysi_counter|q[2]\ # \ji|c_rtl_0|wysi_counter|q[1]\ # !\ji|c_rtl_0|wysi_counter|q[0]\ # !\ji|c_rtl_0|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "EFFF",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Equal10~26_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[2]\,
	datab => \ji|c_rtl_0|wysi_counter|q[1]\,
	datac => \ji|c_rtl_0|wysi_counter|q[3]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Equal10~26_I_modesel\,
	combout => \ji|Equal10~26\);

-- atom is at LC6_F28
\p1|Selector20~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector20~23\ = \ji|c_rtl_0|wysi_counter|q[3]\ & \ji|c_rtl_0|wysi_counter|q[2]\ # !\ji|c_rtl_0|wysi_counter|q[3]\ & (\ji|c_rtl_0|wysi_counter|q[1]\ # \ji|c_rtl_0|wysi_counter|q[2]\ $ !\ji|c_rtl_0|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector20~23_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \ji|c_rtl_0|wysi_counter|q[2]\,
	datac => \ji|c_rtl_0|wysi_counter|q[1]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector20~23_I_modesel\,
	combout => \p1|Selector20~23\);

-- atom is at LC4_F28
\p1|Selector20~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector20~24\ = \ji|c_rtl_0|wysi_counter|q[3]\ & (\p1|display[0]\ # !\p1|Selector20~23\ & !\ji|c_rtl_0|wysi_counter|q[1]\) # !\ji|c_rtl_0|wysi_counter|q[3]\ & \p1|Selector20~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector20~24_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \p1|Selector20~23\,
	datac => \p1|display[0]\,
	datad => \ji|c_rtl_0|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector20~24_I_modesel\,
	combout => \p1|Selector20~24\);

-- atom is at LC5_F34
\ji|Add4|adder|result_node|cs_buffer[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add4|adder|result_node|cs_buffer[0]\ = \ji|Equal10~26\ $ !\ji|d[0]\
-- \ji|Add4|adder|result_node|cout[0]\ = CARRY(!\ji|Equal10~26\ & \ji|d[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9944",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add4|adder|result_node|cs_buffer[0]~I_pathsel\,
	dataa => \ji|Equal10~26\,
	datab => \ji|d[0]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Add4|adder|result_node|cs_buffer[0]~I_modesel\,
	combout => \ji|Add4|adder|result_node|cs_buffer[0]\,
	cout => \ji|Add4|adder|result_node|cout[0]\);

-- atom is at LC2_F34
\ji|d[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|d[0]\ = DFFEA(\ji|Add4|adder|result_node|cs_buffer[0]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|d[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|Add4|adder|result_node|cs_buffer[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|d[0]~I_modesel\,
	regout => \ji|d[0]\);

-- atom is at LC6_F34
\ji|Add4|adder|result_node|cs_buffer[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add4|adder|result_node|cs_buffer[1]\ = \ji|d[1]\ $ \ji|Add4|adder|result_node|cout[0]\
-- \ji|Add4|adder|result_node|cout[1]\ = CARRY(\ji|d[1]\ & \ji|Add4|adder|result_node|cout[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add4|adder|result_node|cs_buffer[1]~I_pathsel\,
	dataa => VCC,
	datab => \ji|d[1]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \ji|Add4|adder|result_node|cout[0]\,
	cascin => VCC,
	modesel => \ji|Add4|adder|result_node|cs_buffer[1]~I_modesel\,
	combout => \ji|Add4|adder|result_node|cs_buffer[1]\,
	cout => \ji|Add4|adder|result_node|cout[1]\);

-- atom is at LC1_F34
\ji|d[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|d[1]\ = DFFEA(!\ji|always1~88\ & \ji|Add4|adder|result_node|cs_buffer[1]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|d[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|always1~88\,
	datad => \ji|Add4|adder|result_node|cs_buffer[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|d[1]~I_modesel\,
	regout => \ji|d[1]\);

-- atom is at LC2_F21
\ji|always1~85_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~98\ = !\ji|d[3]\ & !\ji|d[1]\ & \ji|d[2]\ & \ji|d[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~85_I_pathsel\,
	dataa => \ji|d[3]\,
	datab => \ji|d[1]\,
	datac => \ji|d[2]\,
	datad => \ji|d[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~85_I_modesel\,
	cascout => \ji|always1~98\);

-- atom is at LC3_F21
\ji|always1~88_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~88\ = (!\ji|c_rtl_0|wysi_counter|q[2]\ & !\ji|c_rtl_0|wysi_counter|q[1]\ & \ji|c_rtl_0|wysi_counter|q[3]\ & \ji|c_rtl_0|wysi_counter|q[0]\) & CASCADE(\ji|always1~98\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~88_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[2]\,
	datab => \ji|c_rtl_0|wysi_counter|q[1]\,
	datac => \ji|c_rtl_0|wysi_counter|q[3]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \ji|always1~98\,
	modesel => \ji|always1~88_I_modesel\,
	combout => \ji|always1~88\);

-- atom is at LC7_F34
\ji|Add4|adder|result_node|cs_buffer[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add4|adder|result_node|cs_buffer[2]\ = \ji|d[2]\ $ \ji|Add4|adder|result_node|cout[1]\
-- \ji|Add4|adder|result_node|cout[2]\ = CARRY(\ji|d[2]\ & \ji|Add4|adder|result_node|cout[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CC0",
--	operation_mode => "arithmetic",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add4|adder|result_node|cs_buffer[2]~I_pathsel\,
	dataa => VCC,
	datab => \ji|d[2]\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \ji|Add4|adder|result_node|cout[1]\,
	cascin => VCC,
	modesel => \ji|Add4|adder|result_node|cs_buffer[2]~I_modesel\,
	combout => \ji|Add4|adder|result_node|cs_buffer[2]\,
	cout => \ji|Add4|adder|result_node|cout[2]\);

-- atom is at LC4_F34
\ji|d[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|d[2]\ = DFFEA(!\ji|always1~88\ & \ji|Add4|adder|result_node|cs_buffer[2]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|d[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|always1~88\,
	datad => \ji|Add4|adder|result_node|cs_buffer[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|d[2]~I_modesel\,
	regout => \ji|d[2]\);

-- atom is at LC3_F32
\p1|Selector24~226_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector24~226\ = !\ji|d[3]\ & (\ji|d[2]\ $ (\ji|d[1]\ # !\ji|d[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1411",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector24~226_I_pathsel\,
	dataa => \ji|d[3]\,
	datab => \ji|d[2]\,
	datac => \ji|d[1]\,
	datad => \ji|d[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector24~226_I_modesel\,
	combout => \p1|Selector24~226\);

-- atom is at LC5_E20
\p1|o[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|o[2]\ = DFFEA(\p1|o[2]\ $ (\p1|o[0]\ & \p1|o[1]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|o[2]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[0]\,
	datac => \p1|o[1]\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|o[2]~I_modesel\,
	regout => \p1|o[2]\);

-- atom is at LC1_F28
\p1|Selector48~1314_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1314\ = !\p1|always0~39\ & \p1|o[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1314_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|always0~39\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector48~1314_I_modesel\,
	combout => \p1|Selector48~1314\);

-- atom is at LC8_F35
\p1|Selector48~1319_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1319\ = \p1|Selector48~1314\ & (\p1|Selector24~226\ # !\ji|always1~81\ & \p1|display[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1319_I_pathsel\,
	dataa => \ji|always1~81\,
	datab => \p1|display[0]\,
	datac => \p1|Selector24~226\,
	datad => \p1|Selector48~1314\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector48~1319_I_modesel\,
	combout => \p1|Selector48~1319\);

-- atom is at LC2_F35
\p1|Selector6~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector6~18\ = \ji|a[3]\ & \ji|a[2]\ # !\ji|a[3]\ & (\ji|a[1]\ # \ji|a[2]\ $ !\ji|a[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector6~18_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \ji|a[2]\,
	datac => \ji|a[1]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector6~18_I_modesel\,
	combout => \p1|Selector6~18\);

-- atom is at LC4_F35
\p1|Selector6~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector6~19\ = \ji|a[3]\ & (\p1|display[0]\ # !\p1|Selector6~18\ & !\ji|a[1]\) # !\ji|a[3]\ & \p1|Selector6~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector6~19_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \p1|Selector6~18\,
	datac => \p1|display[0]\,
	datad => \ji|a[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector6~19_I_modesel\,
	combout => \p1|Selector6~19\);

-- atom is at LC8_B12
\ji|ee[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ee[0]\ = DFFEA(\ji|e[0]\ $ (\ji|cc~501\ & \ji|k1~122\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ee[0]~I_pathsel\,
	dataa => VCC,
	datab => \ji|cc~501\,
	datac => \ji|k1~122\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ee[0]~I_modesel\,
	regout => \ji|ee[0]\);

-- atom is at LC4_B12
\ji|ee~439_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ee~439\ = \ji|cc~501\ & \ji|k1~122\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ee~439_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|cc~501\,
	datad => \ji|k1~122\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ee~439_I_modesel\,
	combout => \ji|ee~439\);

-- atom is at LC1_F8
\ji|ff~278_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ff~278\ = !\ji|e[2]\ & \ji|e[0]\ & \ji|always0~128\ & \ji|ee~439\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ff~278_I_pathsel\,
	dataa => \ji|e[2]\,
	datab => \ji|e[0]\,
	datac => \ji|always0~128\,
	datad => \ji|ee~439\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ff~278_I_modesel\,
	combout => \ji|ff~278\);

-- atom is at LC2_F17
\ji|ff[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ff[1]\ = DFFEA(!\ji|ff~278\ & \ji|f_rtl_1|wysi_counter|q[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ff[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|ff~278\,
	datad => \ji|f_rtl_1|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ff[1]~I_modesel\,
	regout => \ji|ff[1]\);

-- atom is at LC6_F22
\ji|Equal12~31_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Equal12~31\ = !\ji|e[2]\ & !\ji|e[1]\ & \ji|e[3]\ & \ji|e[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Equal12~31_I_pathsel\,
	dataa => \ji|e[2]\,
	datab => \ji|e[1]\,
	datac => \ji|e[3]\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Equal12~31_I_modesel\,
	combout => \ji|Equal12~31\);

-- atom is at LC4_F17
\ji|f_rtl_1|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|f_rtl_1|wysi_counter|q[0]\ = DFFEA(((!\ji|f_rtl_1|wysi_counter|q[0]\ & \ji|Equal12~31\) # (\ji|ff[0]\ & !\ji|Equal12~31\)) & \ji|always1~77\, \fen|f1Hz\, , , , , )
-- \ji|f_rtl_1|wysi_counter|counter_cell[0]~COUT\ = CARRY(\ji|f_rtl_1|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "33AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|f_rtl_1|wysi_counter|q[0]~I_pathsel\,
	dataa => VCC,
	datab => \ji|always1~77\,
	datac => \ji|ff[0]\,
	datad => \ji|Equal12~31\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|f_rtl_1|wysi_counter|q[0]~I_modesel\,
	regout => \ji|f_rtl_1|wysi_counter|q[0]\,
	cout => \ji|f_rtl_1|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC1_F17
\ji|ff[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ff[0]\ = DFFEA(!\ji|ff~278\ & \ji|f_rtl_1|wysi_counter|q[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ff[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|ff~278\,
	datad => \ji|f_rtl_1|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ff[0]~I_modesel\,
	regout => \ji|ff[0]\);

-- atom is at LC5_F17
\ji|f_rtl_1|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|f_rtl_1|wysi_counter|q[1]\ = DFFEA(((\ji|f_rtl_1|wysi_counter|q[1]\ $ \ji|f_rtl_1|wysi_counter|counter_cell[0]~COUT\ & \ji|Equal12~31\) # (\ji|ff[1]\ & !\ji|Equal12~31\)) & \ji|always1~77\, \fen|f1Hz\, , , , , )
-- \ji|f_rtl_1|wysi_counter|counter_cell[1]~COUT\ = CARRY(\ji|f_rtl_1|wysi_counter|q[1]\ & (\ji|f_rtl_1|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|f_rtl_1|wysi_counter|q[1]~I_pathsel\,
	dataa => VCC,
	datab => \ji|always1~77\,
	datac => \ji|ff[1]\,
	datad => \ji|Equal12~31\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => \ji|f_rtl_1|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \ji|f_rtl_1|wysi_counter|q[1]~I_modesel\,
	regout => \ji|f_rtl_1|wysi_counter|q[1]\,
	cout => \ji|f_rtl_1|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC8_F17
\ji|ff[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ff[3]\ = DFFEA(!\ji|ff~278\ & \ji|f_rtl_1|wysi_counter|q[3]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ff[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|ff~278\,
	datad => \ji|f_rtl_1|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ff[3]~I_modesel\,
	regout => \ji|ff[3]\);

-- atom is at LC3_F17
\ji|ff[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ff[2]\ = DFFEA(!\ji|ff~278\ & \ji|f_rtl_1|wysi_counter|q[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ff[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|ff~278\,
	datad => \ji|f_rtl_1|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ff[2]~I_modesel\,
	regout => \ji|ff[2]\);

-- atom is at LC6_F17
\ji|f_rtl_1|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|f_rtl_1|wysi_counter|q[2]\ = DFFEA(((\ji|f_rtl_1|wysi_counter|q[2]\ $ \ji|f_rtl_1|wysi_counter|counter_cell[1]~COUT\ & \ji|Equal12~31\) # (\ji|ff[2]\ & !\ji|Equal12~31\)) & \ji|always1~77\, \fen|f1Hz\, , , , , )
-- \ji|f_rtl_1|wysi_counter|counter_cell[2]~COUT\ = CARRY(\ji|f_rtl_1|wysi_counter|q[2]\ & (\ji|f_rtl_1|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|f_rtl_1|wysi_counter|q[2]~I_pathsel\,
	dataa => VCC,
	datab => \ji|always1~77\,
	datac => \ji|ff[2]\,
	datad => \ji|Equal12~31\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => \ji|f_rtl_1|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \ji|f_rtl_1|wysi_counter|q[2]~I_modesel\,
	regout => \ji|f_rtl_1|wysi_counter|q[2]\,
	cout => \ji|f_rtl_1|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC7_F17
\ji|f_rtl_1|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|f_rtl_1|wysi_counter|q[3]\ = DFFEA(((\ji|f_rtl_1|wysi_counter|q[3]\ $ \ji|f_rtl_1|wysi_counter|counter_cell[2]~COUT\ & \ji|Equal12~31\) # (\ji|ff[3]\ & !\ji|Equal12~31\)) & \ji|always1~77\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "3C3C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|f_rtl_1|wysi_counter|q[3]~I_pathsel\,
	dataa => VCC,
	datab => \ji|always1~77\,
	datac => \ji|ff[3]\,
	datad => \ji|Equal12~31\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => \ji|f_rtl_1|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \ji|f_rtl_1|wysi_counter|q[3]~I_modesel\,
	regout => \ji|f_rtl_1|wysi_counter|q[3]\);

-- atom is at LC8_F23
\p1|Selector40~139_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector40~139\ = !\ji|f_rtl_1|wysi_counter|q[2]\ & !\ji|f_rtl_1|wysi_counter|q[3]\ & !\ji|f_rtl_1|wysi_counter|q[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector40~139_I_pathsel\,
	dataa => VCC,
	datab => \ji|f_rtl_1|wysi_counter|q[2]\,
	datac => \ji|f_rtl_1|wysi_counter|q[3]\,
	datad => \ji|f_rtl_1|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector40~139_I_modesel\,
	combout => \p1|Selector40~139\);

-- atom is at LC8_F8
\ji|always0~128_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always0~128\ = \ji|e[1]\ & !\ji|e[3]\ & \ji|f_rtl_1|wysi_counter|q[1]\ & \p1|Selector40~139\ # !\ji|e[1]\ & \ji|e[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "6444",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always0~128_I_pathsel\,
	dataa => \ji|e[1]\,
	datab => \ji|e[3]\,
	datac => \ji|f_rtl_1|wysi_counter|q[1]\,
	datad => \p1|Selector40~139\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always0~128_I_modesel\,
	combout => \ji|always0~128\);

-- atom is at LC6_F16
\ji|Add5~72_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add5~72\ = \ji|e[2]\ $ (\ji|e[0]\ & \ji|e[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add5~72_I_pathsel\,
	dataa => VCC,
	datab => \ji|e[0]\,
	datac => \ji|e[1]\,
	datad => \ji|e[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Add5~72_I_modesel\,
	combout => \ji|Add5~72\);

-- atom is at LC7_F16
\ji|ee[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ee[2]\ = DFFEA(\ji|ee~439\ & (\ji|ee~440\ & \ji|Add5~72\) # !\ji|ee~439\ & (\ji|e[2]\ # \ji|ee~440\ & \ji|Add5~72\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ee[2]~I_pathsel\,
	dataa => \ji|ee~439\,
	datab => \ji|e[2]\,
	datac => \ji|ee~440\,
	datad => \ji|Add5~72\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ee[2]~I_modesel\,
	regout => \ji|ee[2]\);

-- atom is at LC3_F16
\ji|e[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|e[2]\ = DFFEA(\ji|e~612\ & (\ji|always1~88\ & (\ji|Add5~72\) # !\ji|always1~88\ & \ji|ee[2]\), \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E400",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|e[2]~I_pathsel\,
	dataa => \ji|always1~88\,
	datab => \ji|ee[2]\,
	datac => \ji|Add5~72\,
	datad => \ji|e~612\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|e[2]~I_modesel\,
	regout => \ji|e[2]\);

-- atom is at LC8_F16
\ji|ee~440_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ee~440\ = \ji|ee~439\ & (\ji|e[2]\ # !\ji|always0~128\ # !\ji|e[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F700",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ee~440_I_pathsel\,
	dataa => \ji|e[0]\,
	datab => \ji|always0~128\,
	datac => \ji|e[2]\,
	datad => \ji|ee~439\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ee~440_I_modesel\,
	combout => \ji|ee~440\);

-- atom is at LC3_F22
\ji|Add5~71_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add5~71\ = \ji|e[3]\ $ (\ji|e[0]\ & \ji|e[1]\ & \ji|e[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add5~71_I_pathsel\,
	dataa => \ji|e[0]\,
	datab => \ji|e[1]\,
	datac => \ji|e[2]\,
	datad => \ji|e[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Add5~71_I_modesel\,
	combout => \ji|Add5~71\);

-- atom is at LC4_F16
\ji|ee[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ee[3]\ = DFFEA(\ji|ee~439\ & (\ji|ee~440\ & \ji|Add5~71\) # !\ji|ee~439\ & (\ji|e[3]\ # \ji|ee~440\ & \ji|Add5~71\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ee[3]~I_pathsel\,
	dataa => \ji|ee~439\,
	datab => \ji|e[3]\,
	datac => \ji|ee~440\,
	datad => \ji|Add5~71\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ee[3]~I_modesel\,
	regout => \ji|ee[3]\);

-- atom is at LC1_F16
\ji|e[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|e[3]\ = DFFEA(\ji|e~612\ & (\ji|always1~88\ & (\ji|Add5~71\) # !\ji|always1~88\ & \ji|ee[3]\), \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E400",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|e[3]~I_pathsel\,
	dataa => \ji|always1~88\,
	datab => \ji|ee[3]\,
	datac => \ji|Add5~71\,
	datad => \ji|e~612\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|e[3]~I_modesel\,
	regout => \ji|e[3]\);

-- atom is at LC2_F8
\ji|Equal12~30_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Equal12~30\ = \ji|e[3]\ & \ji|e[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Equal12~30_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|e[3]\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Equal12~30_I_modesel\,
	combout => \ji|Equal12~30\);

-- atom is at LC4_F8
\ji|e~612_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|e~612\ = \ji|always1~77\ & (\ji|e[2]\ # \ji|e[1]\ # !\ji|Equal12~30\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "AAA2",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|e~612_I_pathsel\,
	dataa => \ji|always1~77\,
	datab => \ji|Equal12~30\,
	datac => \ji|e[2]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|e~612_I_modesel\,
	combout => \ji|e~612\);

-- atom is at LC5_B12
\ji|e[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|e[0]\ = DFFEA(\ji|e~612\ & (\ji|always1~88\ & !\ji|e[0]\ # !\ji|always1~88\ & (\ji|ee[0]\)), \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7400",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|e[0]~I_pathsel\,
	dataa => \ji|e[0]\,
	datab => \ji|always1~88\,
	datac => \ji|ee[0]\,
	datad => \ji|e~612\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|e[0]~I_modesel\,
	regout => \ji|e[0]\);

-- atom is at LC2_F16
\ji|ee[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|ee[1]\ = DFFEA(\ji|e[1]\ & (!\ji|e[0]\ & \ji|ee~440\ # !\ji|ee~439\) # !\ji|e[1]\ & (\ji|e[0]\ & \ji|ee~440\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7C50",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|ee[1]~I_pathsel\,
	dataa => \ji|ee~439\,
	datab => \ji|e[0]\,
	datac => \ji|e[1]\,
	datad => \ji|ee~440\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|ee[1]~I_modesel\,
	regout => \ji|ee[1]\);

-- atom is at LC8_F27
\ji|Add5~70_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add5~70\ = \ji|e[0]\ $ \ji|e[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add5~70_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \ji|e[0]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|Add5~70_I_modesel\,
	combout => \ji|Add5~70\);

-- atom is at LC5_F16
\ji|e[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|e[1]\ = DFFEA(\ji|e~612\ & (\ji|always1~88\ & (\ji|Add5~70\) # !\ji|always1~88\ & \ji|ee[1]\), \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E400",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|e[1]~I_pathsel\,
	dataa => \ji|always1~88\,
	datab => \ji|ee[1]\,
	datac => \ji|Add5~70\,
	datad => \ji|e~612\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|e[1]~I_modesel\,
	regout => \ji|e[1]\);

-- atom is at LC5_F8
\ji|always1~76_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~76\ = !\ji|e[3]\ & \ji|f_rtl_1|wysi_counter|q[1]\ & \p1|Selector40~139\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~76_I_pathsel\,
	dataa => VCC,
	datab => \ji|e[3]\,
	datac => \ji|f_rtl_1|wysi_counter|q[1]\,
	datad => \p1|Selector40~139\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~76_I_modesel\,
	combout => \ji|always1~76\);

-- atom is at LC7_F8
\ji|always1~77_I\ : flex10ke_lcell
-- Equation(s):
-- \ji|always1~77\ = \ji|e[0]\ # \ji|e[1]\ # !\ji|always1~76\ # !\ji|e[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "EFFF",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|always1~77_I_pathsel\,
	dataa => \ji|e[0]\,
	datab => \ji|e[1]\,
	datac => \ji|e[2]\,
	datad => \ji|always1~76\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \ji|always1~77_I_modesel\,
	combout => \ji|always1~77\);

-- atom is at LC3_F23
\p1|Selector39~119_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector39~119\ = !\ji|f_rtl_1|wysi_counter|q[2]\ & !\ji|f_rtl_1|wysi_counter|q[3]\ & !\ji|f_rtl_1|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector39~119_I_pathsel\,
	dataa => VCC,
	datab => \ji|f_rtl_1|wysi_counter|q[2]\,
	datac => \ji|f_rtl_1|wysi_counter|q[3]\,
	datad => \ji|f_rtl_1|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector39~119_I_modesel\,
	combout => \p1|Selector39~119\);

-- atom is at LC4_F23
\p1|Selector40~141_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector40~141\ = \p1|Selector40~139\ # !\p1|Selector39~119\ & \p1|display[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector40~141_I_pathsel\,
	dataa => VCC,
	datab => \p1|Selector39~119\,
	datac => \p1|display[0]\,
	datad => \p1|Selector40~139\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector40~141_I_modesel\,
	combout => \p1|Selector40~141\);

-- atom is at LC6_F8
\p1|Selector34~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector34~23\ = \ji|e[3]\ & \ji|e[2]\ # !\ji|e[3]\ & (\ji|e[1]\ # \ji|e[2]\ $ !\ji|e[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector34~23_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \ji|e[2]\,
	datac => \ji|e[1]\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector34~23_I_modesel\,
	combout => \p1|Selector34~23\);

-- atom is at LC3_F8
\p1|Selector34~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector34~24\ = \ji|e[3]\ & (\p1|display[0]\ # !\p1|Selector34~23\ & !\ji|e[1]\) # !\ji|e[3]\ & \p1|Selector34~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector34~24_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \p1|Selector34~23\,
	datac => \p1|display[0]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector34~24_I_modesel\,
	combout => \p1|Selector34~24\);

-- atom is at LC5_F35
\p1|Selector48~1318_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1331\ = \p1|o[0]\ & !\p1|Selector40~141\ # !\p1|o[0]\ & (!\p1|Selector34~24\) # !\p1|Selector48~1306\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1318_I_pathsel\,
	dataa => \p1|Selector48~1306\,
	datab => \p1|Selector40~141\,
	datac => \p1|Selector34~24\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector48~1318_I_modesel\,
	cascout => \p1|Selector48~1331\);

-- atom is at LC6_F35
\p1|Selector48~1322_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1334\ = (!\p1|Selector48~1319\ & (\p1|o[2]\ # !\p1|Selector6~19\) # !\p1|Decoder6~69\) & CASCADE(\p1|Selector48~1331\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1322_I_pathsel\,
	dataa => \p1|Decoder6~69\,
	datab => \p1|Selector48~1319\,
	datac => \p1|Selector6~19\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector48~1331\,
	modesel => \p1|Selector48~1322_I_modesel\,
	cascout => \p1|Selector48~1334\);

-- atom is at LC7_F35
\p1|Selector48~1321_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1321\ = (!\p1|Selector48~1312\ & (!\p1|Selector20~24\ # !\p1|Selector48~1307\) # !\p1|Decoder6~70\) & CASCADE(\p1|Selector48~1334\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1321_I_pathsel\,
	dataa => \p1|Decoder6~70\,
	datab => \p1|Selector48~1312\,
	datac => \p1|Selector48~1307\,
	datad => \p1|Selector20~24\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector48~1334\,
	modesel => \p1|Selector48~1321_I_modesel\,
	combout => \p1|Selector48~1321\);

-- atom is at LC3_F35
\p1|display[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[0]\ = DFFEA(!\p1|Selector48~1321\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Selector48~1321\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[0]~I_modesel\,
	regout => \p1|display[0]\);

-- atom is at LC5_A36
\fen|f100Hz~I\ : flex10ke_lcell
-- Equation(s):
-- \fen|f100Hz\ = DFFEA(!\fen|f100Hz\, GLOBAL(\clk~dataout\), , , \fen|Equal1~339\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \fen|f100Hz~I_pathsel\,
	dataa => \fen|Equal1~339\,
	datab => VCC,
	datac => VCC,
	datad => \fen|f100Hz\,
	aclr => GND,
	aload => GND,
	clk => \clk~dataout\,
	cin => GND,
	cascin => VCC,
	modesel => \fen|f100Hz~I_modesel\,
	regout => \fen|f100Hz\);

-- atom is at LC2_E25
\pao|c_rtl_4|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|c_rtl_4|wysi_counter|q[0]\ = DFFEA((\pao|c[0]~121\ $ \pao|c_rtl_4|wysi_counter|q[0]\) & \pao|c~122\, \fen|f100Hz\, , , , , )
-- \pao|c_rtl_4|wysi_counter|counter_cell[0]~COUT\ = CARRY(\pao|c_rtl_4|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "66AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|c_rtl_4|wysi_counter|q[0]~I_pathsel\,
	dataa => \pao|c[0]~121\,
	datab => \pao|c~122\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|c_rtl_4|wysi_counter|q[0]~I_modesel\,
	regout => \pao|c_rtl_4|wysi_counter|q[0]\,
	cout => \pao|c_rtl_4|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC3_E25
\pao|c_rtl_4|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|c_rtl_4|wysi_counter|q[1]\ = DFFEA((\pao|c_rtl_4|wysi_counter|q[1]\ $ (\pao|c[0]~121\ & \pao|c_rtl_4|wysi_counter|counter_cell[0]~COUT\)) & \pao|c~122\, \fen|f100Hz\, , , , , )
-- \pao|c_rtl_4|wysi_counter|counter_cell[1]~COUT\ = CARRY(\pao|c_rtl_4|wysi_counter|q[1]\ & (\pao|c_rtl_4|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|c_rtl_4|wysi_counter|q[1]~I_pathsel\,
	dataa => \pao|c[0]~121\,
	datab => \pao|c~122\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|c_rtl_4|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \pao|c_rtl_4|wysi_counter|q[1]~I_modesel\,
	regout => \pao|c_rtl_4|wysi_counter|q[1]\,
	cout => \pao|c_rtl_4|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC4_E22
\pao|Equal7~24_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|Equal7~24\ = \pao|c_rtl_4|wysi_counter|q[2]\ # \pao|c_rtl_4|wysi_counter|q[1]\ # !\pao|c_rtl_4|wysi_counter|q[0]\ # !\pao|c_rtl_4|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF7",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|Equal7~24_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \pao|c_rtl_4|wysi_counter|q[0]\,
	datac => \pao|c_rtl_4|wysi_counter|q[2]\,
	datad => \pao|c_rtl_4|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|Equal7~24_I_modesel\,
	combout => \pao|Equal7~24\);

-- atom is at LC5_D20
\pao|k2[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k2[0]\ = DFFEA(!\pao|k2[0]\, GLOBAL(\fen|f\), , , \pao|k2[1]~22\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k2[0]~I_pathsel\,
	dataa => \pao|k2[1]~22\,
	datab => VCC,
	datac => VCC,
	datad => \pao|k2[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k2[0]~I_modesel\,
	regout => \pao|k2[0]\);

-- atom is at LC3_D20
\pao|k2[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k2[1]\ = DFFEA(\pao|k2[1]\ $ \pao|k2[0]\, GLOBAL(\fen|f\), , , \pao|k2[1]~22\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k2[1]~I_pathsel\,
	dataa => \pao|k2[1]~22\,
	datab => VCC,
	datac => \pao|k2[1]\,
	datad => \pao|k2[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k2[1]~I_modesel\,
	regout => \pao|k2[1]\);

-- atom is at LC6_D20
\pao|k1[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k1[1]\ = DFFEA(\pao|k1[0]\ & !\pao|k1[1]\, GLOBAL(\fen|f\), , , \pao|k1[0]~56\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00F0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k1[1]~I_pathsel\,
	dataa => \pao|k1[0]~56\,
	datab => VCC,
	datac => \pao|k1[0]\,
	datad => \pao|k1[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k1[1]~I_modesel\,
	regout => \pao|k1[1]\);

-- atom is at LC2_D20
\pao|k1[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|k1[0]\ = DFFEA(!\pao|k1[0]\ & !\pao|k1[1]\, GLOBAL(\fen|f\), , , \pao|k1[0]~56\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|k1[0]~I_pathsel\,
	dataa => \pao|k1[0]~56\,
	datab => VCC,
	datac => \pao|k1[0]\,
	datad => \pao|k1[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|k1[0]~I_modesel\,
	regout => \pao|k1[0]\);

-- atom is at LC1_D20
\pao|always1~113_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|always1~113\ = !\pao|k1[1]\ & (\pao|k2[0]\ & !\pao|k2[1]\ & !\pao|k1[0]\ # !\pao|k2[0]\ & (\pao|k1[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1104",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|always1~113_I_pathsel\,
	dataa => \pao|k1[1]\,
	datab => \pao|k2[0]\,
	datac => \pao|k2[1]\,
	datad => \pao|k1[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|always1~113_I_modesel\,
	combout => \pao|always1~113\);

-- atom is at LC4_D20
\pao|a~180_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|a~180\ = \pao|k1[0]\ & !\pao|k1[1]\ & \pao|k2[0]\ # !\pao|k1[0]\ & \pao|k1[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3C30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|a~180_I_pathsel\,
	dataa => VCC,
	datab => \pao|k1[0]\,
	datac => \pao|k1[1]\,
	datad => \pao|k2[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|a~180_I_modesel\,
	combout => \pao|a~180\);

-- atom is at LC8_E25
\pao|c~122_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|c~122\ = \pao|a~180\ # \pao|Equal7~24\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|c~122_I_pathsel\,
	dataa => VCC,
	datab => \pao|Equal7~24\,
	datac => \pao|always1~113\,
	datad => \pao|a~180\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|c~122_I_modesel\,
	combout => \pao|c~122\);

-- atom is at LC4_E25
\pao|c_rtl_4|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|c_rtl_4|wysi_counter|q[2]\ = DFFEA((\pao|c_rtl_4|wysi_counter|q[2]\ $ (\pao|c[0]~121\ & \pao|c_rtl_4|wysi_counter|counter_cell[1]~COUT\)) & \pao|c~122\, \fen|f100Hz\, , , , , )
-- \pao|c_rtl_4|wysi_counter|counter_cell[2]~COUT\ = CARRY(\pao|c_rtl_4|wysi_counter|q[2]\ & (\pao|c_rtl_4|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|c_rtl_4|wysi_counter|q[2]~I_pathsel\,
	dataa => \pao|c[0]~121\,
	datab => \pao|c~122\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|c_rtl_4|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \pao|c_rtl_4|wysi_counter|q[2]~I_modesel\,
	regout => \pao|c_rtl_4|wysi_counter|q[2]\,
	cout => \pao|c_rtl_4|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC3_E22
\p2|Selector20~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector20~18\ = \pao|c_rtl_4|wysi_counter|q[3]\ & \pao|c_rtl_4|wysi_counter|q[2]\ # !\pao|c_rtl_4|wysi_counter|q[3]\ & (\pao|c_rtl_4|wysi_counter|q[1]\ # \pao|c_rtl_4|wysi_counter|q[2]\ $ !\pao|c_rtl_4|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector20~18_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \pao|c_rtl_4|wysi_counter|q[2]\,
	datac => \pao|c_rtl_4|wysi_counter|q[1]\,
	datad => \pao|c_rtl_4|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector20~18_I_modesel\,
	combout => \p2|Selector20~18\);

-- atom is at LC4_E36
\p2|Selector20~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector20~19\ = \pao|c_rtl_4|wysi_counter|q[3]\ & (\p2|display[0]\ # !\p2|Selector20~18\ & !\pao|c_rtl_4|wysi_counter|q[1]\) # !\pao|c_rtl_4|wysi_counter|q[3]\ & \p2|Selector20~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector20~19_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \p2|Selector20~18\,
	datac => \p2|display[0]\,
	datad => \pao|c_rtl_4|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector20~19_I_modesel\,
	combout => \p2|Selector20~19\);

-- atom is at LC3_E18
\pao|a~181_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|a~181\ = \pao|a~180\ # \pao|Equal5~26\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|a~181_I_pathsel\,
	dataa => VCC,
	datab => \pao|Equal5~26\,
	datac => \pao|always1~113\,
	datad => \pao|a~180\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|a~181_I_modesel\,
	combout => \pao|a~181\);

-- atom is at LC4_E18
\pao|a_rtl_2|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|a_rtl_2|wysi_counter|q[0]\ = DFFEA((\pao|always1~113\ $ \pao|a_rtl_2|wysi_counter|q[0]\) & \pao|a~181\, \fen|f100Hz\, , , , , )
-- \pao|a_rtl_2|wysi_counter|counter_cell[0]~COUT\ = CARRY(\pao|a_rtl_2|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "66AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|a_rtl_2|wysi_counter|q[0]~I_pathsel\,
	dataa => \pao|always1~113\,
	datab => \pao|a~181\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|a_rtl_2|wysi_counter|q[0]~I_modesel\,
	regout => \pao|a_rtl_2|wysi_counter|q[0]\,
	cout => \pao|a_rtl_2|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC5_E18
\pao|a_rtl_2|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|a_rtl_2|wysi_counter|q[1]\ = DFFEA((\pao|a_rtl_2|wysi_counter|q[1]\ $ (\pao|always1~113\ & \pao|a_rtl_2|wysi_counter|counter_cell[0]~COUT\)) & \pao|a~181\, \fen|f100Hz\, , , , , )
-- \pao|a_rtl_2|wysi_counter|counter_cell[1]~COUT\ = CARRY(\pao|a_rtl_2|wysi_counter|q[1]\ & (\pao|a_rtl_2|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|a_rtl_2|wysi_counter|q[1]~I_pathsel\,
	dataa => \pao|always1~113\,
	datab => \pao|a~181\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|a_rtl_2|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \pao|a_rtl_2|wysi_counter|q[1]~I_modesel\,
	regout => \pao|a_rtl_2|wysi_counter|q[1]\,
	cout => \pao|a_rtl_2|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC6_E18
\pao|a_rtl_2|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|a_rtl_2|wysi_counter|q[2]\ = DFFEA((\pao|a_rtl_2|wysi_counter|q[2]\ $ (\pao|always1~113\ & \pao|a_rtl_2|wysi_counter|counter_cell[1]~COUT\)) & \pao|a~181\, \fen|f100Hz\, , , , , )
-- \pao|a_rtl_2|wysi_counter|counter_cell[2]~COUT\ = CARRY(\pao|a_rtl_2|wysi_counter|q[2]\ & (\pao|a_rtl_2|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|a_rtl_2|wysi_counter|q[2]~I_pathsel\,
	dataa => \pao|always1~113\,
	datab => \pao|a~181\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|a_rtl_2|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \pao|a_rtl_2|wysi_counter|q[2]~I_modesel\,
	regout => \pao|a_rtl_2|wysi_counter|q[2]\,
	cout => \pao|a_rtl_2|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC2_E18
\pao|Equal5~26_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|Equal5~26\ = \pao|a_rtl_2|wysi_counter|q[2]\ # \pao|a_rtl_2|wysi_counter|q[1]\ # !\pao|a_rtl_2|wysi_counter|q[0]\ # !\pao|a_rtl_2|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF7",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|Equal5~26_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \pao|a_rtl_2|wysi_counter|q[0]\,
	datac => \pao|a_rtl_2|wysi_counter|q[2]\,
	datad => \pao|a_rtl_2|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|Equal5~26_I_modesel\,
	combout => \pao|Equal5~26\);

-- atom is at LC4_E13
\pao|b~142_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|b~142\ = \pao|a~180\ # \pao|always1~113\ & (\pao|always1~114\ # \pao|Equal5~26\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|b~142_I_pathsel\,
	dataa => \pao|always1~114\,
	datab => \pao|Equal5~26\,
	datac => \pao|always1~113\,
	datad => \pao|a~180\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|b~142_I_modesel\,
	combout => \pao|b~142\);

-- atom is at LC5_E13
\pao|b_rtl_3|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|b_rtl_3|wysi_counter|q[0]\ = DFFEA((\pao|b[0]~141\ $ \pao|b_rtl_3|wysi_counter|q[0]\) & \pao|b~142\, \fen|f100Hz\, , , , , )
-- \pao|b_rtl_3|wysi_counter|counter_cell[0]~COUT\ = CARRY(\pao|b_rtl_3|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "66AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|b_rtl_3|wysi_counter|q[0]~I_pathsel\,
	dataa => \pao|b[0]~141\,
	datab => \pao|b~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|b_rtl_3|wysi_counter|q[0]~I_modesel\,
	regout => \pao|b_rtl_3|wysi_counter|q[0]\,
	cout => \pao|b_rtl_3|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC6_E13
\pao|b_rtl_3|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|b_rtl_3|wysi_counter|q[1]\ = DFFEA((\pao|b_rtl_3|wysi_counter|q[1]\ $ (\pao|b[0]~141\ & \pao|b_rtl_3|wysi_counter|counter_cell[0]~COUT\)) & \pao|b~142\, \fen|f100Hz\, , , , , )
-- \pao|b_rtl_3|wysi_counter|counter_cell[1]~COUT\ = CARRY(\pao|b_rtl_3|wysi_counter|q[1]\ & (\pao|b_rtl_3|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|b_rtl_3|wysi_counter|q[1]~I_pathsel\,
	dataa => \pao|b[0]~141\,
	datab => \pao|b~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|b_rtl_3|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \pao|b_rtl_3|wysi_counter|q[1]~I_modesel\,
	regout => \pao|b_rtl_3|wysi_counter|q[1]\,
	cout => \pao|b_rtl_3|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC7_E13
\pao|b_rtl_3|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|b_rtl_3|wysi_counter|q[2]\ = DFFEA((\pao|b_rtl_3|wysi_counter|q[2]\ $ (\pao|b[0]~141\ & \pao|b_rtl_3|wysi_counter|counter_cell[1]~COUT\)) & \pao|b~142\, \fen|f100Hz\, , , , , )
-- \pao|b_rtl_3|wysi_counter|counter_cell[2]~COUT\ = CARRY(\pao|b_rtl_3|wysi_counter|q[2]\ & (\pao|b_rtl_3|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|b_rtl_3|wysi_counter|q[2]~I_pathsel\,
	dataa => \pao|b[0]~141\,
	datab => \pao|b~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|b_rtl_3|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \pao|b_rtl_3|wysi_counter|q[2]~I_modesel\,
	regout => \pao|b_rtl_3|wysi_counter|q[2]\,
	cout => \pao|b_rtl_3|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC5_E30
\p2|Selector13~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector13~18\ = \pao|b_rtl_3|wysi_counter|q[3]\ & \pao|b_rtl_3|wysi_counter|q[2]\ # !\pao|b_rtl_3|wysi_counter|q[3]\ & (\pao|b_rtl_3|wysi_counter|q[1]\ # \pao|b_rtl_3|wysi_counter|q[2]\ $ !\pao|b_rtl_3|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector13~18_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[2]\,
	datac => \pao|b_rtl_3|wysi_counter|q[1]\,
	datad => \pao|b_rtl_3|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector13~18_I_modesel\,
	combout => \p2|Selector13~18\);

-- atom is at LC6_E30
\p2|Selector13~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector13~19\ = \pao|b_rtl_3|wysi_counter|q[3]\ & (\p2|display[0]\ # !\p2|Selector13~18\ & !\pao|b_rtl_3|wysi_counter|q[1]\) # !\pao|b_rtl_3|wysi_counter|q[3]\ & \p2|Selector13~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector13~19_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \p2|Selector13~18\,
	datac => \p2|display[0]\,
	datad => \pao|b_rtl_3|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector13~19_I_modesel\,
	combout => \p2|Selector13~19\);

-- atom is at LC5_E26
\pao|e~130_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|e~130\ = \pao|a~180\ # \pao|Equal9~12\ & \pao|always1~113\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|e~130_I_pathsel\,
	dataa => VCC,
	datab => \pao|Equal9~12\,
	datac => \pao|always1~113\,
	datad => \pao|a~180\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|e~130_I_modesel\,
	combout => \pao|e~130\);

-- atom is at LC1_E26
\pao|e_rtl_6|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|e_rtl_6|wysi_counter|q[0]\ = DFFEA((\pao|e[0]~129\ $ \pao|e_rtl_6|wysi_counter|q[0]\) & \pao|e~130\, \fen|f100Hz\, , , , , )
-- \pao|e_rtl_6|wysi_counter|counter_cell[0]~COUT\ = CARRY(\pao|e_rtl_6|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "66AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|e_rtl_6|wysi_counter|q[0]~I_pathsel\,
	dataa => \pao|e[0]~129\,
	datab => \pao|e~130\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|e_rtl_6|wysi_counter|q[0]~I_modesel\,
	regout => \pao|e_rtl_6|wysi_counter|q[0]\,
	cout => \pao|e_rtl_6|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC2_E26
\pao|e_rtl_6|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|e_rtl_6|wysi_counter|q[1]\ = DFFEA((\pao|e_rtl_6|wysi_counter|q[1]\ $ (\pao|e[0]~129\ & \pao|e_rtl_6|wysi_counter|counter_cell[0]~COUT\)) & \pao|e~130\, \fen|f100Hz\, , , , , )
-- \pao|e_rtl_6|wysi_counter|counter_cell[1]~COUT\ = CARRY(\pao|e_rtl_6|wysi_counter|q[1]\ & (\pao|e_rtl_6|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|e_rtl_6|wysi_counter|q[1]~I_pathsel\,
	dataa => \pao|e[0]~129\,
	datab => \pao|e~130\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|e_rtl_6|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \pao|e_rtl_6|wysi_counter|q[1]~I_modesel\,
	regout => \pao|e_rtl_6|wysi_counter|q[1]\,
	cout => \pao|e_rtl_6|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC8_E26
\pao|Equal9~12_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|Equal9~12\ = \pao|e_rtl_6|wysi_counter|q[2]\ # \pao|e_rtl_6|wysi_counter|q[1]\ # !\pao|e_rtl_6|wysi_counter|q[0]\ # !\pao|e_rtl_6|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF7",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|Equal9~12_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[0]\,
	datac => \pao|e_rtl_6|wysi_counter|q[2]\,
	datad => \pao|e_rtl_6|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|Equal9~12_I_modesel\,
	combout => \pao|Equal9~12\);

-- atom is at LC7_D28
\pao|f~192_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f~192\ = \pao|a~180\ # \pao|always1~113\ & (\pao|f~191\ # \pao|Equal9~12\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f~192_I_pathsel\,
	dataa => \pao|f~191\,
	datab => \pao|Equal9~12\,
	datac => \pao|always1~113\,
	datad => \pao|a~180\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|f~192_I_modesel\,
	combout => \pao|f~192\);

-- atom is at LC2_D28
\pao|f_rtl_7|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f_rtl_7|wysi_counter|q[0]\ = DFFEA((\pao|f[0]~190\ $ \pao|f_rtl_7|wysi_counter|q[0]\) & \pao|f~192\, \fen|f100Hz\, , , , , )
-- \pao|f_rtl_7|wysi_counter|counter_cell[0]~COUT\ = CARRY(\pao|f_rtl_7|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "66AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f_rtl_7|wysi_counter|q[0]~I_pathsel\,
	dataa => \pao|f[0]~190\,
	datab => \pao|f~192\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|f_rtl_7|wysi_counter|q[0]~I_modesel\,
	regout => \pao|f_rtl_7|wysi_counter|q[0]\,
	cout => \pao|f_rtl_7|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC3_D28
\pao|f_rtl_7|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f_rtl_7|wysi_counter|q[1]\ = DFFEA((\pao|f_rtl_7|wysi_counter|q[1]\ $ (\pao|f[0]~190\ & \pao|f_rtl_7|wysi_counter|counter_cell[0]~COUT\)) & \pao|f~192\, \fen|f100Hz\, , , , , )
-- \pao|f_rtl_7|wysi_counter|counter_cell[1]~COUT\ = CARRY(\pao|f_rtl_7|wysi_counter|q[1]\ & (\pao|f_rtl_7|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f_rtl_7|wysi_counter|q[1]~I_pathsel\,
	dataa => \pao|f[0]~190\,
	datab => \pao|f~192\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|f_rtl_7|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \pao|f_rtl_7|wysi_counter|q[1]~I_modesel\,
	regout => \pao|f_rtl_7|wysi_counter|q[1]\,
	cout => \pao|f_rtl_7|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC4_D28
\pao|f_rtl_7|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f_rtl_7|wysi_counter|q[2]\ = DFFEA((\pao|f_rtl_7|wysi_counter|q[2]\ $ (\pao|f[0]~190\ & \pao|f_rtl_7|wysi_counter|counter_cell[1]~COUT\)) & \pao|f~192\, \fen|f100Hz\, , , , , )
-- \pao|f_rtl_7|wysi_counter|counter_cell[2]~COUT\ = CARRY(\pao|f_rtl_7|wysi_counter|q[2]\ & (\pao|f_rtl_7|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f_rtl_7|wysi_counter|q[2]~I_pathsel\,
	dataa => \pao|f[0]~190\,
	datab => \pao|f~192\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|f_rtl_7|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \pao|f_rtl_7|wysi_counter|q[2]~I_modesel\,
	regout => \pao|f_rtl_7|wysi_counter|q[2]\,
	cout => \pao|f_rtl_7|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC5_D28
\pao|f_rtl_7|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|f_rtl_7|wysi_counter|q[3]\ = DFFEA((\pao|f_rtl_7|wysi_counter|q[3]\ $ (\pao|f[0]~190\ & \pao|f_rtl_7|wysi_counter|counter_cell[2]~COUT\)) & \pao|f~192\, \fen|f100Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6C6C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|f_rtl_7|wysi_counter|q[3]~I_pathsel\,
	dataa => \pao|f[0]~190\,
	datab => \pao|f~192\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|f_rtl_7|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \pao|f_rtl_7|wysi_counter|q[3]~I_modesel\,
	regout => \pao|f_rtl_7|wysi_counter|q[3]\);

-- atom is at LC4_D23
\p2|Selector54~1844_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1844\ = !\pao|f_rtl_7|wysi_counter|q[2]\ & !\pao|f_rtl_7|wysi_counter|q[3]\ & !\pao|f_rtl_7|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1844_I_pathsel\,
	dataa => VCC,
	datab => \pao|f_rtl_7|wysi_counter|q[2]\,
	datac => \pao|f_rtl_7|wysi_counter|q[3]\,
	datad => \pao|f_rtl_7|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector54~1844_I_modesel\,
	combout => \p2|Selector54~1844\);

-- atom is at LC6_D28
\p2|Selector50~1116_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1116\ = !\pao|f_rtl_7|wysi_counter|q[2]\ & !\pao|f_rtl_7|wysi_counter|q[3]\ & !\pao|f_rtl_7|wysi_counter|q[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1116_I_pathsel\,
	dataa => VCC,
	datab => \pao|f_rtl_7|wysi_counter|q[2]\,
	datac => \pao|f_rtl_7|wysi_counter|q[3]\,
	datad => \pao|f_rtl_7|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1116_I_modesel\,
	combout => \p2|Selector50~1116\);

-- atom is at LC8_E36
\p2|Selector56~1214_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector56~1214\ = \p2|Selector50~1116\ # !\p2|Selector54~1844\ & \p2|display[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector56~1214_I_pathsel\,
	dataa => VCC,
	datab => \p2|Selector54~1844\,
	datac => \p2|display[0]\,
	datad => \p2|Selector50~1116\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector56~1214_I_modesel\,
	combout => \p2|Selector56~1214\);

-- atom is at LC1_E35
\p2|Selector34~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector34~18\ = \pao|e_rtl_6|wysi_counter|q[3]\ & \pao|e_rtl_6|wysi_counter|q[2]\ # !\pao|e_rtl_6|wysi_counter|q[3]\ & (\pao|e_rtl_6|wysi_counter|q[1]\ # \pao|e_rtl_6|wysi_counter|q[2]\ $ !\pao|e_rtl_6|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector34~18_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[2]\,
	datac => \pao|e_rtl_6|wysi_counter|q[1]\,
	datad => \pao|e_rtl_6|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector34~18_I_modesel\,
	combout => \p2|Selector34~18\);

-- atom is at LC7_E35
\p2|Selector34~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector34~19\ = \pao|e_rtl_6|wysi_counter|q[3]\ & (\p2|display[0]\ # !\p2|Selector34~18\ & !\pao|e_rtl_6|wysi_counter|q[1]\) # !\pao|e_rtl_6|wysi_counter|q[3]\ & \p2|Selector34~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector34~19_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \p2|Selector34~18\,
	datac => \p2|display[0]\,
	datad => \pao|e_rtl_6|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector34~19_I_modesel\,
	combout => \p2|Selector34~19\);

-- atom is at LC8_E10
\pao|d~142_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|d~142\ = \pao|a~180\ # \pao|always1~113\ & (\pao|always1~115\ # \pao|Equal7~24\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|d~142_I_pathsel\,
	dataa => \pao|always1~115\,
	datab => \pao|Equal7~24\,
	datac => \pao|always1~113\,
	datad => \pao|a~180\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|d~142_I_modesel\,
	combout => \pao|d~142\);

-- atom is at LC1_E10
\pao|d_rtl_5|wysi_counter|q[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|d_rtl_5|wysi_counter|q[0]\ = DFFEA((\pao|d[0]~141\ $ \pao|d_rtl_5|wysi_counter|q[0]\) & \pao|d~142\, \fen|f100Hz\, , , , , )
-- \pao|d_rtl_5|wysi_counter|counter_cell[0]~COUT\ = CARRY(\pao|d_rtl_5|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "66AA",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|d_rtl_5|wysi_counter|q[0]~I_pathsel\,
	dataa => \pao|d[0]~141\,
	datab => \pao|d~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \pao|d_rtl_5|wysi_counter|q[0]~I_modesel\,
	regout => \pao|d_rtl_5|wysi_counter|q[0]\,
	cout => \pao|d_rtl_5|wysi_counter|counter_cell[0]~COUT\);

-- atom is at LC2_E10
\pao|d_rtl_5|wysi_counter|q[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|d_rtl_5|wysi_counter|q[1]\ = DFFEA((\pao|d_rtl_5|wysi_counter|q[1]\ $ (\pao|d[0]~141\ & \pao|d_rtl_5|wysi_counter|counter_cell[0]~COUT\)) & \pao|d~142\, \fen|f100Hz\, , , , , )
-- \pao|d_rtl_5|wysi_counter|counter_cell[1]~COUT\ = CARRY(\pao|d_rtl_5|wysi_counter|q[1]\ & (\pao|d_rtl_5|wysi_counter|counter_cell[0]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|d_rtl_5|wysi_counter|q[1]~I_pathsel\,
	dataa => \pao|d[0]~141\,
	datab => \pao|d~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|d_rtl_5|wysi_counter|counter_cell[0]~COUT\,
	cascin => VCC,
	modesel => \pao|d_rtl_5|wysi_counter|q[1]~I_modesel\,
	regout => \pao|d_rtl_5|wysi_counter|q[1]\,
	cout => \pao|d_rtl_5|wysi_counter|counter_cell[1]~COUT\);

-- atom is at LC3_E10
\pao|d_rtl_5|wysi_counter|q[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|d_rtl_5|wysi_counter|q[2]\ = DFFEA((\pao|d_rtl_5|wysi_counter|q[2]\ $ (\pao|d[0]~141\ & \pao|d_rtl_5|wysi_counter|counter_cell[1]~COUT\)) & \pao|d~142\, \fen|f100Hz\, , , , , )
-- \pao|d_rtl_5|wysi_counter|counter_cell[2]~COUT\ = CARRY(\pao|d_rtl_5|wysi_counter|q[2]\ & (\pao|d_rtl_5|wysi_counter|counter_cell[1]~COUT\))

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6CA0",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|d_rtl_5|wysi_counter|q[2]~I_pathsel\,
	dataa => \pao|d[0]~141\,
	datab => \pao|d~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|d_rtl_5|wysi_counter|counter_cell[1]~COUT\,
	cascin => VCC,
	modesel => \pao|d_rtl_5|wysi_counter|q[2]~I_modesel\,
	regout => \pao|d_rtl_5|wysi_counter|q[2]\,
	cout => \pao|d_rtl_5|wysi_counter|counter_cell[2]~COUT\);

-- atom is at LC2_E27
\p2|Selector53~1202_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector53~1202\ = !\pao|d_rtl_5|wysi_counter|q[3]\ & (\pao|d_rtl_5|wysi_counter|q[2]\ $ (\pao|d_rtl_5|wysi_counter|q[1]\ # !\pao|d_rtl_5|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1411",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector53~1202_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[3]\,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \pao|d_rtl_5|wysi_counter|q[1]\,
	datad => \pao|d_rtl_5|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector53~1202_I_modesel\,
	combout => \p2|Selector53~1202\);

-- atom is at LC5_E36
\p2|Selector56~1212_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector56~1212\ = \p2|Selector53~1202\ # \p2|display[0]\ & (\pao|d_rtl_5|wysi_counter|q[3]\ # \pao|d_rtl_5|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector56~1212_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[3]\,
	datab => \pao|d_rtl_5|wysi_counter|q[1]\,
	datac => \p2|display[0]\,
	datad => \p2|Selector53~1202\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector56~1212_I_modesel\,
	combout => \p2|Selector56~1212\);

-- atom is at LC7_E34
\p2|Selector6~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector6~18\ = \pao|a_rtl_2|wysi_counter|q[3]\ & \pao|a_rtl_2|wysi_counter|q[2]\ # !\pao|a_rtl_2|wysi_counter|q[3]\ & (\pao|a_rtl_2|wysi_counter|q[1]\ # \pao|a_rtl_2|wysi_counter|q[2]\ $ !\pao|a_rtl_2|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector6~18_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \pao|a_rtl_2|wysi_counter|q[2]\,
	datac => \pao|a_rtl_2|wysi_counter|q[1]\,
	datad => \pao|a_rtl_2|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector6~18_I_modesel\,
	combout => \p2|Selector6~18\);

-- atom is at LC6_E34
\p2|Selector6~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector6~19\ = \pao|a_rtl_2|wysi_counter|q[3]\ & (\p2|display[0]\ # !\p2|Selector6~18\ & !\pao|a_rtl_2|wysi_counter|q[1]\) # !\pao|a_rtl_2|wysi_counter|q[3]\ & \p2|Selector6~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector6~19_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \p2|Selector6~18\,
	datac => \p2|display[0]\,
	datad => \pao|a_rtl_2|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector6~19_I_modesel\,
	combout => \p2|Selector6~19\);

-- atom is at LC1_E36
\p2|Selector56~1213_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector56~1223\ = \p1|o[2]\ & !\p2|Selector56~1212\ # !\p1|o[2]\ & (!\p2|Selector6~19\) # !\p1|Decoder6~69\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector56~1213_I_pathsel\,
	dataa => \p1|Decoder6~69\,
	datab => \p2|Selector56~1212\,
	datac => \p2|Selector6~19\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector56~1213_I_modesel\,
	cascout => \p2|Selector56~1223\);

-- atom is at LC2_E36
\p2|Selector56~1217_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector56~1226\ = (\p1|o[0]\ & !\p2|Selector56~1214\ # !\p1|o[0]\ & (!\p2|Selector34~19\) # !\p1|Decoder6~79\) & CASCADE(\p2|Selector56~1223\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector56~1217_I_pathsel\,
	dataa => \p1|Decoder6~79\,
	datab => \p2|Selector56~1214\,
	datac => \p2|Selector34~19\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector56~1223\,
	modesel => \p2|Selector56~1217_I_modesel\,
	cascout => \p2|Selector56~1226\);

-- atom is at LC3_E36
\p2|Selector56~1216_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector56~1216\ = (\p1|o[1]\ & !\p2|Selector20~19\ # !\p1|o[1]\ & (!\p2|Selector13~19\) # !\p1|Decoder6~70\) & CASCADE(\p2|Selector56~1226\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector56~1216_I_pathsel\,
	dataa => \p1|Decoder6~70\,
	datab => \p2|Selector20~19\,
	datac => \p2|Selector13~19\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector56~1226\,
	modesel => \p2|Selector56~1216_I_modesel\,
	combout => \p2|Selector56~1216\);

-- atom is at LC6_E36
\p2|display[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[0]\ = DFFEA(!\p2|Selector56~1216\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p2|Selector56~1216\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[0]~I_modesel\,
	regout => \p2|display[0]\);

-- atom is at LC7_B28
\nao|k1k~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k1k\ = DFFEA(!\key1~dataout\, \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k1k~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => VCC,
	datac => VCC,
	datad => \key1~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k1k~I_modesel\,
	regout => \nao|k1k\);

-- atom is at LC5_B28
\nao|k1[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k1[0]\ = DFFEA(\nao|k1[0]\ $ (!\nao|k1k\ & !\key1~dataout\), \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "CCC3",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k1[0]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => \nao|k1[0]\,
	datac => \nao|k1k\,
	datad => \key1~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k1[0]~I_modesel\,
	regout => \nao|k1[0]\);

-- atom is at LC3_B17
\p3|delay~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|delay\ = DFFEA(!\p3|delay\, GLOBAL(\fen|f\), , , \p3|Equal0~360\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|delay~I_pathsel\,
	dataa => \p3|Equal0~360\,
	datab => VCC,
	datac => VCC,
	datad => \p3|delay\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|delay~I_modesel\,
	regout => \p3|delay\);

-- atom is at LC2_B24
\p1|Equal4~42_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Equal4~42\ = \comb_4|mkoo[1]\ & \comb_4|mkoo[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Equal4~42_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \comb_4|mkoo[1]\,
	datad => \comb_4|mkoo[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Equal4~42_I_modesel\,
	combout => \p1|Equal4~42\);

-- atom is at LC8_B17
\p3|always0~129_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|always0~129\ = !\nao|k1[0]\ & \p3|delay\ & \p1|Equal4~42\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|always0~129_I_pathsel\,
	dataa => VCC,
	datab => \nao|k1[0]\,
	datac => \p3|delay\,
	datad => \p1|Equal4~42\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|always0~129_I_modesel\,
	combout => \p3|always0~129\);

-- atom is at LC8_B10
\p3|Selector38~1203_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector38~1203\ = !\p1|o[2]\ & !\p3|always0~129\ & \p1|o[0]\ & \p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector38~1203_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p3|always0~129\,
	datac => \p1|o[0]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector38~1203_I_modesel\,
	combout => \p3|Selector38~1203\);

-- atom is at LC6_B30
\nao|cc[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|cc[0]\ = DFFEA(!\nao|cc[0]\, \fen|f1Hz\, , , \nao|cc[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|cc[0]~I_pathsel\,
	dataa => \nao|cc[0]~11\,
	datab => VCC,
	datac => VCC,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|cc[0]~I_modesel\,
	regout => \nao|cc[0]\);

-- atom is at LC2_B30
\nao|Add1~66_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add1~66\ = \nao|cc[3]\ $ (\nao|cc[0]\ & \nao|cc[1]\ & \nao|cc[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add1~66_I_pathsel\,
	dataa => \nao|cc[0]\,
	datab => \nao|cc[1]\,
	datac => \nao|cc[2]\,
	datad => \nao|cc[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add1~66_I_modesel\,
	combout => \nao|Add1~66\);

-- atom is at LC8_B30
\nao|cc[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|cc[3]\ = DFFEA(!\nao|Equal7~27\ & \nao|Add1~66\, \fen|f1Hz\, , , \nao|cc[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|cc[3]~I_pathsel\,
	dataa => \nao|cc[0]~11\,
	datab => VCC,
	datac => \nao|Equal7~27\,
	datad => \nao|Add1~66\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|cc[3]~I_modesel\,
	regout => \nao|cc[3]\);

-- atom is at LC1_B30
\nao|Equal7~27_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Equal7~27\ = !\nao|cc[2]\ & !\nao|cc[1]\ & \nao|cc[3]\ & \nao|cc[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Equal7~27_I_pathsel\,
	dataa => \nao|cc[2]\,
	datab => \nao|cc[1]\,
	datac => \nao|cc[3]\,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Equal7~27_I_modesel\,
	combout => \nao|Equal7~27\);

-- atom is at LC7_B30
\nao|cc[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|cc[1]\ = DFFEA(!\nao|Equal7~27\ & (\nao|cc[0]\ $ \nao|cc[1]\), \fen|f1Hz\, , , \nao|cc[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0330",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|cc[1]~I_pathsel\,
	dataa => \nao|cc[0]~11\,
	datab => \nao|Equal7~27\,
	datac => \nao|cc[0]\,
	datad => \nao|cc[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|cc[1]~I_modesel\,
	regout => \nao|cc[1]\);

-- atom is at LC5_B30
\nao|cc[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|cc[2]\ = DFFEA(\nao|cc[2]\ $ (\nao|cc[0]\ & \nao|cc[1]\), \fen|f1Hz\, , , \nao|cc[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|cc[2]~I_pathsel\,
	dataa => \nao|cc[0]~11\,
	datab => \nao|cc[0]\,
	datac => \nao|cc[1]\,
	datad => \nao|cc[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|cc[2]~I_modesel\,
	regout => \nao|cc[2]\);

-- atom is at LC8_B16
\p3|Selector6~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector6~23\ = \nao|cc[3]\ & \nao|cc[2]\ # !\nao|cc[3]\ & (\nao|cc[1]\ # \nao|cc[2]\ $ !\nao|cc[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DCD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector6~23_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \nao|cc[2]\,
	datac => \nao|cc[1]\,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector6~23_I_modesel\,
	combout => \p3|Selector6~23\);

-- atom is at LC2_B8
\p3|Selector6~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector6~24\ = \nao|cc[3]\ & (\p3|display[0]\ # !\p3|Selector6~23\ & !\nao|cc[1]\) # !\nao|cc[3]\ & \p3|Selector6~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector6~24_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \p3|Selector6~23\,
	datac => \p3|display[0]\,
	datad => \nao|cc[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector6~24_I_modesel\,
	combout => \p3|Selector6~24\);

-- atom is at LC1_B8
\p3|display[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[0]\ = DFFEA(\p3|Selector42~853\ & (\p3|Selector38~1203\ & \p3|Selector6~24\) # !\p3|Selector42~853\ & (\p1|o[2]\ # \p3|Selector38~1203\ & \p3|Selector6~24\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[0]~I_pathsel\,
	dataa => \p3|Selector42~853\,
	datab => \p1|o[2]\,
	datac => \p3|Selector38~1203\,
	datad => \p3|Selector6~24\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[0]~I_modesel\,
	regout => \p3|display[0]\);

-- atom is at LC4_D25
\mc|Selector15~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector15~87\ = \comb_4|mkoo[1]\ & (\p3|display[0]\) # !\comb_4|mkoo[1]\ & \p2|display[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector15~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[0]\,
	datad => \p3|display[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector15~87_I_modesel\,
	combout => \mc|Selector15~87\);

-- atom is at LC3_D25
\mc|diso[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[0]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector15~87\) # !\comb_4|mkoo[0]\ & \p1|display[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[0]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[0]\,
	datad => \mc|Selector15~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[0]~I_modesel\,
	regout => \mc|diso[0]\);

-- atom is at LC8_F29
\p1|Selector12~108_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector12~108\ = !\ji|b[3]\ & (!\ji|b[0]\ & !\ji|b[1]\ # !\ji|b[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1115",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector12~108_I_pathsel\,
	dataa => \ji|b[3]\,
	datab => \ji|b[2]\,
	datac => \ji|b[0]\,
	datad => \ji|b[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector12~108_I_modesel\,
	combout => \p1|Selector12~108\);

-- atom is at LC7_F26
\p1|Selector47~1231_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector47~1231\ = !\p1|o[1]\ & (\p1|Selector12~108\ # !\ji|always1~75\ & \p1|display[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5510",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector47~1231_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \ji|always1~75\,
	datac => \p1|display[1]\,
	datad => \p1|Selector12~108\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector47~1231_I_modesel\,
	combout => \p1|Selector47~1231\);

-- atom is at LC2_E23
\p1|Decoder6~70_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Decoder6~70\ = !\p1|o[2]\ & \p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Decoder6~70_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|o[2]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Decoder6~70_I_modesel\,
	combout => \p1|Decoder6~70\);

-- atom is at LC5_F19
\p1|Decoder6~69_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Decoder6~69\ = !\p1|o[0]\ & !\p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Decoder6~69_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|o[0]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Decoder6~69_I_modesel\,
	combout => \p1|Decoder6~69\);

-- atom is at LC7_F22
\p1|Selector33~128_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector33~128\ = !\ji|e[2]\ & (!\ji|e[1]\ # !\ji|e[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0333",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector33~128_I_pathsel\,
	dataa => VCC,
	datab => \ji|e[2]\,
	datac => \ji|e[3]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector33~128_I_modesel\,
	combout => \p1|Selector33~128\);

-- atom is at LC1_F26
\p1|Selector33~129_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector33~129\ = \p1|Selector33~128\ # \ji|e[3]\ & (\p1|display[1]\) # !\ji|e[3]\ & !\ji|Add5~70\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFD1",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector33~129_I_pathsel\,
	dataa => \ji|Add5~70\,
	datab => \ji|e[3]\,
	datac => \p1|display[1]\,
	datad => \p1|Selector33~128\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector33~129_I_modesel\,
	combout => \p1|Selector33~129\);

-- atom is at LC2_F26
\p1|Selector47~1228_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector47~1228\ = \p1|o[0]\ & (\p1|display[1]\ # !\p1|WideOr54~9\) # !\p1|o[0]\ & (\p1|Selector33~129\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC74",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector47~1228_I_pathsel\,
	dataa => \p1|WideOr54~9\,
	datab => \p1|o[0]\,
	datac => \p1|Selector33~129\,
	datad => \p1|display[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector47~1228_I_modesel\,
	combout => \p1|Selector47~1228\);

-- atom is at LC3_B24
\p1|always0~38_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|always0~38\ = !\comb_4|mkoo[0]\ & \comb_4|mkoo[1]\ & \p1|delay\ & \ji|k1[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|always0~38_I_pathsel\,
	dataa => \comb_4|mkoo[0]\,
	datab => \comb_4|mkoo[1]\,
	datac => \p1|delay\,
	datad => \ji|k1[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|always0~38_I_modesel\,
	combout => \p1|always0~38\);

-- atom is at LC2_F25
\p1|Selector48~1306_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector48~1306\ = !\p1|always0~38\ & \p1|o[2]\ & \p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector48~1306_I_pathsel\,
	dataa => VCC,
	datab => \p1|always0~38\,
	datac => \p1|o[2]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector48~1306_I_modesel\,
	combout => \p1|Selector48~1306\);

-- atom is at LC5_F26
\p1|Selector47~1230_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector47~1230\ = \p1|Selector47~1239\ & (\p1|Selector47~1228\ & \p1|Selector48~1306\) # !\p1|Selector47~1239\ & (\p1|Decoder6~69\ # \p1|Selector47~1228\ & \p1|Selector48~1306\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector47~1230_I_pathsel\,
	dataa => \p1|Selector47~1239\,
	datab => \p1|Decoder6~69\,
	datac => \p1|Selector47~1228\,
	datad => \p1|Selector48~1306\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector47~1230_I_modesel\,
	combout => \p1|Selector47~1230\);

-- atom is at LC6_F26
\p1|display[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[1]\ = DFFEA(\p1|Selector47~1230\ # \p1|Decoder6~70\ & (\p1|Selector47~1232\ # \p1|Selector47~1231\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[1]~I_pathsel\,
	dataa => \p1|Selector47~1232\,
	datab => \p1|Selector47~1231\,
	datac => \p1|Decoder6~70\,
	datad => \p1|Selector47~1230\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[1]~I_modesel\,
	regout => \p1|display[1]\);

-- atom is at LC7_E18
\pao|a_rtl_2|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|a_rtl_2|wysi_counter|q[3]\ = DFFEA((\pao|a_rtl_2|wysi_counter|q[3]\ $ (\pao|always1~113\ & \pao|a_rtl_2|wysi_counter|counter_cell[2]~COUT\)) & \pao|a~181\, \fen|f100Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6C6C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|a_rtl_2|wysi_counter|q[3]~I_pathsel\,
	dataa => \pao|always1~113\,
	datab => \pao|a~181\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|a_rtl_2|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \pao|a_rtl_2|wysi_counter|q[3]~I_modesel\,
	regout => \pao|a_rtl_2|wysi_counter|q[3]\);

-- atom is at LC6_E27
\p2|Selector26~104_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector26~104\ = !\pao|d_rtl_5|wysi_counter|q[3]\ & (!\pao|d_rtl_5|wysi_counter|q[0]\ & !\pao|d_rtl_5|wysi_counter|q[1]\ # !\pao|d_rtl_5|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1115",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector26~104_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[3]\,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \pao|d_rtl_5|wysi_counter|q[0]\,
	datad => \pao|d_rtl_5|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector26~104_I_modesel\,
	combout => \p2|Selector26~104\);

-- atom is at LC4_E10
\pao|d_rtl_5|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|d_rtl_5|wysi_counter|q[3]\ = DFFEA((\pao|d_rtl_5|wysi_counter|q[3]\ $ (\pao|d[0]~141\ & \pao|d_rtl_5|wysi_counter|counter_cell[2]~COUT\)) & \pao|d~142\, \fen|f100Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6C6C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|d_rtl_5|wysi_counter|q[3]~I_pathsel\,
	dataa => \pao|d[0]~141\,
	datab => \pao|d~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|d_rtl_5|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \pao|d_rtl_5|wysi_counter|q[3]~I_modesel\,
	regout => \pao|d_rtl_5|wysi_counter|q[3]\);

-- atom is at LC1_E31
\p2|Selector22~115_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector22~115\ = !\pao|d_rtl_5|wysi_counter|q[3]\ & !\pao|d_rtl_5|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector22~115_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|d_rtl_5|wysi_counter|q[3]\,
	datad => \pao|d_rtl_5|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector22~115_I_modesel\,
	combout => \p2|Selector22~115\);

-- atom is at LC6_E24
\p2|Selector55~1524_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1538\ = !\p2|Selector26~104\ & (\p2|Selector22~115\ # !\p2|display[1]\) # !\p1|o[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1524_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p2|Selector26~104\,
	datac => \p2|display[1]\,
	datad => \p2|Selector22~115\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector55~1524_I_modesel\,
	cascout => \p2|Selector55~1538\);

-- atom is at LC7_E24
\p2|Selector55~1527_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1527\ = (\p1|o[2]\ # !\p2|Selector5~100\ & (!\p2|display[1]\ # !\pao|a_rtl_2|wysi_counter|q[3]\)) & CASCADE(\p2|Selector55~1538\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF15",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1527_I_pathsel\,
	dataa => \p2|Selector5~100\,
	datab => \pao|a_rtl_2|wysi_counter|q[3]\,
	datac => \p2|display[1]\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector55~1538\,
	modesel => \p2|Selector55~1527_I_modesel\,
	combout => \p2|Selector55~1527\);

-- atom is at LC3_E30
\p2|Selector12~100_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector12~100\ = \pao|b_rtl_3|wysi_counter|q[3]\ & !\pao|b_rtl_3|wysi_counter|q[2]\ & !\pao|b_rtl_3|wysi_counter|q[1]\ # !\pao|b_rtl_3|wysi_counter|q[3]\ & (\pao|b_rtl_3|wysi_counter|q[1]\ $ !\pao|b_rtl_3|wysi_counter|q[0]\ # 
-- !\pao|b_rtl_3|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector12~100_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[2]\,
	datac => \pao|b_rtl_3|wysi_counter|q[1]\,
	datad => \pao|b_rtl_3|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector12~100_I_modesel\,
	combout => \p2|Selector12~100\);

-- atom is at LC5_E21
\p2|Selector55~1515_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1515\ = !\p1|o[2]\ & !\p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1515_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|o[2]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector55~1515_I_modesel\,
	combout => \p2|Selector55~1515\);

-- atom is at LC7_E21
\p2|Selector55~1516_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1516\ = \p2|Selector55~1515\ & (\p2|Selector12~100\ # \pao|b_rtl_3|wysi_counter|q[3]\ & \p2|display[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1516_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \p2|display[1]\,
	datac => \p2|Selector12~100\,
	datad => \p2|Selector55~1515\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector55~1516_I_modesel\,
	combout => \p2|Selector55~1516\);

-- atom is at LC5_E25
\pao|c_rtl_4|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|c_rtl_4|wysi_counter|q[3]\ = DFFEA((\pao|c_rtl_4|wysi_counter|q[3]\ $ (\pao|c[0]~121\ & \pao|c_rtl_4|wysi_counter|counter_cell[2]~COUT\)) & \pao|c~122\, \fen|f100Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6C6C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|c_rtl_4|wysi_counter|q[3]~I_pathsel\,
	dataa => \pao|c[0]~121\,
	datab => \pao|c~122\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|c_rtl_4|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \pao|c_rtl_4|wysi_counter|q[3]~I_modesel\,
	regout => \pao|c_rtl_4|wysi_counter|q[3]\);

-- atom is at LC1_E22
\p2|Selector19~100_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector19~100\ = \pao|c_rtl_4|wysi_counter|q[3]\ & !\pao|c_rtl_4|wysi_counter|q[2]\ & !\pao|c_rtl_4|wysi_counter|q[1]\ # !\pao|c_rtl_4|wysi_counter|q[3]\ & (\pao|c_rtl_4|wysi_counter|q[1]\ $ !\pao|c_rtl_4|wysi_counter|q[0]\ # 
-- !\pao|c_rtl_4|wysi_counter|q[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector19~100_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \pao|c_rtl_4|wysi_counter|q[2]\,
	datac => \pao|c_rtl_4|wysi_counter|q[1]\,
	datad => \pao|c_rtl_4|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector19~100_I_modesel\,
	combout => \p2|Selector19~100\);

-- atom is at LC4_E21
\p2|Selector19~101_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector19~101\ = \p2|Selector19~100\ # \pao|c_rtl_4|wysi_counter|q[3]\ & \p2|display[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector19~101_I_pathsel\,
	dataa => VCC,
	datab => \pao|c_rtl_4|wysi_counter|q[3]\,
	datac => \p2|display[1]\,
	datad => \p2|Selector19~100\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector19~101_I_modesel\,
	combout => \p2|Selector19~101\);

-- atom is at LC6_E21
\p2|Selector55~1514_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1514\ = \p1|o[2]\ & (\p2|display[1]\ # !\p2|WideOr57~9\) # !\p1|o[2]\ & (\p2|Selector19~101\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC74",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1514_I_pathsel\,
	dataa => \p2|WideOr57~9\,
	datab => \p1|o[2]\,
	datac => \p2|Selector19~101\,
	datad => \p2|display[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector55~1514_I_modesel\,
	combout => \p2|Selector55~1514\);

-- atom is at LC1_E21
\p2|Selector55~1517_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1534\ = !\p2|Selector55~1516\ & (!\p1|o[1]\ # !\p2|Selector55~1514\) # !\p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1517_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p2|Selector55~1516\,
	datac => \p2|Selector55~1514\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector55~1517_I_modesel\,
	cascout => \p2|Selector55~1534\);

-- atom is at LC2_E21
\p2|Selector55~1526_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector55~1526\ = (\p1|o[0]\ # !\p2|Selector55~1519\ & (\p2|Selector55~1527\ # \p1|o[1]\)) & CASCADE(\p2|Selector55~1534\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector55~1526_I_pathsel\,
	dataa => \p2|Selector55~1519\,
	datab => \p2|Selector55~1527\,
	datac => \p1|o[1]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector55~1534\,
	modesel => \p2|Selector55~1526_I_modesel\,
	combout => \p2|Selector55~1526\);

-- atom is at LC3_E21
\p2|display[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[1]\ = DFFEA(!\p2|Selector55~1526\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p2|Selector55~1526\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[1]~I_modesel\,
	regout => \p2|display[1]\);

-- atom is at LC8_B19
\p3|Selector5~131_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector5~131\ = \nao|cc[3]\ & !\nao|cc[2]\ & !\nao|cc[1]\ # !\nao|cc[3]\ & (\nao|cc[1]\ $ !\nao|cc[0]\ # !\nao|cc[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector5~131_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \nao|cc[2]\,
	datac => \nao|cc[1]\,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector5~131_I_modesel\,
	combout => \p3|Selector5~131\);

-- atom is at LC1_B31
\nao|dd[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|dd[0]\ = DFFEA(!\nao|dd[0]\, \fen|f1Hz\, , , \nao|dd[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|dd[0]~I_pathsel\,
	dataa => \nao|dd[0]~11\,
	datab => VCC,
	datac => VCC,
	datad => \nao|dd[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|dd[0]~I_modesel\,
	regout => \nao|dd[0]\);

-- atom is at LC4_B31
\nao|dd[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|dd[1]\ = DFFEA(!\nao|Equal8~27\ & (\nao|dd[0]\ $ \nao|dd[1]\), \fen|f1Hz\, , , \nao|dd[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0330",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|dd[1]~I_pathsel\,
	dataa => \nao|dd[0]~11\,
	datab => \nao|Equal8~27\,
	datac => \nao|dd[0]\,
	datad => \nao|dd[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|dd[1]~I_modesel\,
	regout => \nao|dd[1]\);

-- atom is at LC3_B31
\nao|Add2~73_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add2~73\ = \nao|dd[0]\ & \nao|dd[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add2~73_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|dd[0]\,
	datad => \nao|dd[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add2~73_I_modesel\,
	combout => \nao|Add2~73\);

-- atom is at LC7_B31
\nao|dd[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|dd[3]\ = DFFEA(\nao|dd[3]\ $ (\nao|Add2~73\ & \nao|dd[2]\), \fen|f1Hz\, , , \nao|dd[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|dd[3]~I_pathsel\,
	dataa => \nao|dd[0]~11\,
	datab => \nao|Add2~73\,
	datac => \nao|dd[2]\,
	datad => \nao|dd[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|dd[3]~I_modesel\,
	regout => \nao|dd[3]\);

-- atom is at LC2_B31
\nao|Equal8~27_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Equal8~27\ = !\nao|dd[1]\ & !\nao|dd[3]\ & \nao|dd[2]\ & \nao|dd[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Equal8~27_I_pathsel\,
	dataa => \nao|dd[1]\,
	datab => \nao|dd[3]\,
	datac => \nao|dd[2]\,
	datad => \nao|dd[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Equal8~27_I_modesel\,
	combout => \nao|Equal8~27\);

-- atom is at LC6_B31
\nao|dd[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|dd[2]\ = DFFEA(!\nao|Equal8~27\ & (\nao|Add2~73\ $ \nao|dd[2]\), \fen|f1Hz\, , , \nao|dd[0]~11\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0330",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|dd[2]~I_pathsel\,
	dataa => \nao|dd[0]~11\,
	datab => \nao|Equal8~27\,
	datac => \nao|Add2~73\,
	datad => \nao|dd[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|dd[2]~I_modesel\,
	regout => \nao|dd[2]\);

-- atom is at LC5_B31
\p3|Selector12~109_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector12~109\ = !\nao|dd[3]\ & (!\nao|dd[0]\ & !\nao|dd[1]\ # !\nao|dd[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1115",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector12~109_I_pathsel\,
	dataa => \nao|dd[3]\,
	datab => \nao|dd[2]\,
	datac => \nao|dd[0]\,
	datad => \nao|dd[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector12~109_I_modesel\,
	combout => \p3|Selector12~109\);

-- atom is at LC4_B17
\p3|always0~130_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|always0~130\ = !\nao|k1[0]\ & \p3|delay\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|always0~130_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|k1[0]\,
	datad => \p3|delay\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|always0~130_I_modesel\,
	combout => \p3|always0~130\);

-- atom is at LC2_B28
\p3|always0~131_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|always0~131\ = \p3|always0~130\ & (\nao|k1[1]\ & (\p1|Equal4~41\) # !\nao|k1[1]\ & \p1|Equal4~42\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|always0~131_I_pathsel\,
	dataa => \nao|k1[1]\,
	datab => \p1|Equal4~42\,
	datac => \p1|Equal4~41\,
	datad => \p3|always0~130\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|always0~131_I_modesel\,
	combout => \p3|always0~131\);

-- atom is at LC2_B10
\p3|Selector42~851_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector42~851\ = !\p1|o[0]\ & !\p1|o[1]\ & !\p3|always0~131\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector42~851_I_pathsel\,
	dataa => VCC,
	datab => \p1|o[0]\,
	datac => \p1|o[1]\,
	datad => \p3|always0~131\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector42~851_I_modesel\,
	combout => \p3|Selector42~851\);

-- atom is at LC7_B19
\p3|Selector41~1068_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector41~1068\ = \p3|Selector42~851\ & (\p3|Selector12~109\ # !\p3|Selector8~119\ & \p3|display[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector41~1068_I_pathsel\,
	dataa => \p3|Selector8~119\,
	datab => \p3|display[1]\,
	datac => \p3|Selector12~109\,
	datad => \p3|Selector42~851\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector41~1068_I_modesel\,
	combout => \p3|Selector41~1068\);

-- atom is at LC4_B27
\nao|k2k~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k2k\ = DFFEA(!\key2~dataout\, \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k2k~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => VCC,
	datac => VCC,
	datad => \key2~dataout\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k2k~I_modesel\,
	regout => \nao|k2k\);

-- atom is at LC3_B27
\nao|k2~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k2\ = DFFEA(!\key2~dataout\ & (\nao|k2\ # !\nao|k2k\), \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3303",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k2~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => \key2~dataout\,
	datac => \nao|k2k\,
	datad => \nao|k2\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k2~I_modesel\,
	regout => \nao|k2\);

-- atom is at LC1_B27
\nao|k2~56_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k2~56\ = !\key2~dataout\ & (\nao|k2\ # !\nao|k2k\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3303",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k2~56_I_pathsel\,
	dataa => VCC,
	datab => \key2~dataout\,
	datac => \nao|k2k\,
	datad => \nao|k2\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k2~56_I_modesel\,
	combout => \nao|k2~56\);

-- atom is at LC4_B28
\nao|ee~959_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~959\ = \nao|k2~56\ & (\nao|k1[0]\ $ (!\nao|k1k\ & !\key1~dataout\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~959_I_pathsel\,
	dataa => \nao|k1k\,
	datab => \key1~dataout\,
	datac => \nao|k1[0]\,
	datad => \nao|k2~56\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~959_I_modesel\,
	combout => \nao|ee~959\);

-- atom is at LC1_B28
\nao|cc[0]~186_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|cc[0]~186\ = \nao|k2~56\ & (\nao|k1[0]\ $ (\nao|k1k\ # \key1~dataout\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5600",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|cc[0]~186_I_pathsel\,
	dataa => \nao|k1[0]\,
	datab => \nao|k1k\,
	datac => \key1~dataout\,
	datad => \nao|k2~56\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|cc[0]~186_I_modesel\,
	combout => \nao|cc[0]~186\);

-- atom is at LC8_B34
\nao|ee~962_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~962\ = \nao|Equal8~27\ & \nao|Equal7~27\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~962_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|Equal8~27\,
	datad => \nao|Equal7~27\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~962_I_modesel\,
	combout => \nao|ee~962\);

-- atom is at LC1_B29
\nao|ee~958_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~958\ = \nao|Equal8~27\ & \nao|Equal7~27\ & \nao|cc[0]~186\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "C000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~958_I_pathsel\,
	dataa => VCC,
	datab => \nao|Equal8~27\,
	datac => \nao|Equal7~27\,
	datad => \nao|cc[0]~186\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~958_I_modesel\,
	combout => \nao|ee~958\);

-- atom is at LC5_B36
\nao|ff~843_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff~843\ = \nao|ff[0]\ $ (\nao|Equal9~29\ & \nao|ee~958\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff~843_I_pathsel\,
	dataa => VCC,
	datab => \nao|Equal9~29\,
	datac => \nao|ee~958\,
	datad => \nao|ff[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff~843_I_modesel\,
	combout => \nao|ff~843\);

-- atom is at LC1_B36
\nao|ff[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff[0]\ = DFFEA(\nao|ff~843\ $ (\nao|Equal14~31\ & \nao|ee~959\), \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff[0]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => \nao|Equal14~31\,
	datac => \nao|ee~959\,
	datad => \nao|ff~843\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff[0]~I_modesel\,
	regout => \nao|ff[0]\);

-- atom is at LC2_B33
\nao|Add6~48_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add6~48\ = \nao|Equal14~31\ & (\nao|ff[0]\ $ (\nao|Equal9~29\ & \nao|ee~958\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add6~48_I_pathsel\,
	dataa => \nao|Equal9~29\,
	datab => \nao|ee~958\,
	datac => \nao|ff[0]\,
	datad => \nao|Equal14~31\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add6~48_I_modesel\,
	combout => \nao|Add6~48\);

-- atom is at LC8_B36
\nao|ff~844_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff~844\ = \nao|ff[1]\ $ (\nao|Equal9~29\ & \nao|ff[0]\ & \nao|ee~962\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff~844_I_pathsel\,
	dataa => \nao|Equal9~29\,
	datab => \nao|ff[0]\,
	datac => \nao|ee~962\,
	datad => \nao|ff[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff~844_I_modesel\,
	combout => \nao|ff~844\);

-- atom is at LC7_B34
\nao|ff~846_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff~846\ = \nao|cc[0]~186\ & !\nao|always0~525\ & \nao|ff~844\ # !\nao|cc[0]~186\ & (\nao|ff[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff~846_I_pathsel\,
	dataa => \nao|always0~525\,
	datab => \nao|cc[0]~186\,
	datac => \nao|ff~844\,
	datad => \nao|ff[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff~846_I_modesel\,
	combout => \nao|ff~846\);

-- atom is at LC8_B33
\nao|ff~848_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff~848\ = \nao|ee~959\ & !\nao|always0~6\ & (\nao|Add6~48\ $ \nao|ff~846\) # !\nao|ee~959\ & (\nao|ff~846\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5720",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff~848_I_pathsel\,
	dataa => \nao|ee~959\,
	datab => \nao|always0~6\,
	datac => \nao|Add6~48\,
	datad => \nao|ff~846\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff~848_I_modesel\,
	combout => \nao|ff~848\);

-- atom is at LC6_B33
\nao|ff[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff[1]\ = DFFEA(\nao|ff~848\, \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff[1]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => VCC,
	datac => VCC,
	datad => \nao|ff~848\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff[1]~I_modesel\,
	regout => \nao|ff[1]\);

-- atom is at LC5_B34
\nao|Add4~146_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add4~146\ = \nao|Equal9~29\ & \nao|ff[0]\ & \nao|ff[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "C000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add4~146_I_pathsel\,
	dataa => VCC,
	datab => \nao|Equal9~29\,
	datac => \nao|ff[0]\,
	datad => \nao|ff[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add4~146_I_modesel\,
	combout => \nao|Add4~146\);

-- atom is at LC4_B33
\nao|Add6~49_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add6~49\ = \nao|ff~846\ & \nao|Add6~48\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add6~49_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|ff~846\,
	datad => \nao|Add6~48\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add6~49_I_modesel\,
	combout => \nao|Add6~49\);

-- atom is at LC6_B36
\nao|ff[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff[2]\ = DFFEA(\nao|ff~845\ $ (\nao|Add6~49\ & \nao|ee~959\), \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff[2]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => \nao|Add6~49\,
	datac => \nao|ee~959\,
	datad => \nao|ff~845\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff[2]~I_modesel\,
	regout => \nao|ff[2]\);

-- atom is at LC3_B36
\nao|ff~845_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff~845\ = \nao|ff[2]\ $ (\nao|Add4~146\ & \nao|ee~958\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff~845_I_pathsel\,
	dataa => VCC,
	datab => \nao|Add4~146\,
	datac => \nao|ee~958\,
	datad => \nao|ff[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff~845_I_modesel\,
	combout => \nao|ff~845\);

-- atom is at LC4_B36
\nao|ff[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff[3]\ = DFFEA(\nao|ee~959\ & \nao|Add6~50\ # !\nao|ee~959\ & (\nao|ff~847\), \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "F3C0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff[3]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => \nao|ee~959\,
	datac => \nao|Add6~50\,
	datad => \nao|ff~847\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff[3]~I_modesel\,
	regout => \nao|ff[3]\);

-- atom is at LC7_B36
\nao|ff~847_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ff~847\ = \nao|ff[3]\ $ (\nao|Add4~146\ & \nao|ff[2]\ & \nao|ee~958\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ff~847_I_pathsel\,
	dataa => \nao|Add4~146\,
	datab => \nao|ff[2]\,
	datac => \nao|ee~958\,
	datad => \nao|ff[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ff~847_I_modesel\,
	combout => \nao|ff~847\);

-- atom is at LC5_B33
\nao|Add6~50_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add6~50\ = \nao|ff~847\ $ (\nao|ff~846\ & \nao|Add6~48\ & \nao|ff~845\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add6~50_I_pathsel\,
	dataa => \nao|ff~846\,
	datab => \nao|Add6~48\,
	datac => \nao|ff~845\,
	datad => \nao|ff~847\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add6~50_I_modesel\,
	combout => \nao|Add6~50\);

-- atom is at LC3_B28
\nao|k1[0]~84_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|k1[0]~84\ = \nao|k1[0]\ $ (!\nao|k1k\ & !\key1~dataout\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC03",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|k1[0]~84_I_pathsel\,
	dataa => VCC,
	datab => \nao|k1k\,
	datac => \key1~dataout\,
	datad => \nao|k1[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|k1[0]~84_I_modesel\,
	combout => \nao|k1[0]~84\);

-- atom is at LC5_B35
\nao|ee[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee[0]\ = DFFEA(\nao|ee~960\ $ (\nao|k2~56\ & \nao|k1[0]~84\), \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee[0]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => \nao|k2~56\,
	datac => \nao|k1[0]~84\,
	datad => \nao|ee~960\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee[0]~I_modesel\,
	regout => \nao|ee[0]\);

-- atom is at LC2_B29
\nao|ee~960_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~960\ = \nao|ee[0]\ $ (\nao|Equal8~27\ & \nao|Equal7~27\ & \nao|cc[0]~186\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~960_I_pathsel\,
	dataa => \nao|Equal8~27\,
	datab => \nao|Equal7~27\,
	datac => \nao|cc[0]~186\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~960_I_modesel\,
	combout => \nao|ee~960\);

-- atom is at LC3_B32
\nao|always0~527_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~527\ = !\nao|ee~961\ & !\nao|ee~964\ & \nao|ee~960\ & \nao|ee~965\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~527_I_pathsel\,
	dataa => \nao|ee~961\,
	datab => \nao|ee~964\,
	datac => \nao|ee~960\,
	datad => \nao|ee~965\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~527_I_modesel\,
	combout => \nao|always0~527\);

-- atom is at LC3_B33
\nao|always0~526_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~526\ = !\nao|ff~845\ & (\nao|ff~846\ & !\nao|ff~843\ & !\nao|Equal14~31\ # !\nao|ff~846\ & \nao|ff~843\ & \nao|Equal14~31\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1004",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~526_I_pathsel\,
	dataa => \nao|ff~845\,
	datab => \nao|ff~846\,
	datac => \nao|ff~843\,
	datad => \nao|Equal14~31\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~526_I_modesel\,
	combout => \nao|always0~526\);

-- atom is at LC7_B33
\nao|always0~6_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~6\ = !\nao|Add6~50\ & \nao|always0~527\ & \nao|always0~526\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~6_I_pathsel\,
	dataa => VCC,
	datab => \nao|Add6~50\,
	datac => \nao|always0~527\,
	datad => \nao|always0~526\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~6_I_modesel\,
	combout => \nao|always0~6\);

-- atom is at LC7_B32
\nao|Add5~39_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add5~39\ = \nao|ee~960\ & \nao|ee~965\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add5~39_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \nao|ee~960\,
	datad => \nao|ee~965\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add5~39_I_modesel\,
	combout => \nao|Add5~39\);

-- atom is at LC1_B33
\nao|ee~967_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~967\ = \nao|ee~959\ & !\nao|always0~6\ & (\nao|Add5~39\ $ \nao|ee~964\) # !\nao|ee~959\ & (\nao|ee~964\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5720",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~967_I_pathsel\,
	dataa => \nao|ee~959\,
	datab => \nao|always0~6\,
	datac => \nao|Add5~39\,
	datad => \nao|ee~964\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~967_I_modesel\,
	combout => \nao|ee~967\);

-- atom is at LC4_B35
\nao|ee[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee[2]\ = DFFEA(\nao|ee~967\, \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee[2]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => VCC,
	datac => VCC,
	datad => \nao|ee~967\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee[2]~I_modesel\,
	regout => \nao|ee[2]\);

-- atom is at LC1_B32
\nao|ee~963_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~963\ = \nao|ee[2]\ $ (\nao|ee[0]\ & \nao|ee[1]\ & \nao|ee~962\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~963_I_pathsel\,
	dataa => \nao|ee[0]\,
	datab => \nao|ee[1]\,
	datac => \nao|ee~962\,
	datad => \nao|ee[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~963_I_modesel\,
	combout => \nao|ee~963\);

-- atom is at LC3_B34
\nao|ee~964_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~964\ = \nao|cc[0]~186\ & !\nao|always0~525\ & \nao|ee~963\ # !\nao|cc[0]~186\ & (\nao|ee[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~964_I_pathsel\,
	dataa => \nao|always0~525\,
	datab => \nao|cc[0]~186\,
	datac => \nao|ee~963\,
	datad => \nao|ee[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~964_I_modesel\,
	combout => \nao|ee~964\);

-- atom is at LC1_B22
\nao|Add3~66_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add3~66\ = \nao|ee[3]\ $ (\nao|ee[0]\ & \nao|ee[1]\ & \nao|ee[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add3~66_I_pathsel\,
	dataa => \nao|ee[0]\,
	datab => \nao|ee[1]\,
	datac => \nao|ee[2]\,
	datad => \nao|ee[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add3~66_I_modesel\,
	combout => \nao|Add3~66\);

-- atom is at LC4_B32
\nao|ee~961_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~961\ = \nao|ee~958\ & !\nao|Equal9~29\ & \nao|Add3~66\ # !\nao|ee~958\ & (\nao|ee[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~961_I_pathsel\,
	dataa => \nao|Equal9~29\,
	datab => \nao|ee~958\,
	datac => \nao|Add3~66\,
	datad => \nao|ee[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~961_I_modesel\,
	combout => \nao|ee~961\);

-- atom is at LC2_B34
\nao|Equal14~31_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Equal14~31\ = !\nao|ee~965\ & !\nao|ee~964\ & \nao|ee~961\ & \nao|ee~960\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Equal14~31_I_pathsel\,
	dataa => \nao|ee~965\,
	datab => \nao|ee~964\,
	datac => \nao|ee~961\,
	datad => \nao|ee~960\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Equal14~31_I_modesel\,
	combout => \nao|Equal14~31\);

-- atom is at LC5_B32
\nao|ee~966_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~966\ = \nao|ee~959\ & !\nao|Equal14~31\ & (\nao|ee~960\ $ \nao|ee~965\) # !\nao|ee~959\ & (\nao|ee~965\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5720",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~966_I_pathsel\,
	dataa => \nao|ee~959\,
	datab => \nao|Equal14~31\,
	datac => \nao|ee~960\,
	datad => \nao|ee~965\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~966_I_modesel\,
	combout => \nao|ee~966\);

-- atom is at LC7_B35
\nao|ee[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee[1]\ = DFFEA(\nao|ee~966\, \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee[1]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => VCC,
	datac => VCC,
	datad => \nao|ee~966\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee[1]~I_modesel\,
	regout => \nao|ee[1]\);

-- atom is at LC8_B35
\nao|Equal9~29_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Equal9~29\ = !\nao|ee[2]\ & !\nao|ee[1]\ & \nao|ee[3]\ & \nao|ee[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Equal9~29_I_pathsel\,
	dataa => \nao|ee[2]\,
	datab => \nao|ee[1]\,
	datac => \nao|ee[3]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Equal9~29_I_modesel\,
	combout => \nao|Equal9~29\);

-- atom is at LC2_B32
\nao|ee~965_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~965\ = \nao|ee~958\ & !\nao|Equal9~29\ & (\nao|ee[0]\ $ \nao|ee[1]\) # !\nao|ee~958\ & (\nao|ee[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5720",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~965_I_pathsel\,
	dataa => \nao|ee~958\,
	datab => \nao|Equal9~29\,
	datac => \nao|ee[0]\,
	datad => \nao|ee[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~965_I_modesel\,
	combout => \nao|ee~965\);

-- atom is at LC8_B32
\nao|Add5~40_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|Add5~40\ = \nao|ee~961\ $ (\nao|ee~960\ & \nao|ee~965\ & \nao|ee~964\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F80",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|Add5~40_I_pathsel\,
	dataa => \nao|ee~960\,
	datab => \nao|ee~965\,
	datac => \nao|ee~964\,
	datad => \nao|ee~961\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|Add5~40_I_modesel\,
	combout => \nao|Add5~40\);

-- atom is at LC6_B32
\nao|ee~968_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee~968\ = \nao|ee~959\ & !\nao|Equal14~31\ & \nao|Add5~40\ # !\nao|ee~959\ & (\nao|ee~961\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee~968_I_pathsel\,
	dataa => \nao|Equal14~31\,
	datab => \nao|ee~959\,
	datac => \nao|Add5~40\,
	datad => \nao|ee~961\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee~968_I_modesel\,
	combout => \nao|ee~968\);

-- atom is at LC3_B35
\nao|ee[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|ee[3]\ = DFFEA(\nao|ee~968\, \fen|f1Hz\, , , \p1|Equal4~42\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|ee[3]~I_pathsel\,
	dataa => \p1|Equal4~42\,
	datab => VCC,
	datac => VCC,
	datad => \nao|ee~968\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|ee[3]~I_modesel\,
	regout => \nao|ee[3]\);

-- atom is at LC4_B22
\p3|Selector19~131_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector19~131\ = \nao|ee[3]\ & !\nao|ee[2]\ & !\nao|ee[1]\ # !\nao|ee[3]\ & (\nao|ee[1]\ $ !\nao|ee[0]\ # !\nao|ee[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5317",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector19~131_I_pathsel\,
	dataa => \nao|ee[3]\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[1]\,
	datad => \nao|ee[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector19~131_I_modesel\,
	combout => \p3|Selector19~131\);

-- atom is at LC2_B19
\p3|Selector19~132_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector19~132\ = \p3|Selector19~131\ # \nao|ee[3]\ & \p3|display[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector19~132_I_pathsel\,
	dataa => VCC,
	datab => \nao|ee[3]\,
	datac => \p3|display[1]\,
	datad => \p3|Selector19~131\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector19~132_I_modesel\,
	combout => \p3|Selector19~132\);

-- atom is at LC4_B19
\p3|Selector41~1067_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector41~1067\ = \p1|o[0]\ & (\p3|display[1]\ # !\p3|WideOr33~9\) # !\p1|o[0]\ & (\p3|Selector19~132\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC74",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector41~1067_I_pathsel\,
	dataa => \p3|WideOr33~9\,
	datab => \p1|o[0]\,
	datac => \p3|Selector19~132\,
	datad => \p3|display[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector41~1067_I_modesel\,
	combout => \p3|Selector41~1067\);

-- atom is at LC2_B17
\p3|Selector42~849_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector42~849\ = \p1|o[1]\ & (!\p1|Equal4~42\ # !\p3|delay\ # !\nao|k1[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector42~849_I_pathsel\,
	dataa => \nao|k1[0]\,
	datab => \p3|delay\,
	datac => \p1|Equal4~42\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector42~849_I_modesel\,
	combout => \p3|Selector42~849\);

-- atom is at LC5_B19
\p3|Selector41~1069_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector41~1076\ = !\p3|Selector41~1068\ & (!\p3|Selector42~849\ # !\p3|Selector41~1067\) # !\p1|o[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector41~1069_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p3|Selector41~1068\,
	datac => \p3|Selector41~1067\,
	datad => \p3|Selector42~849\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector41~1069_I_modesel\,
	cascout => \p3|Selector41~1076\);

-- atom is at LC6_B19
\p3|Selector41~1071_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector41~1071\ = (!\p3|Selector5~131\ & (!\p3|display[1]\ # !\nao|cc[3]\) # !\p3|Selector38~1203\) & CASCADE(\p3|Selector41~1076\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector41~1071_I_pathsel\,
	dataa => \p3|Selector38~1203\,
	datab => \p3|Selector5~131\,
	datac => \nao|cc[3]\,
	datad => \p3|display[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector41~1076\,
	modesel => \p3|Selector41~1071_I_modesel\,
	combout => \p3|Selector41~1071\);

-- atom is at LC1_B19
\p3|display[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[1]\ = DFFEA(!\p3|Selector41~1071\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Selector41~1071\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[1]~I_modesel\,
	regout => \p3|display[1]\);

-- atom is at LC3_B19
\mc|Selector14~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector14~87\ = \comb_4|mkoo[1]\ & (\p3|display[1]\) # !\comb_4|mkoo[1]\ & \p2|display[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector14~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[1]\,
	datad => \p3|display[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector14~87_I_modesel\,
	combout => \mc|Selector14~87\);

-- atom is at LC8_F26
\mc|diso[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[1]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector14~87\) # !\comb_4|mkoo[0]\ & \p1|display[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[1]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[1]\,
	datad => \mc|Selector14~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[1]~I_modesel\,
	regout => \mc|diso[1]\);

-- atom is at LC4_F19
\p1|Selector39~120_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector39~120\ = \p1|Selector39~119\ # !\p1|Selector40~139\ & \p1|display[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector39~120_I_pathsel\,
	dataa => VCC,
	datab => \p1|Selector40~139\,
	datac => \p1|display[2]\,
	datad => \p1|Selector39~119\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector39~120_I_modesel\,
	combout => \p1|Selector39~120\);

-- atom is at LC4_F22
\p1|Selector32~94_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector32~94\ = \ji|e[3]\ & (\p1|display[2]\) # !\ji|e[3]\ & (\ji|e[2]\ # \ji|e[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector32~94_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \ji|e[2]\,
	datac => \ji|e[0]\,
	datad => \p1|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector32~94_I_modesel\,
	combout => \p1|Selector32~94\);

-- atom is at LC5_F22
\p1|Selector32~95_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector32~95\ = \p1|Selector32~94\ # !\ji|e[2]\ & !\ji|e[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF03",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector32~95_I_pathsel\,
	dataa => VCC,
	datab => \ji|e[2]\,
	datac => \ji|e[1]\,
	datad => \p1|Selector32~94\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector32~95_I_modesel\,
	combout => \p1|Selector32~95\);

-- atom is at LC8_F21
\p1|Selector18~94_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector18~94\ = \ji|c_rtl_0|wysi_counter|q[3]\ & (\p1|display[2]\) # !\ji|c_rtl_0|wysi_counter|q[3]\ & (\ji|c_rtl_0|wysi_counter|q[2]\ # \ji|c_rtl_0|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector18~94_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \ji|c_rtl_0|wysi_counter|q[2]\,
	datac => \ji|c_rtl_0|wysi_counter|q[0]\,
	datad => \p1|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector18~94_I_modesel\,
	combout => \p1|Selector18~94\);

-- atom is at LC1_F21
\p1|Selector46~1636_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector46~1636\ = \p1|Selector48~1307\ & (\p1|Selector18~94\ # !\ji|c_rtl_0|wysi_counter|q[2]\ & !\ji|c_rtl_0|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector46~1636_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[2]\,
	datab => \ji|c_rtl_0|wysi_counter|q[1]\,
	datac => \p1|Selector18~94\,
	datad => \p1|Selector48~1307\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector46~1636_I_modesel\,
	combout => \p1|Selector46~1636\);

-- atom is at LC7_F19
\p1|Selector11~107_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector11~107\ = !\ji|b[2]\ & \ji|b[0]\ # !\ji|b[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3F33",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector11~107_I_pathsel\,
	dataa => VCC,
	datab => \ji|b[1]\,
	datac => \ji|b[2]\,
	datad => \ji|b[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector11~107_I_modesel\,
	combout => \p1|Selector11~107\);

-- atom is at LC8_F19
\p1|Selector11~108_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector11~108\ = \ji|b[3]\ & (\p1|display[2]\) # !\ji|b[3]\ & (\p1|Selector11~107\ # \ji|b[2]\ & \p1|display[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE50",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector11~108_I_pathsel\,
	dataa => \ji|b[3]\,
	datab => \ji|b[2]\,
	datac => \p1|Selector11~107\,
	datad => \p1|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector11~108_I_modesel\,
	combout => \p1|Selector11~108\);

-- atom is at LC7_F31
\p1|Selector4~89_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector4~89\ = \ji|a[3]\ & (\p1|display[2]\) # !\ji|a[3]\ & (\ji|a[2]\ # \ji|a[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector4~89_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \ji|a[2]\,
	datac => \ji|a[0]\,
	datad => \p1|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector4~89_I_modesel\,
	combout => \p1|Selector4~89\);

-- atom is at LC2_F31
\p1|Selector46~1634_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector46~1634\ = !\p1|o[2]\ & (\p1|Selector4~89\ # !\ji|a[2]\ & !\ji|a[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5501",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector46~1634_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \ji|a[2]\,
	datac => \ji|a[1]\,
	datad => \p1|Selector4~89\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector46~1634_I_modesel\,
	combout => \p1|Selector46~1634\);

-- atom is at LC6_F21
\p1|Selector25~112_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector25~112\ = !\ji|d[2]\ & \ji|d[0]\ # !\ji|d[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3F33",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector25~112_I_pathsel\,
	dataa => VCC,
	datab => \ji|d[1]\,
	datac => \ji|d[2]\,
	datad => \ji|d[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector25~112_I_modesel\,
	combout => \p1|Selector25~112\);

-- atom is at LC4_F21
\p1|Selector25~113_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector25~113\ = \ji|d[3]\ & (\p1|display[2]\) # !\ji|d[3]\ & (\p1|Selector25~112\ # \ji|d[2]\ & \p1|display[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE50",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector25~113_I_pathsel\,
	dataa => \ji|d[3]\,
	datab => \ji|d[2]\,
	datac => \p1|Selector25~112\,
	datad => \p1|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector25~113_I_modesel\,
	combout => \p1|Selector25~113\);

-- atom is at LC1_F19
\p1|Selector46~1635_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector46~1645\ = !\p1|Selector46~1634\ & (!\p1|Selector48~1314\ # !\p1|Selector25~113\) # !\p1|Decoder6~69\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector46~1635_I_pathsel\,
	dataa => \p1|Decoder6~69\,
	datab => \p1|Selector46~1634\,
	datac => \p1|Selector25~113\,
	datad => \p1|Selector48~1314\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector46~1635_I_modesel\,
	cascout => \p1|Selector46~1645\);

-- atom is at LC2_F19
\p1|Selector46~1639_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector46~1648\ = (!\p1|Selector46~1636\ & (\p1|o[1]\ # !\p1|Selector11~108\) # !\p1|Decoder6~70\) & CASCADE(\p1|Selector46~1645\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector46~1639_I_pathsel\,
	dataa => \p1|Decoder6~70\,
	datab => \p1|Selector46~1636\,
	datac => \p1|Selector11~108\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector46~1645\,
	modesel => \p1|Selector46~1639_I_modesel\,
	cascout => \p1|Selector46~1648\);

-- atom is at LC3_F19
\p1|Selector46~1638_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector46~1638\ = (\p1|o[0]\ & !\p1|Selector39~120\ # !\p1|o[0]\ & (!\p1|Selector32~95\) # !\p1|Selector48~1306\) & CASCADE(\p1|Selector46~1648\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector46~1638_I_pathsel\,
	dataa => \p1|Selector48~1306\,
	datab => \p1|Selector39~120\,
	datac => \p1|Selector32~95\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector46~1648\,
	modesel => \p1|Selector46~1638_I_modesel\,
	combout => \p1|Selector46~1638\);

-- atom is at LC6_F19
\p1|display[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[2]\ = DFFEA(!\p1|Selector46~1638\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Selector46~1638\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[2]~I_modesel\,
	regout => \p1|display[2]\);

-- atom is at LC3_E24
\pao|Equal5~25_I\ : flex10ke_lcell
-- Equation(s):
-- \pao|Equal5~25\ = !\pao|a_rtl_2|wysi_counter|q[2]\ & !\pao|a_rtl_2|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "000F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|Equal5~25_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|a_rtl_2|wysi_counter|q[2]\,
	datad => \pao|a_rtl_2|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \pao|Equal5~25_I_modesel\,
	combout => \pao|Equal5~25\);

-- atom is at LC2_E24
\p2|Selector4~88_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector4~88\ = \pao|a_rtl_2|wysi_counter|q[3]\ & (\p2|display[2]\) # !\pao|a_rtl_2|wysi_counter|q[3]\ & (\pao|a_rtl_2|wysi_counter|q[2]\ # \pao|a_rtl_2|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector4~88_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \pao|a_rtl_2|wysi_counter|q[2]\,
	datac => \pao|a_rtl_2|wysi_counter|q[0]\,
	datad => \p2|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector4~88_I_modesel\,
	combout => \p2|Selector4~88\);

-- atom is at LC3_E27
\p2|Selector25~103_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector25~103\ = !\pao|d_rtl_5|wysi_counter|q[2]\ & \pao|d_rtl_5|wysi_counter|q[0]\ # !\pao|d_rtl_5|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3F33",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector25~103_I_pathsel\,
	dataa => VCC,
	datab => \pao|d_rtl_5|wysi_counter|q[1]\,
	datac => \pao|d_rtl_5|wysi_counter|q[2]\,
	datad => \pao|d_rtl_5|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector25~103_I_modesel\,
	combout => \p2|Selector25~103\);

-- atom is at LC8_E27
\p2|Selector25~104_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector25~104\ = \pao|d_rtl_5|wysi_counter|q[3]\ & (\p2|display[2]\) # !\pao|d_rtl_5|wysi_counter|q[3]\ & (\p2|Selector25~103\ # \pao|d_rtl_5|wysi_counter|q[2]\ & \p2|display[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE50",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector25~104_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[3]\,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \p2|Selector25~103\,
	datad => \p2|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector25~104_I_modesel\,
	combout => \p2|Selector25~104\);

-- atom is at LC1_E24
\p2|Selector54~1851_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1851\ = \p1|o[2]\ & (\p2|Selector25~104\) # !\p1|o[2]\ & (\pao|Equal5~25\ # \p2|Selector4~88\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1851_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \pao|Equal5~25\,
	datac => \p2|Selector4~88\,
	datad => \p2|Selector25~104\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector54~1851_I_modesel\,
	combout => \p2|Selector54~1851\);

-- atom is at LC8_E20
\p1|Decoder6~79_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Decoder6~79\ = \p1|o[2]\ & \p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Decoder6~79_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \p1|o[2]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Decoder6~79_I_modesel\,
	combout => \p1|Decoder6~79\);

-- atom is at LC6_E20
\p2|Selector54~1849_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1849\ = \p1|Decoder6~79\ & (\p2|Selector54~1844\ # !\p2|Selector50~1116\ & \p2|display[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1849_I_pathsel\,
	dataa => \p2|Selector50~1116\,
	datab => \p2|display[2]\,
	datac => \p2|Selector54~1844\,
	datad => \p1|Decoder6~79\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector54~1849_I_modesel\,
	combout => \p2|Selector54~1849\);

-- atom is at LC8_E22
\p2|Selector18~89_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector18~89\ = \pao|c_rtl_4|wysi_counter|q[3]\ & (\p2|display[2]\) # !\pao|c_rtl_4|wysi_counter|q[3]\ & (\pao|c_rtl_4|wysi_counter|q[2]\ # \pao|c_rtl_4|wysi_counter|q[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector18~89_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \pao|c_rtl_4|wysi_counter|q[2]\,
	datac => \pao|c_rtl_4|wysi_counter|q[0]\,
	datad => \p2|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector18~89_I_modesel\,
	combout => \p2|Selector18~89\);

-- atom is at LC1_E20
\p2|Selector54~1857_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1871\ = !\p2|Selector18~89\ & (\pao|c_rtl_4|wysi_counter|q[2]\ # \pao|c_rtl_4|wysi_counter|q[1]\) # !\p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7775",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1857_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \p2|Selector18~89\,
	datac => \pao|c_rtl_4|wysi_counter|q[2]\,
	datad => \pao|c_rtl_4|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector54~1857_I_modesel\,
	cascout => \p2|Selector54~1871\);

-- atom is at LC2_E20
\p2|Selector54~1860_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1860\ = (\p1|o[1]\ # !\p2|Selector11~88\ & (\pao|b_rtl_3|wysi_counter|q[2]\ # \pao|b_rtl_3|wysi_counter|q[1]\)) & CASCADE(\p2|Selector54~1871\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1860_I_pathsel\,
	dataa => \p2|Selector11~88\,
	datab => \pao|b_rtl_3|wysi_counter|q[2]\,
	datac => \pao|b_rtl_3|wysi_counter|q[1]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector54~1871\,
	modesel => \p2|Selector54~1860_I_modesel\,
	combout => \p2|Selector54~1860\);

-- atom is at LC3_E20
\p2|Selector54~1850_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1866\ = !\p2|Selector54~1849\ & (\p2|Selector54~1860\ # \p1|o[2]\) # !\p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7775",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1850_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p2|Selector54~1849\,
	datac => \p2|Selector54~1860\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector54~1850_I_modesel\,
	cascout => \p2|Selector54~1866\);

-- atom is at LC4_E20
\p2|Selector54~1859_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector54~1859\ = (\p1|o[0]\ # !\p2|Selector54~1852\ & (\p1|o[1]\ # !\p2|Selector54~1851\)) & CASCADE(\p2|Selector54~1866\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF51",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector54~1859_I_pathsel\,
	dataa => \p2|Selector54~1852\,
	datab => \p2|Selector54~1851\,
	datac => \p1|o[1]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector54~1866\,
	modesel => \p2|Selector54~1859_I_modesel\,
	combout => \p2|Selector54~1859\);

-- atom is at LC7_E20
\p2|display[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[2]\ = DFFEA(!\p2|Selector54~1859\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p2|Selector54~1859\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[2]~I_modesel\,
	regout => \p2|display[2]\);

-- atom is at LC5_B9
\p3|Selector4~93_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector4~93\ = \nao|cc[3]\ & (\p3|display[2]\) # !\nao|cc[3]\ & (\nao|cc[2]\ # \nao|cc[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector4~93_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \nao|cc[2]\,
	datac => \nao|cc[0]\,
	datad => \p3|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector4~93_I_modesel\,
	combout => \p3|Selector4~93\);

-- atom is at LC8_B31
\p3|Selector11~108_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector11~108\ = !\nao|dd[3]\ & (!\nao|dd[2]\ & \nao|dd[0]\ # !\nao|dd[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1511",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector11~108_I_pathsel\,
	dataa => \nao|dd[3]\,
	datab => \nao|dd[1]\,
	datac => \nao|dd[2]\,
	datad => \nao|dd[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector11~108_I_modesel\,
	combout => \p3|Selector11~108\);

-- atom is at LC3_B9
\p3|Selector40~1249_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector40~1249\ = \p3|Selector42~851\ & (\p3|Selector11~108\ # !\p3|Selector9~77\ & \p3|display[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector40~1249_I_pathsel\,
	dataa => \p3|Selector9~77\,
	datab => \p3|display[2]\,
	datac => \p3|Selector11~108\,
	datad => \p3|Selector42~851\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector40~1249_I_modesel\,
	combout => \p3|Selector40~1249\);

-- atom is at LC5_B27
\p3|Selector25~116_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector25~116\ = !\nao|ff[3]\ & !\nao|ff[2]\ & !\nao|ff[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector25~116_I_pathsel\,
	dataa => VCC,
	datab => \nao|ff[3]\,
	datac => \nao|ff[2]\,
	datad => \nao|ff[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector25~116_I_modesel\,
	combout => \p3|Selector25~116\);

-- atom is at LC2_B36
\nao|always0~514_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~514\ = !\nao|ff[3]\ & !\nao|ff[2]\ & !\nao|ff[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0003",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~514_I_pathsel\,
	dataa => VCC,
	datab => \nao|ff[3]\,
	datac => \nao|ff[2]\,
	datad => \nao|ff[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~514_I_modesel\,
	combout => \nao|always0~514\);

-- atom is at LC5_B7
\p3|Selector40~1255_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector40~1266\ = !\p3|Selector25~116\ & (\nao|always0~514\ # !\p3|display[2]\) # !\p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector40~1255_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p3|Selector25~116\,
	datac => \p3|display[2]\,
	datad => \nao|always0~514\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector40~1255_I_modesel\,
	cascout => \p3|Selector40~1266\);

-- atom is at LC6_B7
\p3|Selector40~1258_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector40~1258\ = (\p1|o[0]\ # !\p3|Selector18~93\ & (\nao|ee[2]\ # \nao|ee[1]\)) & CASCADE(\p3|Selector40~1266\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF54",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector40~1258_I_pathsel\,
	dataa => \p3|Selector18~93\,
	datab => \nao|ee[2]\,
	datac => \nao|ee[1]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector40~1266\,
	modesel => \p3|Selector40~1258_I_modesel\,
	combout => \p3|Selector40~1258\);

-- atom is at LC7_B9
\p3|Selector40~1250_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector40~1263\ = !\p3|Selector40~1249\ & (\p3|Selector40~1258\ # !\p3|Selector42~849\) # !\p1|o[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector40~1250_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p3|Selector40~1249\,
	datac => \p3|Selector42~849\,
	datad => \p3|Selector40~1258\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector40~1250_I_modesel\,
	cascout => \p3|Selector40~1263\);

-- atom is at LC8_B9
\p3|Selector40~1257_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector40~1257\ = (!\p3|Selector4~93\ & (\nao|cc[2]\ # \nao|cc[1]\) # !\p3|Selector38~1203\) & CASCADE(\p3|Selector40~1263\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7775",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector40~1257_I_pathsel\,
	dataa => \p3|Selector38~1203\,
	datab => \p3|Selector4~93\,
	datac => \nao|cc[2]\,
	datad => \nao|cc[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector40~1263\,
	modesel => \p3|Selector40~1257_I_modesel\,
	combout => \p3|Selector40~1257\);

-- atom is at LC4_B9
\p3|display[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[2]\ = DFFEA(!\p3|Selector40~1257\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p3|Selector40~1257\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[2]~I_modesel\,
	regout => \p3|display[2]\);

-- atom is at LC1_B26
\mc|Selector13~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector13~87\ = \comb_4|mkoo[1]\ & (\p3|display[2]\) # !\comb_4|mkoo[1]\ & \p2|display[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector13~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[2]\,
	datad => \p3|display[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector13~87_I_modesel\,
	combout => \mc|Selector13~87\);

-- atom is at LC4_B26
\mc|diso[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[2]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector13~87\) # !\comb_4|mkoo[0]\ & \p1|display[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[2]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[2]\,
	datad => \mc|Selector13~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[2]~I_modesel\,
	regout => \mc|diso[2]\);

-- atom is at LC1_F30
\p1|Selector45~1291_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector45~1291\ = !\p1|o[1]\ & (\p1|Selector10~221\ # !\ji|always1~75\ & \p1|display[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5510",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector45~1291_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \ji|always1~75\,
	datac => \p1|display[3]\,
	datad => \p1|Selector10~221\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector45~1291_I_modesel\,
	combout => \p1|Selector45~1291\);

-- atom is at LC8_F28
\p1|Selector17~17_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector17~17\ = \ji|c_rtl_0|wysi_counter|q[3]\ & \ji|c_rtl_0|wysi_counter|q[2]\ # !\ji|c_rtl_0|wysi_counter|q[3]\ & (\ji|c_rtl_0|wysi_counter|q[2]\ & (\ji|c_rtl_0|wysi_counter|q[1]\ $ \ji|c_rtl_0|wysi_counter|q[0]\) # !\ji|c_rtl_0|wysi_counter|q[2]\ 
-- & (\ji|c_rtl_0|wysi_counter|q[1]\ # !\ji|c_rtl_0|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector17~17_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \ji|c_rtl_0|wysi_counter|q[2]\,
	datac => \ji|c_rtl_0|wysi_counter|q[1]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector17~17_I_modesel\,
	combout => \p1|Selector17~17\);

-- atom is at LC5_F28
\p1|Selector17~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector17~18\ = \ji|c_rtl_0|wysi_counter|q[3]\ & (\p1|display[3]\ # !\p1|Selector17~17\ & !\ji|c_rtl_0|wysi_counter|q[1]\) # !\ji|c_rtl_0|wysi_counter|q[3]\ & \p1|Selector17~17\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector17~18_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \p1|Selector17~17\,
	datac => \p1|display[3]\,
	datad => \ji|c_rtl_0|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector17~18_I_modesel\,
	combout => \p1|Selector17~18\);

-- atom is at LC5_F30
\p1|Selector45~1297_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector45~1297\ = \p1|Selector48~1314\ & (\p1|Selector24~226\ # !\ji|always1~81\ & \p1|display[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector45~1297_I_pathsel\,
	dataa => \ji|always1~81\,
	datab => \p1|display[3]\,
	datac => \p1|Selector24~226\,
	datad => \p1|Selector48~1314\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector45~1297_I_modesel\,
	combout => \p1|Selector45~1297\);

-- atom is at LC8_F31
\p1|Selector3~12_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector3~12\ = \ji|a[3]\ & \ji|a[2]\ # !\ji|a[3]\ & (\ji|a[2]\ & (\ji|a[1]\ $ \ji|a[0]\) # !\ji|a[2]\ & (\ji|a[1]\ # !\ji|a[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector3~12_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \ji|a[2]\,
	datac => \ji|a[1]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector3~12_I_modesel\,
	combout => \p1|Selector3~12\);

-- atom is at LC4_F31
\p1|Selector3~13_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector3~13\ = \ji|a[3]\ & (\p1|display[3]\ # !\p1|Selector3~12\ & !\ji|a[1]\) # !\ji|a[3]\ & \p1|Selector3~12\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector3~13_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \p1|Selector3~12\,
	datac => \p1|display[3]\,
	datad => \ji|a[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector3~13_I_modesel\,
	combout => \p1|Selector3~13\);

-- atom is at LC4_F30
\p1|Selector38~117_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector38~117\ = \p1|Selector40~139\ # !\p1|Selector39~119\ & \p1|display[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector38~117_I_pathsel\,
	dataa => VCC,
	datab => \p1|Selector39~119\,
	datac => \p1|display[3]\,
	datad => \p1|Selector40~139\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector38~117_I_modesel\,
	combout => \p1|Selector38~117\);

-- atom is at LC8_F22
\p1|Selector31~17_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector31~17\ = \ji|e[3]\ & \ji|e[2]\ # !\ji|e[3]\ & (\ji|e[2]\ & (\ji|e[1]\ $ \ji|e[0]\) # !\ji|e[2]\ & (\ji|e[1]\ # !\ji|e[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector31~17_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \ji|e[2]\,
	datac => \ji|e[1]\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector31~17_I_modesel\,
	combout => \p1|Selector31~17\);

-- atom is at LC2_F30
\p1|Selector31~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector31~18\ = \ji|e[3]\ & (\p1|display[3]\ # !\p1|Selector31~17\ & !\ji|e[1]\) # !\ji|e[3]\ & \p1|Selector31~17\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector31~18_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \p1|Selector31~17\,
	datac => \p1|display[3]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector31~18_I_modesel\,
	combout => \p1|Selector31~18\);

-- atom is at LC6_F30
\p1|Selector45~1296_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector45~1306\ = \p1|o[0]\ & !\p1|Selector38~117\ # !\p1|o[0]\ & (!\p1|Selector31~18\) # !\p1|Selector48~1306\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector45~1296_I_pathsel\,
	dataa => \p1|Selector48~1306\,
	datab => \p1|Selector38~117\,
	datac => \p1|Selector31~18\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector45~1296_I_modesel\,
	cascout => \p1|Selector45~1306\);

-- atom is at LC7_F30
\p1|Selector45~1300_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector45~1309\ = (!\p1|Selector45~1297\ & (\p1|o[2]\ # !\p1|Selector3~13\) # !\p1|Decoder6~69\) & CASCADE(\p1|Selector45~1306\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7757",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector45~1300_I_pathsel\,
	dataa => \p1|Decoder6~69\,
	datab => \p1|Selector45~1297\,
	datac => \p1|Selector3~13\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector45~1306\,
	modesel => \p1|Selector45~1300_I_modesel\,
	cascout => \p1|Selector45~1309\);

-- atom is at LC8_F30
\p1|Selector45~1299_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector45~1299\ = (!\p1|Selector45~1291\ & (!\p1|Selector48~1307\ # !\p1|Selector17~18\) # !\p1|Decoder6~70\) & CASCADE(\p1|Selector45~1309\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector45~1299_I_pathsel\,
	dataa => \p1|Decoder6~70\,
	datab => \p1|Selector45~1291\,
	datac => \p1|Selector17~18\,
	datad => \p1|Selector48~1307\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector45~1309\,
	modesel => \p1|Selector45~1299_I_modesel\,
	combout => \p1|Selector45~1299\);

-- atom is at LC3_F30
\p1|display[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[3]\ = DFFEA(!\p1|Selector45~1299\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Selector45~1299\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[3]~I_modesel\,
	regout => \p1|display[3]\);

-- atom is at LC5_E22
\p2|Selector17~12_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector17~12\ = \pao|c_rtl_4|wysi_counter|q[3]\ & \pao|c_rtl_4|wysi_counter|q[2]\ # !\pao|c_rtl_4|wysi_counter|q[3]\ & (\pao|c_rtl_4|wysi_counter|q[2]\ & (\pao|c_rtl_4|wysi_counter|q[1]\ $ \pao|c_rtl_4|wysi_counter|q[0]\) # 
-- !\pao|c_rtl_4|wysi_counter|q[2]\ & (\pao|c_rtl_4|wysi_counter|q[1]\ # !\pao|c_rtl_4|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector17~12_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \pao|c_rtl_4|wysi_counter|q[2]\,
	datac => \pao|c_rtl_4|wysi_counter|q[1]\,
	datad => \pao|c_rtl_4|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector17~12_I_modesel\,
	combout => \p2|Selector17~12\);

-- atom is at LC2_E22
\p2|Selector17~13_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector17~13\ = \pao|c_rtl_4|wysi_counter|q[3]\ & (\p2|display[3]\ # !\p2|Selector17~12\ & !\pao|c_rtl_4|wysi_counter|q[1]\) # !\pao|c_rtl_4|wysi_counter|q[3]\ & \p2|Selector17~12\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector17~13_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \p2|Selector17~12\,
	datac => \p2|display[3]\,
	datad => \pao|c_rtl_4|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector17~13_I_modesel\,
	combout => \p2|Selector17~13\);

-- atom is at LC4_E30
\p2|Selector10~12_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector10~12\ = \pao|b_rtl_3|wysi_counter|q[3]\ & \pao|b_rtl_3|wysi_counter|q[2]\ # !\pao|b_rtl_3|wysi_counter|q[3]\ & (\pao|b_rtl_3|wysi_counter|q[2]\ & (\pao|b_rtl_3|wysi_counter|q[1]\ $ \pao|b_rtl_3|wysi_counter|q[0]\) # 
-- !\pao|b_rtl_3|wysi_counter|q[2]\ & (\pao|b_rtl_3|wysi_counter|q[1]\ # !\pao|b_rtl_3|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector10~12_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[2]\,
	datac => \pao|b_rtl_3|wysi_counter|q[1]\,
	datad => \pao|b_rtl_3|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector10~12_I_modesel\,
	combout => \p2|Selector10~12\);

-- atom is at LC1_E23
\p2|Selector10~13_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector10~13\ = \pao|b_rtl_3|wysi_counter|q[3]\ & (\p2|display[3]\ # !\p2|Selector10~12\ & !\pao|b_rtl_3|wysi_counter|q[1]\) # !\pao|b_rtl_3|wysi_counter|q[3]\ & \p2|Selector10~12\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector10~13_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \p2|Selector10~12\,
	datac => \p2|display[3]\,
	datad => \pao|b_rtl_3|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector10~13_I_modesel\,
	combout => \p2|Selector10~13\);

-- atom is at LC8_E23
\p2|Selector53~1205_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector53~1205\ = \p2|Selector50~1116\ # !\p2|Selector54~1844\ & \p2|display[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector53~1205_I_pathsel\,
	dataa => VCC,
	datab => \p2|Selector54~1844\,
	datac => \p2|display[3]\,
	datad => \p2|Selector50~1116\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector53~1205_I_modesel\,
	combout => \p2|Selector53~1205\);

-- atom is at LC6_E35
\p2|Selector31~12_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector31~12\ = \pao|e_rtl_6|wysi_counter|q[3]\ & \pao|e_rtl_6|wysi_counter|q[2]\ # !\pao|e_rtl_6|wysi_counter|q[3]\ & (\pao|e_rtl_6|wysi_counter|q[2]\ & (\pao|e_rtl_6|wysi_counter|q[1]\ $ \pao|e_rtl_6|wysi_counter|q[0]\) # 
-- !\pao|e_rtl_6|wysi_counter|q[2]\ & (\pao|e_rtl_6|wysi_counter|q[1]\ # !\pao|e_rtl_6|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector31~12_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[2]\,
	datac => \pao|e_rtl_6|wysi_counter|q[1]\,
	datad => \pao|e_rtl_6|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector31~12_I_modesel\,
	combout => \p2|Selector31~12\);

-- atom is at LC3_E35
\p2|Selector31~13_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector31~13\ = \pao|e_rtl_6|wysi_counter|q[3]\ & (\p2|display[3]\ # !\p2|Selector31~12\ & !\pao|e_rtl_6|wysi_counter|q[1]\) # !\pao|e_rtl_6|wysi_counter|q[3]\ & \p2|Selector31~12\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector31~13_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \p2|Selector31~12\,
	datac => \p2|display[3]\,
	datad => \pao|e_rtl_6|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector31~13_I_modesel\,
	combout => \p2|Selector31~13\);

-- atom is at LC7_E23
\p2|Selector53~1203_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector53~1203\ = \p2|Selector53~1202\ # \p2|display[3]\ & (\pao|d_rtl_5|wysi_counter|q[3]\ # \pao|d_rtl_5|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector53~1203_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[3]\,
	datab => \pao|d_rtl_5|wysi_counter|q[1]\,
	datac => \p2|display[3]\,
	datad => \p2|Selector53~1202\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector53~1203_I_modesel\,
	combout => \p2|Selector53~1203\);

-- atom is at LC5_E24
\p2|Selector3~12_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector3~12\ = \pao|a_rtl_2|wysi_counter|q[3]\ & \pao|a_rtl_2|wysi_counter|q[2]\ # !\pao|a_rtl_2|wysi_counter|q[3]\ & (\pao|a_rtl_2|wysi_counter|q[2]\ & (\pao|a_rtl_2|wysi_counter|q[1]\ $ \pao|a_rtl_2|wysi_counter|q[0]\) # 
-- !\pao|a_rtl_2|wysi_counter|q[2]\ & (\pao|a_rtl_2|wysi_counter|q[1]\ # !\pao|a_rtl_2|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector3~12_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \pao|a_rtl_2|wysi_counter|q[2]\,
	datac => \pao|a_rtl_2|wysi_counter|q[1]\,
	datad => \pao|a_rtl_2|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector3~12_I_modesel\,
	combout => \p2|Selector3~12\);

-- atom is at LC8_E24
\p2|Selector3~13_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector3~13\ = \pao|a_rtl_2|wysi_counter|q[3]\ & (\p2|display[3]\ # !\p2|Selector3~12\ & !\pao|a_rtl_2|wysi_counter|q[1]\) # !\pao|a_rtl_2|wysi_counter|q[3]\ & \p2|Selector3~12\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector3~13_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[3]\,
	datab => \p2|Selector3~12\,
	datac => \p2|display[3]\,
	datad => \pao|a_rtl_2|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector3~13_I_modesel\,
	combout => \p2|Selector3~13\);

-- atom is at LC3_E23
\p2|Selector53~1204_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector53~1215\ = \p1|o[2]\ & !\p2|Selector53~1203\ # !\p1|o[2]\ & (!\p2|Selector3~13\) # !\p1|Decoder6~69\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector53~1204_I_pathsel\,
	dataa => \p1|Decoder6~69\,
	datab => \p2|Selector53~1203\,
	datac => \p2|Selector3~13\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector53~1204_I_modesel\,
	cascout => \p2|Selector53~1215\);

-- atom is at LC4_E23
\p2|Selector53~1208_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector53~1218\ = (\p1|o[0]\ & !\p2|Selector53~1205\ # !\p1|o[0]\ & (!\p2|Selector31~13\) # !\p1|Decoder6~79\) & CASCADE(\p2|Selector53~1215\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector53~1208_I_pathsel\,
	dataa => \p1|Decoder6~79\,
	datab => \p2|Selector53~1205\,
	datac => \p2|Selector31~13\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector53~1215\,
	modesel => \p2|Selector53~1208_I_modesel\,
	cascout => \p2|Selector53~1218\);

-- atom is at LC5_E23
\p2|Selector53~1207_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector53~1207\ = (\p1|o[1]\ & !\p2|Selector17~13\ # !\p1|o[1]\ & (!\p2|Selector10~13\) # !\p1|Decoder6~70\) & CASCADE(\p2|Selector53~1218\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector53~1207_I_pathsel\,
	dataa => \p1|Decoder6~70\,
	datab => \p2|Selector17~13\,
	datac => \p2|Selector10~13\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector53~1218\,
	modesel => \p2|Selector53~1207_I_modesel\,
	combout => \p2|Selector53~1207\);

-- atom is at LC6_E23
\p2|display[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[3]\ = DFFEA(!\p2|Selector53~1207\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p2|Selector53~1207\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[3]~I_modesel\,
	regout => \p2|display[3]\);

-- atom is at LC1_B9
\p3|Selector3~17_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector3~17\ = \nao|cc[3]\ & \nao|cc[2]\ # !\nao|cc[3]\ & (\nao|cc[2]\ & (\nao|cc[1]\ $ \nao|cc[0]\) # !\nao|cc[2]\ & (\nao|cc[1]\ # !\nao|cc[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CD9",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector3~17_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \nao|cc[2]\,
	datac => \nao|cc[1]\,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector3~17_I_modesel\,
	combout => \p3|Selector3~17\);

-- atom is at LC2_B9
\p3|Selector3~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector3~18\ = \nao|cc[3]\ & (\p3|display[3]\ # !\p3|Selector3~17\ & !\nao|cc[1]\) # !\nao|cc[3]\ & \p3|Selector3~17\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector3~18_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \p3|Selector3~17\,
	datac => \p3|display[3]\,
	datad => \nao|cc[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector3~18_I_modesel\,
	combout => \p3|Selector3~18\);

-- atom is at LC6_B9
\p3|display[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[3]\ = DFFEA(\p3|Selector39~835\ & (\p3|Selector3~18\ & \p3|Selector38~1203\) # !\p3|Selector39~835\ & (\p1|o[2]\ # \p3|Selector3~18\ & \p3|Selector38~1203\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[3]~I_pathsel\,
	dataa => \p3|Selector39~835\,
	datab => \p1|o[2]\,
	datac => \p3|Selector3~18\,
	datad => \p3|Selector38~1203\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[3]~I_modesel\,
	regout => \p3|display[3]\);

-- atom is at LC2_D27
\mc|Selector12~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector12~87\ = \comb_4|mkoo[1]\ & (\p3|display[3]\) # !\comb_4|mkoo[1]\ & \p2|display[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector12~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[3]\,
	datad => \p3|display[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector12~87_I_modesel\,
	combout => \mc|Selector12~87\);

-- atom is at LC1_D27
\mc|diso[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[3]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector12~87\) # !\comb_4|mkoo[0]\ & \p1|display[3]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[3]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[3]\,
	datad => \mc|Selector12~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[3]~I_modesel\,
	regout => \mc|diso[3]\);

-- atom is at LC8_F34
\ji|Add4|adder|unreg_res_node[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|Add4|adder|unreg_res_node[3]\ = \ji|Add4|adder|result_node|cout[2]\ $ \ji|d[3]\

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|Add4|adder|unreg_res_node[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|d[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => \ji|Add4|adder|result_node|cout[2]\,
	cascin => VCC,
	modesel => \ji|Add4|adder|unreg_res_node[3]~I_modesel\,
	combout => \ji|Add4|adder|unreg_res_node[3]\);

-- atom is at LC3_F34
\ji|d[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \ji|d[3]\ = DFFEA(\ji|Add4|adder|unreg_res_node[3]\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \ji|d[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \ji|Add4|adder|unreg_res_node[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \ji|d[3]~I_modesel\,
	regout => \ji|d[3]\);

-- atom is at LC2_F36
\p1|Selector23~81_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector23~81\ = \p1|display[4]\ & (\ji|d[3]\ # \ji|d[2]\ & \ji|d[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector23~81_I_pathsel\,
	dataa => \ji|d[2]\,
	datab => \ji|d[1]\,
	datac => \ji|d[3]\,
	datad => \p1|display[4]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector23~81_I_modesel\,
	combout => \p1|Selector23~81\);

-- atom is at LC4_F36
\p1|Selector23~82_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector23~82\ = \p1|Selector23~81\ # !\ji|d[2]\ & !\ji|d[3]\ & !\ji|d[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF01",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector23~82_I_pathsel\,
	dataa => \ji|d[2]\,
	datab => \ji|d[3]\,
	datac => \ji|d[0]\,
	datad => \p1|Selector23~81\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector23~82_I_modesel\,
	combout => \p1|Selector23~82\);

-- atom is at LC1_F27
\p1|Selector44~2046_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2046\ = !\p1|o[0]\ & !\p1|o[1]\ & !\p1|always0~39\ & \p1|Selector23~82\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2046_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p1|o[1]\,
	datac => \p1|always0~39\,
	datad => \p1|Selector23~82\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2046_I_modesel\,
	combout => \p1|Selector44~2046\);

-- atom is at LC2_F20
\p1|Selector44~2053_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2065\ = \ji|a[0]\ # \ji|a[1]\ & (\ji|a[3]\) # !\ji|a[1]\ & \ji|a[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE4",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2053_I_pathsel\,
	dataa => \ji|a[1]\,
	datab => \ji|a[2]\,
	datac => \ji|a[3]\,
	datad => \ji|a[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2053_I_modesel\,
	cascout => \p1|Selector44~2065\);

-- atom is at LC3_F20
\p1|Selector44~2055_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2055\ = (!\ji|a[2]\ & !\ji|a[1]\ # !\p1|display[4]\ # !\ji|a[3]\) & CASCADE(\p1|Selector44~2065\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "777F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2055_I_pathsel\,
	dataa => \ji|a[3]\,
	datab => \p1|display[4]\,
	datac => \ji|a[2]\,
	datad => \ji|a[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector44~2065\,
	modesel => \p1|Selector44~2055_I_modesel\,
	combout => \p1|Selector44~2055\);

-- atom is at LC3_F29
\p1|Selector44~2041_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2041\ = \p1|display[4]\ & (\ji|b[3]\ # \ji|b[2]\ & \ji|b[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F800",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2041_I_pathsel\,
	dataa => \ji|b[2]\,
	datab => \ji|b[1]\,
	datac => \ji|b[3]\,
	datad => \p1|display[4]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2041_I_modesel\,
	combout => \p1|Selector44~2041\);

-- atom is at LC2_F29
\p1|Selector44~2042_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2042\ = \p1|Selector44~2041\ # !\ji|b[2]\ & !\ji|b[3]\ & !\ji|b[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF01",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2042_I_pathsel\,
	dataa => \ji|b[2]\,
	datab => \ji|b[3]\,
	datac => \ji|b[0]\,
	datad => \p1|Selector44~2041\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2042_I_modesel\,
	combout => \p1|Selector44~2042\);

-- atom is at LC4_F20
\p1|Selector44~2044_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2044\ = !\p1|o[1]\ & (\p1|o[0]\ & (\p1|Selector44~2042\) # !\p1|o[0]\ & !\p1|Selector44~2055\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5101",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2044_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \p1|Selector44~2055\,
	datac => \p1|o[0]\,
	datad => \p1|Selector44~2042\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2044_I_modesel\,
	combout => \p1|Selector44~2044\);

-- atom is at LC5_F20
\p1|Selector44~2045_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector44~2045\ = \p1|Selector44~2044\ # !\p1|Selector16~263\ & \p1|Selector48~1307\ & \p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF40",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector44~2045_I_pathsel\,
	dataa => \p1|Selector16~263\,
	datab => \p1|Selector48~1307\,
	datac => \p1|o[0]\,
	datad => \p1|Selector44~2044\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector44~2045_I_modesel\,
	combout => \p1|Selector44~2045\);

-- atom is at LC2_F27
\p1|display[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[4]\ = DFFEA(\p1|o[2]\ & (\p1|Selector44~2048\ # \p1|Selector44~2046\) # !\p1|o[2]\ & (\p1|Selector44~2045\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "EFE0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[4]~I_pathsel\,
	dataa => \p1|Selector44~2048\,
	datab => \p1|Selector44~2046\,
	datac => \p1|o[2]\,
	datad => \p1|Selector44~2045\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[4]~I_modesel\,
	regout => \p1|display[4]\);

-- atom is at LC8_E13
\pao|b_rtl_3|wysi_counter|q[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \pao|b_rtl_3|wysi_counter|q[3]\ = DFFEA((\pao|b_rtl_3|wysi_counter|q[3]\ $ (\pao|b[0]~141\ & \pao|b_rtl_3|wysi_counter|counter_cell[2]~COUT\)) & \pao|b~142\, \fen|f100Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	cin_used => "true",
--	clock_enable_mode => "false",
--	lut_mask => "6C6C",
--	operation_mode => "clrb_cntr",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \pao|b_rtl_3|wysi_counter|q[3]~I_pathsel\,
	dataa => \pao|b[0]~141\,
	datab => \pao|b~142\,
	datac => VCC,
	datad => VCC,
	aclr => GND,
	aload => GND,
	clk => \fen|f100Hz\,
	cin => \pao|b_rtl_3|wysi_counter|counter_cell[2]~COUT\,
	cascin => VCC,
	modesel => \pao|b_rtl_3|wysi_counter|q[3]~I_modesel\,
	regout => \pao|b_rtl_3|wysi_counter|q[3]\);

-- atom is at LC3_E29
\p2|Selector52~3150_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3150\ = \pao|b_rtl_3|wysi_counter|q[3]\ & \p1|o[0]\ & (\pao|b_rtl_3|wysi_counter|q[2]\ # \pao|b_rtl_3|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3150_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[2]\,
	datab => \pao|b_rtl_3|wysi_counter|q[1]\,
	datac => \pao|b_rtl_3|wysi_counter|q[3]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3150_I_modesel\,
	combout => \p2|Selector52~3150\);

-- atom is at LC1_E29
\p2|Selector52~3151_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3151\ = \p2|Selector52~3150\ # !\p1|o[0]\ & !\pao|Equal5~25\ & \pao|a_rtl_2|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF10",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3151_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \pao|Equal5~25\,
	datac => \pao|a_rtl_2|wysi_counter|q[3]\,
	datad => \p2|Selector52~3150\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3151_I_modesel\,
	combout => \p2|Selector52~3151\);

-- atom is at LC2_E34
\p2|Selector52~3148_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3148\ = !\p1|o[0]\ & (\pao|a_rtl_2|wysi_counter|q[1]\ & !\pao|a_rtl_2|wysi_counter|q[3]\ # !\pao|a_rtl_2|wysi_counter|q[1]\ & (!\pao|a_rtl_2|wysi_counter|q[2]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1105",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3148_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \pao|a_rtl_2|wysi_counter|q[3]\,
	datac => \pao|a_rtl_2|wysi_counter|q[2]\,
	datad => \pao|a_rtl_2|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3148_I_modesel\,
	combout => \p2|Selector52~3148\);

-- atom is at LC2_E30
\p2|Selector52~3147_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3147\ = \p1|o[0]\ & (\pao|b_rtl_3|wysi_counter|q[1]\ & !\pao|b_rtl_3|wysi_counter|q[3]\ # !\pao|b_rtl_3|wysi_counter|q[1]\ & (!\pao|b_rtl_3|wysi_counter|q[2]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5300",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3147_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[2]\,
	datac => \pao|b_rtl_3|wysi_counter|q[1]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3147_I_modesel\,
	combout => \p2|Selector52~3147\);

-- atom is at LC1_E30
\p2|Selector52~3149_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3149\ = \pao|a_rtl_2|wysi_counter|q[0]\ & !\pao|b_rtl_3|wysi_counter|q[0]\ & (\p2|Selector52~3147\) # !\pao|a_rtl_2|wysi_counter|q[0]\ & (\p2|Selector52~3148\ # !\pao|b_rtl_3|wysi_counter|q[0]\ & \p2|Selector52~3147\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7350",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3149_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[0]\,
	datab => \pao|b_rtl_3|wysi_counter|q[0]\,
	datac => \p2|Selector52~3148\,
	datad => \p2|Selector52~3147\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3149_I_modesel\,
	combout => \p2|Selector52~3149\);

-- atom is at LC5_E19
\p2|Selector52~3152_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3152\ = \p2|Selector52~3149\ # \p2|Selector52~3151\ & \p2|display[4]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFC0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3152_I_pathsel\,
	dataa => VCC,
	datab => \p2|Selector52~3151\,
	datac => \p2|display[4]\,
	datad => \p2|Selector52~3149\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3152_I_modesel\,
	combout => \p2|Selector52~3152\);

-- atom is at LC8_E19
\p2|Selector52~3154_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3154\ = \p1|o[1]\ & !\p2|Selector52~3171\ & \p1|o[0]\ # !\p1|o[1]\ & (\p2|Selector52~3152\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3154_I_pathsel\,
	dataa => \p2|Selector52~3171\,
	datab => \p1|o[1]\,
	datac => \p1|o[0]\,
	datad => \p2|Selector52~3152\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3154_I_modesel\,
	combout => \p2|Selector52~3154\);

-- atom is at LC5_E31
\p2|Selector52~3144_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3144\ = \p2|Selector50~1116\ # !\p2|Selector54~1844\ & \p2|display[4]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3144_I_pathsel\,
	dataa => VCC,
	datab => \p2|Selector54~1844\,
	datac => \p2|display[4]\,
	datad => \p2|Selector50~1116\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3144_I_modesel\,
	combout => \p2|Selector52~3144\);

-- atom is at LC4_E19
\p2|Selector52~3146_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector52~3146\ = \p1|o[0]\ & (\p2|Selector52~3144\ & \p1|o[1]\) # !\p1|o[0]\ & !\p2|Selector52~3170\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "D111",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector52~3146_I_pathsel\,
	dataa => \p2|Selector52~3170\,
	datab => \p1|o[0]\,
	datac => \p2|Selector52~3144\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector52~3146_I_modesel\,
	combout => \p2|Selector52~3146\);

-- atom is at LC3_E19
\p2|display[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[4]\ = DFFEA(\p1|o[2]\ & (\p2|Selector52~3146\) # !\p1|o[2]\ & \p2|Selector52~3154\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[4]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[2]\,
	datac => \p2|Selector52~3154\,
	datad => \p2|Selector52~3146\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[4]~I_modesel\,
	regout => \p2|display[4]\);

-- atom is at LC5_B25
\p3|Selector2~257_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector2~262\ = \nao|cc[0]\ # \nao|cc[1]\ & (\nao|cc[3]\) # !\nao|cc[1]\ & \nao|cc[2]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE4",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector2~257_I_pathsel\,
	dataa => \nao|cc[1]\,
	datab => \nao|cc[2]\,
	datac => \nao|cc[3]\,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector2~257_I_modesel\,
	cascout => \p3|Selector2~262\);

-- atom is at LC6_B25
\p3|Selector2~259_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector2~259\ = (!\nao|cc[2]\ & !\nao|cc[1]\ # !\p3|display[4]\ # !\nao|cc[3]\) & CASCADE(\p3|Selector2~262\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "777F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector2~259_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \p3|display[4]\,
	datac => \nao|cc[2]\,
	datad => \nao|cc[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p3|Selector2~262\,
	modesel => \p3|Selector2~259_I_modesel\,
	combout => \p3|Selector2~259\);

-- atom is at LC3_B25
\p3|display[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[4]\ = DFFEA(\p3|Selector38~1211\ & !\p3|Selector2~259\ & (\p3|Selector38~1203\) # !\p3|Selector38~1211\ & (\p1|o[2]\ # !\p3|Selector2~259\ & \p3|Selector38~1203\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7350",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[4]~I_pathsel\,
	dataa => \p3|Selector38~1211\,
	datab => \p3|Selector2~259\,
	datac => \p1|o[2]\,
	datad => \p3|Selector38~1203\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[4]~I_modesel\,
	regout => \p3|display[4]\);

-- atom is at LC1_B23
\mc|Selector11~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector11~87\ = \comb_4|mkoo[1]\ & (\p3|display[4]\) # !\comb_4|mkoo[1]\ & \p2|display[4]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector11~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[4]\,
	datad => \p3|display[4]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector11~87_I_modesel\,
	combout => \mc|Selector11~87\);

-- atom is at LC5_B23
\mc|diso[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[4]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector11~87\) # !\comb_4|mkoo[0]\ & \p1|display[4]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[4]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[4]\,
	datad => \mc|Selector11~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[4]~I_modesel\,
	regout => \mc|diso[4]\);

-- atom is at LC8_F33
\p1|Selector43~1386_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector43~1386\ = \p1|Selector40~140\ & (\ji|f_rtl_1|wysi_counter|q[0]\ & \ji|f_rtl_1|wysi_counter|q[1]\ & \p1|display[5]\ # !\ji|f_rtl_1|wysi_counter|q[0]\ & !\ji|f_rtl_1|wysi_counter|q[1]\) # !\p1|Selector40~140\ & (\p1|display[5]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "D702",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector43~1386_I_pathsel\,
	dataa => \p1|Selector40~140\,
	datab => \ji|f_rtl_1|wysi_counter|q[0]\,
	datac => \ji|f_rtl_1|wysi_counter|q[1]\,
	datad => \p1|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector43~1386_I_modesel\,
	combout => \p1|Selector43~1386\);

-- atom is at LC6_F33
\p1|Selector29~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector29~23\ = \ji|e[3]\ & \ji|e[1]\ # !\ji|e[3]\ & (\ji|e[1]\ & !\ji|e[0]\ & \ji|e[2]\ # !\ji|e[1]\ & (\ji|e[2]\ # !\ji|e[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector29~23_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \ji|e[1]\,
	datac => \ji|e[0]\,
	datad => \ji|e[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector29~23_I_modesel\,
	combout => \p1|Selector29~23\);

-- atom is at LC7_F33
\p1|Selector29~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector29~24\ = \ji|e[3]\ & (\p1|display[5]\ # !\p1|Selector29~23\ & !\ji|e[2]\) # !\ji|e[3]\ & \p1|Selector29~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector29~24_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \p1|Selector29~23\,
	datac => \p1|display[5]\,
	datad => \ji|e[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector29~24_I_modesel\,
	combout => \p1|Selector29~24\);

-- atom is at LC7_F24
\p1|Selector15~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector15~23\ = \ji|c_rtl_0|wysi_counter|q[3]\ & \ji|c_rtl_0|wysi_counter|q[1]\ # !\ji|c_rtl_0|wysi_counter|q[3]\ & (\ji|c_rtl_0|wysi_counter|q[1]\ & !\ji|c_rtl_0|wysi_counter|q[0]\ & \ji|c_rtl_0|wysi_counter|q[2]\ # !\ji|c_rtl_0|wysi_counter|q[1]\ & 
-- (\ji|c_rtl_0|wysi_counter|q[2]\ # !\ji|c_rtl_0|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector15~23_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \ji|c_rtl_0|wysi_counter|q[1]\,
	datac => \ji|c_rtl_0|wysi_counter|q[0]\,
	datad => \ji|c_rtl_0|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector15~23_I_modesel\,
	combout => \p1|Selector15~23\);

-- atom is at LC1_F33
\p1|Selector15~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector15~24\ = \ji|c_rtl_0|wysi_counter|q[3]\ & (\p1|display[5]\ # !\p1|Selector15~23\ & !\ji|c_rtl_0|wysi_counter|q[2]\) # !\ji|c_rtl_0|wysi_counter|q[3]\ & \p1|Selector15~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector15~24_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \p1|Selector15~23\,
	datac => \p1|display[5]\,
	datad => \ji|c_rtl_0|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector15~24_I_modesel\,
	combout => \p1|Selector15~24\);

-- atom is at LC4_F29
\p1|Selector8~116_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector8~116\ = \p1|display[5]\ & (\ji|b[2]\ # \ji|b[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC00",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector8~116_I_pathsel\,
	dataa => VCC,
	datab => \ji|b[2]\,
	datac => \ji|b[3]\,
	datad => \p1|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector8~116_I_modesel\,
	combout => \p1|Selector8~116\);

-- atom is at LC1_F29
\p1|Selector8~117_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector8~117\ = \p1|Selector8~116\ # \ji|always1~75\ & (\ji|b[2]\ # !\ji|b[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFD0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector8~117_I_pathsel\,
	dataa => \ji|b[0]\,
	datab => \ji|b[2]\,
	datac => \ji|always1~75\,
	datad => \p1|Selector8~116\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector8~117_I_modesel\,
	combout => \p1|Selector8~117\);

-- atom is at LC2_F33
\p1|Selector43~1383_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector43~1383\ = \p1|o[1]\ & !\p1|always0~39\ & \p1|Selector15~24\ # !\p1|o[1]\ & (\p1|Selector8~117\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7340",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector43~1383_I_pathsel\,
	dataa => \p1|always0~39\,
	datab => \p1|o[1]\,
	datac => \p1|Selector15~24\,
	datad => \p1|Selector8~117\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector43~1383_I_modesel\,
	combout => \p1|Selector43~1383\);

-- atom is at LC4_F33
\p1|Selector43~1385_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector43~1393\ = \p1|Selector43~1384\ & !\p1|Decoder6~69\ & (!\p1|Decoder6~70\ # !\p1|Selector43~1383\) # !\p1|Selector43~1384\ & (!\p1|Decoder6~70\ # !\p1|Selector43~1383\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0777",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector43~1385_I_pathsel\,
	dataa => \p1|Selector43~1384\,
	datab => \p1|Decoder6~69\,
	datac => \p1|Selector43~1383\,
	datad => \p1|Decoder6~70\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector43~1385_I_modesel\,
	cascout => \p1|Selector43~1393\);

-- atom is at LC5_F33
\p1|Selector43~1388_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector43~1388\ = (\p1|o[0]\ & !\p1|Selector43~1386\ # !\p1|o[0]\ & (!\p1|Selector29~24\) # !\p1|Selector48~1306\) & CASCADE(\p1|Selector43~1393\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "775F",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector43~1388_I_pathsel\,
	dataa => \p1|Selector48~1306\,
	datab => \p1|Selector43~1386\,
	datac => \p1|Selector29~24\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p1|Selector43~1393\,
	modesel => \p1|Selector43~1388_I_modesel\,
	combout => \p1|Selector43~1388\);

-- atom is at LC3_F33
\p1|display[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[5]\ = DFFEA(!\p1|Selector43~1388\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|Selector43~1388\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[5]~I_modesel\,
	regout => \p1|display[5]\);

-- atom is at LC5_E28
\p2|Selector29~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector29~18\ = \pao|e_rtl_6|wysi_counter|q[3]\ & \pao|e_rtl_6|wysi_counter|q[1]\ # !\pao|e_rtl_6|wysi_counter|q[3]\ & (\pao|e_rtl_6|wysi_counter|q[1]\ & !\pao|e_rtl_6|wysi_counter|q[0]\ & \pao|e_rtl_6|wysi_counter|q[2]\ # 
-- !\pao|e_rtl_6|wysi_counter|q[1]\ & (\pao|e_rtl_6|wysi_counter|q[2]\ # !\pao|e_rtl_6|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector29~18_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \pao|e_rtl_6|wysi_counter|q[1]\,
	datac => \pao|e_rtl_6|wysi_counter|q[0]\,
	datad => \pao|e_rtl_6|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector29~18_I_modesel\,
	combout => \p2|Selector29~18\);

-- atom is at LC7_E28
\p2|Selector29~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector29~19\ = \pao|e_rtl_6|wysi_counter|q[3]\ & (\p2|display[5]\ # !\p2|Selector29~18\ & !\pao|e_rtl_6|wysi_counter|q[2]\) # !\pao|e_rtl_6|wysi_counter|q[3]\ & \p2|Selector29~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector29~19_I_pathsel\,
	dataa => \pao|e_rtl_6|wysi_counter|q[3]\,
	datab => \p2|Selector29~18\,
	datac => \p2|display[5]\,
	datad => \pao|e_rtl_6|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector29~19_I_modesel\,
	combout => \p2|Selector29~19\);

-- atom is at LC7_E22
\p2|Selector15~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector15~18\ = \pao|c_rtl_4|wysi_counter|q[3]\ & \pao|c_rtl_4|wysi_counter|q[1]\ # !\pao|c_rtl_4|wysi_counter|q[3]\ & (\pao|c_rtl_4|wysi_counter|q[1]\ & !\pao|c_rtl_4|wysi_counter|q[0]\ & \pao|c_rtl_4|wysi_counter|q[2]\ # 
-- !\pao|c_rtl_4|wysi_counter|q[1]\ & (\pao|c_rtl_4|wysi_counter|q[2]\ # !\pao|c_rtl_4|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector15~18_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \pao|c_rtl_4|wysi_counter|q[1]\,
	datac => \pao|c_rtl_4|wysi_counter|q[0]\,
	datad => \pao|c_rtl_4|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector15~18_I_modesel\,
	combout => \p2|Selector15~18\);

-- atom is at LC6_E22
\p2|Selector15~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector15~19\ = \pao|c_rtl_4|wysi_counter|q[3]\ & (\p2|display[5]\ # !\p2|Selector15~18\ & !\pao|c_rtl_4|wysi_counter|q[2]\) # !\pao|c_rtl_4|wysi_counter|q[3]\ & \p2|Selector15~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector15~19_I_pathsel\,
	dataa => \pao|c_rtl_4|wysi_counter|q[3]\,
	datab => \p2|Selector15~18\,
	datac => \p2|display[5]\,
	datad => \pao|c_rtl_4|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector15~19_I_modesel\,
	combout => \p2|Selector15~19\);

-- atom is at LC2_D23
\p2|Selector40~44_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector40~44\ = \pao|f_rtl_7|wysi_counter|q[2]\ # \pao|f_rtl_7|wysi_counter|q[3]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector40~44_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|f_rtl_7|wysi_counter|q[2]\,
	datad => \pao|f_rtl_7|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector40~44_I_modesel\,
	combout => \p2|Selector40~44\);

-- atom is at LC1_D23
\p2|Selector51~1308_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector51~1308\ = \p2|Selector40~44\ & (\p2|display[5]\) # !\p2|Selector40~44\ & (\pao|f_rtl_7|wysi_counter|q[0]\ & \pao|f_rtl_7|wysi_counter|q[1]\ & \p2|display[5]\ # !\pao|f_rtl_7|wysi_counter|q[0]\ & !\pao|f_rtl_7|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F901",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector51~1308_I_pathsel\,
	dataa => \pao|f_rtl_7|wysi_counter|q[0]\,
	datab => \pao|f_rtl_7|wysi_counter|q[1]\,
	datac => \p2|Selector40~44\,
	datad => \p2|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector51~1308_I_modesel\,
	combout => \p2|Selector51~1308\);

-- atom is at LC4_E28
\p2|Selector51~1309_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector51~1309\ = \p1|o[1]\ & (\p1|o[2]\ & (\p2|Selector51~1308\) # !\p1|o[2]\ & \p2|Selector15~19\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector51~1309_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p2|Selector15~19\,
	datac => \p2|Selector51~1308\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector51~1309_I_modesel\,
	combout => \p2|Selector51~1309\);

-- atom is at LC7_E30
\p2|Selector8~18_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector8~18\ = \pao|b_rtl_3|wysi_counter|q[3]\ & \pao|b_rtl_3|wysi_counter|q[1]\ # !\pao|b_rtl_3|wysi_counter|q[3]\ & (\pao|b_rtl_3|wysi_counter|q[1]\ & !\pao|b_rtl_3|wysi_counter|q[0]\ & \pao|b_rtl_3|wysi_counter|q[2]\ # 
-- !\pao|b_rtl_3|wysi_counter|q[1]\ & (\pao|b_rtl_3|wysi_counter|q[2]\ # !\pao|b_rtl_3|wysi_counter|q[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector8~18_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \pao|b_rtl_3|wysi_counter|q[1]\,
	datac => \pao|b_rtl_3|wysi_counter|q[0]\,
	datad => \pao|b_rtl_3|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector8~18_I_modesel\,
	combout => \p2|Selector8~18\);

-- atom is at LC1_E28
\p2|Selector8~19_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector8~19\ = \pao|b_rtl_3|wysi_counter|q[3]\ & (\p2|display[5]\ # !\p2|Selector8~18\ & !\pao|b_rtl_3|wysi_counter|q[2]\) # !\pao|b_rtl_3|wysi_counter|q[3]\ & \p2|Selector8~18\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector8~19_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[3]\,
	datab => \p2|Selector8~18\,
	datac => \p2|display[5]\,
	datad => \pao|b_rtl_3|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector8~19_I_modesel\,
	combout => \p2|Selector8~19\);

-- atom is at LC2_E28
\p2|Selector51~1310_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector51~1318\ = !\p2|Selector51~1309\ & (!\p2|Selector55~1515\ # !\p2|Selector8~19\) # !\p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5777",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector51~1310_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p2|Selector51~1309\,
	datac => \p2|Selector8~19\,
	datad => \p2|Selector55~1515\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector51~1310_I_modesel\,
	cascout => \p2|Selector51~1318\);

-- atom is at LC3_E28
\p2|Selector51~1313_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector51~1313\ = (\p1|o[0]\ # !\p2|Selector51~1311\ & (!\p1|Decoder6~79\ # !\p2|Selector29~19\)) & CASCADE(\p2|Selector51~1318\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF15",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector51~1313_I_pathsel\,
	dataa => \p2|Selector51~1311\,
	datab => \p2|Selector29~19\,
	datac => \p1|Decoder6~79\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \p2|Selector51~1318\,
	modesel => \p2|Selector51~1313_I_modesel\,
	combout => \p2|Selector51~1313\);

-- atom is at LC6_E28
\p2|display[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[5]\ = DFFEA(!\p2|Selector51~1313\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p2|Selector51~1313\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[5]~I_modesel\,
	regout => \p2|display[5]\);

-- atom is at LC4_B25
\p3|Selector1~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector1~23\ = \nao|cc[3]\ & \nao|cc[1]\ # !\nao|cc[3]\ & (\nao|cc[1]\ & !\nao|cc[0]\ & \nao|cc[2]\ # !\nao|cc[1]\ & (\nao|cc[2]\ # !\nao|cc[0]\))

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9D89",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector1~23_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \nao|cc[1]\,
	datac => \nao|cc[0]\,
	datad => \nao|cc[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector1~23_I_modesel\,
	combout => \p3|Selector1~23\);

-- atom is at LC8_B25
\p3|Selector1~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector1~24\ = \nao|cc[3]\ & (\p3|display[5]\ # !\p3|Selector1~23\ & !\nao|cc[2]\) # !\nao|cc[3]\ & \p3|Selector1~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector1~24_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \p3|Selector1~23\,
	datac => \p3|display[5]\,
	datad => \nao|cc[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector1~24_I_modesel\,
	combout => \p3|Selector1~24\);

-- atom is at LC7_B25
\p3|display[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[5]\ = DFFEA(\p3|Selector37~936\ & (\p3|Selector1~24\ & \p3|Selector38~1203\) # !\p3|Selector37~936\ & (\p1|o[2]\ # \p3|Selector1~24\ & \p3|Selector38~1203\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F444",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[5]~I_pathsel\,
	dataa => \p3|Selector37~936\,
	datab => \p1|o[2]\,
	datac => \p3|Selector1~24\,
	datad => \p3|Selector38~1203\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[5]~I_modesel\,
	regout => \p3|display[5]\);

-- atom is at LC2_B23
\mc|Selector10~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector10~87\ = \comb_4|mkoo[1]\ & (\p3|display[5]\) # !\comb_4|mkoo[1]\ & \p2|display[5]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector10~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[5]\,
	datad => \p3|display[5]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector10~87_I_modesel\,
	combout => \mc|Selector10~87\);

-- atom is at LC4_B23
\mc|diso[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[5]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector10~87\) # !\comb_4|mkoo[0]\ & \p1|display[5]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[5]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[5]\,
	datad => \mc|Selector10~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[5]~I_modesel\,
	regout => \mc|diso[5]\);

-- atom is at LC8_F36
\p1|Selector21~98_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector21~98\ = \ji|d[3]\ & (\p1|display[6]\) # !\ji|d[3]\ & (\ji|d[2]\ & (\p1|display[6]\ # !\ji|d[1]\) # !\ji|d[2]\ & \ji|d[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE14",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector21~98_I_pathsel\,
	dataa => \ji|d[3]\,
	datab => \ji|d[2]\,
	datac => \ji|d[1]\,
	datad => \p1|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector21~98_I_modesel\,
	combout => \p1|Selector21~98\);

-- atom is at LC7_F25
\p1|Selector42~1162_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1162\ = !\p1|always0~39\ & \p1|o[2]\ & \p1|Selector21~98\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1162_I_pathsel\,
	dataa => VCC,
	datab => \p1|always0~39\,
	datac => \p1|o[2]\,
	datad => \p1|Selector21~98\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector42~1162_I_modesel\,
	combout => \p1|Selector42~1162\);

-- atom is at LC8_F25
\p1|Selector42~1164_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1164\ = \p1|Selector42~1162\ # \p1|o[0]\ & (\p1|Selector42~1163\ # \p1|o[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFE0",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1164_I_pathsel\,
	dataa => \p1|Selector42~1163\,
	datab => \p1|o[2]\,
	datac => \p1|o[0]\,
	datad => \p1|Selector42~1162\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector42~1164_I_modesel\,
	combout => \p1|Selector42~1164\);

-- atom is at LC2_F22
\p1|Selector28~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector28~23\ = \ji|e[3]\ & \ji|e[2]\ # !\ji|e[3]\ & (\ji|e[2]\ & (!\ji|e[0]\ # !\ji|e[1]\) # !\ji|e[2]\ & \ji|e[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CDC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector28~23_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \ji|e[2]\,
	datac => \ji|e[1]\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector28~23_I_modesel\,
	combout => \p1|Selector28~23\);

-- atom is at LC1_F22
\p1|Selector28~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector28~24\ = \ji|e[3]\ & (\p1|display[6]\ # !\p1|Selector28~23\ & !\ji|e[1]\) # !\ji|e[3]\ & \p1|Selector28~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector28~24_I_pathsel\,
	dataa => \ji|e[3]\,
	datab => \p1|Selector28~23\,
	datac => \p1|display[6]\,
	datad => \ji|e[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector28~24_I_modesel\,
	combout => \p1|Selector28~24\);

-- atom is at LC1_F25
\p1|Selector14~23_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector14~23\ = \ji|c_rtl_0|wysi_counter|q[3]\ & \ji|c_rtl_0|wysi_counter|q[2]\ # !\ji|c_rtl_0|wysi_counter|q[3]\ & (\ji|c_rtl_0|wysi_counter|q[2]\ & (!\ji|c_rtl_0|wysi_counter|q[0]\ # !\ji|c_rtl_0|wysi_counter|q[1]\) # 
-- !\ji|c_rtl_0|wysi_counter|q[2]\ & \ji|c_rtl_0|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CDC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector14~23_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \ji|c_rtl_0|wysi_counter|q[2]\,
	datac => \ji|c_rtl_0|wysi_counter|q[1]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector14~23_I_modesel\,
	combout => \p1|Selector14~23\);

-- atom is at LC3_F25
\p1|Selector14~24_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector14~24\ = \ji|c_rtl_0|wysi_counter|q[3]\ & (\p1|display[6]\ # !\p1|Selector14~23\ & !\ji|c_rtl_0|wysi_counter|q[1]\) # !\ji|c_rtl_0|wysi_counter|q[3]\ & \p1|Selector14~23\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector14~24_I_pathsel\,
	dataa => \ji|c_rtl_0|wysi_counter|q[3]\,
	datab => \p1|Selector14~23\,
	datac => \p1|display[6]\,
	datad => \ji|c_rtl_0|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector14~24_I_modesel\,
	combout => \p1|Selector14~24\);

-- atom is at LC5_F25
\p1|Selector42~1160_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1160\ = !\p1|o[2]\ & !\p1|always0~39\ & \p1|Selector14~24\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0300",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1160_I_pathsel\,
	dataa => VCC,
	datab => \p1|o[2]\,
	datac => \p1|always0~39\,
	datad => \p1|Selector14~24\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector42~1160_I_modesel\,
	combout => \p1|Selector42~1160\);

-- atom is at LC6_F25
\p1|Selector42~1161_I\ : flex10ke_lcell
-- Equation(s):
-- \p1|Selector42~1161\ = \p1|Selector42~1160\ # !\p1|o[0]\ & !\p1|always0~38\ & \p1|Selector28~24\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF10",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|Selector42~1161_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p1|always0~38\,
	datac => \p1|Selector28~24\,
	datad => \p1|Selector42~1160\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p1|Selector42~1161_I_modesel\,
	combout => \p1|Selector42~1161\);

-- atom is at LC4_F25
\p1|display[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|display[6]\ = DFFEA(\p1|o[1]\ & (\p1|Selector42~1161\) # !\p1|o[1]\ & \p1|Selector42~1164\ # !\p1|Selector42~1172\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FD75",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|display[6]~I_pathsel\,
	dataa => \p1|Selector42~1172\,
	datab => \p1|o[1]\,
	datac => \p1|Selector42~1164\,
	datad => \p1|Selector42~1161\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|display[6]~I_modesel\,
	regout => \p1|display[6]\);

-- atom is at LC5_E29
\p2|Selector7~26_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector7~26\ = \pao|b_rtl_3|wysi_counter|q[2]\ & \pao|b_rtl_3|wysi_counter|q[3]\ # !\pao|b_rtl_3|wysi_counter|q[2]\ & (\pao|b_rtl_3|wysi_counter|q[3]\ & (\p2|display[6]\ # !\pao|b_rtl_3|wysi_counter|q[1]\) # !\pao|b_rtl_3|wysi_counter|q[3]\ & 
-- \pao|b_rtl_3|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DC9C",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector7~26_I_pathsel\,
	dataa => \pao|b_rtl_3|wysi_counter|q[2]\,
	datab => \pao|b_rtl_3|wysi_counter|q[3]\,
	datac => \pao|b_rtl_3|wysi_counter|q[1]\,
	datad => \p2|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector7~26_I_modesel\,
	combout => \p2|Selector7~26\);

-- atom is at LC4_E29
\p2|Selector7~25_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector7~25\ = \pao|b_rtl_3|wysi_counter|q[0]\ & \pao|b_rtl_3|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector7~25_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|b_rtl_3|wysi_counter|q[0]\,
	datad => \pao|b_rtl_3|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector7~25_I_modesel\,
	combout => \p2|Selector7~25\);

-- atom is at LC2_E29
\p2|Selector7~27_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector7~27\ = \p2|Selector7~26\ & (\p2|display[6]\ # !\pao|b_rtl_3|wysi_counter|q[2]\) # !\p2|Selector7~26\ & (\pao|b_rtl_3|wysi_counter|q[2]\ & !\p2|Selector7~25\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8CBC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector7~27_I_pathsel\,
	dataa => \p2|display[6]\,
	datab => \p2|Selector7~26\,
	datac => \pao|b_rtl_3|wysi_counter|q[2]\,
	datad => \p2|Selector7~25\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector7~27_I_modesel\,
	combout => \p2|Selector7~27\);

-- atom is at LC4_E34
\p2|Selector0~29_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector0~29\ = \pao|a_rtl_2|wysi_counter|q[2]\ & \pao|a_rtl_2|wysi_counter|q[3]\ # !\pao|a_rtl_2|wysi_counter|q[2]\ & (\pao|a_rtl_2|wysi_counter|q[3]\ & (\p2|display[6]\ # !\pao|a_rtl_2|wysi_counter|q[1]\) # !\pao|a_rtl_2|wysi_counter|q[3]\ & 
-- \pao|a_rtl_2|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "DC9C",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector0~29_I_pathsel\,
	dataa => \pao|a_rtl_2|wysi_counter|q[2]\,
	datab => \pao|a_rtl_2|wysi_counter|q[3]\,
	datac => \pao|a_rtl_2|wysi_counter|q[1]\,
	datad => \p2|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector0~29_I_modesel\,
	combout => \p2|Selector0~29\);

-- atom is at LC1_E34
\p2|Selector0~28_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector0~28\ = \pao|a_rtl_2|wysi_counter|q[0]\ & \pao|a_rtl_2|wysi_counter|q[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F000",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector0~28_I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => \pao|a_rtl_2|wysi_counter|q[0]\,
	datad => \pao|a_rtl_2|wysi_counter|q[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector0~28_I_modesel\,
	combout => \p2|Selector0~28\);

-- atom is at LC8_E34
\p2|Selector0~30_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector0~30\ = \p2|Selector0~29\ & (\p2|display[6]\ # !\pao|a_rtl_2|wysi_counter|q[2]\) # !\p2|Selector0~29\ & (\pao|a_rtl_2|wysi_counter|q[2]\ & !\p2|Selector0~28\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8CBC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector0~30_I_pathsel\,
	dataa => \p2|display[6]\,
	datab => \p2|Selector0~29\,
	datac => \pao|a_rtl_2|wysi_counter|q[2]\,
	datad => \p2|Selector0~28\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector0~30_I_modesel\,
	combout => \p2|Selector0~30\);

-- atom is at LC3_E32
\p2|Selector50~1121_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1121\ = !\p1|o[2]\ & !\p1|o[0]\ & (\p2|Selector0~30\ # \p1|o[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1110",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1121_I_pathsel\,
	dataa => \p1|o[2]\,
	datab => \p1|o[0]\,
	datac => \p2|Selector0~30\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1121_I_modesel\,
	combout => \p2|Selector50~1121\);

-- atom is at LC4_E32
\p2|Selector50~1122_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1122\ = \p2|Selector50~1121\ # !\p1|o[1]\ & \p1|o[0]\ & \p2|Selector7~27\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF40",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1122_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \p1|o[0]\,
	datac => \p2|Selector7~27\,
	datad => \p2|Selector50~1121\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1122_I_modesel\,
	combout => \p2|Selector50~1122\);

-- atom is at LC8_E31
\p2|Selector50~1119_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1119\ = \pao|d_rtl_5|wysi_counter|q[3]\ & (\p2|display[6]\) # !\pao|d_rtl_5|wysi_counter|q[3]\ & (\pao|d_rtl_5|wysi_counter|q[2]\ & (\p2|display[6]\ # !\pao|d_rtl_5|wysi_counter|q[1]\) # !\pao|d_rtl_5|wysi_counter|q[2]\ & 
-- \pao|d_rtl_5|wysi_counter|q[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE14",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1119_I_pathsel\,
	dataa => \pao|d_rtl_5|wysi_counter|q[3]\,
	datab => \pao|d_rtl_5|wysi_counter|q[2]\,
	datac => \pao|d_rtl_5|wysi_counter|q[1]\,
	datad => \p2|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1119_I_modesel\,
	combout => \p2|Selector50~1119\);

-- atom is at LC4_E31
\p2|Selector50~1117_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1117\ = \pao|f_rtl_7|wysi_counter|q[1]\ & \p2|Selector50~1116\ # !\p1|o[1]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F333",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1117_I_pathsel\,
	dataa => VCC,
	datab => \p1|o[1]\,
	datac => \pao|f_rtl_7|wysi_counter|q[1]\,
	datad => \p2|Selector50~1116\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1117_I_modesel\,
	combout => \p2|Selector50~1117\);

-- atom is at LC7_E31
\p2|Selector50~1118_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1118\ = \p1|o[0]\ & (\p2|Selector50~1117\ # !\p2|Selector54~1844\ & \p2|display[6]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1118_I_pathsel\,
	dataa => \p2|Selector54~1844\,
	datab => \p2|display[6]\,
	datac => \p2|Selector50~1117\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1118_I_modesel\,
	combout => \p2|Selector50~1118\);

-- atom is at LC2_E31
\p2|Selector50~1120_I\ : flex10ke_lcell
-- Equation(s):
-- \p2|Selector50~1120\ = \p1|o[2]\ & (\p2|Selector50~1118\ # !\p1|o[1]\ & \p2|Selector50~1119\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "F400",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|Selector50~1120_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \p2|Selector50~1119\,
	datac => \p2|Selector50~1118\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p2|Selector50~1120_I_modesel\,
	combout => \p2|Selector50~1120\);

-- atom is at LC2_E32
\p2|display[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p2|display[6]\ = DFFEA(\p2|Selector50~1122\ # \p2|Selector50~1120\ # \p2|Selector50~1123\ & \p1|o[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFF8",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p2|display[6]~I_pathsel\,
	dataa => \p2|Selector50~1123\,
	datab => \p1|o[1]\,
	datac => \p2|Selector50~1122\,
	datad => \p2|Selector50~1120\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p2|display[6]~I_modesel\,
	regout => \p2|display[6]\);

-- atom is at LC5_B10
\p3|Selector7~95_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector7~95\ = \nao|dd[3]\ & (\p3|display[6]\) # !\nao|dd[3]\ & (\nao|dd[2]\ & (\p3|display[6]\ # !\nao|dd[1]\) # !\nao|dd[2]\ & \nao|dd[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FE14",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector7~95_I_pathsel\,
	dataa => \nao|dd[3]\,
	datab => \nao|dd[2]\,
	datac => \nao|dd[1]\,
	datad => \p3|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector7~95_I_modesel\,
	combout => \p3|Selector7~95\);

-- atom is at LC7_B10
\p3|Selector36~1092_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector36~1092\ = !\p1|o[1]\ & (\p1|o[0]\ # !\p3|always0~131\ & \p3|Selector7~95\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "5510",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector36~1092_I_pathsel\,
	dataa => \p1|o[1]\,
	datab => \p3|always0~131\,
	datac => \p3|Selector7~95\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector36~1092_I_modesel\,
	combout => \p3|Selector36~1092\);

-- atom is at LC4_B30
\p3|Selector0~30_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector0~30\ = \nao|cc[3]\ & \nao|cc[2]\ # !\nao|cc[3]\ & (\nao|cc[2]\ & (!\nao|cc[0]\ # !\nao|cc[1]\) # !\nao|cc[2]\ & \nao|cc[1]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "9CDC",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector0~30_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \nao|cc[2]\,
	datac => \nao|cc[1]\,
	datad => \nao|cc[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector0~30_I_modesel\,
	combout => \p3|Selector0~30\);

-- atom is at LC3_B10
\p3|Selector0~31_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector0~31\ = \nao|cc[3]\ & (\p3|display[6]\ # !\p3|Selector0~30\ & !\nao|cc[1]\) # !\nao|cc[3]\ & \p3|Selector0~30\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "E4E6",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector0~31_I_pathsel\,
	dataa => \nao|cc[3]\,
	datab => \p3|Selector0~30\,
	datac => \p3|display[6]\,
	datad => \nao|cc[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector0~31_I_modesel\,
	combout => \p3|Selector0~31\);

-- atom is at LC4_B10
\p3|Selector36~1091_I\ : flex10ke_lcell
-- Equation(s):
-- \p3|Selector36~1091\ = !\p3|always0~129\ & \p3|Selector0~31\ # !\p1|o[1]\ # !\p1|o[0]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7F77",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|Selector36~1091_I_pathsel\,
	dataa => \p1|o[0]\,
	datab => \p1|o[1]\,
	datac => \p3|always0~129\,
	datad => \p3|Selector0~31\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \p3|Selector36~1091_I_modesel\,
	combout => \p3|Selector36~1091\);

-- atom is at LC6_B10
\p3|display[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p3|display[6]\ = DFFEA(\p1|o[2]\ & (\p3|Selector36~1094\ # \p3|Selector36~1092\) # !\p1|o[2]\ & (\p3|Selector36~1091\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "EFE0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p3|display[6]~I_pathsel\,
	dataa => \p3|Selector36~1094\,
	datab => \p3|Selector36~1092\,
	datac => \p1|o[2]\,
	datad => \p3|Selector36~1091\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p3|display[6]~I_modesel\,
	regout => \p3|display[6]\);

-- atom is at LC1_B21
\mc|Selector9~87_I\ : flex10ke_lcell
-- Equation(s):
-- \mc|Selector9~87\ = \comb_4|mkoo[1]\ & (\p3|display[6]\) # !\comb_4|mkoo[1]\ & \p2|display[6]\

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|Selector9~87_I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[1]\,
	datac => \p2|display[6]\,
	datad => \p3|display[6]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \mc|Selector9~87_I_modesel\,
	combout => \mc|Selector9~87\);

-- atom is at LC8_B21
\mc|diso[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|diso[6]\ = DFFEA(\comb_4|mkoo[0]\ & (\mc|Selector9~87\) # !\comb_4|mkoo[0]\ & \p1|display[6]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FC30",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|diso[6]~I_pathsel\,
	dataa => VCC,
	datab => \comb_4|mkoo[0]\,
	datac => \p1|display[6]\,
	datad => \mc|Selector9~87\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|diso[6]~I_modesel\,
	regout => \mc|diso[6]\);

-- atom is at LC2_C29
\p1|led_dig[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[0]\ = DFFEA(\p1|o[2]\ # !\p1|o[1]\ # !\p1|o[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "CFFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[0]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[2]\,
	datac => \p1|o[0]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[0]~I_modesel\,
	regout => \p1|led_dig[0]\);

-- atom is at LC1_C29
\mc|lego[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[0]\ = DFFEA(\p1|led_dig[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[0]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[0]~I_modesel\,
	regout => \mc|lego[0]\);

-- atom is at LC1_E32
\p1|led_dig[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[1]\ = DFFEA(\p1|o[2]\ # \p1|o[0]\ # !\p1|o[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FCFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[1]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[2]\,
	datac => \p1|o[0]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[1]~I_modesel\,
	regout => \p1|led_dig[1]\);

-- atom is at LC8_E32
\mc|lego[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[1]\ = DFFEA(\p1|led_dig[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[1]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[1]~I_modesel\,
	regout => \mc|lego[1]\);

-- atom is at LC1_E33
\p1|led_dig[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[2]\ = DFFEA(\p1|o[0]\ # \p1|o[1]\ # !\p1|o[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FCFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[2]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[0]\,
	datac => \p1|o[1]\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[2]~I_modesel\,
	regout => \p1|led_dig[2]\);

-- atom is at LC6_E33
\mc|lego[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[2]\ = DFFEA(\p1|led_dig[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[2]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[2]~I_modesel\,
	regout => \mc|lego[2]\);

-- atom is at LC2_E33
\p1|led_dig[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[3]\ = DFFEA(\p1|o[2]\ # \p1|o[1]\ # !\p1|o[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FCFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[3]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[2]\,
	datac => \p1|o[1]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[3]~I_modesel\,
	regout => \p1|led_dig[3]\);

-- atom is at LC7_E33
\mc|lego[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[3]\ = DFFEA(\p1|led_dig[3]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[3]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[3]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[3]~I_modesel\,
	regout => \mc|lego[3]\);

-- atom is at LC3_E31
\p1|led_dig[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[4]\ = DFFEA(\p1|o[0]\ # \p1|o[1]\ # \p1|o[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FFFC",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[4]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[0]\,
	datac => \p1|o[1]\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[4]~I_modesel\,
	regout => \p1|led_dig[4]\);

-- atom is at LC6_E31
\mc|lego[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[4]\ = DFFEA(\p1|led_dig[4]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[4]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[4]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[4]~I_modesel\,
	regout => \mc|lego[4]\);

-- atom is at LC3_C29
\p1|led_dig[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[5]\ = DFFEA(!\p1|o[0]\ # !\p1|o[1]\ # !\p1|o[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3FFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[5]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[2]\,
	datac => \p1|o[1]\,
	datad => \p1|o[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[5]~I_modesel\,
	regout => \p1|led_dig[5]\);

-- atom is at LC4_C29
\mc|lego[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[5]\ = DFFEA(\p1|led_dig[5]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[5]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[5]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[5]~I_modesel\,
	regout => \mc|lego[5]\);

-- atom is at LC4_E33
\p1|led_dig[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[6]\ = DFFEA(\p1|o[0]\ # !\p1|o[1]\ # !\p1|o[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "CFFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[6]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[0]\,
	datac => \p1|o[2]\,
	datad => \p1|o[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[6]~I_modesel\,
	regout => \p1|led_dig[6]\);

-- atom is at LC5_E33
\mc|lego[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[6]\ = DFFEA(\p1|led_dig[6]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[6]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[6]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[6]~I_modesel\,
	regout => \mc|lego[6]\);

-- atom is at LC8_E33
\p1|led_dig[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \p1|led_dig[7]\ = DFFEA(\p1|o[1]\ # !\p1|o[2]\ # !\p1|o[0]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "CFFF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p1|led_dig[7]~I_pathsel\,
	dataa => VCC,
	datab => \p1|o[1]\,
	datac => \p1|o[0]\,
	datad => \p1|o[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p1|led_dig[7]~I_modesel\,
	regout => \p1|led_dig[7]\);

-- atom is at LC3_E33
\mc|lego[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \mc|lego[7]\ = DFFEA(\p1|led_dig[7]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "FF00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \mc|lego[7]~I_pathsel\,
	dataa => VCC,
	datab => VCC,
	datac => VCC,
	datad => \p1|led_dig[7]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \mc|lego[7]~I_modesel\,
	regout => \mc|lego[7]\);

-- atom is at LC8_D30
\p4|r[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|r[0]\ = DFFEA(!\p4|r[0]\, GLOBAL(\fen|f\), , , \nao|linerow\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "00FF",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|r[0]~I_pathsel\,
	dataa => \nao|linerow\,
	datab => VCC,
	datac => VCC,
	datad => \p4|r[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|r[0]~I_modesel\,
	regout => \p4|r[0]\);

-- atom is at LC6_D30
\p4|r[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|r[1]\ = DFFEA(\p4|r[1]\ $ \p4|r[0]\, GLOBAL(\fen|f\), , , \nao|linerow\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "0FF0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|r[1]~I_pathsel\,
	dataa => \nao|linerow\,
	datab => VCC,
	datac => \p4|r[1]\,
	datad => \p4|r[0]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|r[1]~I_modesel\,
	regout => \p4|r[1]\);

-- atom is at LC6_D21
\p4|r[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|r[2]\ = DFFEA(\p4|r[2]\ $ (\p4|r[1]\ & \p4|r[0]\), GLOBAL(\fen|f\), , , \nao|linerow\, , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "true",
--	lut_mask => "3FC0",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|r[2]~I_pathsel\,
	dataa => \nao|linerow\,
	datab => \p4|r[1]\,
	datac => \p4|r[0]\,
	datad => \p4|r[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|r[2]~I_modesel\,
	regout => \p4|r[2]\);

-- atom is at LC6_B5
\nao|always0~544_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~574\ = \nao|ff[3]\ & \ji|f_rtl_1|wysi_counter|q[3]\ & (\nao|cc[3]\ $ !\ji|c_rtl_0|wysi_counter|q[3]\) # !\nao|ff[3]\ & !\ji|f_rtl_1|wysi_counter|q[3]\ & (\nao|cc[3]\ $ !\ji|c_rtl_0|wysi_counter|q[3]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~544_I_pathsel\,
	dataa => \nao|ff[3]\,
	datab => \nao|cc[3]\,
	datac => \ji|c_rtl_0|wysi_counter|q[3]\,
	datad => \ji|f_rtl_1|wysi_counter|q[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~544_I_modesel\,
	cascout => \nao|always0~574\);

-- atom is at LC7_B5
\nao|always0~550_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~550\ = (\nao|cc[0]\ & \ji|c_rtl_0|wysi_counter|q[0]\ & (\nao|ee[1]\ $ !\ji|e[1]\) # !\nao|cc[0]\ & !\ji|c_rtl_0|wysi_counter|q[0]\ & (\nao|ee[1]\ $ !\ji|e[1]\)) & CASCADE(\nao|always0~574\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~550_I_pathsel\,
	dataa => \nao|cc[0]\,
	datab => \nao|ee[1]\,
	datac => \ji|e[1]\,
	datad => \ji|c_rtl_0|wysi_counter|q[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \nao|always0~574\,
	modesel => \nao|always0~550_I_modesel\,
	combout => \nao|always0~550\);

-- atom is at LC1_F23
\nao|always0~542_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~571\ = \nao|dd[3]\ & \ji|d[3]\ & (\nao|dd[2]\ $ !\ji|d[2]\) # !\nao|dd[3]\ & !\ji|d[3]\ & (\nao|dd[2]\ $ !\ji|d[2]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~542_I_pathsel\,
	dataa => \nao|dd[3]\,
	datab => \nao|dd[2]\,
	datac => \ji|d[2]\,
	datad => \ji|d[3]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~542_I_modesel\,
	cascout => \nao|always0~571\);

-- atom is at LC2_F23
\nao|always0~549_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~549\ = (\nao|ff[2]\ & \ji|f_rtl_1|wysi_counter|q[2]\ & (\nao|ff[0]\ $ !\ji|f_rtl_1|wysi_counter|q[0]\) # !\nao|ff[2]\ & !\ji|f_rtl_1|wysi_counter|q[2]\ & (\nao|ff[0]\ $ !\ji|f_rtl_1|wysi_counter|q[0]\)) & CASCADE(\nao|always0~571\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~549_I_pathsel\,
	dataa => \nao|ff[2]\,
	datab => \nao|ff[0]\,
	datac => \ji|f_rtl_1|wysi_counter|q[0]\,
	datad => \ji|f_rtl_1|wysi_counter|q[2]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \nao|always0~571\,
	modesel => \nao|always0~549_I_modesel\,
	combout => \nao|always0~549\);

-- atom is at LC1_B1
\nao|always0~540_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~568\ = \nao|dd[1]\ & \ji|d[1]\ & (\nao|dd[0]\ $ !\ji|d[0]\) # !\nao|dd[1]\ & !\ji|d[1]\ & (\nao|dd[0]\ $ !\ji|d[0]\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "none",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~540_I_pathsel\,
	dataa => \nao|dd[1]\,
	datab => \nao|dd[0]\,
	datac => \ji|d[0]\,
	datad => \ji|d[1]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => VCC,
	modesel => \nao|always0~540_I_modesel\,
	cascout => \nao|always0~568\);

-- atom is at LC2_B1
\nao|always0~548_I\ : flex10ke_lcell
-- Equation(s):
-- \nao|always0~548\ = (\nao|ee[0]\ & \ji|e[0]\ & (\nao|ff[1]\ $ !\ji|f_rtl_1|wysi_counter|q[1]\) # !\nao|ee[0]\ & !\ji|e[0]\ & (\nao|ff[1]\ $ !\ji|f_rtl_1|wysi_counter|q[1]\)) & CASCADE(\nao|always0~568\)

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8241",
--	operation_mode => "normal",
--	output_mode => "comb_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|always0~548_I_pathsel\,
	dataa => \nao|ee[0]\,
	datab => \nao|ff[1]\,
	datac => \ji|f_rtl_1|wysi_counter|q[1]\,
	datad => \ji|e[0]\,
	aclr => GND,
	aload => GND,
	clk => GND,
	cin => GND,
	cascin => \nao|always0~568\,
	modesel => \nao|always0~548_I_modesel\,
	combout => \nao|always0~548\);

-- atom is at LC3_B5
\nao|linerow~I\ : flex10ke_lcell
-- Equation(s):
-- \nao|linerow\ = DFFEA(\nao|always0~551\ & \nao|always0~550\ & \nao|always0~549\ & \nao|always0~548\, \fen|f1Hz\, , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \nao|linerow~I_pathsel\,
	dataa => \nao|always0~551\,
	datab => \nao|always0~550\,
	datac => \nao|always0~549\,
	datad => \nao|always0~548\,
	aclr => GND,
	aload => GND,
	clk => \fen|f1Hz\,
	cin => GND,
	cascin => VCC,
	modesel => \nao|linerow~I_modesel\,
	regout => \nao|linerow\);

-- atom is at LC7_D30
\p4|line[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[0]\ = DFFEA(!\p4|r[2]\ & !\p4|r[1]\ & !\p4|r[0]\ & \nao|linerow\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "0100",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[0]~I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[1]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[0]~I_modesel\,
	regout => \p4|line[0]\);

-- atom is at LC6_D31
\p4|line[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[1]\ = DFFEA(!\p4|r[2]\ & !\p4|r[1]\ & \p4|r[0]\ & \nao|linerow\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[1]~I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[1]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[1]~I_modesel\,
	regout => \p4|line[1]\);

-- atom is at LC5_D30
\p4|line[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[2]\ = DFFEA(!\p4|r[2]\ & !\p4|r[0]\ & \p4|r[1]\ & \nao|linerow\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[2]~I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[0]\,
	datac => \p4|r[1]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[2]~I_modesel\,
	regout => \p4|line[2]\);

-- atom is at LC4_D30
\p4|line[3]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[3]\ = DFFEA(!\p4|r[2]\ & \p4|r[0]\ & \nao|linerow\ & \p4|r[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[3]~I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[0]\,
	datac => \nao|linerow\,
	datad => \p4|r[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[3]~I_modesel\,
	regout => \p4|line[3]\);

-- atom is at LC7_D21
\p4|line[4]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[4]\ = DFFEA(!\p4|r[0]\ & !\p4|r[1]\ & \p4|r[2]\ & \nao|linerow\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "1000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[4]~I_pathsel\,
	dataa => \p4|r[0]\,
	datab => \p4|r[1]\,
	datac => \p4|r[2]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[4]~I_modesel\,
	regout => \p4|line[4]\);

-- atom is at LC1_D30
\p4|line[5]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[5]\ = DFFEA(!\p4|r[1]\ & \p4|r[2]\ & \p4|r[0]\ & \nao|linerow\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[5]~I_pathsel\,
	dataa => \p4|r[1]\,
	datab => \p4|r[2]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[5]~I_modesel\,
	regout => \p4|line[5]\);

-- atom is at LC2_D30
\p4|line[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[6]\ = DFFEA(!\p4|r[0]\ & \p4|r[2]\ & \nao|linerow\ & \p4|r[1]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "4000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[6]~I_pathsel\,
	dataa => \p4|r[0]\,
	datab => \p4|r[2]\,
	datac => \nao|linerow\,
	datad => \p4|r[1]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[6]~I_modesel\,
	regout => \p4|line[6]\);

-- atom is at LC3_D21
\p4|line[7]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|line[7]\ = DFFEA(\p4|r[0]\ & \nao|linerow\ & \p4|r[1]\ & \p4|r[2]\, GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8000",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|line[7]~I_pathsel\,
	dataa => \p4|r[0]\,
	datab => \nao|linerow\,
	datac => \p4|r[1]\,
	datad => \p4|r[2]\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|line[7]~I_modesel\,
	regout => \p4|line[7]\);

-- atom is at LC1_D21
\p4|row[0]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[0]\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ & \p4|r[0]\ & \p4|r[1]\ # !\p4|r[2]\ & !\p4|r[0]\ & !\p4|r[1]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8100",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[0]~I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[0]\,
	datac => \p4|r[1]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[0]~I_modesel\,
	regout => \p4|row[0]\);

-- atom is at LC4_D21
\p4|row[1]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[1]\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ & (!\p4|r[1]\ # !\p4|r[0]\) # !\p4|r[2]\ & (\p4|r[0]\ # \p4|r[1]\)), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7E00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[1]~I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[0]\,
	datac => \p4|r[1]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[1]~I_modesel\,
	regout => \p4|row[1]\);

-- atom is at LC3_D24
\p4|row[2]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[2]\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ $ \p4|r[0]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3C00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[2]~I_pathsel\,
	dataa => VCC,
	datab => \p4|r[2]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[2]~I_modesel\,
	regout => \p4|row[2]\);

-- atom is at LC7_D24
\p4|row[1]~331_I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[1]~331\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ & (!\p4|r[1]\ # !\p4|r[0]\) # !\p4|r[2]\ & (\p4|r[0]\ # \p4|r[1]\)), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "7E00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[1]~331_I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[0]\,
	datac => \p4|r[1]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[1]~331_I_modesel\,
	regout => \p4|row[1]~331\);

-- atom is at LC5_D21
\p4|row[2]~332_I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[2]~332\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ $ \p4|r[0]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3C00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[2]~332_I_pathsel\,
	dataa => VCC,
	datab => \p4|r[2]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[2]~332_I_modesel\,
	regout => \p4|row[2]~332\);

-- atom is at LC2_D24
\p4|row[2]~333_I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[2]~333\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ $ \p4|r[0]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3C00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[2]~333_I_pathsel\,
	dataa => VCC,
	datab => \p4|r[2]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[2]~333_I_modesel\,
	regout => \p4|row[2]~333\);

-- atom is at LC3_D30
\p4|row[6]~I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[6]\ = DFFEA(\nao|linerow\ & (\p4|r[1]\ $ \p4|r[0]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "3C00",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[6]~I_pathsel\,
	dataa => VCC,
	datab => \p4|r[1]\,
	datac => \p4|r[0]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[6]~I_modesel\,
	regout => \p4|row[6]\);

-- atom is at LC2_D21
\p4|row[0]~334_I\ : flex10ke_lcell
-- Equation(s):
-- \p4|row[0]~334\ = DFFEA(\nao|linerow\ & (\p4|r[2]\ & \p4|r[0]\ & \p4|r[1]\ # !\p4|r[2]\ & !\p4|r[0]\ & !\p4|r[1]\), GLOBAL(\fen|f\), , , , , )

-- pragma translate_off
-- GENERIC MAP (
--	clock_enable_mode => "false",
--	lut_mask => "8100",
--	operation_mode => "normal",
--	output_mode => "reg_only",
--	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	pathsel => \p4|row[0]~334_I_pathsel\,
	dataa => \p4|r[2]\,
	datab => \p4|r[0]\,
	datac => \p4|r[1]\,
	datad => \nao|linerow\,
	aclr => GND,
	aload => GND,
	clk => \fen|f\,
	cin => GND,
	cascin => VCC,
	modesel => \p4|row[0]~334_I_modesel\,
	regout => \p4|row[0]~334\);

-- atom is at PIN_67
\dis[0]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[0]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[0]~I_modesel\,
	padio => ww_dis(0));

-- atom is at PIN_65
\dis[1]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[1]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[1]~I_modesel\,
	padio => ww_dis(1));

-- atom is at PIN_64
\dis[2]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[2]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[2]~I_modesel\,
	padio => ww_dis(2));

-- atom is at PIN_63
\dis[3]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[3]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[3]~I_modesel\,
	padio => ww_dis(3));

-- atom is at PIN_68
\dis[4]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[4]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[4]~I_modesel\,
	padio => ww_dis(4));

-- atom is at PIN_69
\dis[5]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[5]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[5]~I_modesel\,
	padio => ww_dis(5));

-- atom is at PIN_70
\dis[6]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|diso[6]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[6]~I_modesel\,
	padio => ww_dis(6));

-- atom is at PIN_71
\dis[7]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \dis[7]~I_modesel\,
	padio => ww_dis(7));

-- atom is at PIN_61
\leg[0]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[0]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[0]~I_modesel\,
	padio => ww_leg(0));

-- atom is at PIN_58
\leg[1]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[1]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[1]~I_modesel\,
	padio => ww_leg(1));

-- atom is at PIN_56
\leg[2]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[2]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[2]~I_modesel\,
	padio => ww_leg(2));

-- atom is at PIN_55
\leg[3]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[3]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[3]~I_modesel\,
	padio => ww_leg(3));

-- atom is at PIN_57
\leg[4]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[4]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[4]~I_modesel\,
	padio => ww_leg(4));

-- atom is at PIN_60
\leg[5]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[5]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[5]~I_modesel\,
	padio => ww_leg(5));

-- atom is at PIN_39
\leg[6]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[6]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[6]~I_modesel\,
	padio => ww_leg(6));

-- atom is at PIN_37
\leg[7]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \mc|lego[7]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \leg[7]~I_modesel\,
	padio => ww_leg(7));

-- atom is at PIN_31
\line[0]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[0]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[0]~I_modesel\,
	padio => ww_line(0));

-- atom is at PIN_30
\line[1]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[1]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[1]~I_modesel\,
	padio => ww_line(1));

-- atom is at PIN_29
\line[2]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[2]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[2]~I_modesel\,
	padio => ww_line(2));

-- atom is at PIN_28
\line[3]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[3]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[3]~I_modesel\,
	padio => ww_line(3));

-- atom is at PIN_24
\line[4]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[4]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[4]~I_modesel\,
	padio => ww_line(4));

-- atom is at PIN_25
\line[5]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[5]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[5]~I_modesel\,
	padio => ww_line(5));

-- atom is at PIN_26
\line[6]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[6]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[6]~I_modesel\,
	padio => ww_line(6));

-- atom is at PIN_27
\line[7]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|line[7]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \line[7]~I_modesel\,
	padio => ww_line(7));

-- atom is at PIN_36
\row[0]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[0]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[0]~I_modesel\,
	padio => ww_row(0));

-- atom is at PIN_38
\row[1]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[1]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[1]~I_modesel\,
	padio => ww_row(1));

-- atom is at PIN_18
\row[2]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[2]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[2]~I_modesel\,
	padio => ww_row(2));

-- atom is at PIN_15
\row[3]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[1]~331\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[3]~I_modesel\,
	padio => ww_row(3));

-- atom is at PIN_14
\row[4]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[2]~332\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[4]~I_modesel\,
	padio => ww_row(4));

-- atom is at PIN_12
\row[5]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[2]~333\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[5]~I_modesel\,
	padio => ww_row(5));

-- atom is at PIN_13
\row[6]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[6]\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[6]~I_modesel\,
	padio => ww_row(6));

-- atom is at PIN_17
\row[7]~I\ : flex10ke_io
-- pragma translate_off
-- GENERIC MAP (
--	feedback_mode => "none",
--	operation_mode => "output",
--	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \p4|row[0]~334\,
	clk => GND,
	ena => VCC,
	aclr => GND,
	oe => VCC,
	modesel => \row[7]~I_modesel\,
	padio => ww_row(7));
END structure;


