----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 09.11.2023 12:43:22
-- Design Name: 
-- Module Name: DP_Mux3_1Bit_22335824_TB - Simulation
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


entity DP_Mux3_1Bit_22335824_TB is
--  Port ( );
end DP_Mux3_1Bit_22335824_TB;

architecture Simulation of DP_Mux3_1Bit_22335824_TB is

        component DP_Mux3_1Bit_22335824
        Port ( I0: in std_logic;
               I1: in std_logic;
               I2: in std_logic;
               S0: in std_logic;
               S1: in std_logic;
               Y: out std_logic
               );
        end component;
        
        signal I0_TB, I1_TB, I2_TB, S0_TB, S1_TB, Y_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";       

begin

    uut: DP_Mux3_1Bit_22335824 port map(
    I0 => I0_TB,
    I1 => I1_TB,
    I2 => I2_TB,
    S0 => S0_TB,
    S1 => S1_TB,
    Y => Y_TB
    );
    
  stim_proc: process
    begin
    S0_TB <= '0';
    S1_TB <= '0';
    I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '0';
    wait for 60ns;
    I0_TB <= '1'; I1_TB <= '0'; I2_TB <= '0';
    wait for 60ns;
    S0_TB <= '1';
    I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '0';
    wait for 60ns;
    I0_TB <= '0'; I1_TB <= '1'; I2_TB <= '0';
    wait for 60ns;
    S0_TB <= '0';
    S1_TB <= '1';
    I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '0';
    wait for 60ns;
    I0_TB <= '0'; I1_TB <= '0'; I2_TB <= '1';
    wait for 60ns;
    
    end process;


end Simulation;
