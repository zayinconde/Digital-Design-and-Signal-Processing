----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2025 09:47:36 AM
-- Design Name: 
-- Module Name: tb_mux4in1Eight - Behavioral
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

-- Testbench for 4-to-1 Multiplexer (MUX4in1EightBit)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_MUX4in1EightBit is
    -- No ports for a testbench
end tb_MUX4in1EightBit;

architecture Behavioral of tb_MUX4in1EightBit is
    -- Component Declaration for the Unit Under Test (UUT)
    component MUX4in1EightBit
        Port ( D0 : in STD_LOGIC_VECTOR (7 downto 0);
               D1 : in STD_LOGIC_VECTOR (7 downto 0);
               D2 : in STD_LOGIC_VECTOR (7 downto 0);
               D3 : in STD_LOGIC_VECTOR (7 downto 0);
               S0 : in STD_LOGIC;
               S1 : in STD_LOGIC;
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    -- Signals to connect to the UUT
    signal D0, D1, D2, D3 : STD_LOGIC_VECTOR (7 downto 0);
    signal S0, S1 : STD_LOGIC;
    signal Y : STD_LOGIC_VECTOR (7 downto 0);

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: MUX4in1EightBit
        port map (
            D0 => D0,
            D1 => D1,
            D2 => D2,
            D3 => D3,
            S0 => S0,
            S1 => S1,
            Y => Y
        );

    -- Stimulus Process
    stimulus: process
    begin
        -- Initialize inputs
        D0 <= "00000001";
        D1 <= "00000010";
        D2 <= "00000100";
        D3 <= "00001000";

        -- Test Case 1: Select D0
        S0 <= '0';
        S1 <= '0';
        wait for 10 ns;

        -- Test Case 2: Select D1
        S0 <= '1';
        S1 <= '0';
        wait for 10 ns;

        -- Test Case 3: Select D2
        S0 <= '0';
        S1 <= '1';
        wait for 10 ns;

        -- Test Case 4: Select D3
        S0 <= '1';
        S1 <= '1';
        wait for 10 ns;

        -- Finish simulation
        wait;
    end process;
end Behavioral;

