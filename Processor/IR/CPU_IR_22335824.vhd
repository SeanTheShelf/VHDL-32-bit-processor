----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 15:25:59
-- Design Name: 
-- Module Name: CPU_IR_22335824 - Behavioral
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


entity CPU_IR_22335824 is
    port (
    Clock : in std_logic;
    IL : in std_logic;
    Instruction : in std_logic_vector(31 downto 0);
    DR : out std_logic_vector(4 downto 0);
    Opcode : out std_logic_vector(16 downto 0);
    SA : out std_logic_vector(4 downto 0);
    SB : out std_logic_vector(4 downto 0)
    );
end CPU_IR_22335824;

architecture Behavioral of CPU_IR_22335824 is

    component RF_Register32Bit_22335824
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0);
           Reset : in std_logic
           );
    end component;
    
    
   constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
   constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    InstReg: RF_Register32Bit_22335824 port map(
    CLK => Clock, Load => IL, D => Instruction, Q(0) => SB(0),
    Q(1) => SB(1), Q(2) => SB (2), Q(3) => SB(3), Q(4) => SB(4),
    Q(5) => SA(0), Q(6) => SA(1), Q(7) => SA(2), Q(8) => SA(3),
    Q(9) => SA(4), Q(10) => DR(0), Q(11) => DR(1), Q(12) => DR(2), 
    Q(13) => DR(3), Q(14) => DR(4), Q(15) => Opcode(0), Q(16) => Opcode(1),
    Q(17) => Opcode(2), Q(18) => Opcode(3), Q(19) => Opcode(4), Q(20) => Opcode(5),
    Q(21) => Opcode(6), Q(22) => Opcode(7), Q(23) => Opcode(8), Q(24) => Opcode(9),
    Q(25) => Opcode(10), Q(26) => Opcode(11), Q(27) => Opcode(12),
    Q(28) => Opcode(13), Q(29) => Opcode(14), Q(30) => Opcode(15), Q(31) => Opcode(16),
    Reset => '0'
    );


end Behavioral;
