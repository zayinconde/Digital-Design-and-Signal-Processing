----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2025 10:05:59 PM
-- Design Name: 
-- Module Name: tb_DFlipFlop - Behavioral
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

entity tb_DFlipFlop is
--  Port ( ); --inserting component from design file instead.
end tb_DFlipFlop;

architecture Behavioral of tb_DFlipFlop is

--import component from design file
component DFlipFlop 
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Preset : in STD_LOGIC;
           Output : out STD_LOGIC);
end component;

--define signals
Signal D : STD_logic;
Signal CLK : STD_LOGIC;
Signal Reset : STD_LOGIC;
Signal Preset : STD_LOGIC;
Signal Output : STD_LOGIC;

begin
    -- start uut 
    uut : DFlipFLop
        Port Map (D => D, CLK => CLK, Reset => Reset, Preset => Preset, Output => Output);
        -- start pårocess for loops and clk
        process
        begin
            wait for 100ns;
            while true loop
            CLK <= '0';
            wait for 20ns;
            CLK <= '1';
            wait for 20ns; 
            end loop;
        end process;
        
        -- begin process for testing different case
        process
        begin
            -- reset test
             
            Reset <= '1';
            wait for 100ns;
            Reset <= '0';
            wait for 100ns;
            
            -- preset test
            Preset <= '1';
            wait for 100ns;
            Preset <= '0';
            wait for 100ns;
            
            -- D test
            D <= '1';
            wait for 100ns;
            D <= '0';
            wait for 100ns; 
            wait for 200ns;
       end process;
end Behavioral;
