-- Company: Department of Electrical and Computer Engineering, University of Alberta
-- Engineer: Ryan Moro --
-- Create Date: 08/09/2020 07:06:23 PM
-- Design Name:
-- Module Name: ha_2bit_tb - Behavioral
-- Target Devices: Zybo Z7
-- Tool Versions:
-- Description: Test bench for 2-bit Half Adder --
-- Dependencies: --
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- ----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_2bit_tb is end fa_2bit_tb;

architecture Behavioral of fa_2bit_tb is
component fa_2bit is
Port ( A : in std_logic_vector(1 downto 0);
B : in std_logic_vector(1 downto 0);
C_in : in std_logic; --CARRY INPUT : 0/1 C_out : out std_logic;
S : out std_logic_vector(1 downto 0));
end component;
signal A_in, B_in : std_logic_vector(1 downto 0);
signal Ci signal Co signal Sum
: std_logic; : std_logic;
: std_logic_vector(1 downto 0);
begin
ADDER_FA : fa_2bit port map(A => A_in,
B => B_in, C_in => Ci, C_out => Co, S => Sum);
process
    constant time_period : time := 20ns;
    begin
    -- this is a self checking testbench written for few input combinations of the 2-bit half adder. -- Error in Sum and Cout will be reported using this self checking test bench
    -- On generation of the wrong outputs, error is reported in the tcl console window
    -- You must include reasonable number of test cases to verify the working of your design.
    ----------------
    A_in <= "00"; B_in <= "00"; Ci <= '0';

    wait for time_period;
    assert ((Sum = "00") and (Co='0')) --If for A=00 AND B=00, IF S!=00 AND C!=0, then there is an error
    report "Error for input A_in=00 and B_in=00" severity error; ----------------
    A_in <= "00";
    B_in <= "00";
    Ci <= '1';
    wait for time_period;
    A_in <= "00";
    B_in <= "01";
    Ci <= '0';
    wait for time_period; A_in <= "00";
    B_in <= "01";
    Ci <= '1';
    wait for time_period;
    A_in <= "00";
    B_in <= "10";
    Ci <= '0';
    wait for time_period; A_in <= "00";
    B_in <= "10";
    Ci <= '1';
    wait for time_period;
    A_in <= "00";
    B_in <= "11";
    Ci <= '0';
    wait for time_period; A_in <= "00";
    B_in <= "11";
    Ci <= '1';
    wait for time_period;
    A_in <= "01";
    B_in <= "00";
    Ci <= '0';
    wait for time_period; A_in <= "01";
    B_in <= "00"; Ci <= '1';

    wait for time_period;
    A_in <= "01";
    B_in <= "01";
    Ci <= '0';
    wait for time_period; A_in <= "01";
    B_in <= "01";
    Ci <= '1';
    wait for time_period;
    A_in <= "01";
    B_in <= "10";
    Ci <= '0';
    wait for time_period; A_in <= "01";
    B_in <= "10";
    Ci <= '1';
    wait for time_period;
    A_in <= "01";
    B_in <= "11";
    Ci <= '0';
    wait for time_period; A_in <= "01";
    B_in <= "11";
    Ci <= '1';
    wait for time_period;
    A_in <= "10";
    B_in <= "00";
    Ci <= '0';
    wait for time_period; A_in <= "10";
    B_in <= "00";
    Ci <= '1';
    wait for time_period;
    A_in <= "10";
    B_in <= "01";
    Ci <= '0';
    wait for time_period; A_in <= "10";
    B_in <= "01";

    Ci <= '1';
    wait for time_period;
    A_in <= "10";
    B_in <= "10";
    Ci <= '0';
    wait for time_period; A_in <= "10";
    B_in <= "10";
    Ci <= '1';
    wait for time_period;
    A_in <= "10";
    B_in <= "11";
    Ci <= '0';
    wait for time_period; A_in <= "10";
    B_in <= "11";
    Ci <= '1';
    wait for time_period;
    A_in <= "11";
    B_in <= "00";
    Ci <= '0';
    wait for time_period; A_in <= "11";
    B_in <= "00";
    Ci <= '1';
    wait for time_period;
    A_in <= "11";
    B_in <= "01";
    Ci <= '0';
    wait for time_period; A_in <= "11";
    B_in <= "01";
    Ci <= '1';
    wait for time_period;
    A_in <= "11";
    B_in <= "10";
    Ci <= '0';
    wait for time_period; A_in <= "11";

    B_in <= "10";
    Ci <= '1';
    wait for time_period;
    A_in <= "11";
    B_in <= "11";
    Ci <= '0';
    wait for time_period; A_in <= "11";
    B_in <= "11";
    Ci <= '1';
    wait for time_period;
    end process; 
end Behavioral;