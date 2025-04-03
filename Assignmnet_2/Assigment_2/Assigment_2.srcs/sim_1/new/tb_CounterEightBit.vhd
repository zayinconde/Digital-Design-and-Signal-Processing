----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2025 11:13:24 PM
-- Design Name: 
-- Module Name: tb_CounterEightBit - Behavioral
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

entity tb_CounterEightBit is
--  Port ( );
end tb_CounterEightBit;

architecture Behavioral of tb_CounterEightBit is
-- import component from design file
component CounterEightBit
    Port ( CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Sig : in STD_LOGIC;
           Counter : out STD_LOGIC_VECTOR (7 downto 0));
end component;
-- create signals 
Signal CLK : STD_LOGIC;
Signal Reset : STD_LOGIC;
Signal Sig : STD_LOGIC; 
Signal Counter : STD_LOGIC_VECTOR (7 downto 0);

begin
    uut : CounterEightBit
        Port Map ( CLK => CLK, Reset => Reset, Sig => Sig, Counter => Counter);
        process
        begin
            while true loop
                CLK <= '0';
                wait for 20ns;
                CLK <= '1';
                wait for 20ns;
            end loop;
        end process;
        
        --testing process
        process
        begin
            --test reset
            Reset <= '1';
            wait for 40ns;
            Reset <= '0';
            wait for 40ns;
            
            --increment counter
            Sig <= '1';
            wait for 80ns;
            Sig <= '0'; 
            wait for 80ns; 
            wait;
       end process;                            
end Behavioral;
