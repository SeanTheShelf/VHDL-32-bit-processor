----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 21:12:57
-- Design Name: 
-- Module Name: DP_ZeroDetection_22335824 - Behavioral
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


entity DP_ZeroDetection_22335824 is
        Port( MuxF_to_F : in std_logic_vector(31 downto 0);
              Z : out std_logic
              );
end DP_ZeroDetection_22335824;

architecture Behavioral of DP_ZeroDetection_22335824 is

signal or00, or01, or02, or03, or04, or05, or06, or07 : std_logic;
signal or08, or09, or010, or011, or012, or013, or014, or015 : std_logic;

signal or10, or11, or12, or13, or14, or15, or16, or17 : std_logic;

signal or20, or21, or22, or23 : std_logic;

signal or30, or31 : std_logic;

signal or40 : std_logic;

constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

or00 <= MuxF_to_F(0) or MuxF_to_F(1) after OR_gate_delay;
or01 <= MuxF_to_F(2) or MuxF_to_F(3) after OR_gate_delay;
or02 <= MuxF_to_F(4) or MuxF_to_F(5) after OR_gate_delay;
or03 <= MuxF_to_F(6) or MuxF_to_F(7) after OR_gate_delay;
or04 <= MuxF_to_F(8) or MuxF_to_F(9) after OR_gate_delay;
or05 <= MuxF_to_F(10) or MuxF_to_F(11) after OR_gate_delay;
or06 <= MuxF_to_F(12) or MuxF_to_F(13) after OR_gate_delay;
or07 <= MuxF_to_F(14) or MuxF_to_F(15) after OR_gate_delay;
or08 <= MuxF_to_F(16) or MuxF_to_F(17) after OR_gate_delay;
or09 <= MuxF_to_F(18) or MuxF_to_F(19) after OR_gate_delay;
or010 <= MuxF_to_F(20) or MuxF_to_F(21) after OR_gate_delay;
or011 <= MuxF_to_F(22) or MuxF_to_F(23) after OR_gate_delay;
or012 <= MuxF_to_F(24) or MuxF_to_F(25) after OR_gate_delay;
or013 <= MuxF_to_F(26) or MuxF_to_F(27) after OR_gate_delay;
or014 <= MuxF_to_F(28) or MuxF_to_F(29) after OR_gate_delay;
or015 <= MuxF_to_F(30) or MuxF_to_F(31) after OR_gate_delay;

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

or40 <= or30 or or31 after OR_gate_delay;

Z <= not or40 after NOT_gate_delay;

end Behavioral;
