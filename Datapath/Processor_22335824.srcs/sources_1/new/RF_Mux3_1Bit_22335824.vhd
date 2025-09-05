----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.10.2023 09:33:59
-- Design Name: 
-- Module Name: RF_Mux3_1Bit_22335824 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Mux3_1Bit_22335824 is
        Port ( I: in std_logic_vector (2 downto 0);
               S: in std_logic_vector (1 downto 0);
               Y: out std_logic
               );
end RF_Mux3_1Bit_22335824;

architecture Behavioral of RF_Mux3_1Bit_22335824 is

signal S0_not, S1_not : std_logic;

signal and00, and01, and02, and03 : std_logic;

signal and10, and11, and12 : std_logic;

signal or00, or01 : std_logic;

constant AND_gate_delay : Time := 5ns;      -- least significant digit 5 = 4 + 1
constant NAND_gate_delay : Time := 3ns;     -- next more significant digit 3 = 2 + 1
constant OR_gate_delay : Time := 9ns;       -- next more significant digit 9 = 8 + 1
constant NOR_gate_delay : Time := 6ns;      -- next more significant digit 6 = 5 + 1
constant XOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
constant NOT_gate_delay : Time := 3ns;      -- next more significant digit 3 = 2 + 1

begin

S0_not <= not S(0) after NOT_gate_delay;
S1_not <= not S(1) after NOT_gate_delay;

and00 <= S1_not and S0_not after AND_gate_delay;
and01 <= S1_not and S(0) after AND_gate_delay;
and02 <= S(1) and S0_not after AND_gate_delay;
and03 <= S(1) and S(0) after AND_gate_delay;

and10 <= and00 and I(0) after AND_gate_delay;
and11 <= and01 and I(1) after AND_gate_delay;
and12 <= and02 and I(2) after AND_gate_delay;

or00 <= and10 or and11 after OR_gate_delay;
Y <= or00 or and12 after OR_gate_delay;

end Behavioral;
