----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 16.10.2023 10:46:21
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_22335824 - Behavioral
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


entity RF_RegisterFile_32_15_22335824 is
        port ( TA, TD, TB : in std_logic_vector(3 downto 0);
               SA, DR, SB : in std_logic_vector(4 downto 0);
               D : in std_logic_vector(31 downto 0);
               RW, CLK : in std_logic;
               A, B : out std_logic_vector(31 downto 0)
               );
end RF_RegisterFile_32_15_22335824;

architecture Behavioral of RF_RegisterFile_32_15_22335824 is

    component RF_DestReg_Decoder_22335824
    port (I : in std_logic_vector (4 downto 0);
          D : out std_logic_vector (31 downto 0));
    end component;
    
    component RF_TempDestReg_Decoder_22335824
    port (I : in std_logic_vector (3 downto 0);
          D : out std_logic_vector (15 downto 0));
    end component;
    
    component RF_DFlipFlop_22335824
    Port ( CLK, D : in STD_LOGIC;
       Q : out STD_LOGIC);
    end component;
    
    component RF_Register32Bit_22335824
    port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component RF_Mux32_1Bit_22335824
    Port ( I: in std_logic_vector (31 downto 0);
           S: in std_logic_vector (4 downto 0);
           Y: out std_logic
           );
    end component;
    
    component RF_Mux32_32Bit_22335824
    port ( I0, I1, I2, I3 : in std_logic_vector (31 downto 0);
           I4, I5, I6, I7 : in std_logic_vector (31 downto 0);
           I8, I9, I10, I11 : in std_logic_vector (31 downto 0);
           I12, I13, I14, I15 : in std_logic_vector (31 downto 0);
           I16, I17, I18, I19 : in std_logic_vector (31 downto 0);
           I20, I21, I22, I23 : in std_logic_vector (31 downto 0);
           I24, I25, I26, I27 : in std_logic_vector (31 downto 0);
           I28, I29, I30, I31 : in std_logic_vector (31 downto 0);
           S : in std_logic_vector (4 downto 0);
           Y : out std_logic_vector (31 downto 0));
    end component;
    
    component RF_Mux16_32Bit_22335824
    port ( I0, I1, I2, I3 : in std_logic_vector (31 downto 0);
           I4, I5, I6, I7 : in std_logic_vector (31 downto 0);
           I8, I9, I10, I11 : in std_logic_vector (31 downto 0);
           I12, I13, I14, I15 : in std_logic_vector (31 downto 0);
           S: in std_logic_vector (3 downto 0);
           Y: out std_logic_vector (31 downto 0));
    end component;
    
    signal RW_0_i, RW_1_i, RW_2_i, RW_3_i : std_logic;
    signal RW_4_i, RW_5_i, RW_6_i, RW_7_i : std_logic;
    signal RW_8_i, RW_9_i, RW_10_i, RW_11_i : std_logic;
    signal RW_12_i, RW_13_i, RW_14_i, RW_15_i : std_logic;
    signal RW_16_i, RW_17_i, RW_18_i, RW_19_i : std_logic;
    signal RW_20_i, RW_21_i, RW_22_i, RW_23_i : std_logic;
    signal RW_24_i, RW_25_i, RW_26_i, RW_27_i : std_logic;
    signal RW_28_i, RW_29_i, RW_30_i, RW_31_i : std_logic;
    
    signal RWT_0_i, RWT_1_i, RWT_2_i, RWT_3_i : std_logic;
    signal RWT_4_i, RWT_5_i, RWT_6_i, RWT_7_i : std_logic;
    signal RWT_8_i, RWT_9_i, RWT_10_i, RWT_11_i : std_logic;
    signal RWT_12_i, RWT_13_i, RWT_14_i, RWT_15_i : std_logic;
    signal RWT_16_i, RWT_17_i, RWT_18_i, RWT_19_i : std_logic;
    signal RWT_20_i, RWT_21_i, RWT_22_i, RWT_23_i : std_logic;
    signal RWT_24_i, RWT_25_i, RWT_26_i, RWT_27_i : std_logic;
    signal RWT_28_i, RWT_29_i, RWT_30_i, RWT_31_i : std_logic;
    
    signal RWTR_0_i, RWTR_1_i, RWTR_2_i, RWTR_3_i : std_logic;
    signal RWTR_4_i, RWTR_5_i, RWTR_6_i, RWTR_7_i : std_logic;
    signal RWTR_8_i, RWTR_9_i, RWTR_10_i, RWTR_11_i : std_logic;
    signal RWTR_12_i, RWTR_13_i, RWTR_14_i, RWTR_15_i : std_logic;
    
    signal Q_out : std_logic_vector(31 downto 0);
    signal tempQ_out : std_logic_vector(15 downto 0);
    
    signal In0, In1, In2, In3, In4, In5, In6, In7  : std_logic_vector(31 downto 0);
    signal In8, In9, In10, In11, In12, In13, In14, In15 : std_logic_vector(31 downto 0); 
    signal In16, In17, In18, In19, In20, In21, In22, In23  : std_logic_vector(31 downto 0);
    signal In24, In25, In26, In27, In28, In29, In30, In31 : std_logic_vector(31 downto 0); 
    signal In00, In01, In02, In03, In04, In05, In06, In07 : std_logic_vector(31 downto 0);
    signal In08, In09, In010, In011, In012, In013, In014, In015 : std_logic_vector(31 downto 0);
    signal In200 : std_logic_vector(31 downto 0);
    
    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1


