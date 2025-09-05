----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 11:50:12
-- Design Name: 
-- Module Name: CPU_Mux2_17Bit_22335824_TB - Simulation
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


entity CPU_Mux2_17Bit_22335824_TB is
--  Port ( );
end CPU_Mux2_17Bit_22335824_TB;

architecture Simulation of CPU_Mux2_17Bit_22335824_TB is

    component CPU_Mux2_17Bit_22335824
        port ( In0, In1 : in std_logic_vector(16 downto 0);
               Sel : in std_logic;
               Z : out std_logic_vector(16 downto 0)
               );
    end component;
    
    signal In0_TB, In1_TB : std_logic_vector(16 downto 0) := (others => '0');
    signal Sel_TB : std_logic := '0';
    
    signal Z_TB : std_logic_vector(16 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: CPU_Mux2_17Bit_22335824 port map(
    In0 => In0_TB,
    In1 => In1_TB,
    Sel => Sel_TB,
    Z => Z_TB
    );
    
    stim_proc: process
    begin
    
        Sel_TB <= '0';
        In0_TB <= "11111111111111111";
        In1_TB <= "10101010101010101";
        
        wait for WaitPeriod;
        
        Sel_TB <= '1';
        
        wait for WaitPeriod;
    
    end process;


end Simulation;
