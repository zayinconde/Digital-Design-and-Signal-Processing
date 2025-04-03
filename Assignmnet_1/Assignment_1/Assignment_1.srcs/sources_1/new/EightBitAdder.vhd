----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2025 07:03:48 PM
-- Design Name: 
-- Module Name: EightBitAdder - Behavioral
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
use IEEE.numeric_std.ALL; -- library for 'unsigned'

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EightBitAdder is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC; -- C is for carry, carry needs to be single bit
           Cout : out STD_LOGIC; -- C is for carry, carry needs to be single bit
           S : out STD_LOGIC_VECTOR (7 downto 0)); --S is for sum
end EightBitAdder;

architecture Behavioral of EightBitAdder is
signal carry : STD_LOGIC_VECTOR(7 downto 0); --- note, 9 bits here cause signal is only single bit, whilst Sum will be 8bit.
--- temp may not be needed here.
--Signal as : STD_logic_vector (7 downto 0);
--Signal asci : STD_logic_vector (7 downto 0);
--Signal ab : STD_logic_vector (7 downto 0);
--Signal abc : STD_logic_vector (7 downto 0); 
begin
-- 0 bit (Least significant bit (LSB))
S(0) <= A(0) XOR B(0) XOR Cin;

--bit 1 to 6
gen_bits: for i in 1 to 6 generate
    S(i) <= A(i) XOR B(i) XOR carry(i-1);
    carry(i) <= (A(i) AND B(i)) or (carry(i-1) AND (A(i) XOR B(i)));
end generate gen_bits;

-- bit 7 (MSB)
S(7) <= A(7) XOR B(7) XOR carry(6); -- sun but for MSB
Cout <= (A(7) AND B(7)) OR (carry(6) AND (A(7) XOR B(7))); --carry out
-- previous attempt in class but carry was not single bit
--as <= A XOR B;
--asci <= as AND Cin;
--S <= as XOR Cin;
--abc <= A AND B;
--Cout <= abc or asci;
end Behavioral;
