----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2025 10:26:58 AM
-- Design Name: 
-- Module Name: ALU_ZedBoard - Behavioral
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

entity ALU_ZedBoard is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           --A1 : in STD_LOGIC;
           --B1 : in STD_LOGIC;
           --A2 : in STD_LOGIC;
           --B2 : in STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC);
end ALU_ZedBoard;
-- I need to system that has 2 inputs a and b. 
-- The outputs which are connected to the LEDs 
-- are represented as C D F G
--  C for or
-- D for nor
--  E for AND
-- F for NAND
-- G for XOR

architecture Behavioral of ALU_ZedBoard is

begin
C <= A or B;
D <= A NOR B;
E <= A AND B;
F <= A NAND B;
G <= A XOR B;
end Behavioral;
