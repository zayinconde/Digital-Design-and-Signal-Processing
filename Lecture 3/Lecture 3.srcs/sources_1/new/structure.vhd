----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 11:44:32 AM
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
    Port ( A : in STD_LOGIC_VECTOR (7 downto 7);
           B : in STD_LOGIC_VECTOR (7 downto 7);
           Cin : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Cout : in STD_LOGIC;
           ALU : in STD_LOGIC_VECTOR (7 downto 0));
end structure;

architecture Behavioral of structure is

begin


end Behavioral;
