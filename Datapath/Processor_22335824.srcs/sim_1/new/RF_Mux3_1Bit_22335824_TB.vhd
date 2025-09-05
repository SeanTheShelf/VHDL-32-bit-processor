----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 11.10.2023 20:38:38
-- Design Name: 
-- Module Name: RF_Mux3_1Bit_22335824_TB - Simulation
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


entity RF_Mux3_1Bit_22335824_TB is
--  Port ( );
end RF_Mux3_1Bit_22335824_TB;

architecture Simulation of RF_Mux3_1Bit_22335824_TB is

        component RF_Mux3_1Bit_22335824
        Port ( I: in std_logic_vector (2 downto 0);
               S: in std_logic_vector (1 downto 0);
               Y: out std_logic
               );
        end component;
        
        signal I_TB : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
        signal S_TB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
        signal Y_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";

begin

        uut: RF_Mux3_1Bit_22335824 port map (
        I => I_TB,
        S => S_TB,
        Y => Y_TB
        );
        
  stim_proc: process
  begin
    S_TB <= "00";
    I_TB(0) <= '0'; I_TB(1) <= '0'; I_TB(2) <= '0';
    wait for 60ns;
    I_TB(0) <= '1'; I_TB(1) <= '0'; I_TB(2) <= '0';
    wait for 60ns;
    S_TB <= "01";
    I_TB(0) <= '0'; I_TB(1) <= '0'; I_TB(2) <= '0';
    wait for 60ns;
    I_TB(0) <= '0'; I_TB(1) <= '1'; I_TB(2) <= '0';
    wait for 60ns;
    S_TB <= "10";
    I_TB(0) <= '0'; I_TB(1) <= '0'; I_TB(2) <= '0';
    wait for 60ns;
    I_TB(0) <= '0'; I_TB(1) <= '0'; I_TB(2) <= '1';
    wait for 60ns;
    
    end process;


end Simulation;
