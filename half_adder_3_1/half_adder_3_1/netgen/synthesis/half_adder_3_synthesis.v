////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: half_adder_3_synthesis.v
// /___/   /\     Timestamp: Mon Jan 09 02:07:38 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim half_adder_3.ngc half_adder_3_synthesis.v 
// Device	: xc6slx45t-3-fgg484
// Input file	: half_adder_3.ngc
// Output file	: C:\Users\user\Desktop\Internship FIles\half_adder_3_1\half_adder_3_1\netgen\synthesis\half_adder_3_synthesis.v
// # of Modules	: 1
// Design Name	: half_adder_3
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module half_adder_3 (
  a, b, s, c
);
  input a;
  input b;
  output s;
  output c;
  wire a_IBUF_0;
  wire b_IBUF_1;
  wire c_OBUF_2;
  wire s_OBUF_3;
  LUT2 #(
    .INIT ( 4'h8 ))
  c1 (
    .I0(a_IBUF_0),
    .I1(b_IBUF_1),
    .O(c_OBUF_2)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_s_xo<0>1  (
    .I0(a_IBUF_0),
    .I1(b_IBUF_1),
    .O(s_OBUF_3)
  );
  IBUF   a_IBUF (
    .I(a),
    .O(a_IBUF_0)
  );
  IBUF   b_IBUF (
    .I(b),
    .O(b_IBUF_1)
  );
  OBUF   s_OBUF (
    .I(s_OBUF_3),
    .O(s)
  );
  OBUF   c_OBUF (
    .I(c_OBUF_2),
    .O(c)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

