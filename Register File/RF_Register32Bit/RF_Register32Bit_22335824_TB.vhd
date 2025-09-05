----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 23.10.2023 14:22:11
-- Design Name: 
-- Module Name: RF_Register32Bit_22335824_TB - Simulation
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

entity RF_Register32Bit_22335824_TB is
--  Port ( );
end RF_Register32Bit_22335824_TB;

architecture Simulation of RF_Register32Bit_22335824_TB is

    component RF_Register32Bit_22335824
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal D_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal Load_TB : std_logic := '0';
    signal CLK_TB : std_logic := '0';
    
    signal Q_TB : std_logic_vector(31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";  
    constant PERIOD : time := 100ns;

begin

    uut: RF_Register32Bit_22335824 port map (
          D => D_TB,
          CLK => CLK_TB,
          Load => Load_TB,
          Q => Q_TB
        );
        
   CLK_TB <= not CLK_TB after PERIOD/2;
   
stim_proc: process

   begin
   
   wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '0' after PERIOD/4;  
      D_TB <= "00000001010101001101000101010000" after PERIOD/4;  
      
      wait until CLK_TB'event and CLK_TB='1';
      Load_TB <= '1' after PERIOD/4;
      
      end process;


end Simulation;
