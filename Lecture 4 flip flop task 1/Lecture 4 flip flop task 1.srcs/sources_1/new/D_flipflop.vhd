----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 12:52:54 PM
-- Design Name: 
-- Module Name: D_flipflop - Behavioral
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

entity D_flipflop is
    Port ( Din : in STD_LOGIC;
           CLK: in STD_LOGIC;
           RESET: in STD_LOGIC;
           Qout : out STD_LOGIC);
end D_flipflop;

architecture Behavioral of D_flipflop is




begin
process(CLK,RESET)
begin
        if clk'event and CLK = '1' then
            if RESET = '1' then
                Qout <= '0';
            else
                Qout <= Din;
            end if;
        end if;
end process;

end Behavioral;
