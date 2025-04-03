----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2025 01:11:53 PM
-- Design Name: 
-- Module Name: Shift_Register - Behavioral
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
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity Shift_Register is
    port(CLK, SI : in std_logic;
         SO : out std_logic);
end Shift_Register;

architecture archi of Shift_Register is

signal tmp: std_logic_vector(7 downto 0);



begin
 process (CLK)
    begin
        if (CLK'event and CLK='1') then
            for i in 0 to 6 loop
                tmp(i+1) <= tmp(i);
            end loop;
            tmp(0) <= SI;
        end if;
    end process;

end archi;
