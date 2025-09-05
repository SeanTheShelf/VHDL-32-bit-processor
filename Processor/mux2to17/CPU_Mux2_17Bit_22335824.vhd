----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 11:33:29
-- Design Name: 
-- Module Name: CPU_Mux2_17Bit_22335824 - Behavioral
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


entity CPU_Mux2_17Bit_22335824 is
        port ( In0, In1 : in std_logic_vector(16 downto 0);
               Sel : in std_logic;
               Z : out std_logic_vector(16 downto 0)
               );
end CPU_Mux2_17Bit_22335824;

architecture Behavioral of CPU_Mux2_17Bit_22335824 is

    component DP_CFlagMux2_1Bit_22335824
    Port( C_ALU : in std_logic;
              C_Shift : in std_logic;
              FS4 : in std_logic;
              C : out std_logic);
    end component;
    
        constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
        constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
        constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
        constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
        constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
        constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
        constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1
        
        

begin

    Bit00: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(0), C_Shift => In1(0), FS4 => Sel, C => Z(0)
    );
    
    Bit01: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(1), C_Shift => In1(1), FS4 => Sel, C => Z(1)
    );
    
    Bit02: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(2), C_Shift => In1(2), FS4 => Sel, C => Z(2)
    );
    
    Bit03: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(3), C_Shift => In1(3), FS4 => Sel, C => Z(3)
    );
    
    Bit04: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(4), C_Shift => In1(4), FS4 => Sel, C => Z(4)
    );
    
    Bit05: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(5), C_Shift => In1(5), FS4 => Sel, C => Z(5)
    );
    
    Bit06: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(6), C_Shift => In1(6), FS4 => Sel, C => Z(6)
    );
    
    Bit07: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(7), C_Shift => In1(7), FS4 => Sel, C => Z(7)
    );
    
    Bit08: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(8), C_Shift => In1(8), FS4 => Sel, C => Z(8)
    );
    
    Bit09: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(9), C_Shift => In1(9), FS4 => Sel, C => Z(9)
    );
    
    Bit10: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(10), C_Shift => In1(10), FS4 => Sel, C => Z(10)
    );
    
    Bit11: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(11), C_Shift => In1(11), FS4 => Sel, C => Z(11)
    );
    
    Bit12: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(12), C_Shift => In1(12), FS4 => Sel, C => Z(12)
    );
    
    Bit13: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(13), C_Shift => In1(13), FS4 => Sel, C => Z(13)
    );
    
    Bit14: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(14), C_Shift => In1(14), FS4 => Sel, C => Z(14)
    );
    
    Bit15: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(15), C_Shift => In1(15), FS4 => Sel, C => Z(15)
    );
    
    Bit16: DP_CFlagMux2_1Bit_22335824 port map (
    C_ALU => In0(16), C_Shift => In1(16), FS4 => Sel, C => Z(16)
    );

end Behavioral;
