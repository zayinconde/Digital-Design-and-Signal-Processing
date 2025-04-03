----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 01:34:01 PM
-- Design Name: 
-- Module Name: SR_FLIPPY_FLOPPY - Behavioral
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

entity SR_FLIPPY_FLOPPY is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Qout1 : out STD_LOGIC;
           Qout2 : out STD_LOGIC);
end SR_FLIPPY_FLOPPY;

architecture Behavioral of SR_FLIPPY_FLOPPY is
begin
process(CLK, RESET)
variable temp:std_logic;
begin

if (clk='1' and clk'event) then
    if(S='0' and R='1') then
        temp:=temp;
    elsif(S='0' and R='1') then
        temp:='0';
    elsif(S='1' and R='0') then
        temp:='1';
    else
        temp:='U';
    end if;
end if;
Qout1<= temp;
Qout2<= not temp;

end process;   
end Behavioral;
