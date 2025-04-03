----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2025 01:10:32 PM
-- Design Name: 
-- Module Name: tb_D_FLIPFLOP - Behavioral
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

entity tb_D_FLIPFLOP is
--  Port ( );
end tb_D_FLIPFLOP;

architecture Behavioral of tb_D_FLIPFLOP is
component D_flipflop
    Port ( Din : in STD_LOGIC;
           CLK: in STD_LOGIC;
           RESET: in STD_LOGIC;
           Qout : out STD_LOGIC);
end component;

--input signals
signal Din: std_logic;
Signal CLK: std_logic;
Signal RESET: std_logic;

-- output singals
Signal Qout: std_logic;

-- clock period definition
constant clk_period : time :=50ns;

begin
uut: D_flipflop PORT MAP (CLK=>CLK, Din=>Din, Qout=>Qout, RESET => RESET);
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
    
    reset <= '0';
    wait for 500ns;
    Din <= '1';
    wait for 90ns;
    
    Din <= '0';
    wait for 90ns;
end process;

end Behavioral;
