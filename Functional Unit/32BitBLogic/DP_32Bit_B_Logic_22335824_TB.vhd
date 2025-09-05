----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 08.11.2023 17:17:07
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_22335824_TB - Simulation
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


entity DP_32Bit_B_Logic_22335824_TB is
--  Port ( );
end DP_32Bit_B_Logic_22335824_TB;

architecture Simulation of DP_32Bit_B_Logic_22335824_TB is

        component DP_32Bit_B_Logic_22335824
        port ( B : in std_logic_vector (31 downto 0);
               S0: in std_logic;
               S1 : in std_logic;
               Y: out std_logic_vector (31 downto 0));
        end component;
        
        signal B_TB, Y_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal S0_TB, S1_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";

begin

    uut: DP_32Bit_B_Logic_22335824 port map(
    B => B_TB,
    S0 => S0_TB,
    S1 => S1_TB,
    Y => Y_TB
    );
    
    stim_proc: process
    begin
    
        B_TB <= "00000001010101001101000101010000";
        S0_TB <= '0';
        S1_TB <= '0';
        
        wait for 100ns;
        
        S0_TB <= '1';
        
        wait for 100ns;
        
        S0_TB <= '0';
        S1_TB <= '1';
        
        wait for 100ns;
        
        S0_TB <= '1';
        
        wait for 100ns;
        
    end process;


end Simulation;
