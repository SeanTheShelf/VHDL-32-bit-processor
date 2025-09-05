----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 16:29:02
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_22335824 - Behavioral
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

entity DP_ArithmeticLogicUnit_22335824 is
        port( C_IN : in std_logic;
              A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              S0 : in std_logic;
              S1 : in std_logic;
              S2 : in std_logic;
              C : out std_logic;
              V : out std_logic;
              G : out std_logic_vector(31 downto 0)
              );
end DP_ArithmeticLogicUnit_22335824;

architecture Behavioral of DP_ArithmeticLogicUnit_22335824 is

        component DP_32Bit_B_Logic_22335824
        port ( B : in std_logic_vector (31 downto 0);
               S0: in std_logic;
               S1 : in std_logic;
               Y: out std_logic_vector (31 downto 0));
        end component;
        
        component DP_RippleCarryAdder32Bit_22335824
        Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC_VECTOR (31 downto 0);
           C_OUT : out STD_LOGIC;
           V : out STD_LOGIC);
        end component;
        
        component DP_32Bit_LogicCircuit_22335824
        port( A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              S0 : in std_logic;
              S1 : in std_logic;
              G : out std_logic_vector(31 downto 0)
              );
        end component;
        
        component CPU_Mux2_32Bit_22335824
        Port ( I0: in std_logic_vector (31 downto 0);
               I1: in std_logic_vector (31 downto 0);
               S: in std_logic;
               Y: out std_logic_vector(31 downto 0)
               );
        end component;
        
        signal BLogic_to_Adder, Adder_to_ALUMux, Logic_to_ALUMux : std_logic_vector(31 downto 0);
        signal c_out, v_out : std_logic;
        
        constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
        constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
        constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
        constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
        constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
        constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
        constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    BLogic: DP_32Bit_B_Logic_22335824 port map(
    B => B, S0 => S0, S1 => S1, Y => BLogic_to_Adder);
    
    Adder: DP_RippleCarryAdder32Bit_22335824 port map(
    C_IN => C_IN, A => A, B => BLogic_to_Adder, C_OUT => C, SUM => Adder_to_ALUMux, V => V);
    
    LogicCircuit: DP_32Bit_LogicCircuit_22335824 port map(
    A => A, B => B, S0 => S0, S1 => S1, G => Logic_to_ALUMux);
    
    ALUMux: CPU_Mux2_32Bit_22335824 port map(
    I0 => Adder_to_ALUMux, I1 => Logic_to_ALUMux, S => S2, Y => G);


end Behavioral;
