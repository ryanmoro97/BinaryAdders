----------------------------------------------------------------------------------
-- Company: Department of Electrical and Computer Engineering, University of Alberta
-- Engineer: Ryan Moro --
-- Create Date: 08/10/2020 11:28:43 AM
-- Design Name:
-- Module Name: cout_16_1_mux - Behavioral
 -- Target Devices: Zybo Z7
-- Tool Versions:
-- Description: implementation of cout mux --
-- Dependencies: --
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- ----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cout_16_1_mux is 
Port ( cin : in std_logic;
    select_in : in std_logic_vector(3 downto 0);
    y_cout : out std_logic ); 
end cout_16_1_mux;

architecture Behavioral of cout_16_1_mux is
begin
    process(cin,select_in)
    begin
    -- write the input line functions generated for 16:1 to derive the carry output. -- The input lines can be '0' / '1' / Cin / (not) Cin.
    -- It is possible to use if...else or case statements here.
    case select_in is
        when "0000" => y_cout <= '0'; 
        when "0001" => y_cout <= '0'; 
        when "0010" => y_cout <= '0'; 
        when "0011" => y_cout <= cin;
        when "0100" => y_cout <= '0';
        when "0101" => y_cout <= '0';
        when "0110" => y_cout <= cin;
        when "0111" => y_cout <= '1';
        when "1000" => y_cout <= '0';
        when "1001" => y_cout <= cin;
        when "1010" => y_cout <= '1';
        when "1011" => y_cout <= '1';
        when "1100" => y_cout <= cin;
        when "1101" => y_cout <= '1';
        when "1110" => y_cout <= '1';
        when "1111" => y_cout <= '1';
        when others => y_cout <= '1';
    end case; 
    end process;
end Behavioral;
