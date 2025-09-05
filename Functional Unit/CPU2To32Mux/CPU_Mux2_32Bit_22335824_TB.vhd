----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 08.11.2023 21:12:26
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_22335824_TB - Simulation
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


entity CPU_Mux2_32Bit_22335824_TB is
--  Port ( );
end CPU_Mux2_32Bit_22335824_TB;

architecture Simulation of CPU_Mux2_32Bit_22335824_TB is

        component CPU_Mux2_32Bit_22335824
        Port ( I0: in std_logic_vector (31 downto 0);
               I1: in std_logic_vector (31 downto 0);
               S: in std_logic;
               Y: out std_logic_vector(31 downto 0)
               );
        end component;
        
        signal I0_TB, I1_TB, Y_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal S_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";

begin

    uut: CPU_Mux2_32Bit_22335824 port map(
    I0 => I0_TB,
    I1 => I1_TB,
    S => S_TB,
    Y => Y_TB
    );
    
    stim_proc: process
    begin

        I0_TB <= "00000001010101001101000101010000";
        I1_TB <= "11111111111111110000000000000000";
        S_TB <= '0';
    
        wait for 100ns;
        
        S_TB <= '1';
        
        wait for 100ns;
        
    end process;


end Simulation;
