// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Feb  8 12:52:25 2019
// Host        : maks-pc running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top system_mipi_csi2_rx_subsystem_0_1 -prefix
//               system_mipi_csi2_rx_subsystem_0_1_ system_mipi_csi2_rx_subsystem_0_1_sim_netlist.v
// Design      : system_mipi_csi2_rx_subsystem_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "system_mipi_csi2_rx_subsystem_0_1.hwdef" *) 
module system_mipi_csi2_rx_subsystem_0_1_bd_0ac3
   (csirxss_csi_irq,
    csirxss_s_axi_araddr,
    csirxss_s_axi_arprot,
    csirxss_s_axi_arready,
    csirxss_s_axi_arvalid,
    csirxss_s_axi_awaddr,
    csirxss_s_axi_awprot,
    csirxss_s_axi_awready,
    csirxss_s_axi_awvalid,
    csirxss_s_axi_bready,
    csirxss_s_axi_bresp,
    csirxss_s_axi_bvalid,
    csirxss_s_axi_rdata,
    csirxss_s_axi_rready,
    csirxss_s_axi_rresp,
    csirxss_s_axi_rvalid,
    csirxss_s_axi_wdata,
    csirxss_s_axi_wready,
    csirxss_s_axi_wstrb,
    csirxss_s_axi_wvalid,
    dlyctrl_rdy_out,
    dphy_clk_200M,
    lite_aclk,
    lite_aresetn,
    mipi_phy_if_clk_hs_n,
    mipi_phy_if_clk_hs_p,
    mipi_phy_if_clk_lp_n,
    mipi_phy_if_clk_lp_p,
    mipi_phy_if_data_hs_n,
    mipi_phy_if_data_hs_p,
    mipi_phy_if_data_lp_n,
    mipi_phy_if_data_lp_p,
    rxbyteclkhs,
    system_rst_out,
    video_aclk,
    video_aresetn,
    video_out_tdata,
    video_out_tdest,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid);
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.CSIRXSS_CSI_IRQ INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTR.CSIRXSS_CSI_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output csirxss_csi_irq;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME csirxss_s_axi, ADDR_WIDTH 17, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [16:0]csirxss_s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARPROT" *) input [2:0]csirxss_s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARREADY" *) output [0:0]csirxss_s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARVALID" *) input [0:0]csirxss_s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWADDR" *) input [16:0]csirxss_s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWPROT" *) input [2:0]csirxss_s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWREADY" *) output [0:0]csirxss_s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWVALID" *) input [0:0]csirxss_s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BREADY" *) input [0:0]csirxss_s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BRESP" *) output [1:0]csirxss_s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BVALID" *) output [0:0]csirxss_s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RDATA" *) output [31:0]csirxss_s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RREADY" *) input [0:0]csirxss_s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RRESP" *) output [1:0]csirxss_s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RVALID" *) output [0:0]csirxss_s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WDATA" *) input [31:0]csirxss_s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WREADY" *) output [0:0]csirxss_s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WSTRB" *) input [3:0]csirxss_s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WVALID" *) input [0:0]csirxss_s_axi_wvalid;
  output dlyctrl_rdy_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 200000000, PHASE 0.0" *) input dphy_clk_200M;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.LITE_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.LITE_ACLK, ASSOCIATED_BUSIF csirxss_s_axi, ASSOCIATED_RESET lite_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000" *) input lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.LITE_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.LITE_ARESETN, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input lite_aresetn;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_HS_N" *) input mipi_phy_if_clk_hs_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_HS_P" *) input mipi_phy_if_clk_hs_p;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_LP_N" *) input mipi_phy_if_clk_lp_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_LP_P" *) input mipi_phy_if_clk_lp_p;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_HS_N" *) input [1:0]mipi_phy_if_data_hs_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_HS_P" *) input [1:0]mipi_phy_if_data_hs_p;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_LP_N" *) input [1:0]mipi_phy_if_data_lp_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_LP_P" *) input [1:0]mipi_phy_if_data_lp_p;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.RXBYTECLKHS CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.RXBYTECLKHS, CLK_DOMAIN bd_0ac3_phy_0_rxbyteclkhs, FREQ_HZ 100000000.0, PHASE 0" *) output rxbyteclkhs;
  output system_rst_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.VIDEO_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.VIDEO_ACLK, ASSOCIATED_BUSIF video_out, ASSOCIATED_RESET video_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000" *) input video_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.VIDEO_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.VIDEO_ARESETN, POLARITY ACTIVE_LOW" *) input video_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME video_out, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1" *) output [15:0]video_out_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDEST" *) output [7:0]video_out_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output video_out_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output video_out_tvalid;

  wire csirxss_csi_irq;
  wire [16:0]csirxss_s_axi_araddr;
  wire [2:0]csirxss_s_axi_arprot;
  wire [0:0]csirxss_s_axi_arready;
  wire [0:0]csirxss_s_axi_arvalid;
  wire [16:0]csirxss_s_axi_awaddr;
  wire [2:0]csirxss_s_axi_awprot;
  wire [0:0]csirxss_s_axi_awready;
  wire [0:0]csirxss_s_axi_awvalid;
  wire [0:0]csirxss_s_axi_bready;
  wire [1:0]csirxss_s_axi_bresp;
  wire [0:0]csirxss_s_axi_bvalid;
  wire [31:0]csirxss_s_axi_rdata;
  wire [0:0]csirxss_s_axi_rready;
  wire [1:0]csirxss_s_axi_rresp;
  wire [0:0]csirxss_s_axi_rvalid;
  wire [31:0]csirxss_s_axi_wdata;
  wire [0:0]csirxss_s_axi_wready;
  wire [3:0]csirxss_s_axi_wstrb;
  wire [0:0]csirxss_s_axi_wvalid;
  wire dlyctrl_rdy_out;
  wire dphy_clk_200M;
  wire lite_aclk;
  wire lite_aresetn;
  wire mipi_phy_if_clk_hs_n;
  wire mipi_phy_if_clk_hs_p;
  wire mipi_phy_if_clk_lp_n;
  wire mipi_phy_if_clk_lp_p;
  wire [1:0]mipi_phy_if_data_hs_n;
  wire [1:0]mipi_phy_if_data_hs_p;
  wire [1:0]mipi_phy_if_data_lp_n;
  wire [1:0]mipi_phy_if_data_lp_p;
  wire phy_rx_mipi_ppi_if_CL_ENABLE;
  wire phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT;
  wire phy_rx_mipi_ppi_if_CL_STOPSTATE;
  wire phy_rx_mipi_ppi_if_DL0_ENABLE;
  wire phy_rx_mipi_ppi_if_DL0_ERRCONTROL;
  wire phy_rx_mipi_ppi_if_DL0_ERRESC;
  wire phy_rx_mipi_ppi_if_DL0_ERRSOTHS;
  wire phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS;
  wire phy_rx_mipi_ppi_if_DL0_RXACTIVEHS;
  wire [7:0]phy_rx_mipi_ppi_if_DL0_RXDATAHS;
  wire phy_rx_mipi_ppi_if_DL0_RXSYNCHS;
  wire phy_rx_mipi_ppi_if_DL0_RXULPSESC;
  wire phy_rx_mipi_ppi_if_DL0_RXVALIDHS;
  wire phy_rx_mipi_ppi_if_DL0_STOPSTATE;
  wire phy_rx_mipi_ppi_if_DL1_ENABLE;
  wire phy_rx_mipi_ppi_if_DL1_ERRCONTROL;
  wire phy_rx_mipi_ppi_if_DL1_ERRESC;
  wire phy_rx_mipi_ppi_if_DL1_ERRSOTHS;
  wire phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS;
  wire phy_rx_mipi_ppi_if_DL1_RXACTIVEHS;
  wire [7:0]phy_rx_mipi_ppi_if_DL1_RXDATAHS;
  wire phy_rx_mipi_ppi_if_DL1_RXSYNCHS;
  wire phy_rx_mipi_ppi_if_DL1_RXULPSESC;
  wire phy_rx_mipi_ppi_if_DL1_RXVALIDHS;
  wire phy_rx_mipi_ppi_if_DL1_STOPSTATE;
  wire r_sync_peripheral_reset;
  wire [63:0]rx_m_axis_TDATA;
  wire [1:0]rx_m_axis_TDEST;
  wire [7:0]rx_m_axis_TKEEP;
  wire rx_m_axis_TLAST;
  wire rx_m_axis_TREADY;
  wire [95:0]rx_m_axis_TUSER;
  wire rx_m_axis_TVALID;
  wire rxbyteclkhs;
  wire system_rst_out;
  wire vfb_0_mdt_tr;
  wire vfb_0_mdt_tv;
  wire vfb_0_sdt_tr;
  wire vfb_0_sdt_tv;
  wire vfb_0_vfb_tr;
  wire vfb_0_vfb_tv;
  wire video_aclk;
  wire video_aresetn;
  wire [15:0]video_out_tdata;
  wire [7:0]video_out_tdest;
  wire video_out_tlast;
  wire video_out_tready;
  wire [0:0]video_out_tuser;
  wire video_out_tvalid;
  wire [6:0]xbar_M00_AXI_ARADDR;
  wire xbar_M00_AXI_ARREADY;
  wire xbar_M00_AXI_ARVALID;
  wire [6:0]xbar_M00_AXI_AWADDR;
  wire xbar_M00_AXI_AWREADY;
  wire xbar_M00_AXI_AWVALID;
  wire xbar_M00_AXI_BREADY;
  wire [1:0]xbar_M00_AXI_BRESP;
  wire xbar_M00_AXI_BVALID;
  wire [31:0]xbar_M00_AXI_RDATA;
  wire xbar_M00_AXI_RREADY;
  wire [1:0]xbar_M00_AXI_RRESP;
  wire xbar_M00_AXI_RVALID;
  wire [31:0]xbar_M00_AXI_WDATA;
  wire xbar_M00_AXI_WREADY;
  wire [3:0]xbar_M00_AXI_WSTRB;
  wire xbar_M00_AXI_WVALID;
  wire [6:0]xbar_M01_AXI_ARADDR;
  wire xbar_M01_AXI_ARREADY;
  wire xbar_M01_AXI_ARVALID;
  wire [6:0]xbar_M01_AXI_AWADDR;
  wire xbar_M01_AXI_AWREADY;
  wire xbar_M01_AXI_AWVALID;
  wire xbar_M01_AXI_BREADY;
  wire [1:0]xbar_M01_AXI_BRESP;
  wire xbar_M01_AXI_BVALID;
  wire [31:0]xbar_M01_AXI_RDATA;
  wire xbar_M01_AXI_RREADY;
  wire [1:0]xbar_M01_AXI_RRESP;
  wire xbar_M01_AXI_RVALID;
  wire [63:32]xbar_M01_AXI_WDATA;
  wire xbar_M01_AXI_WREADY;
  wire [7:4]xbar_M01_AXI_WSTRB;
  wire xbar_M01_AXI_WVALID;
  wire NLW_phy_cl_rxclkactivehs_UNCONNECTED;
  wire NLW_phy_cl_ulpsactivenot_UNCONNECTED;
  wire NLW_phy_dl0_errsyncesc_UNCONNECTED;
  wire NLW_phy_dl0_rxclkesc_UNCONNECTED;
  wire NLW_phy_dl0_rxlpdtesc_UNCONNECTED;
  wire NLW_phy_dl0_rxvalidesc_UNCONNECTED;
  wire NLW_phy_dl0_ulpsactivenot_UNCONNECTED;
  wire NLW_phy_dl1_errsyncesc_UNCONNECTED;
  wire NLW_phy_dl1_rxclkesc_UNCONNECTED;
  wire NLW_phy_dl1_rxlpdtesc_UNCONNECTED;
  wire NLW_phy_dl1_rxvalidesc_UNCONNECTED;
  wire NLW_phy_dl1_ulpsactivenot_UNCONNECTED;
  wire NLW_phy_init_done_UNCONNECTED;
  wire [7:0]NLW_phy_dl0_rxdataesc_UNCONNECTED;
  wire [3:0]NLW_phy_dl0_rxtriggeresc_UNCONNECTED;
  wire [7:0]NLW_phy_dl1_rxdataesc_UNCONNECTED;
  wire [3:0]NLW_phy_dl1_rxtriggeresc_UNCONNECTED;
  wire NLW_r_sync_mb_reset_UNCONNECTED;
  wire [0:0]NLW_r_sync_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_r_sync_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_r_sync_peripheral_aresetn_UNCONNECTED;
  wire [33:7]NLW_xbar_m_axi_araddr_UNCONNECTED;
  wire [5:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [33:7]NLW_xbar_m_axi_awaddr_UNCONNECTED;
  wire [5:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  (* syn_black_box = "TRUE" *) 
  system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_phy_0 phy
       (.cl_enable(phy_rx_mipi_ppi_if_CL_ENABLE),
        .cl_rxclkactivehs(NLW_phy_cl_rxclkactivehs_UNCONNECTED),
        .cl_rxulpsclknot(phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT),
        .cl_stopstate(phy_rx_mipi_ppi_if_CL_STOPSTATE),
        .cl_ulpsactivenot(NLW_phy_cl_ulpsactivenot_UNCONNECTED),
        .clk_hs_rxn(mipi_phy_if_clk_hs_n),
        .clk_hs_rxp(mipi_phy_if_clk_hs_p),
        .clk_lp_rxn(mipi_phy_if_clk_lp_n),
        .clk_lp_rxp(mipi_phy_if_clk_lp_p),
        .core_clk(dphy_clk_200M),
        .core_rst(r_sync_peripheral_reset),
        .data_hs_rxn(mipi_phy_if_data_hs_n),
        .data_hs_rxp(mipi_phy_if_data_hs_p),
        .data_lp_rxn(mipi_phy_if_data_lp_n),
        .data_lp_rxp(mipi_phy_if_data_lp_p),
        .dl0_enable(phy_rx_mipi_ppi_if_DL0_ENABLE),
        .dl0_errcontrol(phy_rx_mipi_ppi_if_DL0_ERRCONTROL),
        .dl0_erresc(phy_rx_mipi_ppi_if_DL0_ERRESC),
        .dl0_errsoths(phy_rx_mipi_ppi_if_DL0_ERRSOTHS),
        .dl0_errsotsynchs(phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS),
        .dl0_errsyncesc(NLW_phy_dl0_errsyncesc_UNCONNECTED),
        .dl0_forcerxmode(1'b0),
        .dl0_rxactivehs(phy_rx_mipi_ppi_if_DL0_RXACTIVEHS),
        .dl0_rxclkesc(NLW_phy_dl0_rxclkesc_UNCONNECTED),
        .dl0_rxdataesc(NLW_phy_dl0_rxdataesc_UNCONNECTED[7:0]),
        .dl0_rxdatahs(phy_rx_mipi_ppi_if_DL0_RXDATAHS),
        .dl0_rxlpdtesc(NLW_phy_dl0_rxlpdtesc_UNCONNECTED),
        .dl0_rxsynchs(phy_rx_mipi_ppi_if_DL0_RXSYNCHS),
        .dl0_rxtriggeresc(NLW_phy_dl0_rxtriggeresc_UNCONNECTED[3:0]),
        .dl0_rxulpsesc(phy_rx_mipi_ppi_if_DL0_RXULPSESC),
        .dl0_rxvalidesc(NLW_phy_dl0_rxvalidesc_UNCONNECTED),
        .dl0_rxvalidhs(phy_rx_mipi_ppi_if_DL0_RXVALIDHS),
        .dl0_stopstate(phy_rx_mipi_ppi_if_DL0_STOPSTATE),
        .dl0_ulpsactivenot(NLW_phy_dl0_ulpsactivenot_UNCONNECTED),
        .dl1_enable(phy_rx_mipi_ppi_if_DL1_ENABLE),
        .dl1_errcontrol(phy_rx_mipi_ppi_if_DL1_ERRCONTROL),
        .dl1_erresc(phy_rx_mipi_ppi_if_DL1_ERRESC),
        .dl1_errsoths(phy_rx_mipi_ppi_if_DL1_ERRSOTHS),
        .dl1_errsotsynchs(phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS),
        .dl1_errsyncesc(NLW_phy_dl1_errsyncesc_UNCONNECTED),
        .dl1_forcerxmode(1'b0),
        .dl1_rxactivehs(phy_rx_mipi_ppi_if_DL1_RXACTIVEHS),
        .dl1_rxclkesc(NLW_phy_dl1_rxclkesc_UNCONNECTED),
        .dl1_rxdataesc(NLW_phy_dl1_rxdataesc_UNCONNECTED[7:0]),
        .dl1_rxdatahs(phy_rx_mipi_ppi_if_DL1_RXDATAHS),
        .dl1_rxlpdtesc(NLW_phy_dl1_rxlpdtesc_UNCONNECTED),
        .dl1_rxsynchs(phy_rx_mipi_ppi_if_DL1_RXSYNCHS),
        .dl1_rxtriggeresc(NLW_phy_dl1_rxtriggeresc_UNCONNECTED[3:0]),
        .dl1_rxulpsesc(phy_rx_mipi_ppi_if_DL1_RXULPSESC),
        .dl1_rxvalidesc(NLW_phy_dl1_rxvalidesc_UNCONNECTED),
        .dl1_rxvalidhs(phy_rx_mipi_ppi_if_DL1_RXVALIDHS),
        .dl1_stopstate(phy_rx_mipi_ppi_if_DL1_STOPSTATE),
        .dl1_ulpsactivenot(NLW_phy_dl1_ulpsactivenot_UNCONNECTED),
        .dlyctrl_rdy_out(dlyctrl_rdy_out),
        .init_done(NLW_phy_init_done_UNCONNECTED),
        .rxbyteclkhs(rxbyteclkhs),
        .s_axi_aclk(lite_aclk),
        .s_axi_araddr(xbar_M01_AXI_ARADDR),
        .s_axi_aresetn(lite_aresetn),
        .s_axi_arready(xbar_M01_AXI_ARREADY),
        .s_axi_arvalid(xbar_M01_AXI_ARVALID),
        .s_axi_awaddr(xbar_M01_AXI_AWADDR),
        .s_axi_awready(xbar_M01_AXI_AWREADY),
        .s_axi_awvalid(xbar_M01_AXI_AWVALID),
        .s_axi_bready(xbar_M01_AXI_BREADY),
        .s_axi_bresp(xbar_M01_AXI_BRESP),
        .s_axi_bvalid(xbar_M01_AXI_BVALID),
        .s_axi_rdata(xbar_M01_AXI_RDATA),
        .s_axi_rready(xbar_M01_AXI_RREADY),
        .s_axi_rresp(xbar_M01_AXI_RRESP),
        .s_axi_rvalid(xbar_M01_AXI_RVALID),
        .s_axi_wdata(xbar_M01_AXI_WDATA),
        .s_axi_wready(xbar_M01_AXI_WREADY),
        .s_axi_wstrb(xbar_M01_AXI_WSTRB),
        .s_axi_wvalid(xbar_M01_AXI_WVALID),
        .system_rst_out(system_rst_out));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "proc_sys_reset,Vivado 2018.2" *) 
  system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_r_sync_0 r_sync
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_r_sync_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(video_aresetn),
        .interconnect_aresetn(NLW_r_sync_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_r_sync_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_r_sync_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(r_sync_peripheral_reset),
        .slowest_sync_clk(dphy_clk_200M));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "mipi_csi2_rx_ctrl_v1_0_8_top,Vivado 2018.2" *) 
  system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_rx_0 rx
       (.cl_enable(phy_rx_mipi_ppi_if_CL_ENABLE),
        .cl_rxulpsclknot(phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT),
        .cl_stopstate(phy_rx_mipi_ppi_if_CL_STOPSTATE),
        .dl0_errcontrol(phy_rx_mipi_ppi_if_DL0_ERRCONTROL),
        .dl0_erresc(phy_rx_mipi_ppi_if_DL0_ERRESC),
        .dl0_errsoths(phy_rx_mipi_ppi_if_DL0_ERRSOTHS),
        .dl0_errsotsynchs(phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS),
        .dl0_rxactivehs(phy_rx_mipi_ppi_if_DL0_RXACTIVEHS),
        .dl0_rxbyteclkhs(rxbyteclkhs),
        .dl0_rxdatahs(phy_rx_mipi_ppi_if_DL0_RXDATAHS),
        .dl0_rxsynchs(phy_rx_mipi_ppi_if_DL0_RXSYNCHS),
        .dl0_rxulpmesc(phy_rx_mipi_ppi_if_DL0_RXULPSESC),
        .dl0_rxvalidhs(phy_rx_mipi_ppi_if_DL0_RXVALIDHS),
        .dl0_shutdown(phy_rx_mipi_ppi_if_DL0_ENABLE),
        .dl0_stopstate(phy_rx_mipi_ppi_if_DL0_STOPSTATE),
        .dl1_errcontrol(phy_rx_mipi_ppi_if_DL1_ERRCONTROL),
        .dl1_erresc(phy_rx_mipi_ppi_if_DL1_ERRESC),
        .dl1_errsoths(phy_rx_mipi_ppi_if_DL1_ERRSOTHS),
        .dl1_errsotsynchs(phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS),
        .dl1_rxactivehs(phy_rx_mipi_ppi_if_DL1_RXACTIVEHS),
        .dl1_rxbyteclkhs(rxbyteclkhs),
        .dl1_rxdatahs(phy_rx_mipi_ppi_if_DL1_RXDATAHS),
        .dl1_rxsynchs(phy_rx_mipi_ppi_if_DL1_RXSYNCHS),
        .dl1_rxulpmesc(phy_rx_mipi_ppi_if_DL1_RXULPSESC),
        .dl1_rxvalidhs(phy_rx_mipi_ppi_if_DL1_RXVALIDHS),
        .dl1_shutdown(phy_rx_mipi_ppi_if_DL1_ENABLE),
        .dl1_stopstate(phy_rx_mipi_ppi_if_DL1_STOPSTATE),
        .interrupt(csirxss_csi_irq),
        .m_axis_aclk(video_aclk),
        .m_axis_aresetn(video_aresetn),
        .m_axis_tdata(rx_m_axis_TDATA),
        .m_axis_tdest(rx_m_axis_TDEST),
        .m_axis_tkeep(rx_m_axis_TKEEP),
        .m_axis_tlast(rx_m_axis_TLAST),
        .m_axis_tready(rx_m_axis_TREADY),
        .m_axis_tuser(rx_m_axis_TUSER),
        .m_axis_tvalid(rx_m_axis_TVALID),
        .mdt_tr(vfb_0_mdt_tr),
        .mdt_tv(vfb_0_mdt_tv),
        .s_axi_aclk(lite_aclk),
        .s_axi_araddr(xbar_M00_AXI_ARADDR),
        .s_axi_aresetn(lite_aresetn),
        .s_axi_arready(xbar_M00_AXI_ARREADY),
        .s_axi_arvalid(xbar_M00_AXI_ARVALID),
        .s_axi_awaddr(xbar_M00_AXI_AWADDR),
        .s_axi_awready(xbar_M00_AXI_AWREADY),
        .s_axi_awvalid(xbar_M00_AXI_AWVALID),
        .s_axi_bready(xbar_M00_AXI_BREADY),
        .s_axi_bresp(xbar_M00_AXI_BRESP),
        .s_axi_bvalid(xbar_M00_AXI_BVALID),
        .s_axi_rdata(xbar_M00_AXI_RDATA),
        .s_axi_rready(xbar_M00_AXI_RREADY),
        .s_axi_rresp(xbar_M00_AXI_RRESP),
        .s_axi_rvalid(xbar_M00_AXI_RVALID),
        .s_axi_wdata(xbar_M00_AXI_WDATA),
        .s_axi_wready(xbar_M00_AXI_WREADY),
        .s_axi_wstrb(xbar_M00_AXI_WSTRB),
        .s_axi_wvalid(xbar_M00_AXI_WVALID),
        .sdt_tr(vfb_0_sdt_tr),
        .sdt_tv(vfb_0_sdt_tv),
        .vfb_tr(vfb_0_vfb_tr),
        .vfb_tv(vfb_0_vfb_tv));
  (* syn_black_box = "TRUE" *) 
  system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_vfb_0_0 vfb_0
       (.mdt_tr(vfb_0_mdt_tr),
        .mdt_tv(vfb_0_mdt_tv),
        .s_axis_aclk(video_aclk),
        .s_axis_aresetn(video_aresetn),
        .s_axis_tdata(rx_m_axis_TDATA),
        .s_axis_tdest(rx_m_axis_TDEST),
        .s_axis_tkeep(rx_m_axis_TKEEP),
        .s_axis_tlast(rx_m_axis_TLAST),
        .s_axis_tready(rx_m_axis_TREADY),
        .s_axis_tuser(rx_m_axis_TUSER),
        .s_axis_tvalid(rx_m_axis_TVALID),
        .sdt_tr(vfb_0_sdt_tr),
        .sdt_tv(vfb_0_sdt_tv),
        .vfb_clk(video_aclk),
        .vfb_data(video_out_tdata),
        .vfb_eol(video_out_tlast),
        .vfb_ready(video_out_tready),
        .vfb_sof(video_out_tuser),
        .vfb_tr(vfb_0_vfb_tr),
        .vfb_tv(vfb_0_vfb_tv),
        .vfb_valid(video_out_tvalid),
        .vfb_vcdt(video_out_tdest));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "axi_crossbar_v2_1_18_axi_crossbar,Vivado 2018.2" *) 
  system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_xbar_0 xbar
       (.aclk(lite_aclk),
        .aresetn(lite_aresetn),
        .m_axi_araddr({NLW_xbar_m_axi_araddr_UNCONNECTED[33:24],xbar_M01_AXI_ARADDR,NLW_xbar_m_axi_araddr_UNCONNECTED[16:7],xbar_M00_AXI_ARADDR}),
        .m_axi_arprot(NLW_xbar_m_axi_arprot_UNCONNECTED[5:0]),
        .m_axi_arready({xbar_M01_AXI_ARREADY,xbar_M00_AXI_ARREADY}),
        .m_axi_arvalid({xbar_M01_AXI_ARVALID,xbar_M00_AXI_ARVALID}),
        .m_axi_awaddr({NLW_xbar_m_axi_awaddr_UNCONNECTED[33:24],xbar_M01_AXI_AWADDR,NLW_xbar_m_axi_awaddr_UNCONNECTED[16:7],xbar_M00_AXI_AWADDR}),
        .m_axi_awprot(NLW_xbar_m_axi_awprot_UNCONNECTED[5:0]),
        .m_axi_awready({xbar_M01_AXI_AWREADY,xbar_M00_AXI_AWREADY}),
        .m_axi_awvalid({xbar_M01_AXI_AWVALID,xbar_M00_AXI_AWVALID}),
        .m_axi_bready({xbar_M01_AXI_BREADY,xbar_M00_AXI_BREADY}),
        .m_axi_bresp({xbar_M01_AXI_BRESP,xbar_M00_AXI_BRESP}),
        .m_axi_bvalid({xbar_M01_AXI_BVALID,xbar_M00_AXI_BVALID}),
        .m_axi_rdata({xbar_M01_AXI_RDATA,xbar_M00_AXI_RDATA}),
        .m_axi_rready({xbar_M01_AXI_RREADY,xbar_M00_AXI_RREADY}),
        .m_axi_rresp({xbar_M01_AXI_RRESP,xbar_M00_AXI_RRESP}),
        .m_axi_rvalid({xbar_M01_AXI_RVALID,xbar_M00_AXI_RVALID}),
        .m_axi_wdata({xbar_M01_AXI_WDATA,xbar_M00_AXI_WDATA}),
        .m_axi_wready({xbar_M01_AXI_WREADY,xbar_M00_AXI_WREADY}),
        .m_axi_wstrb({xbar_M01_AXI_WSTRB,xbar_M00_AXI_WSTRB}),
        .m_axi_wvalid({xbar_M01_AXI_WVALID,xbar_M00_AXI_WVALID}),
        .s_axi_araddr(csirxss_s_axi_araddr),
        .s_axi_arprot(csirxss_s_axi_arprot),
        .s_axi_arready(csirxss_s_axi_arready),
        .s_axi_arvalid(csirxss_s_axi_arvalid),
        .s_axi_awaddr(csirxss_s_axi_awaddr),
        .s_axi_awprot(csirxss_s_axi_awprot),
        .s_axi_awready(csirxss_s_axi_awready),
        .s_axi_awvalid(csirxss_s_axi_awvalid),
        .s_axi_bready(csirxss_s_axi_bready),
        .s_axi_bresp(csirxss_s_axi_bresp),
        .s_axi_bvalid(csirxss_s_axi_bvalid),
        .s_axi_rdata(csirxss_s_axi_rdata),
        .s_axi_rready(csirxss_s_axi_rready),
        .s_axi_rresp(csirxss_s_axi_rresp),
        .s_axi_rvalid(csirxss_s_axi_rvalid),
        .s_axi_wdata(csirxss_s_axi_wdata),
        .s_axi_wready(csirxss_s_axi_wready),
        .s_axi_wstrb(csirxss_s_axi_wstrb),
        .s_axi_wvalid(csirxss_s_axi_wvalid));
endmodule

module system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_phy_0
   (core_clk,
    core_rst,
    dlyctrl_rdy_out,
    rxbyteclkhs,
    system_rst_out,
    init_done,
    cl_rxclkactivehs,
    cl_stopstate,
    cl_enable,
    cl_rxulpsclknot,
    cl_ulpsactivenot,
    dl0_rxdatahs,
    dl0_rxvalidhs,
    dl0_rxactivehs,
    dl0_rxsynchs,
    dl0_forcerxmode,
    dl0_stopstate,
    dl0_enable,
    dl0_ulpsactivenot,
    dl0_rxclkesc,
    dl0_rxlpdtesc,
    dl0_rxulpsesc,
    dl0_rxtriggeresc,
    dl0_rxdataesc,
    dl0_rxvalidesc,
    dl0_errsoths,
    dl0_errsotsynchs,
    dl0_erresc,
    dl0_errsyncesc,
    dl0_errcontrol,
    dl1_rxdatahs,
    dl1_rxvalidhs,
    dl1_rxactivehs,
    dl1_rxsynchs,
    dl1_forcerxmode,
    dl1_stopstate,
    dl1_enable,
    dl1_ulpsactivenot,
    dl1_rxclkesc,
    dl1_rxlpdtesc,
    dl1_rxulpsesc,
    dl1_rxtriggeresc,
    dl1_rxdataesc,
    dl1_rxvalidesc,
    dl1_errsoths,
    dl1_errsotsynchs,
    dl1_erresc,
    dl1_errsyncesc,
    dl1_errcontrol,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_wvalid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_bvalid,
    clk_hs_rxp,
    clk_hs_rxn,
    data_hs_rxp,
    data_hs_rxn,
    clk_lp_rxp,
    clk_lp_rxn,
    data_lp_rxp,
    data_lp_rxn);
  input core_clk;
  input core_rst;
  output dlyctrl_rdy_out;
  output rxbyteclkhs;
  output system_rst_out;
  output init_done;
  output cl_rxclkactivehs;
  output cl_stopstate;
  input cl_enable;
  output cl_rxulpsclknot;
  output cl_ulpsactivenot;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  input dl0_forcerxmode;
  output dl0_stopstate;
  input dl0_enable;
  output dl0_ulpsactivenot;
  output dl0_rxclkesc;
  output dl0_rxlpdtesc;
  output dl0_rxulpsesc;
  output [3:0]dl0_rxtriggeresc;
  output [7:0]dl0_rxdataesc;
  output dl0_rxvalidesc;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output dl0_erresc;
  output dl0_errsyncesc;
  output dl0_errcontrol;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  input dl1_forcerxmode;
  output dl1_stopstate;
  input dl1_enable;
  output dl1_ulpsactivenot;
  output dl1_rxclkesc;
  output dl1_rxlpdtesc;
  output dl1_rxulpsesc;
  output [3:0]dl1_rxtriggeresc;
  output [7:0]dl1_rxdataesc;
  output dl1_rxvalidesc;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output dl1_erresc;
  output dl1_errsyncesc;
  output dl1_errcontrol;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  input s_axi_wvalid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  output s_axi_rvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  output s_axi_bvalid;
  input clk_hs_rxp;
  input clk_hs_rxn;
  input [1:0]data_hs_rxp;
  input [1:0]data_hs_rxn;
  input clk_lp_rxp;
  input clk_lp_rxn;
  input [1:0]data_lp_rxp;
  input [1:0]data_lp_rxn;


endmodule

module system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_r_sync_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

module system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_rx_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    cl_stopstate,
    cl_enable,
    cl_rxulpsclknot,
    dl0_rxbyteclkhs,
    dl0_rxdatahs,
    dl0_rxvalidhs,
    dl0_rxactivehs,
    dl0_rxsynchs,
    dl0_stopstate,
    dl0_shutdown,
    dl0_rxulpmesc,
    dl0_errsoths,
    dl0_errsotsynchs,
    dl0_erresc,
    dl0_errcontrol,
    dl1_rxbyteclkhs,
    dl1_rxdatahs,
    dl1_rxvalidhs,
    dl1_rxactivehs,
    dl1_rxsynchs,
    dl1_stopstate,
    dl1_shutdown,
    dl1_rxulpmesc,
    dl1_errsoths,
    dl1_errsotsynchs,
    dl1_erresc,
    dl1_errcontrol,
    m_axis_aclk,
    m_axis_aresetn,
    m_axis_tready,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tuser,
    m_axis_tdest,
    mdt_tv,
    mdt_tr,
    sdt_tv,
    sdt_tr,
    vfb_tv,
    vfb_tr,
    interrupt);
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

