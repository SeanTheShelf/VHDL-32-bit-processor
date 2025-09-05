----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 14.11.2023 15:40:00
-- Design Name: 
-- Module Name: DP_Datapath_22335824_TB - Simulation
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


entity DP_Datapath_22335824_TB is
--  Port ( );
end DP_Datapath_22335824_TB;

architecture Simulation of DP_Datapath_22335824_TB is

    component DP_Datapath_22335824
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
    end component;
    
    signal IR_IN_TB, DATA_IN_TB, DATA_OUT_TB, ADD_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal FS_TB, DR_TB, SA_TB, SB_TB : std_logic_vector(4 downto 0) := (others => '0');
    signal TA_TB, TB_TB, TD_TB : std_logic_vector(3 downto 0) := (others => '0');
    signal MB_TB, MD_TB, Clock_TB, RW_TB, C_TB, N_TB, V_TB, Z_TB : std_logic := '0';
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";
    constant WaitPeriod : time := 500ns;          

begin

    uut: DP_Datapath_22335824 port map(
    IR_IN => IR_IN_TB,
    MB => MB_TB,
    DATA_IN => DATA_IN_TB,
    MD => MD_TB,
    FS => FS_TB,
    Clock => Clock_TB,
    DR => DR_TB,
    RW => RW_TB,
    SA => SA_TB,
    SB => SB_TB,
    TA => TA_TB,
    TB => TB_TB,
    TD => TD_TB,
    DATA_OUT => DATA_OUT_TB,
    C => C_TB,
    N => N_TB,
    V => V_TB,
    Z => Z_TB,
    ADD => ADD_TB
    );
    
    Clock_TB <= not Clock_TB after WaitPeriod;
    
stim_proc: process

   begin
   
    wait until Clock_TB'event and Clock_TB='1';
    DATA_IN_TB <= "00000001010101001101000101010000" after WaitPeriod/10;
    MD_TB <= '1';
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00000" after WaitPeriod/10;       --reg0
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001111" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00001" after WaitPeriod/10;       --reg1
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001110" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00010" after WaitPeriod/10;       --reg2
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001101" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00011" after WaitPeriod/10;       --reg3
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001100" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00100" after WaitPeriod/10;       --reg4
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001011" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00101" after WaitPeriod/10;       --reg5
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001010" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00110" after WaitPeriod/10;       --reg6
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001001" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "00111" after WaitPeriod/10;       --reg7
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101001000" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01000" after WaitPeriod/10;       --reg8
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000111" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01001" after WaitPeriod/10;       --reg9
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000110" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01010" after WaitPeriod/10;       --reg10
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000101" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01011" after WaitPeriod/10;       --reg11
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000100" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01100" after WaitPeriod/10;       --reg12
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000011" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01101" after WaitPeriod/10;       --reg13
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000010" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01110" after WaitPeriod/10;       --reg14
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000001" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "01111" after WaitPeriod/10;       --reg15
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000101000000" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10000" after WaitPeriod/10;       --reg16
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111111" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10001" after WaitPeriod/10;       --reg17
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111110" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10010" after WaitPeriod/10;       --reg18
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111101" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10011" after WaitPeriod/10;       --reg19
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111100" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10100" after WaitPeriod/10;       --reg20
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111011" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10101" after WaitPeriod/10;       --reg21
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111010" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10110" after WaitPeriod/10;       --reg22
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111001" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "10111" after WaitPeriod/10;       --reg23
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100111000" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11000" after WaitPeriod/10;       --reg24
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110111" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11001" after WaitPeriod/10;       --reg25
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110110" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11010" after WaitPeriod/10;       --reg26
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110101" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11011" after WaitPeriod/10;       --reg27
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110100" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11100" after WaitPeriod/10;       --reg28
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110011" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11101" after WaitPeriod/10;       --reg29
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110010" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11110" after WaitPeriod/10;       --reg30
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110001" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    DR_TB <= "11111" after WaitPeriod/10;       --reg31
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100110000" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0001" after WaitPeriod/10;       --tempReg1
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101111" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0010" after WaitPeriod/10;       --tempReg2
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101110" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0011" after WaitPeriod/10;       --tempReg3
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101101" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0100" after WaitPeriod/10;       --tempReg4
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101100" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0101" after WaitPeriod/10;       --tempReg5
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101011" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0110" after WaitPeriod/10;       --tempReg6
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101010" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0111" after WaitPeriod/10;       --tempReg7
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101001" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1000" after WaitPeriod/10;       --tempReg8
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100101000" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1001" after WaitPeriod/10;       --tempReg9
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100100111" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1010" after WaitPeriod/10;       --tempReg10
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100100110" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1011" after WaitPeriod/10;       --tempReg11
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100100101" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1100" after WaitPeriod/10;       --tempReg12
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100100100" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1101" after WaitPeriod/10;       --tempReg13
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100100011" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1110" after WaitPeriod/10;       --tempReg14
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod/10;
    DATA_IN_TB <= "00000001010101001101000100100010" after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "1111" after WaitPeriod/10;       --tempReg15
    RW_TB <= '1' after WaitPeriod/10;
    
    wait until Clock_TB'event and Clock_TB='1';
    TD_TB <= "0000" after WaitPeriod;
    RW_TB <= '0' after WaitPeriod;
    MD_TB <= '0' after WaitPeriod;
    DR_TB <= "00100" after WaitPeriod;
    SA_TB <= "01001" after WaitPeriod;
    SB_TB <= "10011" after WaitPeriod;
    FS_TB <= "00101" after WaitPeriod;      --A - B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01110" after WaitPeriod;      -- NOT A 
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00100" after WaitPeriod;      -- A + 1's c B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00111" after WaitPeriod;      -- A
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00011" after WaitPeriod;      -- A + B + 1
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "10100" after WaitPeriod;      -- srB
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00010" after WaitPeriod;      -- A+B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "11000" after WaitPeriod;      -- slB
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00000" after WaitPeriod;      -- A
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "10000" after WaitPeriod;      -- B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00001" after WaitPeriod;      -- A + 1
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01100" after WaitPeriod;      -- A XOR B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01010" after WaitPeriod;      -- A OR B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00110" after WaitPeriod;      -- A - 1
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01000" after WaitPeriod;      -- A AND B 
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    IR_IN_TB <= "00000001010101001101000101010000" after WaitPeriod;
    MB_TB <= '1' after WaitPeriod;
    FS_TB <= "00101" after WaitPeriod;      -- A-B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00100" after WaitPeriod;      -- A + 1's c B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00011" after WaitPeriod;      -- A+B+1
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "10100" after WaitPeriod;      -- srB
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "00010" after WaitPeriod;      -- A+B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "11000" after WaitPeriod;      -- slB
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "10000" after WaitPeriod;      -- B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01100" after WaitPeriod;      -- A XOR B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01010" after WaitPeriod;      -- A OR B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '0' after WaitPeriod;
    FS_TB <= "01000" after WaitPeriod;      -- A AND B
    
    wait until Clock_TB'event and Clock_TB='1';
    RW_TB <= '1' after WaitPeriod;
   
   end process;


end Simulation;
