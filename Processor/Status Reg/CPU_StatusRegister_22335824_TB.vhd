----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 18.12.2023 16:57:30
-- Design Name: 
-- Module Name: CPU_StatusRegister_22335824_TB - Simulation
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


entity CPU_StatusRegister_22335824_TB is
--  Port ( );
end CPU_StatusRegister_22335824_TB;

architecture Simulation of CPU_StatusRegister_22335824_TB is

component CPU_StatusRegister_22335824
    Port(C_Flag : in std_logic;
         Reset_V : in std_logic;
         V_Flag : in std_logic;
         Clock : in std_logic;
         Reset_C : in std_logic;
         LoadFlags : in std_logic;
         N_Flag : in std_logic;
         Reset_N : in std_logic;
         Reset_Z : in std_logic;
         Z_Flag : in std_logic;
         StatusVector : out std_logic_vector(3 downto 0)
         );
end component;

signal C_Flag_TB, Reset_C_TB : std_logic := '0';
signal V_Flag_TB, Reset_V_TB : std_logic := '0';
signal N_Flag_TB, Reset_N_TB : std_logic := '0';
signal Z_Flag_TB, Reset_Z_TB : std_logic := '0';
signal LoadFlags_TB : std_logic := '0';
signal Clock_TB : std_logic := '0';

signal StatusVector_TB : std_logic_vector(3 downto 0) := (others => '0');

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";    
constant PERIOD : time := 100ns;

begin

uut: CPU_StatusRegister_22335824 port map (
    C_Flag => C_Flag_TB,
    Reset_V => Reset_V_TB,
    V_Flag => V_Flag_TB,
    Clock => Clock_TB,
    Reset_C => Reset_C_TB,
    LoadFlags => LoadFlags_TB,
    N_Flag => N_Flag_TB,
    Reset_N => Reset_N_TB,
    Reset_Z => Reset_Z_TB,
    Z_Flag => Z_Flag_TB,
    StatusVector => StatusVector_TB
);

Clock_TB <= not Clock_TB after PERIOD/2;
   
   stim_proc: process

   begin
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_C_TB <= '0' after PERIOD/4;
   Reset_V_TB <= '0' after PERIOD/4;
   Reset_N_TB <= '0' after PERIOD/4;
   Reset_Z_TB <= '0' after PERIOD/4;
   C_Flag_TB <= '1' after PERIOD/4;
   V_Flag_TB <= '1' after PERIOD/4;
   N_Flag_TB <= '1' after PERIOD/4;
   Z_Flag_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   LoadFlags_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_C_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_V_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_N_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Reset_Z_TB <= '1' after PERIOD/4;
   
   end process;


end Simulation;
