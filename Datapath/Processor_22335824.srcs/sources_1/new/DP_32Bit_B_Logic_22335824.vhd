----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 12:53:36
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_22335824 - Behavioral
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


entity DP_32Bit_B_Logic_22335824 is
        port ( B : in std_logic_vector (31 downto 0);
               S0: in std_logic;
               S1 : in std_logic;
               Y: out std_logic_vector (31 downto 0));
end DP_32Bit_B_Logic_22335824;

architecture Behavioral of DP_32Bit_B_Logic_22335824 is

    component DP_SingleBit_B_Logic_22335824
    Port ( B : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           Y : out std_logic
           );
    end component;
    
        constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
        constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
        constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
        constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
        constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
        constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
        constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    BIT00: DP_SingleBit_B_Logic_22335824 port map(
    B => B(0), S0 => S0, S1 => S1, Y => Y(0));
    
    BIT01: DP_SingleBit_B_Logic_22335824 port map(
    B => B(1), S0 => S0, S1 => S1, Y => Y(1));
    
    BIT02: DP_SingleBit_B_Logic_22335824 port map(
    B => B(2), S0 => S0, S1 => S1, Y => Y(2));
    
    BIT03: DP_SingleBit_B_Logic_22335824 port map(
    B => B(3), S0 => S0, S1 => S1, Y => Y(3));
    
    BIT04: DP_SingleBit_B_Logic_22335824 port map(
    B => B(4), S0 => S0, S1 => S1, Y => Y(4));
    
    BIT05: DP_SingleBit_B_Logic_22335824 port map(
    B => B(5), S0 => S0, S1 => S1, Y => Y(5));
    
    BIT06: DP_SingleBit_B_Logic_22335824 port map(
    B => B(6), S0 => S0, S1 => S1, Y => Y(6));
    
    BIT07: DP_SingleBit_B_Logic_22335824 port map(
    B => B(7), S0 => S0, S1 => S1, Y => Y(7));
    
    BIT08: DP_SingleBit_B_Logic_22335824 port map(
    B => B(8), S0 => S0, S1 => S1, Y => Y(8));
    
    BIT09: DP_SingleBit_B_Logic_22335824 port map(
    B => B(9), S0 => S0, S1 => S1, Y => Y(9));
    
    BIT10: DP_SingleBit_B_Logic_22335824 port map(
    B => B(10), S0 => S0, S1 => S1, Y => Y(10));
    
    BIT11: DP_SingleBit_B_Logic_22335824 port map(
    B => B(11), S0 => S0, S1 => S1, Y => Y(11));
    
    BIT12: DP_SingleBit_B_Logic_22335824 port map(
    B => B(12), S0 => S0, S1 => S1, Y => Y(12));
    
    BIT13: DP_SingleBit_B_Logic_22335824 port map(
    B => B(13), S0 => S0, S1 => S1, Y => Y(13));
    
    BIT14: DP_SingleBit_B_Logic_22335824 port map(
    B => B(14), S0 => S0, S1 => S1, Y => Y(14));
    
    BIT15: DP_SingleBit_B_Logic_22335824 port map(
    B => B(15), S0 => S0, S1 => S1, Y => Y(15));
    
    BIT16: DP_SingleBit_B_Logic_22335824 port map(
    B => B(16), S0 => S0, S1 => S1, Y => Y(16));
    
    BIT17: DP_SingleBit_B_Logic_22335824 port map(
    B => B(17), S0 => S0, S1 => S1, Y => Y(17));
    
    BIT18: DP_SingleBit_B_Logic_22335824 port map(
    B => B(18), S0 => S0, S1 => S1, Y => Y(18));
    
    BIT19: DP_SingleBit_B_Logic_22335824 port map(
    B => B(19), S0 => S0, S1 => S1, Y => Y(19));
    
    BIT20: DP_SingleBit_B_Logic_22335824 port map(
    B => B(20), S0 => S0, S1 => S1, Y => Y(20));
    
    BIT21: DP_SingleBit_B_Logic_22335824 port map(
    B => B(21), S0 => S0, S1 => S1, Y => Y(21));
    
    BIT22: DP_SingleBit_B_Logic_22335824 port map(
    B => B(22), S0 => S0, S1 => S1, Y => Y(22));
    
    BIT23: DP_SingleBit_B_Logic_22335824 port map(
    B => B(23), S0 => S0, S1 => S1, Y => Y(23));
    
    BIT24: DP_SingleBit_B_Logic_22335824 port map(
    B => B(24), S0 => S0, S1 => S1, Y => Y(24));
    
    BIT25: DP_SingleBit_B_Logic_22335824 port map(
    B => B(25), S0 => S0, S1 => S1, Y => Y(25));
    
    BIT26: DP_SingleBit_B_Logic_22335824 port map(
    B => B(26), S0 => S0, S1 => S1, Y => Y(26));
    
    BIT27: DP_SingleBit_B_Logic_22335824 port map(
    B => B(27), S0 => S0, S1 => S1, Y => Y(27));
    
    BIT28: DP_SingleBit_B_Logic_22335824 port map(
    B => B(28), S0 => S0, S1 => S1, Y => Y(28));
    
    BIT29: DP_SingleBit_B_Logic_22335824 port map(
    B => B(29), S0 => S0, S1 => S1, Y => Y(29));
    
    BIT30: DP_SingleBit_B_Logic_22335824 port map(
    B => B(30), S0 => S0, S1 => S1, Y => Y(30));
    
    BIT31: DP_SingleBit_B_Logic_22335824 port map(
    B => B(31), S0 => S0, S1 => S1, Y => Y(31));


end Behavioral;
