----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 17:03:59
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_22335824 - Behavioral
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

entity DP_ShifterCFlagMux2_1Bit_22335824 is
        Port ( I0: in std_logic;
               I1: in std_logic;
               S1: in std_logic;
               S2: in std_logic;
               Y: out std_logic
               );
end DP_ShifterCFlagMux2_1Bit_22335824;

architecture Behavioral of DP_ShifterCFlagMux2_1Bit_22335824 is

signal notS1, notS2 : std_logic;
signal and00, and01, and02, and03 : std_logic;

constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    notS1 <= not S1 after NOT_gate_delay;
    notS2 <= not S2 after NOT_gate_delay;
    
    and00 <= S2 and notS1 after AND_gate_delay;
    and01 <= notS2 and S1 after AND_gate_delay;
    
    and02 <= and00 and I1 after AND_gate_delay;
    and03 <= and01 and I0 after AND_gate_delay;
    
    Y <= and02 or and03 after OR_gate_delay;


end Behavioral;
