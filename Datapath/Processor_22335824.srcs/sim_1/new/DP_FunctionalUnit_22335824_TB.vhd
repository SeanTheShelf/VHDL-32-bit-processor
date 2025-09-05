----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 09.11.2023 13:40:57
-- Design Name: 
-- Module Name: DP_FunctionalUnit_22335824_TB - Simulation
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


entity DP_FunctionalUnit_22335824_TB is
--  Port ( );
end DP_FunctionalUnit_22335824_TB;

architecture Simulation of DP_FunctionalUnit_22335824_TB is

        component DP_FunctionalUnit_22335824
        Port( A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              FS : in std_logic_vector(4 downto 0);
              C : out std_logic;
              F : out std_logic_vector(31 downto 0);
              N : out std_logic;
              Z : out std_logic;
              V : out std_logic
              );
        end component;
        
        signal A_TB, B_TB, F_TB : std_logic_vector(31 downto 0) := (others => '0');
        signal FS_TB : std_logic_vector(4 downto 0) := (others => '0');
        signal C_TB, N_TB, Z_TB, V_TB : std_logic := '0';
        
        constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";     
        constant WaitPERIOD : time := 500ns; 

begin

    uut: DP_FunctionalUnit_22335824 port map(
    A => A_TB,
    B => B_TB,
    FS => FS_TB,
    C => C_TB,
    F => F_TB,
    N => N_TB,
    Z => Z_TB,
    V => V_TB
    );
    
    stim_proc: process
    begin
    
        A_TB <= "00000001010101001101000101010000";
        B_TB <= "00000001010101001101000101010100";
        FS_TB <= "00101";       -- case A, A-B
        
        wait for WaitPERIOD;
        
        FS_TB <= "01110";       -- case B, NOT A
        
        wait for WaitPERIOD;
        
        FS_TB <= "00100";       --case C, A + 1's c B
        
        wait for WaitPERIOD;
        
        FS_TB <= "00111";       --case D, F=A (00111)
        
        wait for WaitPERIOD;
        
        FS_TB <= "00011";       --case E, A+B+1
        
        wait for WaitPERIOD;
        
        FS_TB <= "10100";       --case F, srB
        
        wait for WaitPERIOD;
        
        FS_TB <= "00010";       --case G, A+B
        
        wait for WaitPERIOD;
        
        FS_TB <= "11000";       --case H, slB
        
        wait for WaitPERIOD;
        
        FS_TB <= "00000";       --case I, F=A (00000)
        
        wait for WaitPERIOD;
        
        FS_TB <= "10000";       --case J, F=B
        
        wait for WaitPERIOD;
        
        FS_TB <= "00001";       --case K, A+1
        
        wait for WaitPERIOD;
        
        FS_TB <= "01100";       --case L, A XOR B
        
        wait for WaitPERIOD;
        
        FS_TB <= "01010";       --case M, A OR B
        
        wait for WaitPERIOD;
        
        FS_TB <= "00110";       --case N, A-1
        
        wait for WaitPERIOD;
        
        FS_TB <= "01000";       --case 0, A AND B
        
        wait for WaitPERIOD;
        
    
    end process;


end Simulation;
