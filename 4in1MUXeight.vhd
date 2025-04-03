----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 10:35:02 AM
-- Design Name: 
-- Module Name: 4in1MUX - Behavioral
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
-- made by iliya, eight bit mux

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX4in1 is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : in STD_LOGIC_VECTOR (7 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           E : out STD_LOGIC_VECTOR (7 downto 0));
end MUX4in1;

architecture Behavioral of MUX4in1 is
begin

process(A,B,C,D,S)
begin
case S is
    when "00"=>E<=A;
    when "01"=>E<=B;
    when "10"=>E<=C;
    when "11"=>E<=D;  
    when others => null; 
    end case;
end process;

end Behavioral;
