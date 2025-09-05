----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 08.11.2023 21:33:41
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_22335824_TB - Simulation
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


entity DP_ArithmeticLogicUnit_22335824_TB is
--  Port ( );
end DP_ArithmeticLogicUnit_22335824_TB;

architecture Simulation of DP_ArithmeticLogicUnit_22335824_TB is

        component DP_ArithmeticLogicUnit_22335824
        port( C_IN : in std_logic;
              A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              S0 : in std_logic;
              S1 : in std_logic;
              S2 : in std_logic;
              C : out std_logic;
              V : out std_logic;
              G : out std_logic_vector(31 downto 0)
              );
        end component;
        
        signal A_TB, B_TB, G_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal S0_TB, S1_TB, S2_TB, C_TB, V_TB, C_IN_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
        constant waitPeriod : time := 200ns;      

begin
    
    uut: DP_ArithmeticLogicUnit_22335824 port map(
    C_IN => C_IN_TB,
    A => A_TB,
    B => B_TB,
    S0 => S0_TB,
    S1 => S1_TB,
    S2 => S2_TB,
    C => C_TB,
    V => V_TB,
    G => G_TB
    );
    
    stim_proc: process
    begin
    
        A_TB <= "00000001010101001101000101010000";
        B_TB <= "00000000000010101010111001100000";
        C_IN_TB <= '0';             -- case A, G = A
        S0_TB <= '0';
        S1_TB <= '0';
        S2_TB <= '0';
        
        wait for waitPeriod;
        
        C_IN_TB <= '1';             -- case B, G = A+1
        
        wait for waitPeriod;
        
        C_IN_TB <= '0';
        S0_TB <= '1';               -- case C, G = A+B
        
        wait for waitPeriod;
        
        C_IN_TB <= '1';             -- case D, G = A+B+1
        
        wait for waitPeriod;
        
        C_IN_TB <= '0';
        S0_TB <= '0';
        S1_TB <= '1';               -- case E, G=A + B 1's Complement
        
        wait for waitPeriod;
        
        C_IN_TB <= '1';             -- case F, G = A - B
        
        wait for waitPeriod;
        
        C_IN_TB <= '0';
        S0_TB <= '1';               -- case G, G = A - 1
        
        wait for waitPeriod;
        
        C_IN_TB <= '1';             -- case H, G = A
        
        wait for waitPeriod;
        
        C_IN_TB <= '0';
        S0_TB <= '0';
        S1_TB <= '0';
        S2_TB <= '1';               -- case I, G = A and B
        
        wait for waitPeriod;
        
        S0_TB <= '1';               -- case J, G = A or B
        
        wait for waitPeriod;
        
        S0_TB <= '0';
        S1_TB <= '1';               -- case K, G = A xor B
        
        wait for waitPeriod;
        
        S0_TB <= '1';               -- case L, G = not A
        
        wait for waitPeriod;
        
    end process;


end Simulation;
