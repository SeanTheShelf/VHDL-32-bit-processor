----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 12:20:40
-- Design Name: 
-- Module Name: CPU_SMux_22335824 - Behavioral
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


entity CPU_SMux_22335824 is
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
end CPU_SMux_22335824;

architecture Behavioral of CPU_SMux_22335824 is

    signal MS0_not, MS1_not, MS2_not : std_logic;
    
    signal and00, and01, and02, and03 : std_logic;
    
    signal and10, and11, and12, and13 : std_logic;
    signal and14, and15, and16, and17 : std_logic;
    
    signal and20, and21, and22, and23 : std_logic;
    signal and24, and25, and26, and27 : std_logic;
    
    signal l1or0, l1or1, l1or2, l1or3 : std_logic;
    signal l2or0, l2or1 : std_logic;
    
        constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
        constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
        constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
        constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
        constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
        constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
        constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin
    MS0_not <= not MS(0) after NOT_gate_delay;
    MS1_not <= not MS(1) after NOT_gate_delay;
    MS2_not <= not MS(2) after NOT_gate_delay;
    
    and00 <= MS2_not and MS2_not after AND_gate_delay;
    and10 <= and00 and MS0_not after AND_gate_delay;
    and20 <= and10 and Zero after AND_gate_delay;
    and11 <= and00 and MS(0) after AND_gate_delay;
    and21 <= and11 and One after AND_gate_delay;
    
    and01 <= MS2_not and MS(1) after AND_gate_delay;
    and12 <= and01 and MS0_not after AND_gate_delay;
    and22 <= and12 and C_Flag after AND_gate_delay;
    and13 <= and01 and MS(0) after AND_gate_delay;
    and23 <= and13 and V_Flag after AND_gate_delay;
    
    and02 <= MS(2) and MS1_not after AND_gate_delay;
    and14 <= and02 and MS0_not after AND_gate_delay;
    and24 <= and14 and Z_Flag after AND_gate_delay;
    and15 <= and02 and MS(0) after AND_gate_delay;
    and25 <= and15 and N_Flag after AND_gate_delay;
    
    and03 <= MS(2) and MS(1) after AND_gate_delay;
    and16 <= and03 and MS0_not after AND_gate_delay;
    and26 <= and16 and Not_C_Flag after AND_gate_delay;
    and17 <= and03 and MS(0) after AND_gate_delay;
    and27 <= and17 and Not_Z_Flag after AND_gate_delay;
    
    l1or0 <= and20 or and21 after OR_gate_delay;
    l1or1 <= and22 or and23 after OR_gate_delay;
    l1or2 <= and24 or and25 after OR_gate_delay;
    l1or3 <= and26 or and27 after OR_gate_delay;
    
    l2or0 <= l1or0 or l1or1 after OR_gate_delay;
    l2or1 <= l1or2 or l1or3 after OR_gate_delay;
    
    CAR <= l2or0 or l2or1 after OR_gate_delay;


end Behavioral;
