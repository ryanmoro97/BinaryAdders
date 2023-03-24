----------------------------------------------------------------------------------
-- Company: Department of Electrical and Computer Engineering, University of Alberta
-- Engineer: Shyama Gandhi and Bruce Cockburn --
-- Create Date: 08/10/2020 11:28:43 AM
-- Design Name:
-- Module Name: s1_16_1_mux - Behavioral
-- Target Devices: Zybo Z7
-- Tool Versions:
-- Description: implementation of mux for s1 output --
-- Dependencies: --
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- ----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity s1_16_1_mux is
    Port ( cin : in std_logic;
    select_in : in std_logic_vector(3 downto 0);
    y_s1 : out std_logic ); end s1_16_1_mux;

architecture Behavioral of s1_16_1_mux is
begin
    process(cin,select_in)
    begin
    -- functions generated for 16:1 to derive the S(1) output. -- The input lines can be '0' / '1' / Cin / (not) Cin.
    case select_in is
        when "0000" => y_s1 <= '0';
        when "0001" => y_s1 <= cin;
        when "0010" => y_s1 <= '1';
        when "0011" => y_s1 <= not cin;
        when "0100" => y_s1 <= cin;
        when "0101" => y_s1 <= '1';
        when "0110" => y_s1 <= not cin;
        when "0111" => y_s1 <= '0';
        when "1000" => y_s1 <= '1';
        when "1001" => y_s1 <= not cin;
        when "1010" => y_s1 <= '0';
        when "1011" => y_s1 <= cin;
        when "1100" => y_s1 <= not cin;
        when "1101" => y_s1 <= '0';
        when "1110" => y_s1 <= cin;
        when "1111" => y_s1 <= '1';
        when others => y_s1 <= '1';
    end case;
end process;
end Behavioral;