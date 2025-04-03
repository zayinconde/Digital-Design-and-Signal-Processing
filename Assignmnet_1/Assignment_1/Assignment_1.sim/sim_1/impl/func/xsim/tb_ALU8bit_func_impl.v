// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Mar 20 21:44:32 2025
// Host        : HACKBOI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Design_DSP/Assignmnet_1/Assignment_1/Assignment_1.sim/sim_1/impl/func/xsim/tb_ALU8bit_func_impl.v
// Design      : EightBitAlu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "d30fe46e" *) 
(* NotValidForBitStream *)
module EightBitAlu
   (A,
    B,
    CarryIn,
    Sel,
    C,
    CarryOut);
  input [7:0]A;
  input [7:0]B;
  input CarryIn;
  input [1:0]Sel;
  output [7:0]C;
  output CarryOut;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire [7:0]C;
  wire [7:0]C_OBUF;
  wire \C_OBUF[3]_inst_i_2_n_0 ;
  wire \C_OBUF[4]_inst_i_2_n_0 ;
  wire \C_OBUF[5]_inst_i_2_n_0 ;
  wire \C_OBUF[7]_inst_i_2_n_0 ;
  wire \C_OBUF[7]_inst_i_3_n_0 ;
  wire \C_OBUF[7]_inst_i_4_n_0 ;
  wire \C_OBUF[7]_inst_i_5_n_0 ;
  wire CarryIn;
  wire CarryIn_IBUF;
  wire CarryOut;
  wire CarryOut_OBUF;
  wire [1:0]Sel;
  wire [1:0]Sel_IBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  OBUF \C_OBUF[0]_inst 
       (.I(C_OBUF[0]),
        .O(C[0]));
  LUT5 #(
    .INIT(32'h3E0DCDC2)) 
    \C_OBUF[0]_inst_i_1 
       (.I0(CarryIn_IBUF),
        .I1(Sel_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .O(C_OBUF[0]));
  OBUF \C_OBUF[1]_inst 
       (.I(C_OBUF[1]),
        .O(C[1]));
  LUT4 #(
    .INIT(16'h62BC)) 
    \C_OBUF[1]_inst_i_1 
       (.I0(Sel_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[1]),
        .I3(Sel_IBUF[0]),
        .O(C_OBUF[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(C_OBUF[2]),
        .O(C[2]));
  LUT6 #(
    .INIT(64'h0FF8FF070F07F008)) 
    \C_OBUF[2]_inst_i_1 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(A_IBUF[2]),
        .I5(B_IBUF[2]),
        .O(C_OBUF[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(C_OBUF[3]),
        .O(C[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3E0DCDC2)) 
    \C_OBUF[3]_inst_i_1 
       (.I0(\C_OBUF[3]_inst_i_2_n_0 ),
        .I1(Sel_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[3]),
        .O(C_OBUF[3]));
  LUT4 #(
    .INIT(16'hF880)) 
    \C_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[2]),
        .O(\C_OBUF[3]_inst_i_2_n_0 ));
  OBUF \C_OBUF[4]_inst 
       (.I(C_OBUF[4]),
        .O(C[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3E0DCDC2)) 
    \C_OBUF[4]_inst_i_1 
       (.I0(\C_OBUF[4]_inst_i_2_n_0 ),
        .I1(Sel_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(B_IBUF[4]),
        .I4(A_IBUF[4]),
        .O(C_OBUF[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \C_OBUF[4]_inst_i_2 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[2]),
        .O(\C_OBUF[4]_inst_i_2_n_0 ));
  OBUF \C_OBUF[5]_inst 
       (.I(C_OBUF[5]),
        .O(C[5]));
  LUT5 #(
    .INIT(32'h3E0DCDC2)) 
    \C_OBUF[5]_inst_i_1 
       (.I0(\C_OBUF[5]_inst_i_2_n_0 ),
        .I1(Sel_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(B_IBUF[5]),
        .I4(A_IBUF[5]),
        .O(C_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \C_OBUF[5]_inst_i_2 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .I2(\C_OBUF[4]_inst_i_2_n_0 ),
        .O(\C_OBUF[5]_inst_i_2_n_0 ));
  OBUF \C_OBUF[6]_inst 
       (.I(C_OBUF[6]),
        .O(C[6]));
  LUT5 #(
    .INIT(32'h3E0DCDC2)) 
    \C_OBUF[6]_inst_i_1 
       (.I0(\C_OBUF[7]_inst_i_2_n_0 ),
        .I1(Sel_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(B_IBUF[6]),
        .I4(A_IBUF[6]),
        .O(C_OBUF[6]));
  OBUF \C_OBUF[7]_inst 
       (.I(C_OBUF[7]),
        .O(C[7]));
  LUT6 #(
    .INIT(64'h17E8FFFF17E80000)) 
    \C_OBUF[7]_inst_i_1 
       (.I0(\C_OBUF[7]_inst_i_2_n_0 ),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[6]),
        .I3(\C_OBUF[7]_inst_i_3_n_0 ),
        .I4(\C_OBUF[7]_inst_i_4_n_0 ),
        .I5(\C_OBUF[7]_inst_i_5_n_0 ),
        .O(C_OBUF[7]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \C_OBUF[7]_inst_i_2 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[4]),
        .I4(\C_OBUF[4]_inst_i_2_n_0 ),
        .O(\C_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \C_OBUF[7]_inst_i_3 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .O(\C_OBUF[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \C_OBUF[7]_inst_i_4 
       (.I0(Sel_IBUF[1]),
        .I1(Sel_IBUF[0]),
        .O(\C_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h64D9)) 
    \C_OBUF[7]_inst_i_5 
       (.I0(Sel_IBUF[0]),
        .I1(Sel_IBUF[1]),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[7]),
        .O(\C_OBUF[7]_inst_i_5_n_0 ));
  IBUF CarryIn_IBUF_inst
       (.I(CarryIn),
        .O(CarryIn_IBUF));
  OBUF CarryOut_OBUF_inst
       (.I(CarryOut_OBUF),
        .O(CarryOut));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    CarryOut_OBUF_inst_i_1
       (.I0(\C_OBUF[7]_inst_i_2_n_0 ),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[7]),
        .I4(B_IBUF[7]),
        .I5(\C_OBUF[7]_inst_i_4_n_0 ),
        .O(CarryOut_OBUF));
  IBUF \Sel_IBUF[0]_inst 
       (.I(Sel[0]),
        .O(Sel_IBUF[0]));
  IBUF \Sel_IBUF[1]_inst 
       (.I(Sel[1]),
        .O(Sel_IBUF[1]));
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
