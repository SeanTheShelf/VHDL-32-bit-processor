----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 08.11.2023 20:57:22
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_22335824_TB - Simulation
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


entity DP_32Bit_LogicCircuit_22335824_TB is
--  Port ( );
end DP_32Bit_LogicCircuit_22335824_TB;

architecture Simulation of DP_32Bit_LogicCircuit_22335824_TB is

        component DP_32Bit_LogicCircuit_22335824
        port( A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              S0 : in std_logic;
              S1 : in std_logic;
              G : out std_logic_vector(31 downto 0)
              );
        end component;
        
        signal A_TB, B_TB, G_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal S0_TB, S1_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
        constant waitPeriod : time := 100ns;      

begin
    uut: DP_32Bit_LogicCircuit_22335824 port map(
    A => A_TB,
    B => B_TB,
    S0 => S0_TB,
    S1 => S1_TB,
    G => G_TB
    );
    
    stim_proc: process
    begin
        
        A_TB <= "00000001010101001101000101010000";
        B_TB <= "11100011000000000100000000110111";
        S0_TB <= '0';
        S1_TB <= '0';
        
        wait for waitPeriod;
        
        S0_TB <= '1';
        
        wait for waitPeriod;
        
        S0_TB <= '0';
        S1_TB <= '1';
        
        wait for waitPeriod;
        
        S0_TB <= '1';
        
        wait for waitPeriod;
        
    end process;


end Simulation;
