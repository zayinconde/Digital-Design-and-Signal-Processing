----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2025 07:22:53 PM
-- Design Name: 
-- Module Name: tb_EightBitFullAdder - Behavioral
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

entity tb_EightBitFullAdder is
--port(); --- not used in this test bench, instead we import the i/o using component "design source file) is.... end component
end tb_EightBitFullAdder;

architecture Behavioral of tb_EightBitFullAdder is
component EightBitAdder is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC; -- C is for carry
           Cout : out STD_LOGIC; -- C is for carry
           S : out STD_LOGIC_VECTOR (7 downto 0)); --S is for sum
end component;
-- need to create signals so we can see them in the test. 
Signal A : STD_LOGIC_VECTOR (7 downto 0):= (others => '0'); -- initiallizes signal and set its to '0'
Signal B : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
Signal Cin : STD_LOGIC:= '0'; -- C is for carry
Signal Cout : STD_LOGIC; -- C is for carry
Signal S : STD_LOGIC_VECTOR (7 downto 0); --S is for sum
-- initialize the united under test (UUT) create another begin
begin 
    --Instantiate the unit under test (UUT)
    uut: EightBitAdder
        port map(
        A=>A,
        B=>B,
        Cin=>Cin,
        Cout=>Cout,
        S=>S);
-- create test
process
begin
     -- Test Case 1: Add 0 + 0 + 0
        A <= "00000000";
        B <= "00000000";
        Cin <= '0';
        wait for 100 ns;

        -- Test Case 2: Add 1 + 1 + 0
        A <= "00000001";
        B <= "00000001";
        Cin <= '0';
        wait for 100 ns;

        -- Test Case 3: Add 255 + 1 + 0
        A <= "11111111";  -- 255 in binary
        B <= "00000001";  -- 1 in binary
        Cin <= '0';
        wait for 100 ns;

        -- Test Case 4: Add 128 + 128 + 1
        A <= "10000000";  -- 128 in binary
        B <= "10000000";  -- 128 in binary
        Cin <= '1';
        wait for 100 ns;

        -- Test Case 5: Overflow case (255 + 255 + 1)
        A <= "11111111";  -- 255 in binary
        B <= "11111111";  -- 255 in binary
        Cin <= '1';
        wait for 100 ns;

        -- Stop simulation
        wait;
    end process;

end Behavioral;
