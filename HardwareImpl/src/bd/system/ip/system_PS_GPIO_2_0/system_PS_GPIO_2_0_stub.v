// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Feb  8 12:52:13 2019
// Host        : maks-pc running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/maks/Documents/Zybo-Z7-20-base-linux/src/bd/system/ip/system_PS_GPIO_2_0/system_PS_GPIO_2_0_stub.v
// Design      : system_PS_GPIO_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.2" *)
module system_PS_GPIO_2_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[63:0],Dout[0:0]" */;
  input [63:0]Din;
  output [0:0]Dout;
endmodule
