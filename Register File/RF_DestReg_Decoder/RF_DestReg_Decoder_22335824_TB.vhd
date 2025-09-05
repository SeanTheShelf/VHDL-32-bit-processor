----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 22.10.2023 12:45:44
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_22335824_TB - Simulation
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


entity RF_DestReg_Decoder_22335824_TB is
--  Port ( );
end RF_DestReg_Decoder_22335824_TB;

architecture Simulation of RF_DestReg_Decoder_22335824_TB is

    COMPONENT RF_DestReg_Decoder_22335824
    port (I : in std_logic_vector (4 downto 0);
          D : out std_logic_vector (31 downto 0));
    END COMPONENT;
    
    signal I_TB : std_logic_vector(4 downto 0):= (others => '0');
    signal D_TB : std_logic_vector(31 downto 0):= (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: RF_DestReg_Decoder_22335824 PORT MAP (
          I => I_TB, 
          D => D_TB);
          
stim_proc: process

   begin		
      I_TB <= "00000";  -- case A       
      wait for WaitPeriod;	
      I_TB <= "00001"; -- case B       
      wait for WaitPeriod;	
      I_TB <= "00010"; -- case C       
      wait for WaitPeriod;	
      I_TB <= "00011"; -- case D        
      wait for WaitPeriod;	
      I_TB <= "00100"; -- case E       
      wait for WaitPeriod;	
      I_TB <= "00101"; -- case F       
      wait for WaitPeriod;	
      I_TB <= "00110"; -- case G       
      wait for WaitPeriod;	
      I_TB <= "00111"; -- case H        
      wait for WaitPeriod;
      I_TB <= "01000";
      wait for WaitPeriod;
      I_TB <= "01001";
      wait for WaitPeriod;
      I_TB <= "01010";
      wait for WaitPeriod;
      I_TB <= "01011";
      wait for WaitPeriod;
      I_TB <= "01100";
      wait for WaitPeriod;
      I_TB <= "01101";
      wait for WaitPeriod;
      I_TB <= "01110";
      wait for WaitPeriod;
      I_TB <= "01111";
      wait for WaitPeriod;
      I_TB <= "10000";
      wait for WaitPeriod;
      I_TB <= "10001";
      wait for WaitPeriod;
      I_TB <= "10010";
      wait for WaitPeriod;
      I_TB <= "10011";
      wait for WaitPeriod;
      I_TB <= "10100";
      wait for WaitPeriod;
      I_TB <= "10101";
      wait for WaitPeriod;
      I_TB <= "10110";
      wait for WaitPeriod;
      I_TB <= "10111";
      wait for WaitPeriod;
      I_TB <= "11000";
      wait for WaitPeriod;
      I_TB <= "11001";
      wait for WaitPeriod;
      I_TB <= "11010";
      wait for WaitPeriod;
      I_TB <= "11011";
      wait for WaitPeriod;
      I_TB <= "11100";
      wait for WaitPeriod;
      I_TB <= "11101";
      wait for WaitPeriod;
      I_TB <= "11110";
      wait for WaitPeriod;
      I_TB <= "11111";
      wait for WaitPeriod;     
   end process;


end Simulation;
