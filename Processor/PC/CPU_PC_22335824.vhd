----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 14:15:03
-- Design Name: 
-- Module Name: CPU_PC_22335824 - Behavioral
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


entity CPU_PC_22335824 is
    Port ( Clock : in std_logic;
           Reset : in std_logic;
           PL : in std_logic;
           Displacement : in std_logic_vector(31 downto 0);
           PI : in std_logic;
           InstAdd : out std_logic_vector(31 downto 0) 
    );
end CPU_PC_22335824;

architecture Behavioral of CPU_PC_22335824 is

    component CPU_Mux2_32Bit_22335824
        Port ( I0: in std_logic_vector (31 downto 0);
               I1: in std_logic_vector (31 downto 0);
               S: in std_logic;
               Y: out std_logic_vector(31 downto 0)
               );
    end component;
    
    component DP_RippleCarryAdder32Bit_22335824
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC_VECTOR (31 downto 0);
           C_OUT : out STD_LOGIC;
           V : out STD_LOGIC);
    end component;
    
    component RF_Register32Bit_22335824
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0);
           Reset : in std_logic
           );
    end component;
    
    signal PCLoad0, PCLoad : std_logic;
    
    signal MuxToAddB : std_logic_vector(31 downto 0);
    signal PCOut : std_logic_vector(31 downto 0);
    
    signal SumToReset : std_logic_vector(31 downto 0);
    signal ResetToPC : std_logic_vector(31 downto 0);
    
    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    PL_PI_Mux: CPU_Mux2_32Bit_22335824 port map(
    I0 => Displacement, I1 => X"00000001", S => PI, Y => MuxToAddB
    );
    
    Adder: DP_RippleCarryAdder32Bit_22335824 port map(
    A => PCOut, B => MuxToAddB, C_IN => '0', SUM => SumToReset
    );
    
    ResetMux: CPU_Mux2_32Bit_22335824 port map(
    I0 => SumToReset, I1 => X"00000004", S => Reset, Y => ResetToPC
    );
    
    PC: RF_Register32Bit_22335824 port map(
    CLK => Clock, D => ResetToPC, Load => PCLoad, Reset => '0', Q => PCOut
    );
    
    PCLoad0 <= Reset or PL after OR_gate_delay;
    PCLoad <= PCLoad0 or PI after OR_gate_delay;
    InstAdd <= PCOut;


end Behavioral;
