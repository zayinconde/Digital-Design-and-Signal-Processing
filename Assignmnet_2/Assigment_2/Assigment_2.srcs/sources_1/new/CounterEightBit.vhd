----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2025 11:02:24 PM
-- Design Name: 
-- Module Name: CounterEightBit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CounterEightBit is
    Port ( CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Sig : in STD_LOGIC;
           Counter : out STD_LOGIC_VECTOR (7 downto 0));
end CounterEightBit;

architecture Behavioral of CounterEightBit is
    --uncomment numeric stdall for unsigned values, needed for inner signals 
    Signal Count : unsigned(7 downto 0) := (others => '0'); --inner counter
    begin
        process(CLK)
        begin
            if rising_edge(CLK)then 
                if Reset = '1' then
                    Count <= (others => '0'); -- reset counter
                elsif Sig = '1' then 
                    Count <= Count + 1; --increase 1
                end if;
            end if;
        end process;
-- set inner var to output counter 
Counter <= STD_LOGIC_VECTOR(Count);
end Behavioral;
