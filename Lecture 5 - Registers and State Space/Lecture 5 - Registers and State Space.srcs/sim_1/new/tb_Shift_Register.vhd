----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2025 01:21:16 PM
-- Design Name: 
-- Module Name: tb_Shift_Register - Behavioral
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

entity tb_Shift_Register is
--  Port ( );
end tb_Shift_Register;

architecture Behavioral of tb_Shift_Register is

component Shift_Register
    port(CLK, SI : in std_logic;
         SO : out std_logic);
end component;

-- test bench signals
signal CLK : std_logic;
signal SI : std_logic;
signal SO : std_logic;

-- Clock period definition
constant clk_period : time := 10 ns;


begin

-- Instantiate the Unit Under Test (UUT)
UUT: Shift_Register
    port map ( CLK=>CLK, SI=>SI, SO=>SO);
-- Stimulus process
CLK_proc : process
    begin
    CLK <= '1';
    wait for clk_period/2;
    CLK <= '0';
    wait for clk_period/2;
end process;


stim_proc: process
begin
    -- Initialize inputs
    SI <= '0';
    wait for 100ns;

    -- Stimulus process to apply different input values
    SI <= '1';
    wait for 100ns;
    SI <= '0';
    wait for 100ns;
    SI <= '1';
    wait for 100ns;
    wait;
end process;



end Behavioral;
