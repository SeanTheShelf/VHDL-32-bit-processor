----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 08.11.2023 17:02:34
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_22335824_TB - Simulation
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


entity DP_SingleBit_B_Logic_22335824_TB is
--  Port ( );
end DP_SingleBit_B_Logic_22335824_TB;

architecture Simulation of DP_SingleBit_B_Logic_22335824_TB is

    component DP_SingleBit_B_Logic_22335824
    Port ( B : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           Y : out std_logic
           );
    end component;
    
    signal B_TB, S0_TB, S1_TB, Y_TB : std_logic := '0';
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";

begin

    uut: DP_SingleBit_B_Logic_22335824 port map(
    B => B_TB,
    S0 => S0_TB,
    S1 => S1_TB,
    Y => Y_TB
    );
    
    stim_proc: process
    begin
    
        B_TB <= '0'; S0_TB <= '0'; S1_TB <= '0'; -- case A, all 0s
        
        wait for 60ns;
        
        B_TB <= '1';
        
        wait for 60ns;
        
        B_TB <= '0'; S0_TB <= '1'; S1_TB <= '0'; -- case B, B
        
        wait for 60ns;
        
        B_TB <= '1';
        
        wait for 60ns;
        
        B_TB <= '0'; S0_TB <= '0'; S1_TB <= '1'; -- case C, not B
        
        wait for 60ns;
        
        B_TB <= '1';
        
        wait for 60ns;
        
        B_TB <= '0'; S0_TB <= '1'; S1_TB <= '1'; -- case D, all 1s
        
        wait for 60ns;
        
        B_TB <= '1';
        
        wait for 60ns;
        
    end process;


end Simulation;
