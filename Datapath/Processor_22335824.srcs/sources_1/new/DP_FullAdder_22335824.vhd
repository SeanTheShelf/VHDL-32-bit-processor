----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 01.11.2023 20:05:06
-- Design Name: 
-- Module Name: DP_FullAdder_22335824 - Behavioral
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


entity DP_FullAdder_22335824 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC;
           C_OUT : out STD_LOGIC);
end DP_FullAdder_22335824;

architecture Behavioral of DP_FullAdder_22335824 is

    Signal S_XOR1_to_XOR2, S_AND1_OR, S_AND2_OR : STD_LOGIC;

    --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    S_XOR1_to_XOR2 <= A XOR B after XOR_gate_delay;
    S_AND1_OR <= A AND B after AND_gate_delay;
    S_AND2_OR <= S_XOR1_to_XOR2 AND C_IN after AND_gate_delay;

    SUM <= S_XOR1_to_XOR2 XOR C_IN after XOR_gate_delay;
    C_OUT <= S_AND1_OR OR S_AND2_OR after OR_gate_delay;


end Behavioral;
