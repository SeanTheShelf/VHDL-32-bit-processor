----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 01.11.2023 20:12:23
-- Design Name: 
-- Module Name: DP_FullAdder_22335824_TB - Simulation
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


entity DP_FullAdder_22335824_TB is
--  Port ( );
end DP_FullAdder_22335824_TB;

architecture Simulation of DP_FullAdder_22335824_TB is

    COMPONENT DP_FullAdder_22335824
    
    PORT(
         A : in STD_LOGIC;
         B : in STD_LOGIC;
         C_IN : in STD_LOGIC;
         SUM : out STD_LOGIC;
         C_OUT : out STD_LOGIC
         );
    END COMPONENT;

   --Inputs
   
   signal A_TB : STD_LOGIC := '0';
   signal B_TB : STD_LOGIC := '0';
   signal C_IN_TB : STD_LOGIC := '0';

 	--signal   
   signal SUM_TB : STD_LOGIC := '0';
   signal C_OUT_TB : STD_LOGIC := '0';
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";  
   constant WaitPERIOD : time := 100ns;

begin

    uut: DP_FullAdder_22335824 PORT MAP (
          A => A_TB,
          B => B_TB,
          C_IN => C_IN_TB,
          SUM => SUM_TB,
          C_OUT => C_OUT_TB
        );

  stim_proc: process
   begin		

       A_TB <= '0'; B_TB <= '0'; C_IN_TB <= '0';
        
      wait for WaitPERIOD;	

       A_TB <= '0'; B_TB <= '1'; C_IN_TB <= '0';

      wait for WaitPERIOD;	
		
       A_TB <= '1'; B_TB <= '0'; C_IN_TB <= '0';
       
      wait for WaitPERIOD;	
		
	   A_TB <= '1'; B_TB <= '1'; C_IN_TB <= '0';

      wait for WaitPERIOD;	
		
       A_TB <= '0'; B_TB <= '0'; C_IN_TB <= '1';
        
      wait for WaitPERIOD;	

       A_TB <= '0'; B_TB <= '1'; C_IN_TB <= '1';

      wait for WaitPERIOD;	
		
       A_TB <= '1'; B_TB <= '0'; C_IN_TB <= '1';
       
      wait for WaitPERIOD;	
		
	   A_TB <= '1'; B_TB <= '1'; C_IN_TB <= '1';
	   
	   wait for WaitPERIOD;
 
   end process;




end Simulation;
