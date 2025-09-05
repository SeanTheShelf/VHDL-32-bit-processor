----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 03.10.2023 11:31:59
-- Design Name: 
-- Module Name: RF_Mux32_1Bit_22335824 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity RF_Mux32_1Bit_22335824 is
    Port ( I: in std_logic_vector (31 downto 0);
           S: in std_logic_vector (4 downto 0);
           Y: out std_logic
           );
end RF_Mux32_1Bit_22335824;

architecture Behavioral of RF_Mux32_1Bit_22335824 is

signal S0_not, S1_not, S2_not, S3_not, S4_not : std_logic;

signal and00, and01, and02, and03 : std_logic; -- s4 and s3

signal and10, and11, and12, and13 : std_logic;
signal and14, and15, and16, and17 : std_logic; -- s43 and s2

signal and20, and21, and22, and23 : std_logic;
signal and24, and25, and26, and27 : std_logic;
signal and28, and29, and210, and211: std_logic;
signal and212, and213, and214, and215 : std_logic;--s432 and s1

signal and30, and31, and32, and33 : std_logic;
signal and34, and35, and36, and37 : std_logic;
signal and38, and39, and310, and311 : std_logic;
signal and312, and313, and314, and315 : std_logic;
signal and316, and317, and318, and319 : std_logic;
signal and320, and321, and322, and323 : std_logic;
signal and324, and325, and326, and327 : std_logic;
signal and328, and329, and330, and331 : std_logic; --s4321 and 0

signal and40, and41, and42, and43 : std_logic;
signal and44, and45, and46, and47 : std_logic;
signal and48, and49, and410, and411 : std_logic;
signal and412, and413, and414, and415 : std_logic;
signal and416, and417, and418, and419 : std_logic;
signal and420, and421, and422, and423 : std_logic;
signal and424, and425, and426, and427 : std_logic;
signal and428, and429, and430, and431 : std_logic; --s43210 and I(x)

signal or00, or01, or02, or03 : std_logic;
signal or04, or05, or06, or07 : std_logic;
signal or08, or09, or010, or011 : std_logic;
signal or012, or013, or014, or015 : std_logic;

signal or10, or11, or12, or13 : std_logic;
signal or14, or15, or16, or17 : std_logic;

signal or20, or21, or22, or23 : std_logic;

signal or30, or31 : std_logic;

constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

S0_not <= not S(0) after NOT_gate_delay;
S1_not <= not S(1) after NOT_gate_delay;
S2_not <= not S(2) after NOT_gate_delay;
S3_not <= not S(3) after NOT_gate_delay;
S4_not <= not S(4) after NOT_gate_delay;

and00 <= S4_not and S3_not after AND_gate_delay;
and01 <= S4_not and S(3) after AND_gate_delay;
and02 <= S(4) and S3_not after AND_gate_delay;
and03 <= S(4) and S(3) after AND_gate_delay;

and10 <= and00 and S2_not after AND_gate_delay;
and11 <= and00 and S(2) after AND_gate_delay;
and12 <= and01 and S2_not after AND_gate_delay;
and13 <= and01 and S(2) after AND_gate_delay;
and14 <= and02 and S2_not after AND_gate_delay;
and15 <= and02 and S(2) after AND_gate_delay;
and16 <= and03 and S2_not after AND_gate_delay;
and17 <= and03 and S(2) after AND_gate_delay;

and20 <= and10 and S1_not after AND_gate_delay;
and21 <= and10 and S(1) after AND_gate_delay;
and22 <= and11 and S1_not after AND_gate_delay;
and23 <= and11 and S(1) after AND_gate_delay;
and24 <= and12 and S1_not after AND_gate_delay;
and25 <= and12 and S(1) after AND_gate_delay;
and26 <= and13 and S1_not after AND_gate_delay;
and27 <= and13 and S(1) after AND_gate_delay;
and28 <= and14 and S1_not after AND_gate_delay;
and29 <= and14 and S(1) after AND_gate_delay;
and210 <= and15 and S1_not after AND_gate_delay;
and211 <= and15 and S(1) after AND_gate_delay;
and212 <= and16 and S1_not after AND_gate_delay;
and213 <= and16 and S(1) after AND_gate_delay;
and214 <= and17 and S1_not after AND_gate_delay;
and215 <= and17 and S(1) after AND_gate_delay;

