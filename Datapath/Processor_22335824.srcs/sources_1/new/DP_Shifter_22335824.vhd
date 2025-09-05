----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 17:11:09
-- Design Name: 
-- Module Name: DP_Shifter_22335824 - Behavioral
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

entity DP_Shifter_22335824 is
        port(B : in std_logic_vector(31 downto 0);
             S1 : in std_logic;
             S2 : in std_logic;
             G : out std_logic_vector(31 downto 0);
             C : out std_logic
             );
end DP_Shifter_22335824;

architecture Behavioral of DP_Shifter_22335824 is

    component DP_Mux3_1Bit_22335824
        Port ( I0: in std_logic;
               I1: in std_logic;
               I2: std_logic;
               S0: in std_logic;
               S1: in std_logic;
               Y: out std_logic
               );
    end component;
    
    component DP_ShifterCFlagMux2_1Bit_22335824
        Port ( I0: in std_logic;
               I1: in std_logic;
               S1: in std_logic;
               S2: in std_logic;
               Y: out std_logic
               );
    end component;

begin

    BIT00: DP_Mux3_1Bit_22335824 port map(
    I0 => B(0), I1 => B(1), I2 => '0', S0 => S1, S1 => S2, Y => G(0));
    
    BIT01: DP_Mux3_1Bit_22335824 port map(
    I0 => B(1), I1 => B(2), I2 => B(0), S0 => S1, S1 => S2, Y => G(1));
    
    BIT02: DP_Mux3_1Bit_22335824 port map(
    I0 => B(2), I1 => B(3), I2 => B(1), S0 => S1, S1 => S2, Y => G(2));
    
    BIT03: DP_Mux3_1Bit_22335824 port map(
    I0 => B(3), I1 => B(4), I2 => B(2), S0 => S1, S1 => S2, Y => G(3));
    
    BIT04: DP_Mux3_1Bit_22335824 port map(
    I0 => B(4), I1 => B(5), I2 => B(3), S0 => S1, S1 => S2, Y => G(4));
    
    BIT05: DP_Mux3_1Bit_22335824 port map(
    I0 => B(5), I1 => B(6), I2 => B(4), S0 => S1, S1 => S2, Y => G(5));
    
    BIT06: DP_Mux3_1Bit_22335824 port map(
    I0 => B(6), I1 => B(7), I2 => B(5), S0 => S1, S1 => S2, Y => G(6));
    
    BIT07: DP_Mux3_1Bit_22335824 port map(
    I0 => B(7), I1 => B(8), I2 => B(6), S0 => S1, S1 => S2, Y => G(7));
    
    BIT08: DP_Mux3_1Bit_22335824 port map(
    I0 => B(8), I1 => B(9), I2 => B(7), S0 => S1, S1 => S2, Y => G(8));
    
    BIT09: DP_Mux3_1Bit_22335824 port map(
    I0 => B(9), I1 => B(10), I2 => B(8), S0 => S1, S1 => S2, Y => G(9));
    
    BIT10: DP_Mux3_1Bit_22335824 port map(
    I0 => B(10), I1 => B(11), I2 => B(9), S0 => S1, S1 => S2, Y => G(10));
    
    BIT11: DP_Mux3_1Bit_22335824 port map(
    I0 => B(11), I1 => B(12), I2 => B(10), S0 => S1, S1 => S2, Y => G(11));
    
    BIT12: DP_Mux3_1Bit_22335824 port map(
    I0 => B(12), I1 => B(13), I2 => B(11), S0 => S1, S1 => S2, Y => G(12));
    
    BIT13: DP_Mux3_1Bit_22335824 port map(
    I0 => B(13), I1 => B(14), I2 => B(12), S0 => S1, S1 => S2, Y => G(13));
    
    BIT14: DP_Mux3_1Bit_22335824 port map(
    I0 => B(14), I1 => B(15), I2 => B(13), S0 => S1, S1 => S2, Y => G(14));
    
    BIT15: DP_Mux3_1Bit_22335824 port map(
    I0 => B(15), I1 => B(16), I2 => B(14), S0 => S1, S1 => S2, Y => G(15));
    
    BIT16: DP_Mux3_1Bit_22335824 port map(
    I0 => B(16), I1 => B(17), I2 => B(15), S0 => S1, S1 => S2, Y => G(16));
    
    BIT17: DP_Mux3_1Bit_22335824 port map(
    I0 => B(17), I1 => B(18), I2 => B(16), S0 => S1, S1 => S2, Y => G(17));
    
    BIT18: DP_Mux3_1Bit_22335824 port map(
    I0 => B(18), I1 => B(19), I2 => B(17), S0 => S1, S1 => S2, Y => G(18));
    
    BIT19: DP_Mux3_1Bit_22335824 port map(
    I0 => B(19), I1 => B(20), I2 => B(18), S0 => S1, S1 => S2, Y => G(19));
    
    BIT20: DP_Mux3_1Bit_22335824 port map(
    I0 => B(20), I1 => B(21), I2 => B(19), S0 => S1, S1 => S2, Y => G(20));
    
    BIT21: DP_Mux3_1Bit_22335824 port map(
    I0 => B(21), I1 => B(22), I2 => B(20), S0 => S1, S1 => S2, Y => G(21));
    
    BIT22: DP_Mux3_1Bit_22335824 port map(
    I0 => B(22), I1 => B(23), I2 => B(21), S0 => S1, S1 => S2, Y => G(22));
    
    BIT23: DP_Mux3_1Bit_22335824 port map(
    I0 => B(23), I1 => B(24), I2 => B(22), S0 => S1, S1 => S2, Y => G(23));
    
    BIT24: DP_Mux3_1Bit_22335824 port map(
    I0 => B(24), I1 => B(25), I2 => B(23), S0 => S1, S1 => S2, Y => G(24));
    
    BIT25: DP_Mux3_1Bit_22335824 port map(
    I0 => B(25), I1 => B(26), I2 => B(24), S0 => S1, S1 => S2, Y => G(25));
    
    BIT26: DP_Mux3_1Bit_22335824 port map(
    I0 => B(26), I1 => B(27), I2 => B(25), S0 => S1, S1 => S2, Y => G(26));
    
    BIT27: DP_Mux3_1Bit_22335824 port map(
    I0 => B(27), I1 => B(28), I2 => B(26), S0 => S1, S1 => S2, Y => G(27));
    
    BIT28: DP_Mux3_1Bit_22335824 port map(
    I0 => B(28), I1 => B(29), I2 => B(27), S0 => S1, S1 => S2, Y => G(28));
    
    BIT29: DP_Mux3_1Bit_22335824 port map(
    I0 => B(29), I1 => B(30), I2 => B(28), S0 => S1, S1 => S2, Y => G(29));
    
    BIT30: DP_Mux3_1Bit_22335824 port map(
    I0 => B(30), I1 => B(31), I2 => B(29), S0 => S1, S1 => S2, Y => G(30));
    
    BIT31: DP_Mux3_1Bit_22335824 port map(
    I0 => B(31), I1 => '0', I2 => B(30), S0 => S1, S1 => S2, Y => G(31));
    
    CFlagMux: DP_ShifterCFlagMux2_1Bit_22335824 port map(
    I0 => B(0), I1 => B(31), S1 => S1, S2 => S2, Y => C);


end Behavioral;
