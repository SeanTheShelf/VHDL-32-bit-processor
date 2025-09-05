----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 12:47:03
-- Design Name: 
-- Module Name: CPU_SMux_22335824_TB - Simulation
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


entity CPU_SMux_22335824_TB is
--  Port ( );
end CPU_SMux_22335824_TB;

architecture Simulation of CPU_SMux_22335824_TB is

component CPU_SMux_22335824
  Port (C_Flag : in std_logic;
        MS : in std_logic_vector(2 downto 0);
        N_Flag : in std_logic;
        Not_C_Flag : in std_logic;
        Not_Z_Flag : in std_logic;
        One : in std_logic;
        V_Flag : in std_logic;
        Z_Flag : in std_logic;
        Zero : in std_logic;
        CAR : out std_logic
       );
end component;

    signal C_Flag_TB, N_Flag_TB, V_Flag_TB, Z_Flag_TB, Zero_TB : std_logic := '0';
    signal Not_C_Flag_TB, Not_Z_Flag_TB, One_TB : std_logic := '1';
    signal MS_TB : std_logic_vector(2 downto 0) := (others => '0');
    
    signal CAR_TB : std_logic;
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 100ns;

begin

    uut: CPU_SMux_22335824 port map (
    C_Flag => C_Flag_TB,
    MS => MS_TB,
    N_Flag => N_Flag_TB,
    Not_C_Flag => Not_C_Flag_TB,
    Not_Z_Flag => Not_Z_Flag_TB,
    One => One_TB,
    V_Flag => V_Flag_TB,
    Z_Flag => Z_Flag_TB,
    Zero => Zero_TB,
    CAR => CAR_TB
    );
    
    stim_proc: process
    begin
    
    One_TB <= '1';
    Zero_TB <= '0';
    C_Flag_TB <= '1';
    Not_C_Flag_TB <= '0';
    Z_Flag_TB <= '0';
    Not_Z_Flag_TB <= '1';
    V_Flag_TB <= '1';
    N_Flag_TB <= '0';
    MS_TB <= "000";
    
    wait for WaitPeriod;
    
    MS_TB <= "001";
    
    wait for WaitPeriod;
    
    MS_TB <= "010";
    
    wait for WaitPeriod;
    
    MS_TB <= "011";
    
    wait for WaitPeriod;
    
    MS_TB <= "100";
    
    wait for WaitPeriod;
    
    MS_TB <= "101";
    
    wait for WaitPeriod;
    
    MS_TB <= "110";
    
    wait for WaitPeriod;
    
    MS_TB <= "111";
    
    wait for WaitPeriod;
    
    end process;


end Simulation;
