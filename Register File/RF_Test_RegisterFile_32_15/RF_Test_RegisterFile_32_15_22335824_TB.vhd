----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 23.10.2023 16:50:19
-- Design Name: 
-- Module Name: RF_Test_RegisterFile_32_15_22335824_TB - Simulation
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

entity RF_Test_RegisterFile_32_15_22335824_TB is
--  Port ( );
end RF_Test_RegisterFile_32_15_22335824_TB;

architecture Simulation of RF_Test_RegisterFile_32_15_22335824_TB is

    component RF_Test_RegisterFile_32_15_22335824
    port ( A_B_DataIN_Test : in std_logic_vector(1 downto 0);
           D_Test : in std_logic_vector(31 downto 0);
           Clock_Test, RW_Test : in std_logic;
           DR_Test, SA_Test, SB_Test : in std_logic_vector(4 downto 0);
           TA_Test, TB_Test, TD_Test : in std_logic_vector(3 downto 0));
    end component;
    
    signal A_B_DataIN_Test_TB : std_logic_vector(1 downto 0):= (others => '0');
    signal D_Test_TB : std_logic_vector(31 downto 0):= (others => '0');
    signal Clock_Test_TB : std_logic:= '0';
    signal RW_Test_TB : std_logic:= '0';
    signal DR_Test_TB : std_logic_vector(4 downto 0):= (others => '0');
    signal SA_Test_TB : std_logic_vector(4 downto 0):= (others => '0');
    signal SB_Test_TB : std_logic_vector(4 downto 0):= (others => '0');
    signal TA_Test_TB : std_logic_vector(3 downto 0):= (others => '0');
    signal TB_Test_TB : std_logic_vector(3 downto 0):= (others => '0');
    signal TD_Test_TB : std_logic_vector(3 downto 0):= (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";  
    constant PERIOD : time := 100ns;

begin

    uut: RF_Test_RegisterFile_32_15_22335824 port map (
    A_B_DataIN_Test => A_B_DataIN_Test_TB,
    D_Test => D_Test_TB,
    Clock_Test => Clock_Test_TB,
    RW_Test => RW_Test_TB,
    DR_Test => DR_Test_TB,
    SA_Test => SA_Test_TB,
    SB_Test => SB_Test_TB,
    TA_Test => TA_Test_TB,
    TB_Test => TB_Test_TB,
    TD_Test => TD_Test_TB
    );
    
    Clock_Test_TB <= not Clock_Test_TB after PERIOD;
    
stim_proc: process

   begin
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   D_Test_TB <= "00000001010101001101000101010000" after PERIOD/4;
   A_B_DataIN_Test_TB <= "10" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00001" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00010" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00100" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00110" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101010111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01001" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01010" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01100" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01110" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101011111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10001" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10010" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10100" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10110" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101100111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "10111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11001" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11010" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11100" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11110" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101101111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "11111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0001" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0010" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0100" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0110" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101110111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1001" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1010" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1100" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1110" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   D_Test_TB <= "00000001010101001101000101111110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "1111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SA_Test_TB <= "00000" after PERIOD/4;
   SB_Test_TB <= "00001" after PERIOD/4;
   TA_Test_TB <= "0000" after PERIOD/4;
   TB_Test_TB <= "0000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "00010" after PERIOD/4;
   SB_Test_TB <= "00011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "00100" after PERIOD/4;
   SB_Test_TB <= "00101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "00110" after PERIOD/4;
   SB_Test_TB <= "00111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "01000" after PERIOD/4;
   SB_Test_TB <= "01001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "01010" after PERIOD/4;
   SB_Test_TB <= "01011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "01100" after PERIOD/4;
   SB_Test_TB <= "01101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "01110" after PERIOD/4;
   SB_Test_TB <= "01111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "10000" after PERIOD/4;
   SB_Test_TB <= "10001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "10010" after PERIOD/4;
   SB_Test_TB <= "10011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "10100" after PERIOD/4;
   SB_Test_TB <= "10101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "10110" after PERIOD/4;
   SB_Test_TB <= "10111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "11000" after PERIOD/4;
   SB_Test_TB <= "11001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "11010" after PERIOD/4;
   SB_Test_TB <= "11011" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "11100" after PERIOD/4;
   SB_Test_TB <= "11101" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "11110" after PERIOD/4;
   SB_Test_TB <= "11111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "0001" after PERIOD/4;
   TB_Test_TB <= "0010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "0011" after PERIOD/4;
   TB_Test_TB <= "0100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "0101" after PERIOD/4;
   TB_Test_TB <= "0110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "0111" after PERIOD/4;
   TB_Test_TB <= "1000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "1001" after PERIOD/4;
   TB_Test_TB <= "1010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "1011" after PERIOD/4;
   TB_Test_TB <= "1100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "1101" after PERIOD/4;
   TB_Test_TB <= "1110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TA_Test_TB <= "1111" after PERIOD/4;
   TB_Test_TB <= "1111" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   SA_Test_TB <= "00000" after PERIOD/4;
   TA_Test_TB <= "0000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   A_B_DataIN_Test_TB <= "00" after PERIOD/4;
   DR_Test_TB <= "00001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TD_Test_TB <= "0000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SA_Test_TB <= "00010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SA_Test_TB <= "00100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SA_Test_TB <= "00110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "00111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SB_Test_TB <= "01000" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   A_B_DataIN_Test_TB <= "01" after PERIOD/4;
   DR_Test_TB <= "01001" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   TB_Test_TB <= "0000" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SB_Test_TB <= "01010" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01011" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SB_Test_TB <= "01100" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01101" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   RW_Test_TB <= '0' after PERIOD/4;
   SB_Test_TB <= "01110" after PERIOD/4;
   
   wait until Clock_Test_TB'event and Clock_Test_TB='1';
   DR_Test_TB <= "01111" after PERIOD/4;
   RW_Test_TB <= '1' after PERIOD/4;

  end process;

end Simulation;
