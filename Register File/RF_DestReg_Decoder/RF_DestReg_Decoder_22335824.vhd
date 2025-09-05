----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 12.10.2023 18:35:21
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_22335824 - Behavioral
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



entity RF_DestReg_Decoder_22335824 is
        port (I : in std_logic_vector (4 downto 0);
              D : out std_logic_vector (31 downto 0));
end RF_DestReg_Decoder_22335824;

architecture Behavioral of RF_DestReg_Decoder_22335824 is

        signal I_not : std_logic_vector (4 downto 0);
        signal S : std_logic_vector (3 downto 0);
        signal T : std_logic_vector (7 downto 0);
        signal W : std_logic_vector (15 downto 0);
        
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
        I_not(4) <= not I(4) after NOT_gate_delay;
        
        S(0) <= I_not(4) and I_not(3) after AND_gate_delay;
        T(0) <= S(0) and I_not(2) after AND_gate_delay;
        T(1) <= S(0) and I(2) after AND_gate_delay;
        W(0) <= T(0) and I_not(1) after AND_gate_delay;
        W(1) <= T(0) and I(1) after AND_gate_delay;
        W(2) <= T(1) and I_not(1) after AND_gate_delay;
        W(3) <= T(1) and I(1) after AND_gate_delay;
        D(0) <= W(0) and I_not(0) after AND_gate_delay;
        D(1) <= W(0) and I(0) after AND_gate_delay;
        D(2) <= W(1) and I_not(0) after AND_gate_delay;
        D(3) <= W(1) and I(0) after AND_gate_delay;
        D(4) <= W(2) and I_not(0) after AND_gate_delay;
        D(5) <= W(2) and I(0) after AND_gate_delay;
        D(6) <= W(3) and I_not(0) after AND_gate_delay;
        D(7) <= W(3) and I(0) after AND_gate_delay;
        
        S(1) <= I_not(4) and I(3) after AND_gate_delay;
        T(2) <= S(1) and I_not(2) after AND_gate_delay;
        T(3) <= S(1) and I(2) after AND_gate_delay;
        W(4) <= T(2) and I_not(1) after AND_gate_delay;
        W(5) <= T(2) and I(1) after AND_gate_delay;
        W(6) <= T(3) and I_not(1) after AND_gate_delay;
        W(7) <= T(3) and I(1) after AND_gate_delay;
        D(8) <= W(4) and I_not(0) after AND_gate_delay;
        D(9) <= W(4) and I(0) after AND_gate_delay;
        D(10) <= W(5) and I_not(0) after AND_gate_delay;
        D(11) <= W(5) and I(0) after AND_gate_delay;
        D(12) <= W(6) and I_not(0) after AND_gate_delay;
        D(13) <= W(6) and I(0) after AND_gate_delay;
        D(14) <= W(7) and I_not(0) after AND_gate_delay;
        D(15) <= W(7) and I(0) after AND_gate_delay;
        
        S(2) <= I(4) and I_not(3) after AND_gate_delay;
        T(4) <= S(2) and I_not(2) after AND_gate_delay;
        T(5) <= S(2) and I(2) after AND_gate_delay;
        W(8) <= T(4) and I_not(1) after AND_gate_delay;
        W(9) <= T(4) and I(1) after AND_gate_delay;
        W(10) <= T(5) and I_not(1) after AND_gate_delay;
        W(11) <= T(5) and I(1) after AND_gate_delay;
        D(16) <= W(8) and I_not(0) after AND_gate_delay;
        D(17) <= W(8) and I(0) after AND_gate_delay;
        D(18) <= W(9) and I_not(0) after AND_gate_delay;
        D(19) <= W(9) and I(0) after AND_gate_delay;
        D(20) <= W(10) and I_not(0) after AND_gate_delay;
        D(21) <= W(10) and I(0) after AND_gate_delay;
        D(22) <= W(11) and I_not(0) after AND_gate_delay;
        D(23) <= W(11) and I(0) after AND_gate_delay;
        
        S(3) <= I(4) and I(3) after AND_gate_delay;
        T(6) <= S(3) and I_not(2) after AND_gate_delay;
        T(7) <= S(3) and I(2) after AND_gate_delay;
        W(12) <= T(6) and I_not(1) after AND_gate_delay;
        W(13) <= T(6) and I(1) after AND_gate_delay;
        W(14) <= T(7) and I_not(1) after AND_gate_delay;
        W(15) <= T(7) and I(1) after AND_gate_delay;
        D(24) <= W(12) and I_not(0) after AND_gate_delay;
        D(25) <= W(12) and I(0) after AND_gate_delay;
        D(26) <= W(13) and I_not(0) after AND_gate_delay;
        D(27) <= W(13) and I(0) after AND_gate_delay;
        D(28) <= W(14) and I_not(0) after AND_gate_delay;
        D(29) <= W(14) and I(0) after AND_gate_delay;
        D(30) <= W(15) and I_not(0) after AND_gate_delay;
        D(31) <= W(15) and I(0) after AND_gate_delay;


end Behavioral;
