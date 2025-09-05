----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 16.10.2023 09:06:14
-- Design Name: 
-- Module Name: RF_Register32Bit_22335824 - Behavioral
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


entity RF_Register32Bit_22335824 is
        Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end RF_Register32Bit_22335824;

architecture Behavioral of RF_Register32Bit_22335824 is

    COMPONENT RF_DFlipFlop_22335824
    Port ( CLK, D : in STD_LOGIC;
           Q : out STD_LOGIC);
    END COMPONENT;
    
    signal Not_Load_FF, Load_FF : std_logic;

    signal Q_bit : std_logic_vector(31 downto 0);
    
    signal OR_D : std_logic_vector(31 downto 0);
    
    signal Not_Load_And : std_logic_vector(31 downto 0);
    
    signal Load_And : std_logic_vector(31 downto 0);
    
     --  Propagation Delay according to StdentID e.g. 26 33 57 25(DEC)
   constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
   constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
   constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
   constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
   constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    Not_Load_FF <= not Load after NOT_gate_delay;
    Load_FF <= not Not_Load_FF after NOT_gate_delay;
    
    bit0: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(0), Q => Q_bit(0) );
   -- Load signal logic       
   Not_Load_And(0) <= Q_bit(0) and Not_Load_FF after AND_gate_delay;         
   OR_D(0) <= Not_Load_And(0) or Load_And(0) after OR_gate_delay;
   Load_And(0) <= D(0) and Load_FF after AND_gate_delay;         
   Q(0) <= Q_bit(0);
   
   -- Instantiate bit 1 ---------------------------------------------
   bit1: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(1), Q => Q_bit(1) );
   -- Load signal logic
   Not_Load_And(1) <= Q_bit(1) and Not_Load_FF after AND_gate_delay;    
   OR_D(1) <= Not_Load_And(1) or Load_And(1) after OR_gate_delay;
   Load_And(1) <= D(1) and Load_FF after AND_gate_delay;
   Q(1) <= Q_bit(1);
   
   -- Instantiate bit 2 ---------------------------------------------
   bit2: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(2), Q => Q_bit(2));          
   -- Load signal logic   
   Not_Load_And(2) <= Q_bit(2) and Not_Load_FF after AND_gate_delay;
   OR_D(2) <= Not_Load_And(2) or Load_And(2) after OR_gate_delay;
   Load_And(2) <= D(2) and Load_FF after AND_gate_delay;    
   Q(2) <= Q_bit(2); 
   
   -- Instantiate bit 3 ---------------------------------------------
   bit3: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(3), Q => Q_bit(3));          
   -- Load signal logic   
   Not_Load_And(3) <= Q_bit(3) and Not_Load_FF after AND_gate_delay;
   OR_D(3) <= Not_Load_And(3) or Load_And(3) after OR_gate_delay;
   Load_And(3) <= D(3) and Load_FF after AND_gate_delay;    
   Q(3) <= Q_bit(3); 
   
   -- Instantiate bit 4 ---------------------------------------------
   bit4: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(4), Q => Q_bit(4));          
   -- Load signal logic   
   Not_Load_And(4) <= Q_bit(4) and Not_Load_FF after AND_gate_delay;
   OR_D(4) <= Not_Load_And(4) or Load_And(4) after OR_gate_delay;
   Load_And(4) <= D(4) and Load_FF after AND_gate_delay;    
   Q(4) <= Q_bit(4); 
   
   -- Instantiate bit 5 ---------------------------------------------
   bit5: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(5), Q => Q_bit(5));          
   -- Load signal logic   
   Not_Load_And(5) <= Q_bit(5) and Not_Load_FF after AND_gate_delay;
   OR_D(5) <= Not_Load_And(5) or Load_And(5) after OR_gate_delay;
   Load_And(5) <= D(5) and Load_FF after AND_gate_delay;    
   Q(5) <= Q_bit(5); 
   
   -- Instantiate bit 6 ---------------------------------------------
   bit6: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(6), Q => Q_bit(6));          
   -- Load signal logic   
   Not_Load_And(6) <= Q_bit(6) and Not_Load_FF after AND_gate_delay;
   OR_D(6) <= Not_Load_And(6) or Load_And(6) after OR_gate_delay;
   Load_And(6) <= D(6) and Load_FF after AND_gate_delay;    
   Q(6) <= Q_bit(6); 
   
   -- Instantiate bit 7
   bit7: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(7), Q => Q_bit(7));          
   -- Load signal logic   
   Not_Load_And(7) <= Q_bit(7) and Not_Load_FF after AND_gate_delay;
   OR_D(7) <= Not_Load_And(7) or Load_And(7) after OR_gate_delay;
   Load_And(7) <= D(7) and Load_FF after AND_gate_delay;    
   Q(7) <= Q_bit(7);
   
   -- Instantiate bit 8
   bit8: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(8), Q => Q_bit(8) );
   -- Load signal logic       
   Not_Load_And(8) <= Q_bit(8) and Not_Load_FF after AND_gate_delay;         
   OR_D(8) <= Not_Load_And(8) or Load_And(8) after OR_gate_delay;
   Load_And(8) <= D(8) and Load_FF after AND_gate_delay;         
   Q(8) <= Q_bit(8);
   
   -- Instantiate bit 9 ---------------------------------------------
   bit9: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(9), Q => Q_bit(9) );
   -- Load signal logic
   Not_Load_And(9) <= Q_bit(9) and Not_Load_FF after AND_gate_delay;    
   OR_D(9) <= Not_Load_And(9) or Load_And(9) after OR_gate_delay;
   Load_And(9) <= D(9) and Load_FF after AND_gate_delay;
   Q(9) <= Q_bit(9);
   
   -- Instantiate bit 10 ---------------------------------------------
   bit10: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(10), Q => Q_bit(10));          
   -- Load signal logic   
   Not_Load_And(10) <= Q_bit(10) and Not_Load_FF after AND_gate_delay;
   OR_D(10) <= Not_Load_And(10) or Load_And(10) after OR_gate_delay;
   Load_And(10) <= D(10) and Load_FF after AND_gate_delay;    
   Q(10) <= Q_bit(10); 
   
   -- Instantiate bit 11 ---------------------------------------------
   bit11: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(11), Q => Q_bit(11));          
   -- Load signal logic   
   Not_Load_And(11) <= Q_bit(11) and Not_Load_FF after AND_gate_delay;
   OR_D(11) <= Not_Load_And(11) or Load_And(11) after OR_gate_delay;
   Load_And(11) <= D(11) and Load_FF after AND_gate_delay;    
   Q(11) <= Q_bit(11); 
   
   -- Instantiate bit 12 ---------------------------------------------
   bit12: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(12), Q => Q_bit(12));          
   -- Load signal logic   
   Not_Load_And(12) <= Q_bit(12) and Not_Load_FF after AND_gate_delay;
   OR_D(12) <= Not_Load_And(12) or Load_And(12) after OR_gate_delay;
   Load_And(12) <= D(12) and Load_FF after AND_gate_delay;    
   Q(12) <= Q_bit(12); 
   
   -- Instantiate bit 13 ---------------------------------------------
   bit13: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(13), Q => Q_bit(13));          
   -- Load signal logic   
   Not_Load_And(13) <= Q_bit(13) and Not_Load_FF after AND_gate_delay;
   OR_D(13) <= Not_Load_And(13) or Load_And(13) after OR_gate_delay;
   Load_And(13) <= D(13) and Load_FF after AND_gate_delay;    
   Q(13) <= Q_bit(13); 
   
   -- Instantiate bit 14 ---------------------------------------------
   bit14: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(14), Q => Q_bit(14));          
   -- Load signal logic   
   Not_Load_And(14) <= Q_bit(14) and Not_Load_FF after AND_gate_delay;
   OR_D(14) <= Not_Load_And(14) or Load_And(14) after OR_gate_delay;
   Load_And(14) <= D(14) and Load_FF after AND_gate_delay;    
   Q(14) <= Q_bit(14); 
   
   -- Instantiate bit 15 
   bit15: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(15), Q => Q_bit(15));          
   -- Load signal logic   
   Not_Load_And(15) <= Q_bit(15) and Not_Load_FF after AND_gate_delay;
   OR_D(15) <= Not_Load_And(15) or Load_And(15) after OR_gate_delay;
   Load_And(15) <= D(15) and Load_FF after AND_gate_delay;    
   Q(15) <= Q_bit(15);
   
   -- Instantiate bit 16
   bit16: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(16), Q => Q_bit(16) );
   -- Load signal logic       
   Not_Load_And(16) <= Q_bit(16) and Not_Load_FF after AND_gate_delay;         
   OR_D(16) <= Not_Load_And(16) or Load_And(16) after OR_gate_delay;
   Load_And(16) <= D(16) and Load_FF after AND_gate_delay;         
   Q(16) <= Q_bit(16);
   
   -- Instantiate bit 17 ---------------------------------------------
   bit17: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(17), Q => Q_bit(17) );
   -- Load signal logic
   Not_Load_And(17) <= Q_bit(17) and Not_Load_FF after AND_gate_delay;    
   OR_D(17) <= Not_Load_And(17) or Load_And(17) after OR_gate_delay;
   Load_And(17) <= D(17) and Load_FF after AND_gate_delay;
   Q(17) <= Q_bit(17);
   
   -- Instantiate bit 18 ---------------------------------------------
   bit18: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(18), Q => Q_bit(18));          
   -- Load signal logic   
   Not_Load_And(18) <= Q_bit(18) and Not_Load_FF after AND_gate_delay;
   OR_D(18) <= Not_Load_And(18) or Load_And(18) after OR_gate_delay;
   Load_And(18) <= D(18) and Load_FF after AND_gate_delay;    
   Q(18) <= Q_bit(18); 
   
   -- Instantiate bit 19 ---------------------------------------------
   bit19: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(19), Q => Q_bit(19));          
   -- Load signal logic   
   Not_Load_And(19) <= Q_bit(19) and Not_Load_FF after AND_gate_delay;
   OR_D(19) <= Not_Load_And(19) or Load_And(19) after OR_gate_delay;
   Load_And(19) <= D(19) and Load_FF after AND_gate_delay;    
   Q(19) <= Q_bit(19); 
   
   -- Instantiate bit 20 ---------------------------------------------
   bit20: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(20), Q => Q_bit(20));          
   -- Load signal logic   
   Not_Load_And(20) <= Q_bit(20) and Not_Load_FF after AND_gate_delay;
   OR_D(20) <= Not_Load_And(20) or Load_And(20) after OR_gate_delay;
   Load_And(20) <= D(20) and Load_FF after AND_gate_delay;    
   Q(20) <= Q_bit(20); 
   
   -- Instantiate bit 21 ---------------------------------------------
   bit21: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(21), Q => Q_bit(21));          
   -- Load signal logic   
   Not_Load_And(21) <= Q_bit(21) and Not_Load_FF after AND_gate_delay;
   OR_D(21) <= Not_Load_And(21) or Load_And(21) after OR_gate_delay;
   Load_And(21) <= D(21) and Load_FF after AND_gate_delay;    
   Q(21) <= Q_bit(21); 
   
   -- Instantiate bit 22 ---------------------------------------------
   bit22: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(22), Q => Q_bit(22));          
   -- Load signal logic   
   Not_Load_And(22) <= Q_bit(22) and Not_Load_FF after AND_gate_delay;
   OR_D(22) <= Not_Load_And(22) or Load_And(22) after OR_gate_delay;
   Load_And(22) <= D(22) and Load_FF after AND_gate_delay;    
   Q(22) <= Q_bit(22); 
   
   -- Instantiate bit 23
   bit23: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(23), Q => Q_bit(23));          
   -- Load signal logic   
   Not_Load_And(23) <= Q_bit(23) and Not_Load_FF after AND_gate_delay;
   OR_D(23) <= Not_Load_And(23) or Load_And(23) after OR_gate_delay;
   Load_And(23) <= D(23) and Load_FF after AND_gate_delay;    
   Q(23) <= Q_bit(23);
   
   -- Instantiate bit 24
   bit24: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(24), Q => Q_bit(24) );
   -- Load signal logic       
   Not_Load_And(24) <= Q_bit(24) and Not_Load_FF after AND_gate_delay;         
   OR_D(24) <= Not_Load_And(24) or Load_And(24) after OR_gate_delay;
   Load_And(24) <= D(24) and Load_FF after AND_gate_delay;         
   Q(24) <= Q_bit(24);
   
   -- Instantiate bit 25 ---------------------------------------------
   bit25: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(25), Q => Q_bit(25) );
   -- Load signal logic
   Not_Load_And(25) <= Q_bit(25) and Not_Load_FF after AND_gate_delay;    
   OR_D(25) <= Not_Load_And(25) or Load_And(25) after OR_gate_delay;
   Load_And(25) <= D(25) and Load_FF after AND_gate_delay;
   Q(25) <= Q_bit(25);
   
   -- Instantiate bit 26 ---------------------------------------------
   bit26: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(26), Q => Q_bit(26));          
   -- Load signal logic   
   Not_Load_And(26) <= Q_bit(26) and Not_Load_FF after AND_gate_delay;
   OR_D(26) <= Not_Load_And(26) or Load_And(26) after OR_gate_delay;
   Load_And(26) <= D(26) and Load_FF after AND_gate_delay;    
   Q(26) <= Q_bit(26); 
   
   -- Instantiate bit 27 ---------------------------------------------
   bit27: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(27), Q => Q_bit(27));          
   -- Load signal logic   
   Not_Load_And(27) <= Q_bit(27) and Not_Load_FF after AND_gate_delay;
   OR_D(27) <= Not_Load_And(27) or Load_And(27) after OR_gate_delay;
   Load_And(27) <= D(27) and Load_FF after AND_gate_delay;    
   Q(27) <= Q_bit(27); 
   
   -- Instantiate bit 28 ---------------------------------------------
   bit28: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(28), Q => Q_bit(28));          
   -- Load signal logic   
   Not_Load_And(28) <= Q_bit(28) and Not_Load_FF after AND_gate_delay;
   OR_D(28) <= Not_Load_And(28) or Load_And(28) after OR_gate_delay;
   Load_And(28) <= D(28) and Load_FF after AND_gate_delay;    
   Q(28) <= Q_bit(28); 
   
   -- Instantiate bit 29 ---------------------------------------------
   bit29: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(29), Q => Q_bit(29));          
   -- Load signal logic   
   Not_Load_And(29) <= Q_bit(29) and Not_Load_FF after AND_gate_delay;
   OR_D(29) <= Not_Load_And(29) or Load_And(29) after OR_gate_delay;
   Load_And(29) <= D(29) and Load_FF after AND_gate_delay;    
   Q(29) <= Q_bit(29); 
   
   -- Instantiate bit 30 ---------------------------------------------
   bit30: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(30), Q => Q_bit(30));          
   -- Load signal logic   
   Not_Load_And(30) <= Q_bit(30) and Not_Load_FF after AND_gate_delay;
   OR_D(30) <= Not_Load_And(30) or Load_And(30) after OR_gate_delay;
   Load_And(30) <= D(30) and Load_FF after AND_gate_delay;    
   Q(30) <= Q_bit(30); 
   
   -- Instantiate the most significant bit
   bit31: RF_DFlipFlop_22335824 PORT MAP (
          CLK => CLK, D => OR_D(31), Q => Q_bit(31));          
   -- Load signal logic   
   Not_Load_And(31) <= Q_bit(31) and Not_Load_FF after AND_gate_delay;
   OR_D(31) <= Not_Load_And(31) or Load_And(31) after OR_gate_delay;
   Load_And(31) <= D(31) and Load_FF after AND_gate_delay;    
   Q(31) <= Q_bit(31);


end Behavioral;
