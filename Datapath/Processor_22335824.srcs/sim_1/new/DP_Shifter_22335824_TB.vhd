----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 09.11.2023 13:11:47
-- Design Name: 
-- Module Name: DP_Shifter_22335824_TB - Simulation
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


entity DP_Shifter_22335824_TB is
--  Port ( );
end DP_Shifter_22335824_TB;

architecture Simulation of DP_Shifter_22335824_TB is

        component DP_Shifter_22335824
        port(B : in std_logic_vector(31 downto 0);
             S1 : in std_logic;
             S2 : in std_logic;
             G : out std_logic_vector(31 downto 0);
             C : out std_logic
             );
        end component;
        
        signal B_TB, G_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal S1_TB, S2_TB, C_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";      

begin

    uut: DP_Shifter_22335824 port map(
    B => B_TB,
    S1 => S1_TB,
    S2 => S2_TB,
    G => G_TB,
    C => C_TB
    );
    
    stim_proc: process
    begin
    
        B_TB <= "00000001010101001101000101010000";
        S1_TB <= '0';
        S2_TB <= '0';
        
        wait for 100ns;
        
        S1_TB <= '1';
        
        wait for 100ns;
        
        S1_TB <= '0';
        S2_TB <= '1';
        
        wait for 100ns;
        
        S1_TB <= '1';
        S2_TB <= '0';
        B_TB <= "10000000000000000000000000000001";
        
        wait for 100ns;
        
        S1_TB <= '0';
        
        wait for 100ns;
        
        S1_TB <= '0';
        S2_TB <= '1';
        
        wait for 100ns;
        
    end process;


end Simulation;
