----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 26.11.2023 15:27:17
-- Design Name: 
-- Module Name: CPU_JKFlipFlop_22335824 - Behavioral
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


entity CPU_JKFlipFlop_22335824 is
    Port(K : in std_logic;
         J : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         Q : out std_logic;
         Q_not : out std_logic
         );
end CPU_JKFlipFlop_22335824;

architecture Behavioral of CPU_JKFlipFlop_22335824 is

    component CPU_DFlipFlop_Qnot_22335824
    Port(D : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         Q_not : out std_logic;
         Q : out std_logic
         );
    end component;
    
    signal notK, K_notandQ_in, JandQ_not_in, OR_to_D, Q_t, Q_not_t : std_logic;
    
    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    DFlipFlop: CPU_DFlipFlop_Qnot_22335824 port map(
    Clock => Clock, D => OR_to_D, Reset => Reset, Q => Q_t, Q_not => Q_not_t
    );
    
    notK <= not K after NOT_gate_delay;
    K_notandQ_in <= notK and Q_t after AND_gate_delay;
    JandQ_not_in <= J and Q_not_t after AND_gate_delay;
    OR_to_D <= JandQ_not_in or K_notandQ_in after OR_gate_delay;
    Q <= Q_t;
    Q_not <= Q_not_t;


end Behavioral;
