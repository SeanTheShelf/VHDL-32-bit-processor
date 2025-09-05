----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 26.11.2023 13:30:56
-- Design Name: 
-- Module Name: CPU_StatusRegister_22335824 - Behavioral
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

entity CPU_StatusRegister_22335824 is
    Port(C_Flag : in std_logic;
         Reset_V : in std_logic;
         V_Flag : in std_logic;
         Clock : in std_logic;
         Reset_C : in std_logic;
         LoadFlags : in std_logic;
         N_Flag : in std_logic;
         Reset_N : in std_logic;
         Reset_Z : in std_logic;
         Z_Flag : in std_logic;
         StatusVector : out std_logic_vector(3 downto 0)
         );
end CPU_StatusRegister_22335824;

architecture Behavioral of CPU_StatusRegister_22335824 is

    component CPU_DFlipFlop_22335824
        Port(D : in std_logic;
         Clock : in std_logic;
         Reset : in std_logic;
         Q : out std_logic
         );
    end component;     

    signal Not_Load_FF, Load_FF : std_logic;
    signal Load_And0, Load_And1, Load_And2, Load_And3 : std_logic;
    signal Not_Load_And0, Not_Load_And1, Not_Load_And2, Not_Load_And3 : std_logic;
    signal OR_D0, OR_D1, OR_D2, OR_D3 : std_logic;
    signal outSignal : std_logic_vector(3 downto 0);
    
    constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
    constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
    constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
    constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
    constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
    constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
    constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

    VFlag: CPU_DFlipFlop_22335824 port map(
    Clock => Clock, D => OR_D1, Reset => Reset_V, Q => outSignal(1)
    );
    
    CFlag: CPU_DFlipFlop_22335824 port map(
    Clock => Clock, D => OR_D0, Reset => Reset_C, Q => outSignal(0)
    );
    
    NFlag: CPU_DFlipFlop_22335824 port map(
    Clock => Clock, D => OR_D2, Reset => Reset_N, Q => outSignal(2)
    );
    
    ZFlag: CPU_DFlipFlop_22335824 port map(
    Clock => Clock, D => OR_D3, Reset => Reset_Z, Q => outSignal(3)
    );
    
    Not_Load_FF <= not LoadFlags after NOT_gate_delay;
    Load_FF <= not Not_Load_FF after NOT_gate_delay;
    
    Load_And0 <= C_Flag and Load_FF after AND_gate_delay;
    Load_And1 <= V_Flag and Load_FF after AND_gate_delay;
    Load_And2 <= N_Flag and Load_FF after AND_gate_delay;
    Load_And3 <= Z_Flag and Load_FF after AND_gate_delay;
    
    Not_Load_And0 <= outSignal(0) and Not_Load_FF after AND_gate_delay;
    Not_Load_And1 <= outSignal(1) and Not_Load_FF after AND_gate_delay;
    Not_Load_And2 <= outSignal(2) and Not_Load_FF after AND_gate_delay;
    Not_Load_And3 <= outSignal(3) and Not_Load_FF after AND_gate_delay;
    
    OR_D0 <= Not_Load_And0 or Load_And0 after OR_gate_delay;
    OR_D1 <= Not_Load_And1 or Load_And1 after OR_gate_delay;
    OR_D2 <= Not_Load_And2 or Load_And2 after OR_gate_delay;
    OR_D3 <= Not_Load_And3 or Load_And3 after OR_gate_delay;
    
    StatusVector <= outSignal;


end Behavioral;
