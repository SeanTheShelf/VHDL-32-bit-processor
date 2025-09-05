----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 23.10.2023 13:50:25
-- Design Name: 
-- Module Name: RF_Mux32_32Bit_22335824_TB - Simulation
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

entity RF_Mux32_32Bit_22335824_TB is
--  Port ( );
end RF_Mux32_32Bit_22335824_TB;

architecture Simulation of RF_Mux32_32Bit_22335824_TB is

    component RF_Mux32_32Bit_22335824
    port ( I0, I1, I2, I3 : in std_logic_vector (31 downto 0);
           I4, I5, I6, I7 : in std_logic_vector (31 downto 0);
           I8, I9, I10, I11 : in std_logic_vector (31 downto 0);
           I12, I13, I14, I15 : in std_logic_vector (31 downto 0);
           I16, I17, I18, I19 : in std_logic_vector (31 downto 0);
           I20, I21, I22, I23 : in std_logic_vector (31 downto 0);
           I24, I25, I26, I27 : in std_logic_vector (31 downto 0);
           I28, I29, I30, I31 : in std_logic_vector (31 downto 0);
           S : in std_logic_vector (4 downto 0);
           Y : out std_logic_vector (31 downto 0));
    end component;
    
    signal I0_TB, I1_TB, I2_TB, I3_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I4_TB, I5_TB, I6_TB, I7_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I8_TB, I9_TB, I10_TB, I11_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I12_TB, I13_TB, I14_TB, I15_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I16_TB, I17_TB, I18_TB, I19_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I20_TB, I21_TB, I22_TB, I23_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I24_TB, I25_TB, I26_TB, I27_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal I28_TB, I29_TB, I30_TB, I31_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal S_TB : std_logic_vector (4 downto 0) := (others => '0');
    
    signal Y_TB : std_logic_vector (31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: RF_Mux32_32Bit_22335824 PORT MAP (
       I0 => I0_TB, I1 => I1_TB, I2 => I2_TB, I3 => I3_TB,
       I4 => I4_TB, I5 => I5_TB, I6 => I6_TB, I7 => I7_TB,
       I8 => I8_TB, I9 => I9_TB, I10 => I10_TB, I11 => I11_TB,
       I12 => I12_TB, I13 => I13_TB, I14 => I14_TB, I15 => I15_TB,
       I16 => I16_TB, I17 => I17_TB, I18 => I18_TB, I19 => I19_TB,
       I20 => I20_TB, I21 => I21_TB, I22 => I22_TB, I23 => I23_TB,
       I24 => I24_TB, I25 => I25_TB, I26 => I26_TB, I27 => I27_TB,
       I28 => I28_TB, I29 => I29_TB, I30 => I30_TB, I31 => I31_TB,
       S  => S_TB, 
       Y  => Y_TB);

stim_proc: process
   begin
      S_TB <= "00000";                                            -- case A   
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
      I16_TB <= "00000001010101001101000101100000"; 
      I17_TB <= "00000001010101001101000101100001"; 
      I18_TB <= "00000001010101001101000101100010"; 
      I19_TB <= "00000001010101001101000101100011";
      I20_TB <= "00000001010101001101000101100100";
      I21_TB <= "00000001010101001101000101100101";
      I22_TB <= "00000001010101001101000101100110";
      I23_TB <= "00000001010101001101000101100111";
      I24_TB <= "00000001010101001101000101101000";
      I25_TB <= "00000001010101001101000101101001";
      I26_TB <= "00000001010101001101000101101010";
      I27_TB <= "00000001010101001101000101101011";
      I28_TB <= "00000001010101001101000101101100";
      I29_TB <= "00000001010101001101000101101101";
      I30_TB <= "00000001010101001101000101101110";
      I31_TB <= "00000001010101001101000101101111";
      wait for WaitPeriod;
      S_TB <= "00001";
      wait for WaitPeriod;
      S_TB <= "00010";
      wait for WaitPeriod;
      S_TB <= "00011";
      wait for WaitPeriod;
      S_TB <= "00100";
      wait for WaitPeriod;
      S_TB <= "00101";
      wait for WaitPeriod;
      S_TB <= "00110";
      wait for WaitPeriod;
      S_TB <= "00111";
      wait for WaitPeriod;
      S_TB <= "01000";
      wait for WaitPeriod;
      S_TB <= "01001";
      wait for WaitPeriod;
      S_TB <= "01010";
      wait for WaitPeriod;
      S_TB <= "01011";
      wait for WaitPeriod;
      S_TB <= "01100";
      wait for WaitPeriod;
      S_TB <= "01101";
      wait for WaitPeriod;
      S_TB <= "01110";
      wait for WaitPeriod;
      S_TB <= "01111";
      wait for WaitPeriod;
      S_TB <= "10000";
      wait for WaitPeriod;
      S_TB <= "10001";
      wait for WaitPeriod;
      S_TB <= "10010";
      wait for WaitPeriod;
      S_TB <= "10011";
      wait for WaitPeriod;
      S_TB <= "10100";
      wait for WaitPeriod;
      S_TB <= "10101";
      wait for WaitPeriod;
      S_TB <= "10110";
      wait for WaitPeriod;
      S_TB <= "10111";
      wait for WaitPeriod;
      S_TB <= "11000";
      wait for WaitPeriod;
      S_TB <= "11001";
      wait for WaitPeriod;
      S_TB <= "11010";
      wait for WaitPeriod;
      S_TB <= "11011";
      wait for WaitPeriod;
      S_TB <= "11100";
      wait for WaitPeriod;
      S_TB <= "11101";
      wait for WaitPeriod;
      S_TB <= "11110";
      wait for WaitPeriod;
      S_TB <= "11111";
      wait for WaitPeriod;
    end process;

end Simulation;
