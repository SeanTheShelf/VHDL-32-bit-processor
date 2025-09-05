----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 26.11.2023 14:57:43
-- Design Name: 
-- Module Name: CPU_DFlipFlop_Qnot_22335824 - Behavioral
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

entity CPU_DFlipFlop_Qnot_22335824 is
    Port(D : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         Q_not : out std_logic;
         Q : out std_logic
         );
end CPU_DFlipFlop_Qnot_22335824;

architecture Behavioral of CPU_DFlipFlop_Qnot_22335824 is

    signal Z, R0, R, L, Reset_not : std_logic;
    signal Y0, Y, X0, K, S0, S, M : std_logic;
    signal Q_t0, Q_not_t0, Q_t, Q_not_t : std_logic;

    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    Z <= S and Clock after AND_gate_delay;
    R0 <= Z and Y after AND_gate_delay;
    R <= not R0 after NOT_gate_delay;
    L <= R and D after AND_gate_delay;
    Reset_not <= not Reset after NOT_gate_delay;
    Y0 <= L and Reset_not after AND_gate_delay;
    Y <= not Y0 after NOT_gate_delay;
    X0 <= Y and S after AND_gate_delay;
    K <= (not X0) and Clock after AND_gate_delay;
    S0 <= K and Reset_not after AND_gate_delay;
    S <= not S0 after NOT_gate_delay;
    M <= R and Q_t after AND_gate_delay;
    Q_t0 <= S and Q_not_t after AND_gate_delay;
    Q_not_t0 <= M and Reset_not after AND_gate_delay;
    Q_not_t <= not Q_not_t0 after NOT_gate_delay;
    Q_t <= not Q_t0 after NOT_gate_delay;
    
    Q_not <= Q_not_t;
    Q <= Q_t;


end Behavioral;
