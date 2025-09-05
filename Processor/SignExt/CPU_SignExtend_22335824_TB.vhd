----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 20.12.2023 12:46:26
-- Design Name: 
-- Module Name: CPU_SignExtend_22335824_TB - Simulation
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


entity CPU_SignExtend_22335824_TB is
--  Port ( );
end CPU_SignExtend_22335824_TB;

architecture Simulation of CPU_SignExtend_22335824_TB is

    component CPU_SignExtend_22335824
    port(
    Input : in std_logic_vector(9 downto 0);
    Output : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal Input_TB : std_logic_vector(9 downto 0) := (others => '0');
    
    signal Output_TB : std_logic_vector(31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: CPU_SignExtend_22335824 port map(
    Input => Input_TB,
    Output => Output_TB
    );
    
    stim_proc: process
    begin
    
    Input_TB <= "0000000000";
    
    wait for WaitPeriod;
    
    Input_TB <= "0111111111";
    
    wait for WaitPeriod;
    
    Input_TB <= "1000000000";
    
    wait for WaitPeriod;
    
    end process;


end Simulation;
