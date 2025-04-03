----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 01:12:24 PM
-- Design Name: 
-- Module Name: adder_8 - Behavioral
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

entity adder_8 is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           carryin : in STD_LOGIC_VECTOR (7 downto 0);
           Sum : out STD_LOGIC_VECTOR (7 downto 0);
           carryout : out STD_LOGIC_VECTOR (7 downto 0));
end adder_8;

architecture Behavioral of adder_8 is
-- dunno if i need to change behavioural to structure

Signal as : STD_LOGIC_VECTOR (7 downto 0);
Signal asci : STD_LOGIC_VECTOR (7 downto 0);
Signal ab : STD_LOGIC_VECTOR (7 downto 0);
Signal abc : STD_LOGIC_VECTOR (7 downto 0);

begin
as <= A xor B;
asci <= as and carryin;
Sum <= as xor carryin;
abc <= a and b;
carryout <= abc or asci;

end Behavioral;
