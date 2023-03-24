-- ----------------------------------------------------------------------------------
-- Company: Department of Electrical and Computer Engineering, University of Alberta
-- Engineer: Ryan Moro --
-- Create Date: 08/10/2020 10:04:58 AM
-- Design Name: 2-bit full adder
-- Module Name: fa_2bit - Behavioral
-- Target Devices: Zybo Z7
-- Tool Versions:
-- Description: 2-BIT FULL ADDER CREATED USING THREE 16:1 MULTIPLEXERS each for carry out, S(1) and S(0).
-- The components for S0, S1 and C0 are to be included in this top module using the port map statements.
--
-- Dependencies: --
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- ----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_2bit is
Port ( A :in std_logic_vector(1 downto 0); --input vector A 
    B :in std_logic_vector(1 downto 0); --input vector B
    C_in :in std_logic; --CARRY INPUT : 0/1
    S : out std_logic_vector(1 downto 0);--sum output
    C_out : out std_logic; --carry output

    compare_result : out std_logic_vector(2 downto 0)); -- compare the input vector A and B :
    mapped to RGB led in xdc file 
    end fa_2bit;

architecture Behavioral of fa_2bit is
component cout_16_1_mux is 
    Port ( cin : in std_logic;
        select_in : in std_logic_vector(3 downto 0);
        y_cout : out std_logic ); 
end component;

component s1_16_1_mux is 
    Port ( cin : in std_logic;
        select_in : in std_logic_vector(3 downto 0);
        y_s1 : out std_logic ); 
end component;

component s0_16_1_mux is 
    Port ( cin : in std_logic;
        select_in : in std_logic_vector(3 downto 0);
        y_s0 : out std_logic ); 
end component;

begin

-- The "LD6" - RGB led on board is used as an indication if A>B or A<B or A=B. 
-- turn the LED red when A>B, green when A<B and blue when A=B.
compare_result <= "001" when A>B else 
    "010" when A<B else
    "100" when A=B;

-- port map the component for generating carry output 
carry_map : cout_16_1_mux port map( cin => C_in,
    select_in(3 downto 2) => A, 
    select_in(1 downto 0) => B, 
    y_cout => C_out);

-- port map the component for generating the S(1) 
s1_map : s1_16_1_mux port map( cin => C_in,
    select_in(3 downto 2) => A, 
    select_in(1 downto 0) => B, 
    y_s1 => S(1));

-- port map the component for generating the S(0) 
s0_map : s0_16_1_mux port map( cin => C_in,
    select_in(3 downto 2) => A, 
    select_in(1 downto 0) => B, 
    y_s0 => S(0));

end Behavioral;