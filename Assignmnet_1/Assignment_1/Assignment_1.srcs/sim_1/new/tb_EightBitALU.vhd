----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2025 12:11:07 PM
-- Design Name: 
-- Module Name: tb_EightBitALU - Behavioral
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

entity tb_ALU8bit is
-- Port();
end tb_ALU8bit;

architecture Behavioral of tb_ALU8bit is

    -- Component declaration for the ALU
    component ALU8bit
        Port (
            A        : in  STD_LOGIC_VECTOR(7 downto 0);
            B        : in  STD_LOGIC_VECTOR(7 downto 0);
            CarryIn  : in  STD_LOGIC;
            Sel      : in  STD_LOGIC_VECTOR(1 downto 0);
            C        : out STD_LOGIC_VECTOR(7 downto 0);
            CarryOut : out STD_LOGIC
        );
    end component;

    -- Signals for inputs and outputs
    signal A        : STD_LOGIC_VECTOR(7 downto 0);
    signal B        : STD_LOGIC_VECTOR(7 downto 0);
    signal CarryIn  : STD_LOGIC;
    signal Sel      : STD_LOGIC_VECTOR(1 downto 0);
    signal C        : STD_LOGIC_VECTOR(7 downto 0);
    signal CarryOut : STD_LOGIC;

begin

    -- Instantiate the ALU
    uut: ALU8bit
        Port Map (
            A => A,
            B => B,
            CarryIn => CarryIn,
            Sel => Sel,
            C => C,
            CarryOut => CarryOut
        );

    -- Test process
    process
    begin
        -- Test addition (Sel = "00")
        A <= "00000001"; B <= "00000010"; CarryIn <= '1'; Sel <= "00"; -- A + B + CarryIn
        wait for 10 ns;

        -- Test AND operation (Sel = "01")
        A <= "11110000"; B <= "11001100"; Sel <= "01"; -- A AND B
        wait for 10 ns;

        -- Test OR operation (Sel = "10")
        A <= "10101010"; B <= "01010101"; Sel <= "10"; -- A OR B
        wait for 10 ns;

        -- Test Invert A (Sel = "11")
        A <= "11110000"; Sel <= "11"; -- NOT A
        wait for 10 ns;

        wait;
    end process;

end Behavioral;

