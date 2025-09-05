----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sean Conway
-- 
-- Create Date: 20.12.2023 11:58:09
-- Design Name: 
-- Module Name: CPU_ZeroFill_22335824 - Behavioral
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


entity CPU_ZeroFill_22335824 is
    port (
    SB : in std_logic_vector(4 downto 0);
    MuxB : out std_logic_vector(31 downto 0)
    );
end CPU_ZeroFill_22335824;

architecture Behavioral of CPU_ZeroFill_22335824 is

begin

MuxB(0) <= SB(0);
MuxB(1) <= SB(1);
MuxB(2) <= SB(2);
MuxB(3) <= SB(3);
MuxB(4) <= SB(4);
MuxB(5) <= '0';
MuxB(6) <= '0';
MuxB(7) <= '0';
MuxB(8) <= '0';
MuxB(9) <= '0';
MuxB(10) <= '0';
MuxB(11) <= '0';
MuxB(12) <= '0';
MuxB(13) <= '0';
MuxB(14) <= '0';
MuxB(15) <= '0';
MuxB(16) <= '0';
MuxB(17) <= '0';
MuxB(18) <= '0';
MuxB(19) <= '0';
MuxB(20) <= '0';
MuxB(21) <= '0';
MuxB(22) <= '0';
MuxB(23) <= '0';
MuxB(24) <= '0';
MuxB(25) <= '0';
MuxB(26) <= '0';
MuxB(27) <= '0';
MuxB(28) <= '0';
MuxB(29) <= '0';
MuxB(30) <= '0';
MuxB(31) <= '0';


end Behavioral;
