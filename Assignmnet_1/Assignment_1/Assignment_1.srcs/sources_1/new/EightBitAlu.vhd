-- Here i need to create an ALU (Arithmetic-Logic Unit) which is essentially a central processing unit
--carries out arithmetic and logic operations on the operands in computer instructions 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EightBitAlu is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           CarryIn : in STD_LOGIC;
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (7 downto 0);
           CarryOut : out STD_LOGIC);
end EightBitAlu;

architecture Behavioral of EightBitAlu is
--The inner signals
Signal ADD_Result : STD_LOGIC_VECTOR(7 downto 0);
Signal AND_Result : STD_LOGIC_VECTOR(7 downto 0);
Signal OR_Result : STD_LOGIC_VECTOR(7 downto 0);
Signal NOT_Result : STD_LOGIC_VECTOR(7 downto 0);
Signal CarryOut_ADD : STD_LOGIC;

-- Import Components 8 bit full adder and 4in1 Multiplexer
    component EightBitAdder
        Port (
            A   : in  STD_LOGIC_VECTOR(7 downto 0);
            B   : in  STD_LOGIC_VECTOR(7 downto 0);
            Cin : in  STD_LOGIC;
            Cout: out STD_LOGIC;
            S   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    --Import Mux 4in1 component
    component MUX4in1EightBit
        Port (
            D0 : in  STD_LOGIC_VECTOR(7 downto 0);
            D1 : in  STD_LOGIC_VECTOR(7 downto 0);
            D2 : in  STD_LOGIC_VECTOR(7 downto 0);
            D3 : in  STD_LOGIC_VECTOR(7 downto 0);
            S0 : in  STD_LOGIC;
            S1 : in  STD_LOGIC;
            Y  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
begin
    Adder: EightBitAdder
    Port Map ( A => A, B => B, Cin => CarryIn, Cout => CarryOut_ADD, S => ADD_Result);
 
 -- logic for operations 
 AND_Result <= A AND B;
 OR_Result <= A  OR B;
 NOT_Result <= not A;
 
 
 -- make MUX select the operation
 Mux: MUX4in1EightBit
    Port Map (D0 => ADD_Result, D1=> AND_Result, D2 => OR_Result, D3 => NOT_Result, S0 => Sel(0), S1 => Sel(1), Y => C);
-- make carry out only valid for addition
CarryOut <= CarryOut_ADD when Sel = "00" else '0';
end Behavioral;
