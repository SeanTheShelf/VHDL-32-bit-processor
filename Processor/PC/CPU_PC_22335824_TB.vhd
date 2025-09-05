----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 14:43:58
-- Design Name: 
-- Module Name: CPU_PC_22335824_TB - Simulation
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


entity CPU_PC_22335824_TB is
--  Port ( );
end CPU_PC_22335824_TB;

architecture Simulation of CPU_PC_22335824_TB is

    component CPU_PC_22335824
    Port ( Clock : in std_logic;
           Reset : in std_logic;
           PL : in std_logic;
           Displacement : in std_logic_vector(31 downto 0);
           PI : in std_logic;
           InstAdd : out std_logic_vector(31 downto 0) 
        );
    end component;
    
    signal Clock_TB : std_logic := '0';
    signal Reset_TB : std_logic := '0';
    signal PL_TB : std_logic := '0';
    signal Displacement_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal PI_TB : std_logic := '0';
    signal InstAdd_TB : std_logic_vector(31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";    
    constant PERIOD : time := 100ns;

begin

    uut: CPU_PC_22335824 port map(
    Clock => Clock_TB,
    Reset => Reset_TB,
    PL => PL_TB,
    Displacement => Displacement_TB,
    PI => PI_TB,
    InstAdd => InstAdd_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;
   
   stim_proc: process

   begin
   
   wait until Clock_TB'event and Clock_TB='1';
   PL_TB <= '0' after PERIOD/4;
   Reset_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_TB <= '0' after PERIOD/4;
   PI_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   PI_TB <= '0' after PERIOD/4;
   Displacement_TB <= "00000000000000000000000000011000" AFTER PERIOD/4;
   PL_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   
   end process;


end Simulation;
