----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 22.10.2023 13:35:22
-- Design Name: 
-- Module Name: RF_Mux3_32Bit_22335824_TB - Simulation
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

entity RF_Mux3_32Bit_22335824_TB is
--  Port ( );
end RF_Mux3_32Bit_22335824_TB;

architecture Simulation of RF_Mux3_32Bit_22335824_TB is

    component RF_Mux3_32Bit_22335824
    port ( I0, I1, I2 : in std_logic_vector (31 downto 0);
               S: in std_logic_vector (1 downto 0);
               Y: out std_logic_vector (31 downto 0));
    end component;
    
   signal I0_TB, I1_TB, I2_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   signal S_TB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
   
   signal Y_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
   constant WaitPeriod : time := 100ns;

begin

    uut: RF_Mux3_32Bit_22335824 PORT MAP (
       I0 => I0_TB, I1 => I1_TB, I2 => I2_TB, 
       S  => S_TB, 
       Y  => Y_TB);
       
stim_proc: process
   begin		
      S_TB <= "00";                                            -- case A   
      I0_TB <= "00000001010101001101000101010000"; 
      I1_TB <= "00000001010101001101000101010001"; 
      I2_TB <= "00000001010101001101000101010010"; 
      wait for WaitPeriod;
      S_TB <= "01";
      wait for WaitPeriod;
      S_TB <= "10";
      wait for WaitPeriod;

    end process;

end Simulation;