begin

    DestReg_Decoder: RF_DestReg_Decoder_22335824 port map (
    I => DR, D => Q_out);
    
    DestTempReg_Decoder: RF_TempDestReg_Decoder_22335824 port map (
    I => TD, D => tempQ_out);
    
    reg0 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_0_i, Q => In0);
        
    reg1 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_1_i, Q => In1);
        
    reg2 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_2_i, Q => In2);
        
    reg3 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_3_i, Q => In3);
        
    reg4 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_4_i, Q => In4);
        
    reg5 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_5_i, Q => In5);
        
    reg6 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_6_i, Q => In6);
        
    reg7 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_7_i, Q => In7);
    
    reg8 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_8_i, Q => In8);
        
    reg9 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_9_i, Q => In9);
        
    reg10 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_10_i, Q => In10);
        
    reg11 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_11_i, Q => In11);
        
    reg12 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_12_i, Q => In12);
        
    reg13 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_13_i, Q => In13);
        
    reg14 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_14_i, Q => In14);
        
    reg15 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_15_i, Q => In15);
    
    reg16 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_16_i, Q => In16);
        
    reg17 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_17_i, Q => In17);
        
    reg18 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_18_i, Q => In18);
        
    reg19 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_19_i, Q => In19);
        
    reg20 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_20_i, Q => In20);
        
    reg21 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_21_i, Q => In21);
        
    reg22 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_22_i, Q => In22);
        
    reg23 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_23_i, Q => In23);
    
    reg24 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_24_i, Q => In24);
        
    reg25 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_25_i, Q => In25);
        
    reg26 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_26_i, Q => In26);
        
    reg27 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_27_i, Q => In27);
        
    reg28 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_28_i, Q => In28);
        
    reg29 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_29_i, Q => In29);
        
    reg30 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_30_i, Q => In30);
        
    reg31 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWT_31_i, Q => In31);
    
    TempReg1 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_1_i, Q => In01);
        
    TempReg2 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_2_i, Q => In02);
        
    TempReg3 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_3_i, Q => In03);
        
    TempReg4 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_4_i, Q => In04);
        
    TempReg5 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_5_i, Q => In05);
        
    TempReg6 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_6_i, Q => In06);
        
    TempReg7 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_7_i, Q => In07);
    
    TempReg8 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_8_i, Q => In08);
        
    TempReg9 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_9_i, Q => In09);
        
    TempReg10 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_10_i, Q => In010);
        
    TempReg11 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_11_i, Q => In011);
        
    TempReg12 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_12_i, Q => In012);
        
    TempReg13 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_13_i, Q => In013);
        
    TempReg14 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_14_i, Q => In014);
    
    TempReg15 : RF_Register32bit_22335824 port map (
    CLK => CLK, D => D, Load => RWTR_15_i, Q => In015);
    
    Mux32_A : RF_Mux32_32Bit_22335824 port map (
    S => SA, I0 => In0, I1 => In1, I2 => In2, I3 => In3,
    I4 => In4, I5 => In5, I6 => In6, I7 => In7, I8 => In8,
    I9 => In9, I10 => In10, I11 => In11, I12 => In12,
    I13 => In13, I14 => In14, I15 => In15, I16 => In16,
    I17 => In17, I18 => In18, I19 => In19, I20 => In20,
    I21 => In21, I22 => In22, I23 => In23, I24 => In24,
    I25 => In25, I26 => In26, I27 => In27, I28 => In28,
    I29 => In29, I30 => In30, I31 => In31, Y => In00);
    
    Mux32_B : RF_Mux32_32Bit_22335824 port map (
    S => SB, I0 => In0, I1 => In1, I2 => In2, I3 => In3,
    I4 => In4, I5 => In5, I6 => In6, I7 => In7, I8 => In8,
    I9 => In9, I10 => In10, I11 => In11, I12 => In12,
    I13 => In13, I14 => In14, I15 => In15, I16 => In16,
    I17 => In17, I18 => In18, I19 => In19, I20 => In20,
    I21 => In21, I22 => In22, I23 => In23, I24 => In24,
    I25 => In25, I26 => In26, I27 => In27, I28 => In28,
    I29 => In29, I30 => In30, I31 => In31, Y => In200);
    
    Mux16_A : RF_Mux16_32Bit_22335824 port map (
    S => TA, I0 => In00, I1 => In01, I2 => In02, I3 => In03,
    I4 => In04, I5 => In05, I6 => In06, I7 => In07, I8 => In08,
    I9 => In09, I10 => In010, I11 => In011, I12 => In012,
    I13 => In013, I14 => In014, I15 => In015, Y => A);
    
    Mux16_B : RF_Mux16_32Bit_22335824 port map (
    S => TB, I0 => In200, I1 => In01, I2 => In02, I3 => In03,
    I4 => In04, I5 => In05, I6 => In06, I7 => In07, I8 => In08,
    I9 => In09, I10 => In010, I11 => In011, I12 => In012,
    I13 => In013, I14 => In014, I15 => In015, Y => B);
    
    RW_0_i <= Q_out(0) and RW after AND_gate_delay;
    RW_1_i <= Q_out(1) and RW after AND_gate_delay;
    RW_2_i <= Q_out(2) and RW after AND_gate_delay;
    RW_3_i <= Q_out(3) and RW after AND_gate_delay;
    RW_4_i <= Q_out(4) and RW after AND_gate_delay;
    RW_5_i <= Q_out(5) and RW after AND_gate_delay;
    RW_6_i <= Q_out(6) and RW after AND_gate_delay;
    RW_7_i <= Q_out(7) and RW after AND_gate_delay;
    RW_8_i <= Q_out(8) and RW after AND_gate_delay;
    RW_9_i <= Q_out(9) and RW after AND_gate_delay;
    RW_10_i <= Q_out(10) and RW after AND_gate_delay;
    RW_11_i <= Q_out(11) and RW after AND_gate_delay;
    RW_12_i <= Q_out(12) and RW after AND_gate_delay;
    RW_13_i <= Q_out(13) and RW after AND_gate_delay;
    RW_14_i <= Q_out(14) and RW after AND_gate_delay;
    RW_15_i <= Q_out(15) and RW after AND_gate_delay;
    RW_16_i <= Q_out(16) and RW after AND_gate_delay;
    RW_17_i <= Q_out(17) and RW after AND_gate_delay;
    RW_18_i <= Q_out(18) and RW after AND_gate_delay;
    RW_19_i <= Q_out(19) and RW after AND_gate_delay;
    RW_20_i <= Q_out(20) and RW after AND_gate_delay;
    RW_21_i <= Q_out(21) and RW after AND_gate_delay;
    RW_22_i <= Q_out(22) and RW after AND_gate_delay;
    RW_23_i <= Q_out(23) and RW after AND_gate_delay;
    RW_24_i <= Q_out(24) and RW after AND_gate_delay;
    RW_25_i <= Q_out(25) and RW after AND_gate_delay;
    RW_26_i <= Q_out(26) and RW after AND_gate_delay;
    RW_27_i <= Q_out(27) and RW after AND_gate_delay;
    RW_28_i <= Q_out(28) and RW after AND_gate_delay;
    RW_29_i <= Q_out(29) and RW after AND_gate_delay;
    RW_30_i <= Q_out(30) and RW after AND_gate_delay;
    RW_31_i <= Q_out(31) and RW after AND_gate_delay;
    
    RWT_0_i <= RW_0_i and tempQ_out(0) after AND_gate_delay;
    RWT_1_i <= RW_1_i and tempQ_out(0) after AND_gate_delay;
    RWT_2_i <= RW_2_i and tempQ_out(0) after AND_gate_delay;
    RWT_3_i <= RW_3_i and tempQ_out(0) after AND_gate_delay;
    RWT_4_i <= RW_4_i and tempQ_out(0) after AND_gate_delay;
    RWT_5_i <= RW_5_i and tempQ_out(0) after AND_gate_delay;
    RWT_6_i <= RW_6_i and tempQ_out(0) after AND_gate_delay;
    RWT_7_i <= RW_7_i and tempQ_out(0) after AND_gate_delay;
    RWT_8_i <= RW_8_i and tempQ_out(0) after AND_gate_delay;
    RWT_9_i <= RW_9_i and tempQ_out(0) after AND_gate_delay;
    RWT_10_i <= RW_10_i and tempQ_out(0) after AND_gate_delay;
    RWT_11_i <= RW_11_i and tempQ_out(0) after AND_gate_delay;
    RWT_12_i <= RW_12_i and tempQ_out(0) after AND_gate_delay;
    RWT_13_i <= RW_13_i and tempQ_out(0) after AND_gate_delay;
    RWT_14_i <= RW_14_i and tempQ_out(0) after AND_gate_delay;
    RWT_15_i <= RW_15_i and tempQ_out(0) after AND_gate_delay;
    RWT_16_i <= RW_16_i and tempQ_out(0) after AND_gate_delay;
    RWT_17_i <= RW_17_i and tempQ_out(0) after AND_gate_delay;
    RWT_18_i <= RW_18_i and tempQ_out(0) after AND_gate_delay;
    RWT_19_i <= RW_19_i and tempQ_out(0) after AND_gate_delay;
    RWT_20_i <= RW_20_i and tempQ_out(0) after AND_gate_delay;
    RWT_21_i <= RW_21_i and tempQ_out(0) after AND_gate_delay;
    RWT_22_i <= RW_22_i and tempQ_out(0) after AND_gate_delay;
    RWT_23_i <= RW_23_i and tempQ_out(0) after AND_gate_delay;
    RWT_24_i <= RW_24_i and tempQ_out(0) after AND_gate_delay;
    RWT_25_i <= RW_25_i and tempQ_out(0) after AND_gate_delay;
    RWT_26_i <= RW_26_i and tempQ_out(0) after AND_gate_delay;
    RWT_27_i <= RW_27_i and tempQ_out(0) after AND_gate_delay;
    RWT_28_i <= RW_28_i and tempQ_out(0) after AND_gate_delay;
    RWT_29_i <= RW_29_i and tempQ_out(0) after AND_gate_delay;
    RWT_30_i <= RW_30_i and tempQ_out(0) after AND_gate_delay;
    RWT_31_i <= RW_31_i and tempQ_out(0) after AND_gate_delay;
    
    RWTR_1_i <= tempQ_out(1) and RW after AND_gate_delay;
    RWTR_2_i <= tempQ_out(2) and RW after AND_gate_delay;
    RWTR_3_i <= tempQ_out(3) and RW after AND_gate_delay;
    RWTR_4_i <= tempQ_out(4) and RW after AND_gate_delay;
    RWTR_5_i <= tempQ_out(5) and RW after AND_gate_delay;
    RWTR_6_i <= tempQ_out(6) and RW after AND_gate_delay;
    RWTR_7_i <= tempQ_out(7) and RW after AND_gate_delay;
    RWTR_8_i <= tempQ_out(8) and RW after AND_gate_delay;
    RWTR_9_i <= tempQ_out(9) and RW after AND_gate_delay;
    RWTR_10_i <= tempQ_out(10) and RW after AND_gate_delay;
    RWTR_11_i <= tempQ_out(11) and RW after AND_gate_delay;
    RWTR_12_i <= tempQ_out(12) and RW after AND_gate_delay;
    RWTR_13_i <= tempQ_out(13) and RW after AND_gate_delay;
    RWTR_14_i <= tempQ_out(14) and RW after AND_gate_delay;
    RWTR_15_i <= tempQ_out(15) and RW after AND_gate_delay;

end Behavioral;
