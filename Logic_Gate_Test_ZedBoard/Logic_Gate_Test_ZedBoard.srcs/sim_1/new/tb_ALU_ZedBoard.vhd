----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2025 10:53:20 AM
-- Design Name: 
-- Module Name: tb_ALU_ZedBoard - Behavioral
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

entity tb_ALU_ZedBoard is
--  Port ( );
end tb_ALU_ZedBoard;

architecture Behavioral of tb_ALU_ZedBoard is
component ALU_ZedBoard 
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
end component;

SIGNAL A: STD_LOGIC;
SIGNAL B: STD_LOGIC;
SIGNAL C: STD_LOGIC;
SIGNAL D: STD_LOGIC;
SIGNAL E: STD_LOGIC;
SIGNAL F: STD_LOGIC;
SIGNAL G: STD_LOGIC;

begin
    uut : ALU_ZedBoard
        Port Map (A=>A, B=>B, C=>C, D=>D, E=>E, F=>F, G=>G);
        process
        begin
            wait for 100ns;
            A <= '0';
            B <= '0';
            wait for 100ns;
            A <= '1';
            B <= '0';
            wait for 100ns;
            A <= '0';
            B <= '1';
            wait for 100ns;
            A <= '1';
            B <= '1';
            wait for 100ns;
        end process;
end Behavioral;
