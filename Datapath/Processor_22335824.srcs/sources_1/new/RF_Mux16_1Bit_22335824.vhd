----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.10.2023 09:07:58
-- Design Name: 
-- Module Name: RF_Mux16_1Bit_22335824 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Mux16_1Bit_22335824 is
    Port ( I: in std_logic_vector (15 downto 0);
           S: in std_logic_vector (3 downto 0);
           Y: out std_logic
           );
end RF_Mux16_1Bit_22335824;

architecture Behavioral of RF_Mux16_1Bit_22335824 is

signal S0_not, S1_not, S2_not, S3_not : std_logic;

signal and00, and01, and02, and03 : std_logic; -- s3 and s2

signal and10, and11, and12, and13 : std_logic;
signal and14, and15, and16, and17 : std_logic; -- s32 and s1 

signal and20, and21, and22, and23 : std_logic;
signal and24, and25, and26, and27 : std_logic;
signal and28, and29, and210, and211: std_logic;
signal and212, and213, and214, and215 : std_logic;--s321 and s0

signal and30, and31, and32, and33 : std_logic;
signal and34, and35, and36, and37 : std_logic;
signal and38, and39, and310, and311 : std_logic;
signal and312, and313, and314, and315 : std_logic; --s3210 and I(x)

signal or00, or01, or02, or03 : std_logic;
signal or04, or05, or06, or07 : std_logic;

signal or10, or11, or12, or13 : std_logic;

signal or20, or21 : std_logic;

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

and00 <= S3_not and S2_not after AND_gate_delay;
and01 <= S3_not and S(2) after AND_gate_delay;
and02 <= S(3) and S2_not after AND_gate_delay;
and03 <= S(3) and S(2) after AND_gate_delay;

and10 <= and00 and S1_not after AND_gate_delay;
and11 <= and00 and S(1) after AND_gate_delay;
and12 <= and01 and S1_not after AND_gate_delay;
and13 <= and01 and S(1) after AND_gate_delay;
and14 <= and02 and S1_not after AND_gate_delay;
and15 <= and02 and S(1) after AND_gate_delay;
and16 <= and03 and S1_not after AND_gate_delay;
and17 <= and03 and S(1) after AND_gate_delay;

and20 <= and10 and S0_not after AND_gate_delay;
and21 <= and10 and S(0) after AND_gate_delay;
and22 <= and11 and S0_not after AND_gate_delay;
and23 <= and11 and S(0) after AND_gate_delay;
and24 <= and12 and S0_not after AND_gate_delay;
and25 <= and12 and S(0) after AND_gate_delay;
and26 <= and13 and S0_not after AND_gate_delay;
and27 <= and13 and S(0) after AND_gate_delay;
and28 <= and14 and S0_not after AND_gate_delay;
and29 <= and14 and S(0) after AND_gate_delay;
and210 <= and15 and S0_not after AND_gate_delay;
and211 <= and15 and S(0) after AND_gate_delay;
and212 <= and16 and S0_not after AND_gate_delay;
and213 <= and16 and S(0) after AND_gate_delay;
and214 <= and17 and S0_not after AND_gate_delay;
and215 <= and17 and S(0) after AND_gate_delay;

and30 <= and20 and I(0) after AND_gate_delay;
and31 <= and21 and I(1) after AND_gate_delay;
and32 <= and22 and I(2) after AND_gate_delay;
and33 <= and23 and I(3) after AND_gate_delay;
and34 <= and24 and I(4) after AND_gate_delay;
and35 <= and25 and I(5) after AND_gate_delay;
and36 <= and26 and I(6) after AND_gate_delay;
and37 <= and27 and I(7) after AND_gate_delay;
and38 <= and28 and I(8) after AND_gate_delay;
and39 <= and29 and I(9) after AND_gate_delay;
and310 <= and210 and I(10) after AND_gate_delay;
and311 <= and211 and I(11) after AND_gate_delay;
and312 <= and212 and I(12) after AND_gate_delay;
and313 <= and213 and I(13) after AND_gate_delay;
and314 <= and214 and I(14) after AND_gate_delay;
and315 <= and215 and I(15) after AND_gate_delay;

or00 <= and30 or and31 after OR_gate_delay;
or01 <= and32 or and33 after OR_gate_delay;
or02 <= and34 or and35 after OR_gate_delay;
or03 <= and36 or and37 after OR_gate_delay;
or04 <= and38 or and39 after OR_gate_delay;
or05 <= and310 or and311 after OR_gate_delay;
or06 <= and312 or and313 after OR_gate_delay;
or07 <= and314 or and315 after OR_gate_delay;

or10 <= or00 or or01 after OR_gate_delay;
or11 <= or02 or or03 after OR_gate_delay;
or12 <= or04 or or05 after OR_gate_delay;
or13 <= or06 or or07 after OR_gate_delay;

or20 <= or10 or or11 after OR_gate_delay;
or21 <= or12 or or13 after OR_gate_delay;

Y <= or20 or or21 after OR_gate_delay;


end Behavioral;
