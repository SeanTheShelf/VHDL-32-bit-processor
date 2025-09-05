----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 15:33:39
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_22335824 - Behavioral
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

entity CPU_Mux2_32Bit_22335824 is
        Port ( I0: in std_logic_vector (31 downto 0);
               I1: in std_logic_vector (31 downto 0);
               S: in std_logic;
               Y: out std_logic_vector(31 downto 0)
               );
end CPU_Mux2_32Bit_22335824;

architecture Behavioral of CPU_Mux2_32Bit_22335824 is

signal notS : std_logic;
signal and00, and01 : std_logic;
signal and10, and11 : std_logic;
signal and20, and21 : std_logic;
signal and30, and31 : std_logic;
signal and40, and41 : std_logic;
signal and50, and51 : std_logic;
signal and60, and61 : std_logic;
signal and70, and71 : std_logic;
signal and80, and81 : std_logic;
signal and90, and91 : std_logic;
signal and100, and101 : std_logic;
signal and110, and111 : std_logic;
signal and120, and121 : std_logic;
signal and130, and131 : std_logic;
signal and140, and141 : std_logic;
signal and150, and151 : std_logic;
signal and160, and161 : std_logic;
signal and170, and171 : std_logic;
signal and180, and181 : std_logic;
signal and190, and191 : std_logic;
signal and200, and201 : std_logic;
signal and210, and211 : std_logic;
signal and220, and221 : std_logic;
signal and230, and231 : std_logic;
signal and240, and241 : std_logic;
signal and250, and251 : std_logic;
signal and260, and261 : std_logic;
signal and270, and271 : std_logic;
signal and280, and281 : std_logic;
signal and290, and291 : std_logic;
signal and300, and301 : std_logic;
signal and310, and311 : std_logic;

constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    notS <= not S after NOT_gate_delay;
    
    and00 <= I0(0) and notS after AND_gate_delay;
    and01 <= I1(0) and S after AND_gate_delay;
    Y(0) <= and00 or and01 after OR_gate_delay;
    
    and10 <= I0(1) and notS after AND_gate_delay;
    and11 <= I1(1) and S after AND_gate_delay;
    Y(1) <= and10 or and11 after OR_gate_delay;
    
    and20 <= I0(2) and notS after AND_gate_delay;
    and21 <= I1(2) and S after AND_gate_delay;
    Y(2) <= and20 or and21 after OR_gate_delay;
    
    and30 <= I0(3) and notS after AND_gate_delay;
    and31 <= I1(3) and S after AND_gate_delay;
    Y(3) <= and30 or and31 after OR_gate_delay;
    
    and40 <= I0(4) and notS after AND_gate_delay;
    and41 <= I1(4) and S after AND_gate_delay;
    Y(4) <= and40 or and41 after OR_gate_delay;
    
    and50 <= I0(5) and notS after AND_gate_delay;
    and51 <= I1(5) and S after AND_gate_delay;
    Y(5) <= and50 or and51 after OR_gate_delay;
    
    and60 <= I0(6) and notS after AND_gate_delay;
    and61 <= I1(6) and S after AND_gate_delay;
    Y(6) <= and60 or and61 after OR_gate_delay;
    
    and70 <= I0(7) and notS after AND_gate_delay;
    and71 <= I1(7) and S after AND_gate_delay;
    Y(7) <= and70 or and71 after OR_gate_delay;
    
    and80 <= I0(8) and notS after AND_gate_delay;
    and81 <= I1(8) and S after AND_gate_delay;
    Y(8) <= and80 or and81 after OR_gate_delay;
    
    and90 <= I0(9) and notS after AND_gate_delay;
    and91 <= I1(9) and S after AND_gate_delay;
    Y(9) <= and90 or and91 after OR_gate_delay;
    
    and100 <= I0(10) and notS after AND_gate_delay;
    and101 <= I1(10) and S after AND_gate_delay;
    Y(10) <= and100 or and101 after OR_gate_delay;
    
    and110 <= I0(11) and notS after AND_gate_delay;
    and111 <= I1(11) and S after AND_gate_delay;
    Y(11) <= and110 or and111 after OR_gate_delay;
    
    and120 <= I0(12) and notS after AND_gate_delay;
    and121 <= I1(12) and S after AND_gate_delay;
    Y(12) <= and120 or and121 after OR_gate_delay;
    
    and130 <= I0(13) and notS after AND_gate_delay;
    and131 <= I1(13) and S after AND_gate_delay;
    Y(13) <= and130 or and131 after OR_gate_delay;
    
    and140 <= I0(14) and notS after AND_gate_delay;
    and141 <= I1(14) and S after AND_gate_delay;
    Y(14) <= and140 or and141 after OR_gate_delay;
    
    and150 <= I0(15) and notS after AND_gate_delay;
    and151 <= I1(15) and S after AND_gate_delay;
    Y(15) <= and150 or and151 after OR_gate_delay;
    
    and160 <= I0(16) and notS after AND_gate_delay;
    and161 <= I1(16) and S after AND_gate_delay;
    Y(16) <= and160 or and161 after OR_gate_delay;
    
    and170 <= I0(17) and notS after AND_gate_delay;
    and171 <= I1(17) and S after AND_gate_delay;
    Y(17) <= and170 or and171 after OR_gate_delay;
    
    and180 <= I0(18) and notS after AND_gate_delay;
    and181 <= I1(18) and S after AND_gate_delay;
    Y(18) <= and180 or and181 after OR_gate_delay;
    
    and190 <= I0(19) and notS after AND_gate_delay;
    and191 <= I1(19) and S after AND_gate_delay;
    Y(19) <= and190 or and191 after OR_gate_delay;
    
    and200 <= I0(20) and notS after AND_gate_delay;
    and201 <= I1(20) and S after AND_gate_delay;
    Y(20) <= and200 or and201 after OR_gate_delay;
    
    and210 <= I0(21) and notS after AND_gate_delay;
    and211 <= I1(21) and S after AND_gate_delay;
    Y(21) <= and210 or and211 after OR_gate_delay;
    
    and220 <= I0(22) and notS after AND_gate_delay;
    and221 <= I1(22) and S after AND_gate_delay;
    Y(22) <= and220 or and221 after OR_gate_delay;
    
    and230 <= I0(23) and notS after AND_gate_delay;
    and231 <= I1(23) and S after AND_gate_delay;
    Y(23) <= and230 or and231 after OR_gate_delay;
    
    and240 <= I0(24) and notS after AND_gate_delay;
    and241 <= I1(24) and S after AND_gate_delay;
    Y(24) <= and240 or and241 after OR_gate_delay;
    
    and250 <= I0(25) and notS after AND_gate_delay;
    and251 <= I1(25) and S after AND_gate_delay;
    Y(25) <= and250 or and251 after OR_gate_delay;
    
    and260 <= I0(26) and notS after AND_gate_delay;
    and261 <= I1(26) and S after AND_gate_delay;
    Y(26) <= and260 or and261 after OR_gate_delay;
    
    and270 <= I0(27) and notS after AND_gate_delay;
    and271 <= I1(27) and S after AND_gate_delay;
    Y(27) <= and270 or and271 after OR_gate_delay;
    
    and280 <= I0(28) and notS after AND_gate_delay;
    and281 <= I1(28) and S after AND_gate_delay;
    Y(28) <= and280 or and281 after OR_gate_delay;
    
    and290 <= I0(29) and notS after AND_gate_delay;
    and291 <= I1(29) and S after AND_gate_delay;
    Y(29) <= and290 or and291 after OR_gate_delay;
    
    and300 <= I0(30) and notS after AND_gate_delay;
    and301 <= I1(30) and S after AND_gate_delay;
    Y(30) <= and300 or and301 after OR_gate_delay;
    
    and310 <= I0(31) and notS after AND_gate_delay;
    and311 <= I1(31) and S after AND_gate_delay;
    Y(31) <= and310 or and311 after OR_gate_delay;


end Behavioral;
