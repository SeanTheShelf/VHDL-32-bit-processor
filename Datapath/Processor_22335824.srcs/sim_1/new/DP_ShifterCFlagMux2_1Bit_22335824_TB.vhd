----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 09.11.2023 13:01:32
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_22335824_TB - Simulation
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


entity DP_ShifterCFlagMux2_1Bit_22335824_TB is
--  Port ( );
end DP_ShifterCFlagMux2_1Bit_22335824_TB;

architecture Simulation of DP_ShifterCFlagMux2_1Bit_22335824_TB is

        component DP_ShifterCFlagMux2_1Bit_22335824
        Port ( I0: in std_logic;
               I1: in std_logic;
               S1: in std_logic;
               S2: in std_logic;
               Y: out std_logic
               );
        end component;
        
        signal I0_TB, I1_TB, S1_TB, S2_TB, Y_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";         

begin

    uut: DP_ShifterCFlagMux2_1Bit_22335824 port map(
    I0 => I0_TB,
    I1 => I1_TB,
    S1 => S1_TB,
    S2 => S2_TB,
    Y => Y_TB
    );
    
    stim_proc: process
    begin
            
            I0_TB <= '1';
            I1_TB <= '0';
            S1_TB <= '0';
            S2_TB <= '0';
            
            wait for 60ns;
            
            S1_TB <= '1';
            
            wait for 60ns;
            
            I0_TB <= '0';
            I1_TB <= '1';
            S1_TB <= '0';
            
            wait for 60ns;
            
            S2_TB <= '1';
            
            wait for 60ns;
            
      end process;


end Simulation;
