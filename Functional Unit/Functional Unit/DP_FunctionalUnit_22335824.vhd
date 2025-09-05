----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 07.11.2023 21:32:36
-- Design Name: 
-- Module Name: DP_FunctionalUnit_22335824 - Behavioral
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


entity DP_FunctionalUnit_22335824 is
        Port( A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              FS : in std_logic_vector(4 downto 0);
              C : out std_logic;
              F : out std_logic_vector(31 downto 0);
              N : out std_logic;
              Z : out std_logic;
              V : out std_logic
              );
end DP_FunctionalUnit_22335824;

architecture Behavioral of DP_FunctionalUnit_22335824 is

    component DP_ArithmeticLogicUnit_22335824
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
    end component;   
    
    component  DP_Shifter_22335824
        port(B : in std_logic_vector(31 downto 0);
             S1 : in std_logic;
             S2 : in std_logic;
             G : out std_logic_vector(31 downto 0);
             C : out std_logic
             );
    end component;
    
    component CPU_Mux2_32Bit_22335824
        Port ( I0: in std_logic_vector (31 downto 0);
               I1: in std_logic_vector (31 downto 0);
               S: in std_logic;
               Y: out std_logic_vector(31 downto 0)
               );
    end component;
    
    component DP_CFlagMux2_1Bit_22335824
        Port( C_ALU : in std_logic;
              C_Shift : in std_logic;
              FS4 : in std_logic;
              C : out std_logic
              );
    end component;
    
    component DP_ZeroDetection_22335824
        Port( MuxF_to_F : in std_logic_vector(31 downto 0);
              Z : out std_logic
              );
    end component;
    
signal ALU_C, Shift_C : std_logic;
signal ALU_G, Shift_G, MuxF_Z : std_logic_vector(31 downto 0);          

begin

    ALU: DP_ArithmeticLogicUnit_22335824 port map(
    A => A, B => B, C_IN => FS(0), S0 => FS(1), S1 => FS(2),
    S2 => FS(3), C => ALU_C, G => ALU_G, V => V);
    
    Shifter: DP_Shifter_22335824 port map(
    B => B, S1 => FS(2), S2 => FS(3), G => Shift_G, C => Shift_C);
    
    MuxF: CPU_Mux2_32Bit_22335824 port map(
    I0 => ALU_G, I1 => Shift_G, S => FS(4), Y => MuxF_Z);
    
    C_Flag: DP_CFlagMux2_1Bit_22335824 port map(
    C_ALU => ALU_C, C_Shift => Shift_C, FS4 => FS(4), C => C);
    
    Z_FLAG: DP_ZeroDetection_22335824 port map(
    MuxF_to_F => MuxF_Z, Z => Z);
    
    F <= MuxF_Z;
    N <= MuxF_Z(31);


end Behavioral;
