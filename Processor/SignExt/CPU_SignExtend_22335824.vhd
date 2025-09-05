----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 20.12.2023 12:32:21
-- Design Name: 
-- Module Name: CPU_SignExtend_22335824 - Behavioral
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


entity CPU_SignExtend_22335824 is
    port(
    Input : in std_logic_vector(9 downto 0);
    Output : out std_logic_vector(31 downto 0)
    );
end CPU_SignExtend_22335824;

architecture Behavioral of CPU_SignExtend_22335824 is

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

    Bit31: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(31)
    );
    
    Bit30: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(30)
    );
    
    Bit29: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(29)
    );
    
    Bit28: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(28)
    );
    
    Bit27: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(27)
    );
    
    Bit26: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(26)
    );
    
    Bit25: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(25)
    );
    
    Bit24: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(24)
    );
    
    Bit23: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(23)
    );
    
    Bit22: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(22)
    );
    
    Bit21: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(21)
    );
    
    Bit20: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(20)
    );
    
    Bit19: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(19)
    );
    
    Bit18: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(18)
    );
    
    Bit17: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(17)
    );
    
    Bit16: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(16)
    );
    
    Bit15: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(15)
    );
    
    Bit14: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(14)
    );
    
    Bit13: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(13)
    );
    
    Bit12: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(12)
    );
    
    Bit11: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(11)
    );
    
    Bit10: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => '0', C_Shift => '1', FS4 => Input(9), C => Output(10)
    );
    
    Output(9) <= Input(9);
    Output(8) <= Input(8);
    Output(7) <= Input(7);
    Output(6) <= Input(6);
    Output(5) <= Input(5);
    Output(4) <= Input(4);
    Output(3) <= Input(3);
    Output(2) <= Input(2);
    Output(1) <= Input(1);
    Output(0) <= Input(0);


end Behavioral;
