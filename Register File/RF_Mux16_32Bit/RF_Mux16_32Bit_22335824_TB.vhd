----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 22.10.2023 14:18:32
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_22335824_TB - Simulation
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

entity RF_Mux16_32Bit_22335824_TB is
--  Port ( );
end RF_Mux16_32Bit_22335824_TB;

architecture Simulation of RF_Mux16_32Bit_22335824_TB is

     component RF_Mux16_32Bit_22335824
     port ( I0, I1, I2, I3 : in std_logic_vector (31 downto 0);
           I4, I5, I6, I7 : in std_logic_vector (31 downto 0);
           I8, I9, I10, I11 : in std_logic_vector (31 downto 0);
           I12, I13, I14, I15 : in std_logic_vector (31 downto 0);
           S: in std_logic_vector (3 downto 0);
           Y: out std_logic_vector (31 downto 0));
    end component;
    
    signal I0_TB, I1_TB, I2_TB, I3_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I4_TB, I5_TB, I6_TB, I7_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I8_TB, I9_TB, I10_TB, I11_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I12_TB, I13_TB, I14_TB, I15_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal S_TB : std_logic_vector (3 downto 0) := (others => '0');
    
    signal Y_TB : std_logic_vector (31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: RF_Mux16_32Bit_22335824 PORT MAP (
       I0 => I0_TB, I1 => I1_TB, I2 => I2_TB, I3 => I3_TB,
       I4 => I4_TB, I5 => I5_TB, I6 => I6_TB, I7 => I7_TB,
       I8 => I8_TB, I9 => I9_TB, I10 => I10_TB, I11 => I11_TB,
       I12 => I12_TB, I13 => I13_TB, I14 => I14_TB, I15 => I15_TB,
       S  => S_TB, 
       Y  => Y_TB);
       
stim_proc: process
   begin
      S_TB <= "0000";                                            -- case A   
      I0_TB <= "00000001010101001101000101010000"; 
      I1_TB <= "00000001010101001101000101010001"; 
      I2_TB <= "00000001010101001101000101010010"; 
      I3_TB <= "00000001010101001101000101010011";
      I4_TB <= "00000001010101001101000101010100";
      I5_TB <= "00000001010101001101000101010101";
      I6_TB <= "00000001010101001101000101010110";
      I7_TB <= "00000001010101001101000101010111";
      I8_TB <= "00000001010101001101000101011000";
      I9_TB <= "00000001010101001101000101011001";
      I10_TB <= "00000001010101001101000101011010";
      I11_TB <= "00000001010101001101000101011011";
      I12_TB <= "00000001010101001101000101011100";
      I13_TB <= "00000001010101001101000101011101";
      I14_TB <= "00000001010101001101000101011110";
      I15_TB <= "00000001010101001101000101011111";
      wait for WaitPeriod;
      S_TB <= "0001";
      wait for WaitPeriod;
      S_TB <= "0010";
      wait for WaitPeriod;
      S_TB <= "0011";
      wait for WaitPeriod;
      S_TB <= "0100";
      wait for WaitPeriod;
      S_TB <= "0101";
      wait for WaitPeriod;
      S_TB <= "0110";
      wait for WaitPeriod;
      S_TB <= "0111";
      wait for WaitPeriod;
      S_TB <= "1000";
      wait for WaitPeriod;
      S_TB <= "1001";
      wait for WaitPeriod;
      S_TB <= "1010";
      wait for WaitPeriod;
      S_TB <= "1011";
      wait for WaitPeriod;
      S_TB <= "1100";
      wait for WaitPeriod;
      S_TB <= "1101";
      wait for WaitPeriod;
      S_TB <= "1110";
      wait for WaitPeriod;
      S_TB <= "1111";
      wait for WaitPeriod;
      
    end process;

end Simulation;
