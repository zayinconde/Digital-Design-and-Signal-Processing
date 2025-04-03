// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Mar 20 23:28:10 2025
// Host        : HACKBOI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Design_DSP/Assignmnet_2/Assigment_2/Assigment_2.sim/sim_1/impl/func/xsim/tb_CounterEightBit_func_impl.v
// Design      : CounterEightBit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "d591dd80" *) 
(* NotValidForBitStream *)
module CounterEightBit
   (CLK,
    Reset,
    Sig,
    Counter);
  input CLK;
  input Reset;
  input Sig;
  output [7:0]Counter;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire \Count[7]_i_2_n_0 ;
  wire [7:0]Counter;
  wire [7:0]Counter_OBUF;
  wire Reset;
  wire Reset_IBUF;
  wire Sig;
  wire Sig_IBUF;
  wire [7:0]plusOp;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \Count[0]_i_1 
       (.I0(Counter_OBUF[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Count[1]_i_1 
       (.I0(Counter_OBUF[0]),
        .I1(Counter_OBUF[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Count[2]_i_1 
       (.I0(Counter_OBUF[0]),
        .I1(Counter_OBUF[1]),
        .I2(Counter_OBUF[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Count[3]_i_1 
       (.I0(Counter_OBUF[1]),
        .I1(Counter_OBUF[0]),
        .I2(Counter_OBUF[2]),
        .I3(Counter_OBUF[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Count[4]_i_1 
       (.I0(Counter_OBUF[2]),
        .I1(Counter_OBUF[0]),
        .I2(Counter_OBUF[1]),
        .I3(Counter_OBUF[3]),
        .I4(Counter_OBUF[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Count[5]_i_1 
       (.I0(Counter_OBUF[3]),
        .I1(Counter_OBUF[1]),
        .I2(Counter_OBUF[0]),
        .I3(Counter_OBUF[2]),
        .I4(Counter_OBUF[4]),
        .I5(Counter_OBUF[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Count[6]_i_1 
       (.I0(\Count[7]_i_2_n_0 ),
        .I1(Counter_OBUF[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Count[7]_i_1 
       (.I0(\Count[7]_i_2_n_0 ),
        .I1(Counter_OBUF[6]),
        .I2(Counter_OBUF[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Count[7]_i_2 
       (.I0(Counter_OBUF[5]),
        .I1(Counter_OBUF[3]),
        .I2(Counter_OBUF[1]),
        .I3(Counter_OBUF[0]),
        .I4(Counter_OBUF[2]),
        .I5(Counter_OBUF[4]),
        .O(\Count[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[0]),
        .Q(Counter_OBUF[0]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[1]),
        .Q(Counter_OBUF[1]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[2]),
        .Q(Counter_OBUF[2]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[3]),
        .Q(Counter_OBUF[3]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[4]),
        .Q(Counter_OBUF[4]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[5]),
        .Q(Counter_OBUF[5]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[6]),
        .Q(Counter_OBUF[6]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(Sig_IBUF),
        .D(plusOp[7]),
        .Q(Counter_OBUF[7]),
        .R(Reset_IBUF));
  OBUF \Counter_OBUF[0]_inst 
       (.I(Counter_OBUF[0]),
        .O(Counter[0]));
  OBUF \Counter_OBUF[1]_inst 
       (.I(Counter_OBUF[1]),
        .O(Counter[1]));
  OBUF \Counter_OBUF[2]_inst 
       (.I(Counter_OBUF[2]),
        .O(Counter[2]));
  OBUF \Counter_OBUF[3]_inst 
       (.I(Counter_OBUF[3]),
        .O(Counter[3]));
  OBUF \Counter_OBUF[4]_inst 
       (.I(Counter_OBUF[4]),
        .O(Counter[4]));
  OBUF \Counter_OBUF[5]_inst 
       (.I(Counter_OBUF[5]),
        .O(Counter[5]));
  OBUF \Counter_OBUF[6]_inst 
       (.I(Counter_OBUF[6]),
        .O(Counter[6]));
  OBUF \Counter_OBUF[7]_inst 
       (.I(Counter_OBUF[7]),
        .O(Counter[7]));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  IBUF Sig_IBUF_inst
       (.I(Sig),
        .O(Sig_IBUF));
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
