----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 09.11.2023 13:33:03
-- Design Name: 
-- Module Name: DP_ZeroDetection_22335824_TB - Simulation
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


entity DP_ZeroDetection_22335824_TB is
--  Port ( );
end DP_ZeroDetection_22335824_TB;

architecture Simulation of DP_ZeroDetection_22335824_TB is

        component DP_ZeroDetection_22335824
        Port( MuxF_to_F : in std_logic_vector(31 downto 0);
              Z : out std_logic
              );
        end component;
        
        signal MuxF_to_F_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal Z_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";      

begin

    uut: DP_ZeroDetection_22335824 port map(
    MuxF_to_F => MuxF_to_F_TB,
    Z => Z_TB
    );
    
    stim_proc: process
    begin
    
        MuxF_to_F_TB <= "11111111111111111111111111111111";
        
        wait for 60ns;
        
        MuxF_to_F_TB <= "10000000000000000000000000000000";
        
        wait for 60ns;
        
        MuxF_to_F_TB <= "00000000000000000000000000000001";
        
        wait for 60ns;
        
        MuxF_to_F_TB <= "00000000000000000000000000000000";
        
        wait for 60ns;
    
    
    end process;


end Simulation;
