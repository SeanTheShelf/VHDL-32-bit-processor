----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 16.10.2023 15:40:02
-- Design Name: 
-- Module Name: RF_Test_RegisterFile_32_15_22335824 - Behavioral
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


entity RF_Test_RegisterFile_32_15_22335824 is
        
        port ( A_B_DataIN_Test : in std_logic_vector(1 downto 0);
               D_Test : in std_logic_vector(31 downto 0);
               Clock_Test, RW_Test : in std_logic;
               DR_Test, SA_Test, SB_Test : in std_logic_vector(4 downto 0);
               TA_Test, TB_Test, TD_Test : in std_logic_vector(3 downto 0));
               
end RF_Test_RegisterFile_32_15_22335824;

architecture Behavioral of RF_Test_RegisterFile_32_15_22335824 is

        component RF_RegisterFile_32_15_22335824
        port ( TA, TD, TB : in std_logic_vector(3 downto 0);
               SA, DR, SB : in std_logic_vector(4 downto 0);
               D : in std_logic_vector(31 downto 0);
               RW, CLK : in std_logic;
               A, B : out std_logic_vector(31 downto 0)
               );
        end component;
        
        component RF_Mux3_32Bit_22335824
        port ( I0, I1, I2 : in std_logic_vector (31 downto 0);
               S: in std_logic_vector (1 downto 0);
               Y: out std_logic_vector (31 downto 0));
        end component;
        
        signal A_Test, B_Test, Y_Test : std_logic_vector(31 downto 0);

        constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
        constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
        constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
        constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
        constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
        constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
        constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

        RegFile: RF_RegisterFile_32_15_22335824 PORT map(
        CLK => Clock_Test, D => Y_Test, DR => DR_Test, RW => RW_Test,
        SA => SA_Test, SB => SB_Test, TA => TA_Test, TB => TB_Test,
        TD => TD_Test, A => A_Test, B => B_Test);
        
        Mux3 : RF_Mux3_32Bit_22335824 PORT MAP (
        S => A_B_DataIN_Test, I0 => A_Test, I1 => B_Test,
        I2 => D_Test, Y => Y_Test);


end Behavioral;
