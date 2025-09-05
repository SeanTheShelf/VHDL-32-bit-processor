----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 20.12.2023 12:07:37
-- Design Name: 
-- Module Name: CPU_ZeroFill_22335824_TB - Simulation
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


entity CPU_ZeroFill_22335824_TB is
--  Port ( );
end CPU_ZeroFill_22335824_TB;

architecture Simulation of CPU_ZeroFill_22335824_TB is
    component CPU_ZeroFill_22335824
    port (
    SB : in std_logic_vector(4 downto 0);
    MuxB : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal SB_TB : std_logic_vector(4 downto 0) := (others => '0');
    signal MuxB_TB : std_logic_vector(31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant PERIOD : time := 100ns;

begin

    uut: CPU_ZeroFill_22335824 port map(
    SB => SB_TB,
    MuxB => MuxB_TB
    );
    
    stim_proc: process

        begin
        
        SB_TB <= "00000" after PERIOD/4;
        
        wait for PERIOD;
        
        SB_TB <= "11111" after PERIOD/4;
        
        wait for PERIOD;
        
        end process;


end Simulation;
