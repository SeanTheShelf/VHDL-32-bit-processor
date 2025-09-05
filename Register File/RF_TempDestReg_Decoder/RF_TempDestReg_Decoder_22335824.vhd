----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 16.10.2023 08:50:11
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_22335824 - Behavioral
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


entity RF_TempDestReg_Decoder_22335824 is
        port (I : in std_logic_vector (3 downto 0);
              D : out std_logic_vector (15 downto 0));
end RF_TempDestReg_Decoder_22335824;

architecture Behavioral of RF_TempDestReg_Decoder_22335824 is

        signal I_not : std_logic_vector (3 downto 0);
        signal S : std_logic_vector (3 downto 0);
        signal T : std_logic_vector (7 downto 0);
        
        constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
        constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
        constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
        constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
        constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
        constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
        constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1
        
begin

        I_not(0) <= not I(0) after NOT_gate_delay; -- x
        I_not(1) <= not I(1) after NOT_gate_delay; -- y
        I_not(2) <= not I(2) after NOT_gate_delay; -- z
        I_not(3) <= not I(3) after NOT_gate_delay;
        
        S(0) <= I_not(3) and I_not(2) after AND_gate_delay;
        T(0) <= S(0) and I_not(1) after AND_gate_delay;
        T(1) <= S(0) and I(1) after AND_gate_delay;
        D(0) <= T(0) and I_not(0) after AND_gate_delay;
        D(1) <= T(0) and I(0) after AND_gate_delay;
        D(2) <= T(1) and I_not(0) after AND_gate_delay;
        D(3) <= T(1) and I(0) after AND_gate_delay;
        
        S(1) <= I_not(3) and I(2) after AND_gate_delay;
        T(2) <= S(1) and I_not(1) after AND_gate_delay;
        T(3) <= S(1) and I(1) after AND_gate_delay;
        D(4) <= T(2) and I_not(0) after AND_gate_delay;
        D(5) <= T(2) and I(0) after AND_gate_delay;
        D(6) <= T(3) and I_not(0) after AND_gate_delay;
        D(7) <= T(3) and I(0) after AND_gate_delay;
        
        S(2) <= I(3) and I_not(2) after AND_gate_delay;
        T(4) <= S(2) and I_not(1) after AND_gate_delay;
        T(5) <= S(2) and I(1) after AND_gate_delay;
        D(8) <= T(4) and I_not(0) after AND_gate_delay;
        D(9) <= T(4) and I(0) after AND_gate_delay;
        D(10) <= T(5) and I_not(0) after AND_gate_delay;
        D(11) <= T(5) and I(0) after AND_gate_delay;
        
        S(3) <= I(3) and I(2) after AND_gate_delay;
        T(6) <= S(3) and I_not(1) after AND_gate_delay;
        T(7) <= S(3) and I(1) after AND_gate_delay;
        D(12) <= T(6) and I_not(0) after AND_gate_delay;
        D(13) <= T(6) and I(0) after AND_gate_delay;
        D(14) <= T(7) and I_not(0) after AND_gate_delay;
        D(15) <= T(7) and I(0) after AND_gate_delay;


end Behavioral;
