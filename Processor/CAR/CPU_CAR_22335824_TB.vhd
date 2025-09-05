----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 18.12.2023 16:12:10
-- Design Name: 
-- Module Name: CPU_CAR_22335824_TB - Simulation
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


entity CPU_CAR_22335824_TB is
--  Port ( );
end CPU_CAR_22335824_TB;

architecture Simulation of CPU_CAR_22335824_TB is

component CPU_CAR_22335824
    Port(Address : in std_logic_vector(16 downto 0);
         LoadAdd : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         CMAdd : out std_logic_vector(16 downto 0)
         );
end component;

signal Address_TB : std_logic_vector(16 downto 0) := (others => '0');
signal LoadAdd_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';
signal Reset_TB : std_logic := '0';

signal CMAdd_TB : std_logic_vector(16 downto 0) := (others => '0');

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";    
constant PERIOD : time := 100ns;

begin

uut: CPU_CAR_22335824 PORT MAP (
    Address => Address_TB,
    LoadAdd => LoadAdd_TB,
    Clock => Clock_TB,
    Reset => Reset_TB,
    CMAdd => CMAdd_TB
);

Clock_TB <= not Clock_TB after PERIOD/2;
   
   stim_proc: process

   begin
   
   wait until Clock_TB'event and Clock_TB='1';
   LoadAdd_TB <= '1' after PERIOD/4;
   Reset_TB <= '1' after PERIOD/4;
   Address_TB <= "11111111111111111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000" after PERIOD/4;
   Reset_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   LoadAdd_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000011000" after PERIOD/4;
   LoadAdd_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   
   end process;


end Simulation;
