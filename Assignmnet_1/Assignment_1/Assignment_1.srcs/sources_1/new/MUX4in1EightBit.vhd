-- this is a 4in1 eight bit multiplexer for assignment 1 question 2 in my Design of DSP course 4th semester at SDU
--The Multiplexer, simply works with 4 input 8bit signals. With 2 select pin i can select which input will be the output. 
--basically it is a block that chooses a signal depending on the scenario
--each select pin has two states (1 and 0), if i have 4 signals then i need 2^2 select pins.
-- for 8 in 1 MUX (multiplexer) then its 2^3=8 possible options. so 3 select pins are needed.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX4in1EightBit is
    Port ( D0 : in STD_LOGIC_VECTOR (7 downto 0);
           D1 : in STD_LOGIC_VECTOR (7 downto 0);
           D2 : in STD_LOGIC_VECTOR (7 downto 0);
           D3 : in STD_LOGIC_VECTOR (7 downto 0);
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end MUX4in1EightBit;

architecture Behavioral of MUX4in1EightBit is

begin
--for a mux4in1 i need to pick 1 of the 4 inputs and choose one to output 
--depending on the value or state of the select pins.I have 2 slect pints because 2^2=4, 
--the two select pins with std logic have 2 states each and with two states each i have a total of 4 options
    process (S0, S1, D0, D1, D2, D3)
    begin
    if (S0='0' AND S1='0') then
    Y <= D0;
    elsif (S0='1' AND S1='0') then 
    Y <= D1;
    elsif (S0='0' AND S1='1') then 
    Y <= D2;
    elsif (S0='1' AND S1='1') then 
    Y <= D3;
    end if;
    end process;
end Behavioral;
