----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 17.12.2023 14:18:01
-- Design Name: 
-- Module Name: CPU_JKFlipFlop_22335824_TB - Simulation
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

entity CPU_JKFlipFlop_22335824_TB is
--  Port ( );
end CPU_JKFlipFlop_22335824_TB;

architecture Simulation of CPU_JKFlipFlop_22335824_TB is

component CPU_JKFlipFlop_22335824
    Port ( Clock, J, K, Reset : in STD_LOGIC;
           Q, Q_not : out STD_LOGIC);
end component;

--Inputs

    signal J_TB : std_logic:= '0';
    signal K_TB : std_logic:= '0';
    signal CLK_TB : std_logic:= '0';
    signal Reset_TB : std_logic:= '0';
    
--Outputs

    signal Q_TB : std_logic := '0';
    signal Q_not_TB : std_logic := '0';

   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";    
   constant PERIOD : time := 100ns;

begin

uut: CPU_JKFlipFlop_22335824 port map (
          Clock => CLK_TB,
          J => J_TB,
          K => K_TB,
          Reset => Reset_TB,
          Q => Q_TB,
          Q_not => Q_not_TB
        );
        
   CLK_TB <= not CLK_TB after PERIOD/2;
   
   stim_proc: process

   begin
      
      wait until CLK_TB'event and CLK_TB='1';
      J_TB <= '0' after PERIOD/4;
      K_TB <= '1' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      J_TB <= '0' after PERIOD/4;
      K_TB <= '0' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Reset_TB <= '0' after PERIOD/4;
      J_TB <= '1' after PERIOD/4;
      K_TB <= '0' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      J_TB <= '0' after PERIOD/4;
      K_TB <= '0' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      J_TB <= '1' after PERIOD/4;
      K_TB <= '1' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      J_TB <= '1' after PERIOD/4;
      K_TB <= '0' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      Reset_TB <= '1' after PERIOD/4;
      
   end process;


end Simulation;
