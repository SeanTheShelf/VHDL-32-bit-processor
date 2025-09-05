----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 21:41:51
-- Design Name: 
-- Module Name: DP_CFlagMux2_1Bit_22335824 - Behavioral
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

entity DP_CFlagMux2_1Bit_22335824 is
        Port( C_ALU : in std_logic;
              C_Shift : in std_logic;
              FS4 : in std_logic;
              C : out std_logic);
end DP_CFlagMux2_1Bit_22335824;

architecture Behavioral of DP_CFlagMux2_1Bit_22335824 is

signal FS4_not : std_logic;
signal and00, and01 : std_logic;

constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

FS4_not <= not FS4 after NOT_gate_delay;

and00 <= C_ALU and FS4_not after AND_gate_delay;
and01 <= C_Shift and FS4 after AND_gate_delay;

C <= and00 or and01 after OR_gate_delay;


end Behavioral;
