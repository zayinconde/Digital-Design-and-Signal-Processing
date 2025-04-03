----------------------------------------------------------------------------------
-- Test Bench for 4-Bit Adder Design
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FourBitAdder_tb is
-- Test benches do not have ports.
end FourBitAdder_tb;

architecture Behavioral of FourBitAdder_tb is
    -- Component declaration for the 4-bit adder
    component FourBitAdder_ZedBoard
        Port (
            A     : in  STD_LOGIC_VECTOR(3 downto 0);
            B     : in  STD_LOGIC_VECTOR(3 downto 0);
            Cin   : in  STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR(3 downto 0);
            Cout  : out STD_LOGIC
        );
    end component;

    -- Testbench signals
    signal A     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal B     : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal Cin   : STD_LOGIC := '0';
    signal Sum   : STD_LOGIC_VECTOR(3 downto 0);
    signal Cout  : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    UUT: FourBitAdder_ZedBoard
        Port Map (
            A     => A,
            B     => B,
            Cin   => Cin,
            Sum   => Sum,
            Cout  => Cout
        );

    -- Test process
    stimulus_process: process
    begin
        -- Test case 1: Add 0000 + 0000 with Cin = 0
        A <= "0000"; B <= "0000"; Cin <= '0';
        wait for 10 ns;
        
        -- Test case 2: Add 0001 + 0001 with Cin = 0
        A <= "0001"; B <= "0001"; Cin <= '0';
        wait for 10 ns;
        
        -- Test case 3: Add 0011 + 0101 with Cin = 1
        A <= "0011"; B <= "0101"; Cin <= '1';
        wait for 10 ns;
        
        -- Test case 4: Add 1111 + 1111 with Cin = 1
        A <= "1111"; B <= "1111"; Cin <= '1';
        wait for 10 ns;

        -- Test case 5: Add 1010 + 0101 with Cin = 0
        A <= "1010"; B <= "0101"; Cin <= '0';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
