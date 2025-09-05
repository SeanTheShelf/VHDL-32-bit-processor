----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 14:14:53
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_22335824 - Behavioral
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


entity DP_SingleBit_LogicCircuit_22335824 is
        port( A : in std_logic;
              B : in std_logic;
              S0 : in std_logic;
              S1 : in std_logic;
              G : out std_logic
              );
end DP_SingleBit_LogicCircuit_22335824;

architecture Behavioral of DP_SingleBit_LogicCircuit_22335824 is

    signal ANDin, ORin, AndAnd_to_Or0, OrAnd_to_Or0 : std_logic;
    signal AndAnd_to_Or, OrAnd_to_Or, XorAnd_to_Or0 : std_logic;
    signal XorIN_to_And, NotS0, NotS1, NotA : std_logic;
    signal XorAnd_to_Or, NotAnd_to_Or0, NotAnd_to_Or : std_logic;
    signal G1, G0 : std_logic;
    
constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    NotS0 <= not S0 after NOT_gate_delay;
    NotS1 <= not S1 after NOT_gate_delay;
    NotA <= not A after NOT_gate_delay;
    
    ANDin <= A and B after AND_gate_delay;
    ORin <= A or B after OR_gate_delay;
    XorIN_to_And <= A xor B after XOR_gate_delay;
    
    AndAnd_to_Or0 <= ANDin and NotS0 after AND_gate_delay;
    OrAnd_to_Or0 <= ORin and S0 after AND_gate_delay;
    NotAnd_to_Or0 <= NotA and S0 after AND_gate_delay;
    XorAnd_to_Or0 <= XorIN_to_And and NotS0 after AND_gate_delay;
    
    AndAnd_to_Or <= AndAnd_to_Or0 and NotS1 after AND_gate_delay;
    OrAnd_to_Or <= OrAnd_to_Or0 and NotS1 after AND_gate_delay;
    XorAnd_to_Or <= XorAnd_to_Or0 and S1 after AND_gate_delay;
    
    NotAnd_to_Or <= NotAnd_to_Or0 and S1 after AND_gate_delay;
    G1 <= AndAnd_to_Or or OrAnd_to_Or after OR_gate_delay;
    G0 <= G1 or XorAnd_to_Or after OR_gate_delay;
    G <= G0 or NotAnd_to_Or after OR_gate_delay;
    
    
    


end Behavioral;
