----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 19.12.2023 15:50:57
-- Design Name: 
-- Module Name: CPU_IR_22335824_TB - Simulation
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


entity CPU_IR_22335824_TB is
--  Port ( );
end CPU_IR_22335824_TB;

architecture Simulation of CPU_IR_22335824_TB is

    component CPU_IR_22335824
    port (
    Clock : in std_logic;
    IL : in std_logic;
    Instruction : in std_logic_vector(31 downto 0);
    DR : out std_logic_vector(4 downto 0);
    Opcode : out std_logic_vector(16 downto 0);
    SA : out std_logic_vector(4 downto 0);
    SB : out std_logic_vector(4 downto 0)
    );
    end component;
    
    signal Clock_TB, IL_TB : std_logic := '0';
    signal Instruction_TB : std_logic_vector(31 downto 0) := (others => '0');
    signal DR_TB, SA_TB, SB_TB : std_logic_vector(4 downto 0) := (others => '0');
    signal Opcode_TB : std_logic_vector(16 downto 0) := (others => '0');
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"154D150";  
    constant PERIOD : time := 100ns;

begin

    uut: CPU_IR_22335824 port map(
    Clock => Clock_TB,
    IL => IL_TB,
    Instruction => Instruction_TB,
    DR => DR_TB,
    SA => SA_TB,
    SB => SB_TB,
    Opcode => Opcode_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;

stim_proc: process

   begin
   
   wait until Clock_TB'event and Clock_TB='1';
   Instruction_TB <= "00000000000110101000100001000011" after PERIOD/4;
   IL_TB <= '1' after PERIOD/4;
   
   wait until Clock_TB'event and Clock_TB='1';
   
   end process;

end Simulation;
