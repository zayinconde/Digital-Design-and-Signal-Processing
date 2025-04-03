-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Mar 28 12:55:15 2025
-- Host        : HackboiMobile running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/zayin/FourBitAdder_ZedBoard/FourBitAdder_ZedBoard.sim/sim_1/impl/func/xsim/FourBitAdder_tb_func_impl.vhd
-- Design      : FourBitAdder_ZedBoard
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FourBitAdder_ZedBoard is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FourBitAdder_ZedBoard : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of FourBitAdder_ZedBoard : entity is "42147650";
end FourBitAdder_ZedBoard;

architecture STRUCTURE of FourBitAdder_ZedBoard is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Carry_2 : STD_LOGIC;
  signal Cin_IBUF : STD_LOGIC;
  signal Cout_OBUF : STD_LOGIC;
  signal Sum_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sum_OBUF[3]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum_OBUF[3]_inst_i_2\ : label is "soft_lutpair1";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
Cin_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Cin,
      O => Cin_IBUF
    );
Cout_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Cout_OBUF,
      O => Cout
    );
Cout_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => B_IBUF(3),
      I1 => A_IBUF(3),
      I2 => B_IBUF(2),
      I3 => A_IBUF(2),
      I4 => Carry_2,
      O => Cout_OBUF
    );
\Sum_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sum_OBUF(0),
      O => Sum(0)
    );
\Sum_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin_IBUF,
      I1 => A_IBUF(0),
      I2 => B_IBUF(0),
      O => Sum_OBUF(0)
    );
\Sum_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sum_OBUF(1),
      O => Sum(1)
    );
\Sum_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => Cin_IBUF,
      I1 => A_IBUF(0),
      I2 => B_IBUF(0),
      I3 => A_IBUF(1),
      I4 => B_IBUF(1),
      O => Sum_OBUF(1)
    );
\Sum_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sum_OBUF(2),
      O => Sum(2)
    );
\Sum_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Carry_2,
      I1 => A_IBUF(2),
      I2 => B_IBUF(2),
      O => Sum_OBUF(2)
    );
\Sum_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Sum_OBUF(3),
      O => Sum(3)
    );
\Sum_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => Carry_2,
      I1 => A_IBUF(2),
      I2 => B_IBUF(2),
      I3 => A_IBUF(3),
      I4 => B_IBUF(3),
      O => Sum_OBUF(3)
    );
\Sum_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => B_IBUF(1),
      I1 => A_IBUF(1),
      I2 => B_IBUF(0),
      I3 => A_IBUF(0),
      I4 => Cin_IBUF,
      O => Carry_2
    );
end STRUCTURE;