and30 <= and20 and S0_not after AND_gate_delay;
and31 <= and20 and S(0) after AND_gate_delay;
and32 <= and21 and S0_not after AND_gate_delay;
and33 <= and21 and S(0) after AND_gate_delay;
and34 <= and22 and S0_not after AND_gate_delay;
and35 <= and22 and S(0) after AND_gate_delay;
and36 <= and23 and S0_not after AND_gate_delay;
and37 <= and23 and S(0) after AND_gate_delay;
and38 <= and24 and S0_not after AND_gate_delay;
and39 <= and24 and S(0) after AND_gate_delay;
and310 <= and25 and S0_not after AND_gate_delay;
and311 <= and25 and S(0) after AND_gate_delay;
and312 <= and26 and S0_not after AND_gate_delay;
and313 <= and26 and S(0) after AND_gate_delay;
and314 <= and27 and S0_not after AND_gate_delay;
and315 <= and27 and S(0) after AND_gate_delay;
and316 <= and28 and S0_not after AND_gate_delay;
and317 <= and28 and S(0) after AND_gate_delay;
and318 <= and29 and S0_not after AND_gate_delay;
and319 <= and29 and S(0) after AND_gate_delay;
and320 <= and210 and S0_not after AND_gate_delay;
and321 <= and210 and S(0) after AND_gate_delay;
and322 <= and211 and S0_not after AND_gate_delay;
and323 <= and211 and S(0) after AND_gate_delay;
and324 <= and212 and S0_not after AND_gate_delay;
and325 <= and212 and S(0) after AND_gate_delay;
and326 <= and213 and S0_not after AND_gate_delay;
and327 <= and213 and S(0) after AND_gate_delay;
and328 <= and214 and S0_not after AND_gate_delay;
and329 <= and214 and S(0) after AND_gate_delay;
and330 <= and215 and S0_not after AND_gate_delay;
and331 <= and215 and S(0) after AND_gate_delay;

and40 <= and30 and I(0) after AND_gate_delay;
and41 <= and31 and I(1) after AND_gate_delay;
and42 <= and32 and I(2) after AND_gate_delay;
and43 <= and33 and I(3) after AND_gate_delay;
and44 <= and34 and I(4) after AND_gate_delay;
and45 <= and35 and I(5) after AND_gate_delay;
and46 <= and36 and I(6) after AND_gate_delay;
and47 <= and37 and I(7) after AND_gate_delay;
and48 <= and38 and I(8) after AND_gate_delay;
and49 <= and39 and I(9) after AND_gate_delay;
and410 <= and310 and I(10) after AND_gate_delay;
and411 <= and311 and I(11) after AND_gate_delay;
and412 <= and312 and I(12) after AND_gate_delay;
and413 <= and313 and I(13) after AND_gate_delay;
and414 <= and314 and I(14) after AND_gate_delay;
and415 <= and315 and I(15) after AND_gate_delay;
and416 <= and316 and I(16) after AND_gate_delay;
and417 <= and317 and I(17) after AND_gate_delay;
and418 <= and318 and I(18) after AND_gate_delay;
and419 <= and319 and I(19) after AND_gate_delay;
and420 <= and320 and I(20) after AND_gate_delay;
and421 <= and321 and I(21) after AND_gate_delay;
and422 <= and322 and I(22) after AND_gate_delay;
and423 <= and323 and I(23) after AND_gate_delay;
and424 <= and324 and I(24) after AND_gate_delay;
and425 <= and325 and I(25) after AND_gate_delay;
and426 <= and326 and I(26) after AND_gate_delay;
and427 <= and327 and I(27) after AND_gate_delay;
and428 <= and328 and I(28) after AND_gate_delay;
and429 <= and329 and I(29) after AND_gate_delay;
and430 <= and330 and I(30) after AND_gate_delay;
and431 <= and331 and I(31) after AND_gate_delay;

or00 <= and40 or and41 after OR_gate_delay;
or01 <= and42 or and43 after OR_gate_delay;
or02 <= and44 or and45 after OR_gate_delay;
or03 <= and46 or and47 after OR_gate_delay;
or04 <= and48 or and49 after OR_gate_delay;
or05 <= and410 or and411 after OR_gate_delay;
or06 <= and412 or and413 after OR_gate_delay;
or07 <= and414 or and415 after OR_gate_delay;
or08 <= and416 or and417 after OR_gate_delay;
or09 <= and418 or and419 after OR_gate_delay;
or010 <= and420 or and421 after OR_gate_delay;
or011 <= and422 or and423 after OR_gate_delay;
or012 <= and424 or and425 after OR_gate_delay;
or013 <= and426 or and427 after OR_gate_delay;
or014 <= and428 or and429 after OR_gate_delay;
or015 <= and430 or and431 after OR_gate_delay;

or10 <= or00 or or01 after OR_gate_delay;
or11 <= or02 or or03 after OR_gate_delay;
or12 <= or04 or or05 after OR_gate_delay;
or13 <= or06 or or07 after OR_gate_delay;
or14 <= or08 or or09 after OR_gate_delay;
or15 <= or010 or or011 after OR_gate_delay;
or16 <= or012 or or013 after OR_gate_delay;
or17 <= or014 or or015 after OR_gate_delay;

or20 <= or10 or or11 after OR_gate_delay;
or21 <= or12 or or13 after OR_gate_delay;
or22 <= or14 or or15 after OR_gate_delay;
or23 <= or16 or or17 after OR_gate_delay;

or30 <= or20 or or21 after OR_gate_delay;
or31 <= or22 or or23 after OR_gate_delay;

Y <= or30 or or31 after OR_gate_delay;


end Behavioral;
