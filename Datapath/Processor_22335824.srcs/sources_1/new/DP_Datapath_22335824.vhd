----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 14.11.2023 15:02:45
-- Design Name: 
-- Module Name: DP_Datapath_22335824 - Behavioral
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


entity DP_Datapath_22335824 is
        Port( IR_IN : in std_logic_vector(31 downto 0);
              MB : in std_logic;
              DATA_IN : in std_logic_vector(31 downto 0);
              MD : in std_logic;
              FS : in std_logic_vector(4 downto 0);
              Clock : in std_logic;
              DR : in std_logic_vector(4 downto 0);
              RW : in std_logic;
              SA : in std_logic_vector(4 downto 0);
              SB : in std_logic_vector(4 downto 0);
              TA : in std_logic_vector(3 downto 0);
              TB : in std_logic_vector(3 downto 0);
              TD : in std_logic_vector(3 downto 0);
              DATA_OUT : out std_logic_vector(31 downto 0);
              C, N, V, Z : out std_logic;
              ADD : out std_logic_vector(31 downto 0)
              );
end DP_Datapath_22335824;

architecture Behavioral of DP_Datapath_22335824 is

    component DP_FunctionalUnit_22335824
        Port( A : in std_logic_vector(31 downto 0);
              B : in std_logic_vector(31 downto 0);
              FS : in std_logic_vector(4 downto 0);
              C : out std_logic;
              F : out std_logic_vector(31 downto 0);
              N : out std_logic;
              Z : out std_logic;
              V : out std_logic
              );
    end component;
    
    component RF_RegisterFile_32_15_22335824
        port ( TA, TD, TB : in std_logic_vector(3 downto 0);
               SA, DR, SB : in std_logic_vector(4 downto 0);
               D : in std_logic_vector(31 downto 0);
               RW, CLK : in std_logic;
               A, B : out std_logic_vector(31 downto 0)
               );
    end component;
    
    component CPU_Mux2_32Bit_22335824
        Port ( I0: in std_logic_vector (31 downto 0);
               I1: in std_logic_vector (31 downto 0);
               S: in std_logic;
               Y: out std_logic_vector(31 downto 0)
               );
    end component;
    
    signal RegBtoMux, RegAtoFU, MuxDtoReg, MuxBtoFU, FUtoD : std_logic_vector(31 downto 0);

begin

    MuxB: CPU_Mux2_32Bit_22335824 port map(
    I0 => RegBtoMux, I1 => IR_IN, S => MB, Y => MuxBtoFU);
    
    MuxD: CPU_Mux2_32Bit_22335824 port map(
    I0 => FUtoD, I1 => DATA_IN, S => MD, Y => MuxDtoReg);
    
    FunctionalUnit: DP_FunctionalUnit_22335824 port map(
    A => RegAtoFU, B => MuxBtoFU, FS => FS, C => C,
    F => FUtoD, N => N, V => V, Z => Z);
    
    RegFile: RF_RegisterFile_32_15_22335824 port map(
    CLK => Clock, D => MuxDtoReg, DR => DR, RW => RW,
    SA => SA, SB => SB, TA => TA, TB => TB, TD => TD,
    A => RegAtoFU, B => RegBtoMux);
    
    DATA_OUT <= MuxBtoFU;
    ADD <= RegAtoFU;


end Behavioral;
