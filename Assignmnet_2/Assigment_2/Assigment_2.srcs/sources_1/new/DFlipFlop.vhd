----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2025 09:52:30 PM
-- Design Name: 
-- Module Name: DFlipFlop - Behavioral
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
-- Assignment 2, question 2.1 create a D flip flop

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFlipFlop is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Preset : in STD_LOGIC;
           Output : out STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is
begin
    process(CLK) --need to create a "process" block which
    --allows me to run sequential statements like "if", "for", "case" and "loop"
   begin
        -- can use rising_edge(CLK) or CLK'event and CLK ='1'. 
        --second option is a bit more manual and 
        --first option is apart of the IEEE.STD_LOGIC_1164.ALL toolbox
        if rising_edge(CLK) then  --- this is synchronus cause it depends on the rising edge of the clock 
            if Reset = '0' then
                Output <= '0'; -- synchronous reset
            elsif Preset = '1' then 
                Output <= '1';
            else 
                Output <= D;
            end if;
        end if;
   end process;
end Behavioral;

-- below is asychronus d flip flop cause you can reset and preset whenever independant of the clocks rising edge.
--begin
--    process(CLK, RESET, PRESET)
--    begin
--        if RESET = '1' then
--            Q <= '0';  -- Asynchronous Reset
--        elsif PRESET = '1' then
--            Q <= '1';  -- Asynchronous Preset
--        elsif rising_edge(CLK) then
--            Q <= D;    -- Transfer Data Input to Output
--        end if;
--    end process;
--end Behavioral;

