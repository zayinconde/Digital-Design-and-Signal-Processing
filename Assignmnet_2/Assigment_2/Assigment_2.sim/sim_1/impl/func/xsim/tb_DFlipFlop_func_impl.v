// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Mar 20 22:31:27 2025
// Host        : HACKBOI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Design_DSP/Assignmnet_2/Assigment_2/Assigment_2.sim/sim_1/impl/func/xsim/tb_DFlipFlop_func_impl.v
// Design      : DFlipFlop
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "76814b42" *) 
(* NotValidForBitStream *)
module DFlipFlop
   (D,
    CLK,
    Reset,
    Preset,
    Output);
  input D;
  input CLK;
  input Reset;
  input Preset;
  output Output;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire D;
  wire D_IBUF;
  wire Output;
  wire Output_OBUF;
  wire Output_i_2_n_0;
  wire Preset;
  wire Preset_IBUF;
  wire Reset;
  wire Reset_IBUF;
  wire p_0_in;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF D_IBUF_inst
       (.I(D),
        .O(D_IBUF));
  OBUF Output_OBUF_inst
       (.I(Output_OBUF),
        .O(Output));
  LUT1 #(
    .INIT(2'h1)) 
    Output_i_1
       (.I0(Reset_IBUF),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    Output_i_2
       (.I0(D_IBUF),
        .I1(Preset_IBUF),
        .O(Output_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Output_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Output_i_2_n_0),
        .Q(Output_OBUF),
        .R(p_0_in));
  IBUF Preset_IBUF_inst
       (.I(Preset),
        .O(Preset_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
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
