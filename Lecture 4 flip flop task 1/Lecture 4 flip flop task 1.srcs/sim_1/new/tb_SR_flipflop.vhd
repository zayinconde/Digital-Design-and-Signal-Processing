----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2025 12:38:21 PM
-- Design Name: 
-- Module Name: tb_SR_flipflop - Behavioral
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

entity tb_SR_flipflop is
--  Port ( );
end tb_SR_flipflop;


architecture Behavioral of tb_SR_flipflop is
component SR_FLIPPY_FLOPPY
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Qout1 : out STD_LOGIC;
           Qout2 : out STD_LOGIC);
end component;

--input signals
signal S : std_logic;
signal R : std_logic;
signal CLK : std_logic;
signal RESET : std_logic;
signal Qout1 : std_logic;
signal Qout2 : std_logic;

constant clk_period : time :=50ns;

begin
uut: SR_FLIPPY_FLOPPY PORT MAP (CLK=>CLK, R=>R, S=>S, Qout1=>Qout1, Qout2=>Qout2, RESET => RESET);
clk_process : process
begin
    CLK <= '0'; --hold the state for 100ns
    wait for clk_period/2;
    CLK <= '1';
    wait for clk_period/2;
end process; 

stim_proc: process
begin
    RESET <= '1';
    wait for 90ns;
    
    RESET <= '0';
    wait for 500ns;
    S <= '1';
    R <= '1';
    wait for 90ns;
    R <= '0';
    S <= '0';
    wait for 90ns;
end process;

end Behavioral;
