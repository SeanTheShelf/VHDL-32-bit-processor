----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 23.10.2023 14:34:58
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_22335824_TB - Simulation
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

entity RF_RegisterFile_32_15_22335824_TB is
--  Port ( );
end RF_RegisterFile_32_15_22335824_TB;

architecture Simulation of RF_RegisterFile_32_15_22335824_TB is

    component RF_RegisterFile_32_15_22335824
    port ( TA, TD, TB : in std_logic_vector(3 downto 0);
               SA, DR, SB : in std_logic_vector(4 downto 0);
               D : in std_logic_vector(31 downto 0);
               RW, CLK : in std_logic;
               A, B : out std_logic_vector(31 downto 0)
               );
    end component;
    
    signal SA_TB :std_logic_vector(4 downto 0):= (others => '0');
    signal DR_TB :std_logic_vector(4 downto 0):= (others => '0');
    signal SB_TB :std_logic_vector(4 downto 0):= (others => '0');
    signal TA_TB :std_logic_vector(3 downto 0):= (others => '0');
    signal TD_TB :std_logic_vector(3 downto 0):= (others => '0');
    signal TB_TB :std_logic_vector(3 downto 0):= (others => '0');
    signal D_TB : std_logic_vector(31 downto 0):= (others => '0');
    signal RW_TB : std_logic:= '0';
    signal CLK_TB : std_logic:= '0';
    
    signal A_TB : std_logic_vector(31 downto 0):= (others => '0');
    signal B_TB : std_logic_vector(31 downto 0):= (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;   

begin

    uut: RF_RegisterFile_32_15_22335824 port map(
    SA => SA_TB,
    DR => DR_TB,
    SB => SB_TB,
    TA => TA_TB,
    TD => TD_TB,
    TB => TB_TB,
    D => D_TB,
    RW => RW_TB,
    CLK => CLK_TB,
    A => A_TB,
    B => B_TB);
    
    CLK_TB <= not CLK_TB after WaitPeriod;
    
stim_proc: process

   begin
   
   wait until CLK_TB'event and CLK_TB='1';
   D_TB <= "00000001010101001101000101010000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00000" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00001" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00010" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00011" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00100" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00101" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00110" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101010111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "00111" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01000" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01001" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01010" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01011" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01100" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01101" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01110" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101011111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "01111" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10000" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10001" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10010" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10011" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10100" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10101" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10110" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101100111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "10111" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11000" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11001" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11010" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11011" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11100" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11101" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11110" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101101111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   DR_TB <= "11111" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0001" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0010" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0011" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0100" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0101" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0110" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "0111" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101110111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1000" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1001" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1010" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1011" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1100" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1101" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1110" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   D_TB <= "00000001010101001101000101111110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TD_TB <= "1111" after WaitPeriod/4;
   RW_TB <= '1' after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   RW_TB <= '0' after WaitPeriod/4;
   SA_TB <= "00000" after WaitPeriod/4;
   SB_TB <= "00001" after WaitPeriod/4;
   TA_TB <= "0000" after WaitPeriod/4;
   TB_TB <= "0000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "00010" after WaitPeriod/4;
   SB_TB <= "00011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "00100" after WaitPeriod/4;
   SB_TB <= "00101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "00110" after WaitPeriod/4;
   SB_TB <= "00111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "01000" after WaitPeriod/4;
   SB_TB <= "01001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "01010" after WaitPeriod/4;
   SB_TB <= "01011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "01100" after WaitPeriod/4;
   SB_TB <= "01101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "01110" after WaitPeriod/4;
   SB_TB <= "01111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "10000" after WaitPeriod/4;
   SB_TB <= "10001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "10010" after WaitPeriod/4;
   SB_TB <= "10011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "10100" after WaitPeriod/4;
   SB_TB <= "10101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "10110" after WaitPeriod/4;
   SB_TB <= "10111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "11000" after WaitPeriod/4;
   SB_TB <= "11001" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "11010" after WaitPeriod/4;
   SB_TB <= "11011" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "11100" after WaitPeriod/4;
   SB_TB <= "11101" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   SA_TB <= "11110" after WaitPeriod/4;
   SB_TB <= "11111" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "0001" after WaitPeriod/4;
   TB_TB <= "0010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "0011" after WaitPeriod/4;
   TB_TB <= "0100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "0101" after WaitPeriod/4;
   TB_TB <= "0110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "0111" after WaitPeriod/4;
   TB_TB <= "1000" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "1001" after WaitPeriod/4;
   TB_TB <= "1010" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "1011" after WaitPeriod/4;
   TB_TB <= "1100" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "1101" after WaitPeriod/4;
   TB_TB <= "1110" after WaitPeriod/4;
   
   wait until CLK_TB'event and CLK_TB='1';
   TA_TB <= "1111" after WaitPeriod/4;
   TB_TB <= "1111" after WaitPeriod/4;
   
   
   end process;

end Simulation;
