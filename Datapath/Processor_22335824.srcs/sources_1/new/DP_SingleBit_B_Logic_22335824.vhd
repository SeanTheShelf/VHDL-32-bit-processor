----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 12:34:24
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_22335824 - Behavioral
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


entity DP_SingleBit_B_Logic_22335824 is
    Port ( B : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           Y : out std_logic
           );
end DP_SingleBit_B_Logic_22335824;

architecture Behavioral of DP_SingleBit_B_Logic_22335824 is

    signal B_Not : std_logic;
    
    signal bANDs0, notbANDs1 : std_logic;
    
constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

B_Not <= not B after NOT_gate_delay;

bANDs0 <= B and S0 after AND_gate_delay;
notbANDs1 <= B_Not and S1 after AND_gate_delay;

Y <= bANDs0 or notbANDs1 after OR_gate_delay;


end Behavioral;
