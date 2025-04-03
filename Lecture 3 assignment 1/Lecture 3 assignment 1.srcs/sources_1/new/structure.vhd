----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 01:12:24 PM
-- Design Name: 
-- Module Name: structure - Behavioral
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

entity structure is
    Port ( A : in STD_LOGIC_VECTOR (0 downto 0);
           B : in STD_LOGIC_VECTOR (0 downto 0);
           Cin : in STD_LOGIC;
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           ALU : in STD_LOGIC_VECTOR (7 downto 0);
           Cout : in STD_LOGIC);
end structure;

architecture Behavioral of structure is

begin


end Behavioral;
