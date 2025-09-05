----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 08.11.2023 17:30:35
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_22335824_TB - Simulation
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


entity DP_SingleBit_LogicCircuit_22335824_TB is
--  Port ( );
end DP_SingleBit_LogicCircuit_22335824_TB;

architecture Simulation of DP_SingleBit_LogicCircuit_22335824_TB is

        component DP_SingleBit_LogicCircuit_22335824
        port( A : in std_logic;
              B : in std_logic;
              S0 : in std_logic;
              S1 : in std_logic;
              G : out std_logic
              );
        end component;
        
        signal A_TB, B_TB, S0_TB, S1_TB, G_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150"; 

begin

    uut: DP_SingleBit_LogicCircuit_22335824 port map(
    A => A_TB,
    B => B_TB,
    S0 => S0_TB,
    S1 => S1_TB,
    G => G_TB
    );
    
    stim_proc: process
    begin
    
        A_TB <= '0';
        B_TB <= '0';
        S0_TB <= '0';
        S1_TB <= '0';
        
        wait for 60ns;
        
        A_TB <= '1';        -- case A, AND
        
        wait for 60ns;
        
        A_TB <= '0';
        B_TB <= '1';
        
        wait for 60ns;
        
        A_TB <= '1';
        B_TB <= '1';
        
        wait for 60ns;
        
        A_TB <= '0';
        B_TB <= '0';        -- case B, OR
        S0_TB <= '1';
        
        wait for 60ns;
        
        A_TB <= '1';
        
        wait for 60ns;
        
        B_TB <= '1';
        A_TB <= '0';
        
        wait for 60ns;
        
        A_TB <= '1';
        
        wait for 60ns;
        
        S0_TB <= '0';       -- case C, XOR
        S1_TB <= '1';
        A_TB <= '0';
        B_TB <= '0';
        
        wait for 60ns;
        
        B_TB <= '1';
        
        wait for 60ns;
        
        B_TB <= '0';
        A_TB <= '1';
        
        wait for 60ns;
        
        B_TB <= '1';
        
        wait for 60ns;
        
        S0_TB <= '1';       -- case D, NOT
        A_TB <= '0';
        
        wait for 60ns;
        
        A_TB <= '1';
        
        wait for 60ns;
        
    end process;


end Simulation;
