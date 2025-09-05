----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 22.10.2023 13:23:49
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_22335824_TB - Simulation
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


entity RF_TempDestReg_Decoder_22335824_TB is
--  Port ( );
end RF_TempDestReg_Decoder_22335824_TB;

architecture Simulation of RF_TempDestReg_Decoder_22335824_TB is

    component RF_TempDestReg_Decoder_22335824
    port (I : in std_logic_vector (3 downto 0);
          D : out std_logic_vector (15 downto 0));
    end component;
    
    signal I_TB : std_logic_vector(3 downto 0):= (others => '0');
    signal D_TB : std_logic_vector(15 downto 0):= (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: RF_TempDestReg_Decoder_22335824 PORT MAP (
          I => I_TB, 
          D => D_TB);
          
stim_proc: process

   begin		
      I_TB <= "0000";  -- case A       
      wait for WaitPeriod;	
      I_TB <= "0001"; -- case B       
      wait for WaitPeriod;	
      I_TB <= "0010"; -- case C       
      wait for WaitPeriod;	
      I_TB <= "0011"; -- case D        
      wait for WaitPeriod;	
      I_TB <= "0100"; -- case E       
      wait for WaitPeriod;	
      I_TB <= "0101"; -- case F       
      wait for WaitPeriod;	
      I_TB <= "0110"; -- case G       
      wait for WaitPeriod;	
      I_TB <= "0111"; -- case H        
      wait for WaitPeriod;
      I_TB <= "1000";
      wait for WaitPeriod;
      I_TB <= "1001";
      wait for WaitPeriod;
      I_TB <= "1010";
      wait for WaitPeriod;
      I_TB <= "1011";
      wait for WaitPeriod;
      I_TB <= "1100";
      wait for WaitPeriod;
      I_TB <= "1101";
      wait for WaitPeriod;
      I_TB <= "1110";
      wait for WaitPeriod;
      I_TB <= "1111";
      wait for WaitPeriod;
    end process;

end Simulation;