module system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_vfb_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tuser,
    s_axis_tdest,
    mdt_tv,
    mdt_tr,
    sdt_tv,
    sdt_tr,
    vfb_tv,
    vfb_tr,
    vfb_clk,
    vfb_ready,
    vfb_valid,
    vfb_eol,
    vfb_sof,
    vfb_vcdt,
    vfb_data);
  input s_axis_aclk;
  input s_axis_aresetn;
  output s_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input [95:0]s_axis_tuser;
  input [1:0]s_axis_tdest;
  output mdt_tv;
  output mdt_tr;
  output sdt_tv;
  output sdt_tr;
  output vfb_tv;
  output vfb_tr;
  input vfb_clk;
  input vfb_ready;
  output vfb_valid;
  output vfb_eol;
  output [0:0]vfb_sof;
  output [7:0]vfb_vcdt;
  output [15:0]vfb_data;


endmodule

module system_mipi_csi2_rx_subsystem_0_1_bd_0ac3_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [16:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [16:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [33:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [33:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

(* CHECK_LICENSE_TYPE = "system_mipi_csi2_rx_subsystem_0_1,bd_0ac3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bd_0ac3,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module system_mipi_csi2_rx_subsystem_0_1
   (lite_aclk,
    lite_aresetn,
    dphy_clk_200M,
    dlyctrl_rdy_out,
    rxbyteclkhs,
    system_rst_out,
    csirxss_csi_irq,
    video_aclk,
    video_aresetn,
    csirxss_s_axi_awaddr,
    csirxss_s_axi_awprot,
    csirxss_s_axi_awvalid,
    csirxss_s_axi_awready,
    csirxss_s_axi_wdata,
    csirxss_s_axi_wstrb,
    csirxss_s_axi_wvalid,
    csirxss_s_axi_wready,
    csirxss_s_axi_bresp,
    csirxss_s_axi_bvalid,
    csirxss_s_axi_bready,
    csirxss_s_axi_araddr,
    csirxss_s_axi_arprot,
    csirxss_s_axi_arvalid,
    csirxss_s_axi_arready,
    csirxss_s_axi_rdata,
    csirxss_s_axi_rresp,
    csirxss_s_axi_rvalid,
    csirxss_s_axi_rready,
    video_out_tdata,
    video_out_tdest,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid,
    mipi_phy_if_clk_hs_n,
    mipi_phy_if_clk_hs_p,
    mipi_phy_if_clk_lp_n,
    mipi_phy_if_clk_lp_p,
    mipi_phy_if_data_hs_n,
    mipi_phy_if_data_hs_p,
    mipi_phy_if_data_lp_n,
    mipi_phy_if_data_lp_p);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.lite_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.lite_aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF csirxss_s_axi, ASSOCIATED_RESET lite_aresetn" *) input lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.lite_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.lite_aresetn, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input lite_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input dphy_clk_200M;
  output dlyctrl_rdy_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.rxbyteclkhs CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.rxbyteclkhs, FREQ_HZ 100000000.0, PHASE 0, CLK_DOMAIN bd_0ac3_phy_0_rxbyteclkhs" *) output rxbyteclkhs;
  output system_rst_out;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.csirxss_csi_irq INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTR.csirxss_csi_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output csirxss_csi_irq;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.video_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.video_aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF video_out, ASSOCIATED_RESET video_aresetn" *) input video_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.video_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.video_aresetn, POLARITY ACTIVE_LOW" *) input video_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME csirxss_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 17, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [16:0]csirxss_s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWPROT" *) input [2:0]csirxss_s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWVALID" *) input [0:0]csirxss_s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWREADY" *) output [0:0]csirxss_s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WDATA" *) input [31:0]csirxss_s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WSTRB" *) input [3:0]csirxss_s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WVALID" *) input [0:0]csirxss_s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WREADY" *) output [0:0]csirxss_s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BRESP" *) output [1:0]csirxss_s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BVALID" *) output [0:0]csirxss_s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BREADY" *) input [0:0]csirxss_s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARADDR" *) input [16:0]csirxss_s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARPROT" *) input [2:0]csirxss_s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARVALID" *) input [0:0]csirxss_s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARREADY" *) output [0:0]csirxss_s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RDATA" *) output [31:0]csirxss_s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RRESP" *) output [1:0]csirxss_s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RVALID" *) output [0:0]csirxss_s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RREADY" *) input [0:0]csirxss_s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 2, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output [15:0]video_out_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDEST" *) output [7:0]video_out_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output video_out_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output video_out_tvalid;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_HS_N" *) input mipi_phy_if_clk_hs_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_HS_P" *) input mipi_phy_if_clk_hs_p;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_LP_N" *) input mipi_phy_if_clk_lp_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_LP_P" *) input mipi_phy_if_clk_lp_p;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_HS_N" *) input [1:0]mipi_phy_if_data_hs_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_HS_P" *) input [1:0]mipi_phy_if_data_hs_p;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_LP_N" *) input [1:0]mipi_phy_if_data_lp_n;
  (* x_interface_info = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_LP_P" *) input [1:0]mipi_phy_if_data_lp_p;

  wire csirxss_csi_irq;
  wire [16:0]csirxss_s_axi_araddr;
  wire [2:0]csirxss_s_axi_arprot;
  wire [0:0]csirxss_s_axi_arready;
  wire [0:0]csirxss_s_axi_arvalid;
  wire [16:0]csirxss_s_axi_awaddr;
  wire [2:0]csirxss_s_axi_awprot;
  wire [0:0]csirxss_s_axi_awready;
  wire [0:0]csirxss_s_axi_awvalid;
  wire [0:0]csirxss_s_axi_bready;
  wire [1:0]csirxss_s_axi_bresp;
  wire [0:0]csirxss_s_axi_bvalid;
  wire [31:0]csirxss_s_axi_rdata;
  wire [0:0]csirxss_s_axi_rready;
  wire [1:0]csirxss_s_axi_rresp;
  wire [0:0]csirxss_s_axi_rvalid;
  wire [31:0]csirxss_s_axi_wdata;
  wire [0:0]csirxss_s_axi_wready;
  wire [3:0]csirxss_s_axi_wstrb;
  wire [0:0]csirxss_s_axi_wvalid;
  wire dlyctrl_rdy_out;
  wire dphy_clk_200M;
  wire lite_aclk;
  wire lite_aresetn;
  wire mipi_phy_if_clk_hs_n;
  wire mipi_phy_if_clk_hs_p;
  wire mipi_phy_if_clk_lp_n;
  wire mipi_phy_if_clk_lp_p;
  wire [1:0]mipi_phy_if_data_hs_n;
  wire [1:0]mipi_phy_if_data_hs_p;
  wire [1:0]mipi_phy_if_data_lp_n;
  wire [1:0]mipi_phy_if_data_lp_p;
  wire rxbyteclkhs;
  wire system_rst_out;
  wire video_aclk;
  wire video_aresetn;
  wire [15:0]video_out_tdata;
  wire [7:0]video_out_tdest;
  wire video_out_tlast;
  wire video_out_tready;
  wire [0:0]video_out_tuser;
  wire video_out_tvalid;

  (* hw_handoff = "system_mipi_csi2_rx_subsystem_0_1.hwdef" *) 
  system_mipi_csi2_rx_subsystem_0_1_bd_0ac3 U0
       (.csirxss_csi_irq(csirxss_csi_irq),
        .csirxss_s_axi_araddr(csirxss_s_axi_araddr),
        .csirxss_s_axi_arprot(csirxss_s_axi_arprot),
        .csirxss_s_axi_arready(csirxss_s_axi_arready),
        .csirxss_s_axi_arvalid(csirxss_s_axi_arvalid),
        .csirxss_s_axi_awaddr(csirxss_s_axi_awaddr),
        .csirxss_s_axi_awprot(csirxss_s_axi_awprot),
        .csirxss_s_axi_awready(csirxss_s_axi_awready),
        .csirxss_s_axi_awvalid(csirxss_s_axi_awvalid),
        .csirxss_s_axi_bready(csirxss_s_axi_bready),
        .csirxss_s_axi_bresp(csirxss_s_axi_bresp),
        .csirxss_s_axi_bvalid(csirxss_s_axi_bvalid),
        .csirxss_s_axi_rdata(csirxss_s_axi_rdata),
        .csirxss_s_axi_rready(csirxss_s_axi_rready),
        .csirxss_s_axi_rresp(csirxss_s_axi_rresp),
        .csirxss_s_axi_rvalid(csirxss_s_axi_rvalid),
        .csirxss_s_axi_wdata(csirxss_s_axi_wdata),
        .csirxss_s_axi_wready(csirxss_s_axi_wready),
        .csirxss_s_axi_wstrb(csirxss_s_axi_wstrb),
        .csirxss_s_axi_wvalid(csirxss_s_axi_wvalid),
        .dlyctrl_rdy_out(dlyctrl_rdy_out),
        .dphy_clk_200M(dphy_clk_200M),
        .lite_aclk(lite_aclk),
        .lite_aresetn(lite_aresetn),
        .mipi_phy_if_clk_hs_n(mipi_phy_if_clk_hs_n),
        .mipi_phy_if_clk_hs_p(mipi_phy_if_clk_hs_p),
        .mipi_phy_if_clk_lp_n(mipi_phy_if_clk_lp_n),
        .mipi_phy_if_clk_lp_p(mipi_phy_if_clk_lp_p),
        .mipi_phy_if_data_hs_n(mipi_phy_if_data_hs_n),
        .mipi_phy_if_data_hs_p(mipi_phy_if_data_hs_p),
        .mipi_phy_if_data_lp_n(mipi_phy_if_data_lp_n),
        .mipi_phy_if_data_lp_p(mipi_phy_if_data_lp_p),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out),
        .video_aclk(video_aclk),
        .video_aresetn(video_aresetn),
        .video_out_tdata(video_out_tdata),
        .video_out_tdest(video_out_tdest),
        .video_out_tlast(video_out_tlast),
        .video_out_tready(video_out_tready),
        .video_out_tuser(video_out_tuser),
        .video_out_tvalid(video_out_tvalid));
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
