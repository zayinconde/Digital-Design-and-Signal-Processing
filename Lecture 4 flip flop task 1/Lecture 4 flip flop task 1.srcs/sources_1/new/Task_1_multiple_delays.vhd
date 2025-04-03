----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 10:49:30 AM
-- Design Name: 
-- Module Name: Task_1_multiple_delays - gates
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

entity Task_1_multiple_delays is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end Task_1_multiple_delays;

architecture gates of Task_1_multiple_delays is

signal n1, n2 , n3: std_logic;

begin
n1 <= (A and B) after 2ns;
n2 <= (not b) after 1ns;
n3 <= (n2 and C) after 2ns;
x <=(n1 or n3) after 3 ns;

end gates;
