// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Mar 20 11:13:19 2025
// Host        : HACKBOI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Design_DSP/Assignmnet_1/Assignment_1/Assignment_1.sim/sim_1/impl/func/xsim/tb_MUX4in1EightBit_func_impl.v
// Design      : MUX4in1EightBit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "fd9cbb19" *) 
(* NotValidForBitStream *)
module MUX4in1EightBit
   (D0,
    D1,
    D2,
    D3,
    S0,
    S1,
    Y);
  input [7:0]D0;
  input [7:0]D1;
  input [7:0]D2;
  input [7:0]D3;
  input S0;
  input S1;
  output [7:0]Y;

  wire [7:0]D0;
  wire [7:0]D0_IBUF;
  wire [7:0]D1;
  wire [7:0]D1_IBUF;
  wire [7:0]D2;
  wire [7:0]D2_IBUF;
  wire [7:0]D3;
  wire [7:0]D3_IBUF;
  wire S0;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire [7:0]Y;
  wire [7:0]Y_OBUF;

  IBUF \D0_IBUF[0]_inst 
       (.I(D0[0]),
        .O(D0_IBUF[0]));
  IBUF \D0_IBUF[1]_inst 
       (.I(D0[1]),
        .O(D0_IBUF[1]));
  IBUF \D0_IBUF[2]_inst 
       (.I(D0[2]),
        .O(D0_IBUF[2]));
  IBUF \D0_IBUF[3]_inst 
       (.I(D0[3]),
        .O(D0_IBUF[3]));
  IBUF \D0_IBUF[4]_inst 
       (.I(D0[4]),
        .O(D0_IBUF[4]));
  IBUF \D0_IBUF[5]_inst 
       (.I(D0[5]),
        .O(D0_IBUF[5]));
  IBUF \D0_IBUF[6]_inst 
       (.I(D0[6]),
        .O(D0_IBUF[6]));
  IBUF \D0_IBUF[7]_inst 
       (.I(D0[7]),
        .O(D0_IBUF[7]));
  IBUF \D1_IBUF[0]_inst 
       (.I(D1[0]),
        .O(D1_IBUF[0]));
  IBUF \D1_IBUF[1]_inst 
       (.I(D1[1]),
        .O(D1_IBUF[1]));
  IBUF \D1_IBUF[2]_inst 
       (.I(D1[2]),
        .O(D1_IBUF[2]));
  IBUF \D1_IBUF[3]_inst 
       (.I(D1[3]),
        .O(D1_IBUF[3]));
  IBUF \D1_IBUF[4]_inst 
       (.I(D1[4]),
        .O(D1_IBUF[4]));
  IBUF \D1_IBUF[5]_inst 
       (.I(D1[5]),
        .O(D1_IBUF[5]));
  IBUF \D1_IBUF[6]_inst 
       (.I(D1[6]),
        .O(D1_IBUF[6]));
  IBUF \D1_IBUF[7]_inst 
       (.I(D1[7]),
        .O(D1_IBUF[7]));
  IBUF \D2_IBUF[0]_inst 
       (.I(D2[0]),
        .O(D2_IBUF[0]));
  IBUF \D2_IBUF[1]_inst 
       (.I(D2[1]),
        .O(D2_IBUF[1]));
  IBUF \D2_IBUF[2]_inst 
       (.I(D2[2]),
        .O(D2_IBUF[2]));
  IBUF \D2_IBUF[3]_inst 
       (.I(D2[3]),
        .O(D2_IBUF[3]));
  IBUF \D2_IBUF[4]_inst 
       (.I(D2[4]),
        .O(D2_IBUF[4]));
  IBUF \D2_IBUF[5]_inst 
       (.I(D2[5]),
        .O(D2_IBUF[5]));
  IBUF \D2_IBUF[6]_inst 
       (.I(D2[6]),
        .O(D2_IBUF[6]));
  IBUF \D2_IBUF[7]_inst 
       (.I(D2[7]),
        .O(D2_IBUF[7]));
  IBUF \D3_IBUF[0]_inst 
       (.I(D3[0]),
        .O(D3_IBUF[0]));
  IBUF \D3_IBUF[1]_inst 
       (.I(D3[1]),
        .O(D3_IBUF[1]));
  IBUF \D3_IBUF[2]_inst 
       (.I(D3[2]),
        .O(D3_IBUF[2]));
  IBUF \D3_IBUF[3]_inst 
       (.I(D3[3]),
        .O(D3_IBUF[3]));
  IBUF \D3_IBUF[4]_inst 
       (.I(D3[4]),
        .O(D3_IBUF[4]));
  IBUF \D3_IBUF[5]_inst 
       (.I(D3[5]),
        .O(D3_IBUF[5]));
  IBUF \D3_IBUF[6]_inst 
       (.I(D3[6]),
        .O(D3_IBUF[6]));
  IBUF \D3_IBUF[7]_inst 
       (.I(D3[7]),
        .O(D3_IBUF[7]));
  IBUF S0_IBUF_inst
       (.I(S0),
        .O(S0_IBUF));
  IBUF S1_IBUF_inst
       (.I(S1),
        .O(S1_IBUF));
  OBUF \Y_OBUF[0]_inst 
       (.I(Y_OBUF[0]),
        .O(Y[0]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[0]_inst_i_1 
       (.I0(D0_IBUF[0]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[0]),
        .I4(D2_IBUF[0]),
        .I5(D3_IBUF[0]),
        .O(Y_OBUF[0]));
  OBUF \Y_OBUF[1]_inst 
       (.I(Y_OBUF[1]),
        .O(Y[1]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[1]_inst_i_1 
       (.I0(D0_IBUF[1]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[1]),
        .I4(D2_IBUF[1]),
        .I5(D3_IBUF[1]),
        .O(Y_OBUF[1]));
  OBUF \Y_OBUF[2]_inst 
       (.I(Y_OBUF[2]),
        .O(Y[2]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[2]_inst_i_1 
       (.I0(D0_IBUF[2]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[2]),
        .I4(D2_IBUF[2]),
        .I5(D3_IBUF[2]),
        .O(Y_OBUF[2]));
  OBUF \Y_OBUF[3]_inst 
       (.I(Y_OBUF[3]),
        .O(Y[3]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[3]_inst_i_1 
       (.I0(D0_IBUF[3]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[3]),
        .I4(D2_IBUF[3]),
        .I5(D3_IBUF[3]),
        .O(Y_OBUF[3]));
  OBUF \Y_OBUF[4]_inst 
       (.I(Y_OBUF[4]),
        .O(Y[4]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[4]_inst_i_1 
       (.I0(D0_IBUF[4]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[4]),
        .I4(D2_IBUF[4]),
        .I5(D3_IBUF[4]),
        .O(Y_OBUF[4]));
  OBUF \Y_OBUF[5]_inst 
       (.I(Y_OBUF[5]),
        .O(Y[5]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[5]_inst_i_1 
       (.I0(D0_IBUF[5]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[5]),
        .I4(D2_IBUF[5]),
        .I5(D3_IBUF[5]),
        .O(Y_OBUF[5]));
  OBUF \Y_OBUF[6]_inst 
       (.I(Y_OBUF[6]),
        .O(Y[6]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[6]_inst_i_1 
       (.I0(D0_IBUF[6]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[6]),
        .I4(D2_IBUF[6]),
        .I5(D3_IBUF[6]),
        .O(Y_OBUF[6]));
  OBUF \Y_OBUF[7]_inst 
       (.I(Y_OBUF[7]),
        .O(Y[7]));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \Y_OBUF[7]_inst_i_1 
       (.I0(D0_IBUF[7]),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .I3(D1_IBUF[7]),
        .I4(D2_IBUF[7]),
        .I5(D3_IBUF[7]),
        .O(Y_OBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
