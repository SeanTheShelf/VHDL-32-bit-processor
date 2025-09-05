----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 03.11.2023 15:08:14
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_22335824_TB - Simulation
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


entity DP_RippleCarryAdder32Bit_22335824_TB is
--  Port ( );
end DP_RippleCarryAdder32Bit_22335824_TB;

architecture Simulation of DP_RippleCarryAdder32Bit_22335824_TB is

component DP_RippleCarryAdder32Bit_22335824

Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       C_IN : in STD_LOGIC;
       SUM : out STD_LOGIC_VECTOR (31 downto 0);
       C_OUT : out STD_LOGIC;
       V : out STD_LOGIC);
end component;

--Inputs

    signal A_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal B_TB : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal C_IN_TB : STD_LOGIC := '0';
  
--Outputs

    signal SUM_TB : STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
    signal C_OUT_TB : STD_LOGIC := '0';
    signal V_TB : STD_LOGIC := '0';
    
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";  
   constant WaitPERIOD : time := 500ns;

begin

   uut: DP_RippleCarryAdder32Bit_22335824 PORT MAP (
       A => A_TB,
       B => B_TB,
       C_IN => C_IN_TB,
       SUM => SUM_TB,
       C_OUT => C_OUT_TB,
       V => V_TB
       );
       
 stim_proc: process
   begin
   
      A_TB <= "00000000000000000000000000000000";
      B_TB <= "00000000000000000000000000000000";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "10011111111111111111111111111101"; -- case A, neg + neg with overflow
      B_TB <= "11011111111111111111111111111110";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "11011111111111111111111111111101"; -- case B, neg + neg without overflow
      B_TB <= "11011111111111111111111111111110";
      
      wait for WaitPERIOD;
      
      A_TB <= "01000000000000000000000000000010"; -- case C, pos + pos with overflow
      B_TB <= "01000000000000000000000000000000";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "00000000010000000000000000100000"; -- case D, pos + pos without overflow
      B_TB <= "00000000000000000000000100000011";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "01000000000000000000000000000010"; -- case E, pos + neg without overflow
      B_TB <= "11001011100010101100100111111010";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "11001011100010101100100111111011"; -- case F, neg + pos without overflow
      B_TB <= "01000000000000000000000000000010";
      C_IN_TB <= '1';
      
      wait for WaitPERIOD;
      
      A_TB <= "00000000000000000000000000000000";
      B_TB <= "00000000000000000000000000000000";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "11111111111111111111111111111110"; -- case G, worst case propagation
      B_TB <= "00000000000000000000000000000001";
      C_IN_TB <= '1';
      
      wait for WaitPERIOD;
      
      A_TB <= "00000001010101001101000101010000"; -- case H, sets C flag
      B_TB <= "11111111000000000000000000000000";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      A_TB <= "00000001010101001101000101010000"; -- case I, sets V flag
      B_TB <= "01111111000000000000000000000000";
      C_IN_TB <= '0';
      
      wait for WaitPERIOD;
      
      
   end process;


end Simulation;
