----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 09.11.2023 13:26:18
-- Design Name: 
-- Module Name: DP_CFlagMux2_1Bit_22335824_TB - Simulation
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


entity DP_CFlagMux2_1Bit_22335824_TB is
--  Port ( );
end DP_CFlagMux2_1Bit_22335824_TB;

architecture Simulation of DP_CFlagMux2_1Bit_22335824_TB is

        component DP_CFlagMux2_1Bit_22335824
        Port( C_ALU : in std_logic;
              C_Shift : in std_logic;
              FS4 : in std_logic;
              C : out std_logic);
        end component;
        
        signal C_ALU_TB, C_Shift_TB, FS4_TB, C_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";      

begin

    uut: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => C_ALU_TB,
    C_Shift => C_Shift_TB,
    FS4 => FS4_TB,
    C => C_TB
    );
    
    stim_proc: process
    begin
    
        C_ALU_TB <= '0';
        C_Shift_TB <= '0';
        FS4_TB <= '0';
        
        wait for 60ns;
        
        C_ALU_TB <= '1';
        
        wait for 60ns;
        
        C_ALU_TB <= '0';
        FS4_TB <= '1';
        
        wait for 60ns;
        
        C_Shift_TB <= '1';
        
        wait for 60ns;
        
    end process; 


end Simulation;
