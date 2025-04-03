----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2025 11:24:14 AM
-- Design Name: 
-- Module Name: FourBitAdder_ZedBoard - Behavioral
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

entity FourBitAdder_ZedBoard is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end FourBitAdder_ZedBoard;

architecture Behavioral of FourBitAdder_ZedBoard is
SIGNAL Carry: STD_LOGIC_VECTOR(4 downto 0);
begin
Carry(0) <= Cin; -- Connect initial carry input

    -- Use a For Loop for the 4-bit Adder Logic
    gen_Adder: for i in 0 to 3 generate
        Sum(i) <= A(i) XOR B(i) XOR Carry(i);               -- XOR logic for sum
        Carry(i+1) <= (A(i) AND B(i)) OR (Carry(i) AND (A(i) XOR B(i))); -- Carry-out logic
    end generate;
    
    -- connect final carry out
    Cout <= Carry(4);
end Behavioral;
