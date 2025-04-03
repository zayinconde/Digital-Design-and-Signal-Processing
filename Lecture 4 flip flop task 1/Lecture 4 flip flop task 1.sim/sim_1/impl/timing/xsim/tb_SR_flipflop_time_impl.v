// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Mar  3 12:59:22 2025
// Host        : HackboiMobile running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/zayin/Lecture 4 flip flop task
//               1/Lecture 4 flip flop task 1.sim/sim_1/impl/timing/xsim/tb_SR_flipflop_time_impl.v}
// Design      : SR_FLIPPY_FLOPPY
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "897c7718" *) 
(* NotValidForBitStream *)
module SR_FLIPPY_FLOPPY
   (S,
    R,
    CLK,
    RESET,
    Qout1,
    Qout2);
  input S;
  input R;
  input CLK;
  input RESET;
  output Qout1;
  output Qout2;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Qout1;
  wire Qout1_OBUF;
  wire Qout2;
  wire Qout2_OBUF;
  wire R;
  wire R_IBUF;
  wire S;
  wire S_IBUF;
  wire temp_i_1_n_0;

initial begin
 $sdf_annotate("tb_SR_flipflop_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF Qout1_OBUF_inst
       (.I(Qout1_OBUF),
        .O(Qout1));
  OBUF Qout2_OBUF_inst
       (.I(Qout2_OBUF),
        .O(Qout2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    Qout2_OBUF_inst_i_1
       (.I0(Qout1_OBUF),
        .O(Qout2_OBUF));
  IBUF R_IBUF_inst
       (.I(R),
        .O(R_IBUF));
  IBUF S_IBUF_inst
       (.I(S),
        .O(S_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h38)) 
    temp_i_1
       (.I0(Qout1_OBUF),
        .I1(R_IBUF),
        .I2(S_IBUF),
        .O(temp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(temp_i_1_n_0),
        .Q(Qout1_OBUF),
        .R(1'b0));
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
