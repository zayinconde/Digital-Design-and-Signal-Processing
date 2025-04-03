-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Mar 28 11:03:45 2025
-- Host        : HackboiMobile running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/zayin/Logic_Gate_Test_ZedBoard/Logic_Gate_Test_ZedBoard.sim/sim_1/impl/func/xsim/tb_ALU_ZedBoard_func_impl.vhd
-- Design      : ALU_ZedBoard
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU_ZedBoard is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC;
    D : out STD_LOGIC;
    E : out STD_LOGIC;
    F : out STD_LOGIC;
    G : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ALU_ZedBoard : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ALU_ZedBoard : entity is "b9864cf7";
end ALU_ZedBoard;

architecture STRUCTURE of ALU_ZedBoard is
  signal A_IBUF : STD_LOGIC;
  signal B_IBUF : STD_LOGIC;
  signal C_OBUF : STD_LOGIC;
  signal D_OBUF : STD_LOGIC;
  signal E_OBUF : STD_LOGIC;
  signal F_OBUF : STD_LOGIC;
  signal G_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of D_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of E_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of F_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
A_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => A,
      O => A_IBUF
    );
B_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B,
      O => B_IBUF
    );
C_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => C_OBUF,
      O => C
    );
C_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A_IBUF,
      I1 => B_IBUF,
      O => C_OBUF
    );
D_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => D_OBUF,
      O => D
    );
D_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B_IBUF,
      I1 => A_IBUF,
      O => D_OBUF
    );
E_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => E_OBUF,
      O => E
    );
E_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_IBUF,
      I1 => B_IBUF,
      O => E_OBUF
    );
F_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => F_OBUF,
      O => F
    );
F_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => B_IBUF,
      I1 => A_IBUF,
      O => F_OBUF
    );
G_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => G_OBUF,
      O => G
    );
G_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_IBUF,
      I1 => A_IBUF,
      O => G_OBUF
    );
end STRUCTURE;
