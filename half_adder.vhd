-- ----------------------------------------------------------------------------------
-- Company:
-- Engineer: Ryan Moro
-- Create Date: 10/06/2020 10:46:26 PM
-- Design Name:
-- Module Name: half_adder - Behavioral
-- Project Name: lab1
-- Target Devices: Zybo Z7
-- Tool Versions:
-- Description: two bit half adder with sum and carry displayed on board LEDs
-- Dependencies: --
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- ----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
Port ( A : in std_logic_vector(1 downto 0);
B : in std_logic_vector(1 downto 0); Cout : out std_logic;
S : out std_logic_vector(1 downto 0));
end half_adder;
architecture Behavioral of half_adder is
begin
-- karnaugh map equation for S(1)
-- y = A'B'C + A'CD' + AB'C' + AC'D' + A'BC'D + ABCD S(1) <= (not A(1) and not A(0) and B(1))
or (not A(1) and B(1) and not B(0))
or (A(1) and not A(0) and not B(1))
or (A(1) and not B(1) and not B(0))
or (not A(1) and A(0) and not B(1) and B(0)) or (A(1) and A(0) and B(1) and B(0));
-- karnaugh map equation for S(0) --y = B'D + BD'
S(0) <= (not A(0) and B(0))
or (A(0) and not B(0));
-- karnaugh map equation for Cout --Cout <= A1B1 + A0B1B0 + A1A0B0; Cout <= (A(1) AND B(1))
OR (A(0) AND B(1) AND B(0))
OR (A(1) AND A(0) AND B(0)); end Behavioral;