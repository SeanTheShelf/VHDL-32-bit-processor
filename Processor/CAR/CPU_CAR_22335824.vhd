----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 26.11.2023 16:03:26
-- Design Name: 
-- Module Name: CPU_CAR_22335824 - Behavioral
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


entity CPU_CAR_22335824 is
    Port(Address : in std_logic_vector(16 downto 0);
         LoadAdd : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         CMAdd : out std_logic_vector(16 downto 0)
         );
end CPU_CAR_22335824;

architecture Behavioral of CPU_CAR_22335824 is

    component CPU_JKFlipFlop_22335824
    Port(K : in std_logic;
         J : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         Q : out std_logic;
         Q_not : out std_logic
         );
    end component;
    
    signal Q_SUM_01, Q_SUM_02, Q_SUM_03, Q_SUM_04 : std_logic;
    signal Q_SUM_05, Q_SUM_06, Q_SUM_07, Q_SUM_08 : std_logic;
    signal Q_SUM_09, Q_SUM_10, Q_SUM_11, Q_SUM_12 : std_logic;
    signal Q_SUM_13, Q_SUM_14, Q_SUM_15 : std_logic;
    
    signal Set00, Set01, Set02, Set03 : std_logic;
    signal Set04, Set05, Set06, Set07 : std_logic;
    signal Set08, Set09, Set10, Set11 : std_logic;
    signal Set12, Set13, Set14, Set15, Set16 : std_logic;
    
    signal Toggle01, Toggle02, Toggle03, Toggle04 : std_logic;
    signal Toggle05, Toggle06, Toggle07, Toggle08 : std_logic;
    signal Toggle09, Toggle10, Toggle11, Toggle12 : std_logic;
    signal Toggle13, Toggle14, Toggle15, Toggle16 : std_logic;
    
    signal Reset00, Reset01, Reset02, Reset03 : std_logic;
    signal Reset04, Reset05, Reset06, Reset07 : std_logic;
    signal Reset08, Reset09, Reset10, Reset11 : std_logic;
    signal Reset12, Reset13, Reset14, Reset15, Reset16 : std_logic;
    
    signal J00, J01, J02, J03 : std_logic;
    signal J04, J05, J06, J07 : std_logic;
    signal J08, J09, J10, J11 : std_logic;
    signal J12, J13, J14, J15, J16 : std_logic;
    
    signal K00, K01, K02, K03 : std_logic;
    signal K04, K05, K06, K07 : std_logic;
    signal K08, K09, K10, K11 : std_logic;
    signal K12, K13, K14, K15, K16 : std_logic;
    
    signal Toggle, Load : std_logic;
    
    signal JKOut : std_logic_vector(16 downto 0);
    
    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    JKFlipFlop00: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J00, K => K00, Reset => Reset, Q => JKOut(0)
    ); 
    
    JKFlipFlop01: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J01, K => K01, Reset => Reset, Q => JKOut(1)
    );
    
    JKFlipFlop02: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J02, K => K02, Reset => Reset, Q => JKOut(2)
    ); 
    
    JKFlipFlop03: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J03, K => K03, Reset => Reset, Q => JKOut(3)
    );
    
    JKFlipFlop04: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J04, K => K04, Reset => Reset, Q => JKOut(4)
    ); 
    
    JKFlipFlop05: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J05, K => K05, Reset => Reset, Q => JKOut(5)
    );
    
    JKFlipFlop06: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J06, K => K06, Reset => Reset, Q => JKOut(6)
    ); 
    
    JKFlipFlop07: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J07, K => K07, Reset => Reset, Q => JKOut(7)
    );
    
    JKFlipFlop08: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J08, K => K08, Reset => Reset, Q => JKOut(8)
    ); 
    
    JKFlipFlop09: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J09, K => K09, Reset => Reset, Q => JKOut(9)
    );
    
    JKFlipFlop10: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J10, K => K10, Reset => Reset, Q => JKOut(10)
    ); 
    
    JKFlipFlop11: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J11, K => K11, Reset => Reset, Q => JKOut(11)
    );
    
    JKFlipFlop12: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J12, K => K12, Reset => Reset, Q => JKOut(12)
    ); 
    
    JKFlipFlop13: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J13, K => K13, Reset => Reset, Q => JKOut(13)
    );
    
    JKFlipFlop14: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J14, K => K14, Reset => Reset, Q => JKOut(14)
    ); 
    
    JKFlipFlop15: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J15, K => K15, Reset => Reset, Q => JKOut(15)
    );
    
    JKFlipFlop16: CPU_JKFlipFlop_22335824 port map(
    Clock => Clock, J => J16, K => K16, Reset => Reset, Q => JKOut(16)
    );
    
    Toggle <= not LoadAdd after NOT_gate_delay;
    Load <= not Toggle after NOT_gate_delay;
    
    Q_SUM_01 <= JKOut(0) and JKOut(1) after AND_gate_delay;
    Q_SUM_02 <= Q_SUM_01 and JKOut(2) after AND_gate_delay;
    Q_SUM_03 <= Q_SUM_02 and JKOut(3) after AND_gate_delay;
    Q_SUM_04 <= Q_SUM_03 and JKOut(4) after AND_gate_delay;
    Q_SUM_05 <= Q_SUM_04 and JKOut(5) after AND_gate_delay;
    Q_SUM_06 <= Q_SUM_05 and JKOut(6) after AND_gate_delay;
    Q_SUM_07 <= Q_SUM_06 and JKOut(7) after AND_gate_delay;
    Q_SUM_08 <= Q_SUM_07 and JKOut(8) after AND_gate_delay;
    Q_SUM_09 <= Q_SUM_08 and JKOut(9) after AND_gate_delay;
    Q_SUM_10 <= Q_SUM_09 and JKOut(10) after AND_gate_delay;
    Q_SUM_11 <= Q_SUM_10 and JKOut(11) after AND_gate_delay;
    Q_SUM_12 <= Q_SUM_11 and JKOut(12) after AND_gate_delay;
    Q_SUM_13 <= Q_SUM_12 and JKOut(13) after AND_gate_delay;
    Q_SUM_14 <= Q_SUM_13 and JKOut(14) after AND_gate_delay;
    Q_SUM_15 <= Q_SUM_14 and JKOut(15) after AND_gate_delay;
    
    Set00 <= (not Toggle) and Address(0) after AND_gate_delay;
    Reset00 <= (not Toggle) and (not Address(0)) after AND_gate_delay;
    J00 <= Set00 or Toggle after OR_gate_delay;
    K00 <= Reset00 or Toggle after OR_gate_delay;
    
    Set01 <= Load and Address(1) after AND_gate_delay;
    Reset01 <= Load and (not Address(1)) after AND_gate_delay;
    Toggle01 <= Toggle and JKOut(0) after AND_gate_delay;
    J01 <= Set01 or  Toggle01 after OR_gate_delay;
    K01 <= Reset01 or Toggle01 after OR_gate_delay;
    
    Set02 <= Load and Address(2) after AND_gate_delay;
    Reset02 <= Load and (not Address(2)) after AND_gate_delay;
    Toggle02 <= Toggle and Q_SUM_01 after AND_gate_delay;
    J02 <= Set02 or  Toggle02 after OR_gate_delay;
    K02 <= Reset02 or Toggle02 after OR_gate_delay;
    
    Set03 <= Load and Address(3) after AND_gate_delay;
    Reset03 <= Load and (not Address(3)) after AND_gate_delay;
    Toggle03 <= Toggle and Q_SUM_02 after AND_gate_delay;
    J03 <= Set03 or  Toggle03 after OR_gate_delay;
    K03 <= Reset03 or Toggle03 after OR_gate_delay;
    
    Set04 <= Load and Address(4) after AND_gate_delay;
    Reset04 <= Load and (not Address(4)) after AND_gate_delay;
    Toggle04 <= Toggle and Q_SUM_03 after AND_gate_delay;
    J04 <= Set04 or  Toggle04 after OR_gate_delay;
    K04 <= Reset04 or Toggle04 after OR_gate_delay;
    
    Set05 <= Load and Address(5) after AND_gate_delay;
    Reset05 <= Load and (not Address(5)) after AND_gate_delay;
    Toggle05 <= Toggle and Q_SUM_04 after AND_gate_delay;
    J05 <= Set05 or  Toggle05 after OR_gate_delay;
    K05 <= Reset05 or Toggle05 after OR_gate_delay;
    
    Set06 <= Load and Address(6) after AND_gate_delay;
    Reset06 <= Load and (not Address(6)) after AND_gate_delay;
    Toggle06 <= Toggle and Q_SUM_05 after AND_gate_delay;
    J06 <= Set06 or  Toggle06 after OR_gate_delay;
    K06 <= Reset06 or Toggle06 after OR_gate_delay;
    
    Set07 <= Load and Address(7) after AND_gate_delay;
    Reset07 <= Load and (not Address(7)) after AND_gate_delay;
    Toggle07 <= Toggle and Q_SUM_06 after AND_gate_delay;
    J07 <= Set07 or  Toggle07 after OR_gate_delay;
    K07 <= Reset07 or Toggle07 after OR_gate_delay;
    
    Set08 <= Load and Address(8) after AND_gate_delay;
    Reset08 <= Load and (not Address(8)) after AND_gate_delay;
    Toggle08 <= Toggle and Q_SUM_07 after AND_gate_delay;
    J08 <= Set08 or  Toggle08 after OR_gate_delay;
    K08 <= Reset08 or Toggle08 after OR_gate_delay;
    
    Set09 <= Load and Address(9) after AND_gate_delay;
    Reset09 <= Load and (not Address(9)) after AND_gate_delay;
    Toggle09 <= Toggle and Q_SUM_08 after AND_gate_delay;
    J09 <= Set09 or  Toggle09 after OR_gate_delay;
    K09 <= Reset09 or Toggle09 after OR_gate_delay;
    
    Set10 <= Load and Address(10) after AND_gate_delay;
    Reset10 <= Load and (not Address(10)) after AND_gate_delay;
    Toggle10 <= Toggle and Q_SUM_09 after AND_gate_delay;
    J10 <= Set10 or  Toggle10 after OR_gate_delay;
    K10 <= Reset10 or Toggle10 after OR_gate_delay;
    
    Set11 <= Load and Address(11) after AND_gate_delay;
    Reset11 <= Load and (not Address(11)) after AND_gate_delay;
    Toggle11 <= Toggle and Q_SUM_10 after AND_gate_delay;
    J11 <= Set11 or  Toggle11 after OR_gate_delay;
    K11 <= Reset11 or Toggle11 after OR_gate_delay;
    
    Set12 <= Load and Address(12) after AND_gate_delay;
    Reset12 <= Load and (not Address(12)) after AND_gate_delay;
    Toggle12 <= Toggle and Q_SUM_11 after AND_gate_delay;
    J12 <= Set12 or  Toggle12 after OR_gate_delay;
    K12 <= Reset12 or Toggle12 after OR_gate_delay;
    
    Set13 <= Load and Address(13) after AND_gate_delay;
    Reset13 <= Load and (not Address(13)) after AND_gate_delay;
    Toggle13 <= Toggle and Q_SUM_12 after AND_gate_delay;
    J13 <= Set13 or  Toggle13 after OR_gate_delay;
    K13 <= Reset13 or Toggle13 after OR_gate_delay;
    
    Set14 <= Load and Address(14) after AND_gate_delay;
    Reset14 <= Load and (not Address(14)) after AND_gate_delay;
    Toggle14 <= Toggle and Q_SUM_13 after AND_gate_delay;
    J14 <= Set14 or  Toggle14 after OR_gate_delay;
    K14 <= Reset14 or Toggle14 after OR_gate_delay;
    
    Set15 <= Load and Address(15) after AND_gate_delay;
    Reset15 <= Load and (not Address(15)) after AND_gate_delay;
    Toggle15 <= Toggle and Q_SUM_14 after AND_gate_delay;
    J15 <= Set15 or  Toggle15 after OR_gate_delay;
    K15 <= Reset15 or Toggle15 after OR_gate_delay;
    
    Set16 <= Load and Address(16) after AND_gate_delay;
    Reset16 <= Load and (not Address(16)) after AND_gate_delay;
    Toggle16 <= Toggle and Q_SUM_15 after AND_gate_delay;
    J16 <= Set16 or  Toggle16 after OR_gate_delay;
    K16 <= Reset16 or Toggle16 after OR_gate_delay;
    
    CMAdd <= JKOut;


end Behavioral;
