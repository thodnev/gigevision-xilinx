// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Feb  8 12:50:14 2019
// Host        : maks-pc running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/maks/Documents/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/bd_0ac3_rx_0_stub.v
// Design      : bd_0ac3_rx_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mipi_csi2_rx_ctrl_v1_0_8_top,Vivado 2018.2" *)
module bd_0ac3_rx_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, cl_stopstate, cl_enable, 
  cl_rxulpsclknot, dl0_rxbyteclkhs, dl0_rxdatahs, dl0_rxvalidhs, dl0_rxactivehs, 
  dl0_rxsynchs, dl0_stopstate, dl0_shutdown, dl0_rxulpmesc, dl0_errsoths, dl0_errsotsynchs, 
  dl0_erresc, dl0_errcontrol, dl1_rxbyteclkhs, dl1_rxdatahs, dl1_rxvalidhs, dl1_rxactivehs, 
  dl1_rxsynchs, dl1_stopstate, dl1_shutdown, dl1_rxulpmesc, dl1_errsoths, dl1_errsotsynchs, 
  dl1_erresc, dl1_errcontrol, m_axis_aclk, m_axis_aresetn, m_axis_tready, m_axis_tvalid, 
  m_axis_tlast, m_axis_tdata, m_axis_tkeep, m_axis_tuser, m_axis_tdest, mdt_tv, mdt_tr, sdt_tv, 
  sdt_tr, vfb_tv, vfb_tr, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[6:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,cl_stopstate,cl_enable,cl_rxulpsclknot,dl0_rxbyteclkhs,dl0_rxdatahs[7:0],dl0_rxvalidhs,dl0_rxactivehs,dl0_rxsynchs,dl0_stopstate,dl0_shutdown,dl0_rxulpmesc,dl0_errsoths,dl0_errsotsynchs,dl0_erresc,dl0_errcontrol,dl1_rxbyteclkhs,dl1_rxdatahs[7:0],dl1_rxvalidhs,dl1_rxactivehs,dl1_rxsynchs,dl1_stopstate,dl1_shutdown,dl1_rxulpmesc,dl1_errsoths,dl1_errsotsynchs,dl1_erresc,dl1_errcontrol,m_axis_aclk,m_axis_aresetn,m_axis_tready,m_axis_tvalid,m_axis_tlast,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tuser[95:0],m_axis_tdest[1:0],mdt_tv,mdt_tr,sdt_tv,sdt_tr,vfb_tv,vfb_tr,interrupt" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input cl_stopstate;
  output cl_enable;
  input cl_rxulpsclknot;
  input dl0_rxbyteclkhs;
  input [7:0]dl0_rxdatahs;
  input dl0_rxvalidhs;
  input dl0_rxactivehs;
  input dl0_rxsynchs;
  input dl0_stopstate;
  output dl0_shutdown;
  input dl0_rxulpmesc;
  input dl0_errsoths;
  input dl0_errsotsynchs;
  input dl0_erresc;
  input dl0_errcontrol;
  input dl1_rxbyteclkhs;
  input [7:0]dl1_rxdatahs;
  input dl1_rxvalidhs;
  input dl1_rxactivehs;
  input dl1_rxsynchs;
  input dl1_stopstate;
  output dl1_shutdown;
  input dl1_rxulpmesc;
  input dl1_errsoths;
  input dl1_errsotsynchs;
  input dl1_erresc;
  input dl1_errcontrol;
  input m_axis_aclk;
  input m_axis_aresetn;
  input m_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output [95:0]m_axis_tuser;
  output [1:0]m_axis_tdest;
  input mdt_tv;
  input mdt_tr;
  input sdt_tv;
  input sdt_tr;
  input vfb_tv;
  input vfb_tr;
  output interrupt;
endmodule
