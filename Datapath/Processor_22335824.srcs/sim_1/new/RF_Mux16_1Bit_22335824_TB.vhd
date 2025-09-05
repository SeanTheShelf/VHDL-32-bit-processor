----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 22.10.2023 13:49:09
-- Design Name: 
-- Module Name: RF_Mux16_1Bit_22335824_TB - Simulation
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

entity RF_Mux16_1Bit_22335824_TB is
--  Port ( );
end RF_Mux16_1Bit_22335824_TB;

architecture Simulation of RF_Mux16_1Bit_22335824_TB is

    component RF_Mux16_1Bit_22335824
    Port ( I: in std_logic_vector (15 downto 0);
           S: in std_logic_vector (3 downto 0);
           Y: out std_logic
           );
    end component;
    
    signal I_TB : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal S_TB : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal Y_TB : std_logic := '0';
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";

begin

        uut: RF_Mux16_1Bit_22335824 port map (
        I => I_TB,
        S => S_TB,
        Y => Y_TB
        );
        
stim_proc: process
    begin
    
    S_TB <= "0000";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000000000001";
    wait for 60ns;
    
    S_TB <= "0001";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000000000010";
    wait for 60ns;
    
    S_TB <= "0010";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000000000100";
    wait for 60ns;
    
    S_TB <= "0011";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000000001000";
    wait for 60ns;
    
    S_TB <= "0100";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000000010000";
    wait for 60ns;
    
    S_TB <= "0101";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000000100000";
    wait for 60ns;
    
    S_TB <= "0110";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000001000000";
    wait for 60ns;
    
    S_TB <= "0111";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000010000000";
    wait for 60ns;
    
    S_TB <= "1000";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000000100000000";
    wait for 60ns;
    
    S_TB <= "1001";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000001000000000";
    wait for 60ns;
    
    S_TB <= "1010";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000010000000000";
    wait for 60ns;
    
    S_TB <= "1011";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0000100000000000";
    wait for 60ns;
    
    S_TB <= "1100";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0001000000000000";
    wait for 60ns;
    
    S_TB <= "1101";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0010000000000000";
    wait for 60ns;
    
    S_TB <= "1110";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "0100000000000000";
    wait for 60ns;
    
    S_TB <= "1111";
    I_TB <= "0000000000000000";
    wait for 60ns;
    I_TB <= "1000000000000000";
    wait for 60ns;

    end process;

end Simulation;
