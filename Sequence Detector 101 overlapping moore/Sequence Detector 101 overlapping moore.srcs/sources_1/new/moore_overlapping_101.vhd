----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2025 12:53:48 PM
-- Design Name: 
-- Module Name: moore_overlapping_101 - Behavioral
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

entity moore_overlapping_101 is
    Port ( CLK : in STD_LOGIC;
           din : in STD_LOGIC;
           rst : in STD_LOGIC;
           dout : out STD_LOGIC);
end moore_overlapping_101;

architecture Behavioral of moore_overlapping_101 is
type state is (st0, st1, st2, st3);
signal present_state, next_state: state;

begin
syncronous_process : process (clk)
begin
if rising_edge(CLK) then
if (rst = '1')then
present_state <= st0;
else
present_state <= next_state;
end if;
end if;
end process;

output_decoder:process(present_state,din)
begin
--For A state => st0
next_state<=st0; case (present_state) is when st0 =>
if (din = '1') then 
next_state <= st1;
else
next_state <= st0;
end if; 
---- state st1 for B here 0 sends us to next state
when st1 => if (din = '1') then 
next_state <= st1;
end if;
if (din = '0') then
next_state <= st2;
end if;
when st2 => if(din = '1') then 
next_state <= st3;
else
next_state <= st2;
end if;
when st3 => if(din = '1') then 
next_state <= st1;
else
next_state <= st2;
end if;
when others => next_state <= st0;
end case;
end process;
next_state_decoder:process(present_state)
begin case
(present_state) is when st0 => dout <= '0';
when st1 => dout <= '0'; 
when st2 => dout <= '0';
when st3 => dout <= '1';
when others => dout <= '0';
end case;
end process;







end Behavioral;
