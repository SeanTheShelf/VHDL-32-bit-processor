----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 20.12.2023 13:49:40
-- Design Name: 
-- Module Name: CPU_RAM_22335824_TB - Simulation
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_RAM_22335824_TB is
--  Port ( );
end CPU_RAM_22335824_TB;

architecture Simulation of CPU_RAM_22335824_TB is

    component CPU_RAM_22335824
    port(
    Clock : in std_logic;
    Address : in std_logic_vector(31 downto 0);
    DataIn : in std_logic_vector(31 downto 0);
    WriteEnable : in std_logic;
    DataOut : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal Clock_TB : std_logic := '0';
    signal Address_TB, DataIn_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal WriteEnable_TB : std_logic := '0';
    signal DataOut_TB : std_logic_vector(31 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";    
    constant PERIOD : time := 100ns;

begin

uut: CPU_RAM_22335824 port map(
Clock => Clock_TB,
Address => Address_TB,
DataIn => DataIn_TB,
WriteEnable => WriteEnable_TB,
DataOut => DataOut_TB
);

Clock_TB <= not Clock_TB after PERIOD/2;

stim_proc: process

   begin
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   Address_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000101111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000110111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000111111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001000111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001001111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001010111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001011111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001100111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001101111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001110111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111001" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111010" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111011" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111100" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111101" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111110" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000001111111" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000100" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000101" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000110" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000000111" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001000" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001001" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001010" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001011" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001100" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001101" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001110" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000001111" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010000" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010001" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010010" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010011" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010100" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010101" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010110" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000010111" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011000" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011001" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011010" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011011" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011100" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011101" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011110" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000011111" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100000" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100001" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100010" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   Address_TB <= "00000000000000000000000000100011" after PERIOD/4;
   DataIn_TB <= "00000000000000000000000000000000" after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   WriteEnable_TB <= '0' after PERIOD/4;
   
   end process;


end Simulation;
