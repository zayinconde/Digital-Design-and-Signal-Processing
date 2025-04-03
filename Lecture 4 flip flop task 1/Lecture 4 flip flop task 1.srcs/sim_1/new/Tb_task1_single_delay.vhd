----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 10:53:38 AM
-- Design Name: 
-- Module Name: Tb_task1_single_delay - Behavioral
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

entity Tb_task1_single_delay is
--  Port ( );
end Tb_task1_single_delay;

architecture Behavioral of Tb_task1_single_delay is
component Task1
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end component;

signal A: std_logic;
signal B: std_logic;
signal C: std_logic;
signal X: std_logic;

begin
uut: Task1 port map
(A=>A, B=>B, C=>C, X=>X);
process begin
    A<= '1';
    B<= '1';
    C<= '0';
    wait for 1500ps;
    A<= '0';
    B<= '0';
    C<= '1';
    wait for 5000ps;
    wait;
end process;



end Behavioral;
