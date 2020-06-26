--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_0ac3.bd
--Design : bd_0ac3
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0ac3 is
  port (
    csirxss_csi_irq : out STD_LOGIC;
    csirxss_s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    csirxss_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    csirxss_s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    csirxss_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    csirxss_s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    csirxss_s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    csirxss_s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    csirxss_s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csirxss_s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    csirxss_s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    dlyctrl_rdy_out : out STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    lite_aclk : in STD_LOGIC;
    lite_aresetn : in STD_LOGIC;
    mipi_phy_if_clk_hs_n : in STD_LOGIC;
    mipi_phy_if_clk_hs_p : in STD_LOGIC;
    mipi_phy_if_clk_lp_n : in STD_LOGIC;
    mipi_phy_if_clk_lp_p : in STD_LOGIC;
    mipi_phy_if_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyteclkhs : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    video_aresetn : in STD_LOGIC;
    video_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    video_out_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_tlast : out STD_LOGIC;
    video_out_tready : in STD_LOGIC;
    video_out_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tvalid : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0ac3 : entity is "bd_0ac3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0ac3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0ac3 : entity is "system_mipi_csi2_rx_subsystem_0_1.hwdef";
end bd_0ac3;

architecture STRUCTURE of bd_0ac3 is
  component bd_0ac3_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_0ac3_xbar_0;
  component bd_0ac3_r_sync_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_0ac3_r_sync_0;
  component bd_0ac3_rx_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    cl_stopstate : in STD_LOGIC;
    cl_enable : out STD_LOGIC;
    cl_rxulpsclknot : in STD_LOGIC;
    dl0_rxbyteclkhs : in STD_LOGIC;
    dl0_rxdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_rxvalidhs : in STD_LOGIC;
    dl0_rxactivehs : in STD_LOGIC;
    dl0_rxsynchs : in STD_LOGIC;
    dl0_stopstate : in STD_LOGIC;
    dl0_shutdown : out STD_LOGIC;
    dl0_rxulpmesc : in STD_LOGIC;
    dl0_errsoths : in STD_LOGIC;
    dl0_errsotsynchs : in STD_LOGIC;
    dl0_erresc : in STD_LOGIC;
    dl0_errcontrol : in STD_LOGIC;
    dl1_rxbyteclkhs : in STD_LOGIC;
    dl1_rxdatahs : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_rxvalidhs : in STD_LOGIC;
    dl1_rxactivehs : in STD_LOGIC;
    dl1_rxsynchs : in STD_LOGIC;
    dl1_stopstate : in STD_LOGIC;
    dl1_shutdown : out STD_LOGIC;
    dl1_rxulpmesc : in STD_LOGIC;
    dl1_errsoths : in STD_LOGIC;
    dl1_errsotsynchs : in STD_LOGIC;
    dl1_erresc : in STD_LOGIC;
    dl1_errcontrol : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mdt_tv : in STD_LOGIC;
    mdt_tr : in STD_LOGIC;
    sdt_tv : in STD_LOGIC;
    sdt_tr : in STD_LOGIC;
    vfb_tv : in STD_LOGIC;
    vfb_tr : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  end component bd_0ac3_rx_0;
  component bd_0ac3_phy_0 is
  port (
    core_clk : in STD_LOGIC;
    core_rst : in STD_LOGIC;
    rxbyteclkhs : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    dlyctrl_rdy_out : out STD_LOGIC;
    init_done : out STD_LOGIC;
    cl_stopstate : out STD_LOGIC;
    cl_enable : in STD_LOGIC;
    cl_ulpsactivenot : out STD_LOGIC;
    dl0_stopstate : out STD_LOGIC;
    dl0_enable : in STD_LOGIC;
    dl0_ulpsactivenot : out STD_LOGIC;
    dl1_stopstate : out STD_LOGIC;
    dl1_enable : in STD_LOGIC;
    dl1_ulpsactivenot : out STD_LOGIC;
    dl0_rxdatahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_rxvalidhs : out STD_LOGIC;
    dl0_rxactivehs : out STD_LOGIC;
    dl0_rxsynchs : out STD_LOGIC;
    dl0_forcerxmode : in STD_LOGIC;
    dl0_rxclkesc : out STD_LOGIC;
    dl0_rxlpdtesc : out STD_LOGIC;
    dl0_rxulpsesc : out STD_LOGIC;
    dl0_rxtriggeresc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dl0_rxdataesc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl0_rxvalidesc : out STD_LOGIC;
    dl0_errsoths : out STD_LOGIC;
    dl0_errsotsynchs : out STD_LOGIC;
    dl0_erresc : out STD_LOGIC;
    dl0_errsyncesc : out STD_LOGIC;
    dl0_errcontrol : out STD_LOGIC;
    dl1_rxdatahs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_rxvalidhs : out STD_LOGIC;
    dl1_rxactivehs : out STD_LOGIC;
    dl1_rxsynchs : out STD_LOGIC;
    dl1_forcerxmode : in STD_LOGIC;
    dl1_rxclkesc : out STD_LOGIC;
    dl1_rxlpdtesc : out STD_LOGIC;
    dl1_rxulpsesc : out STD_LOGIC;
    dl1_rxtriggeresc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dl1_rxdataesc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dl1_rxvalidesc : out STD_LOGIC;
    dl1_errsoths : out STD_LOGIC;
    dl1_errsotsynchs : out STD_LOGIC;
    dl1_erresc : out STD_LOGIC;
    dl1_errsyncesc : out STD_LOGIC;
    dl1_errcontrol : out STD_LOGIC;
    cl_rxclkactivehs : out STD_LOGIC;
    cl_rxulpsclknot : out STD_LOGIC;
    clk_hs_rxp : in STD_LOGIC;
    clk_hs_rxn : in STD_LOGIC;
    data_hs_rxp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_hs_rxn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_lp_rxp : in STD_LOGIC;
    clk_lp_rxn : in STD_LOGIC;
    data_lp_rxp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_lp_rxn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC
  );
  end component bd_0ac3_phy_0;
  component bd_0ac3_vfb_0_0 is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vfb_clk : in STD_LOGIC;
    vfb_ready : in STD_LOGIC;
    vfb_valid : out STD_LOGIC;
    vfb_eol : out STD_LOGIC;
    vfb_sof : out STD_LOGIC_VECTOR ( 0 to 0 );
    vfb_vcdt : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vfb_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mdt_tv : out STD_LOGIC;
    mdt_tr : out STD_LOGIC;
    sdt_tv : out STD_LOGIC;
    sdt_tr : out STD_LOGIC;
    vfb_tv : out STD_LOGIC;
    vfb_tr : out STD_LOGIC
  );
  end component bd_0ac3_vfb_0_0;
  signal csirxss_s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal csirxss_s_axi_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal csirxss_s_axi_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal csirxss_s_axi_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal csirxss_s_axi_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal csirxss_s_axi_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal csirxss_s_axi_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal csirxss_s_axi_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal csirxss_s_axi_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csirxss_s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal csirxss_s_axi_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dphy_clk_200M_1 : STD_LOGIC;
  signal lite_aclk_1 : STD_LOGIC;
  signal lite_aresetn_1 : STD_LOGIC;
  signal mipi_phy_if_1_CLK_HS_N : STD_LOGIC;
  signal mipi_phy_if_1_CLK_HS_P : STD_LOGIC;
  signal mipi_phy_if_1_CLK_LP_N : STD_LOGIC;
  signal mipi_phy_if_1_CLK_LP_P : STD_LOGIC;
  signal mipi_phy_if_1_DATA_HS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mipi_phy_if_1_DATA_HS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mipi_phy_if_1_DATA_LP_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mipi_phy_if_1_DATA_LP_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal phy_dlyctrl_rdy_out : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_CL_ENABLE : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_CL_STOPSTATE : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_ENABLE : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_ERRCONTROL : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_ERRESC : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_ERRSOTHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_RXACTIVEHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal phy_rx_mipi_ppi_if_DL0_RXSYNCHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_RXULPSESC : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_RXVALIDHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL0_STOPSTATE : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_ENABLE : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_ERRCONTROL : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_ERRESC : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_ERRSOTHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_RXACTIVEHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_RXDATAHS : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal phy_rx_mipi_ppi_if_DL1_RXSYNCHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_RXULPSESC : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_RXVALIDHS : STD_LOGIC;
  signal phy_rx_mipi_ppi_if_DL1_STOPSTATE : STD_LOGIC;
  signal phy_rxbyteclkhs : STD_LOGIC;
  signal phy_system_rst_out : STD_LOGIC;
  signal r_sync_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_interrupt : STD_LOGIC;
  signal rx_m_axis_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_m_axis_TDEST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_m_axis_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_m_axis_TLAST : STD_LOGIC;
  signal rx_m_axis_TREADY : STD_LOGIC;
  signal rx_m_axis_TUSER : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal rx_m_axis_TVALID : STD_LOGIC;
  signal vfb_0_m_vfb_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vfb_0_m_vfb_TDEST : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vfb_0_m_vfb_TLAST : STD_LOGIC;
  signal vfb_0_m_vfb_TREADY : STD_LOGIC;
  signal vfb_0_m_vfb_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vfb_0_m_vfb_TVALID : STD_LOGIC;
  signal vfb_0_mdt_tr : STD_LOGIC;
  signal vfb_0_mdt_tv : STD_LOGIC;
  signal vfb_0_sdt_tr : STD_LOGIC;
  signal vfb_0_sdt_tv : STD_LOGIC;
  signal vfb_0_vfb_tr : STD_LOGIC;
  signal vfb_0_vfb_tv : STD_LOGIC;
  signal video_aclk_1 : STD_LOGIC;
  signal video_aresetn_1 : STD_LOGIC;
  signal xbar_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal xbar_M00_AXI_ARREADY : STD_LOGIC;
  signal xbar_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal xbar_M00_AXI_AWREADY : STD_LOGIC;
  signal xbar_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M00_AXI_BVALID : STD_LOGIC;
  signal xbar_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M00_AXI_RVALID : STD_LOGIC;
  signal xbar_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M00_AXI_WREADY : STD_LOGIC;
  signal xbar_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 33 downto 17 );
  signal xbar_M01_AXI_ARREADY : STD_LOGIC;
  signal xbar_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 33 downto 17 );
  signal xbar_M01_AXI_AWREADY : STD_LOGIC;
  signal xbar_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M01_AXI_BVALID : STD_LOGIC;
  signal xbar_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M01_AXI_RVALID : STD_LOGIC;
  signal xbar_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_M01_AXI_WREADY : STD_LOGIC;
  signal xbar_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_phy_cl_rxclkactivehs_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_cl_ulpsactivenot_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl0_errsyncesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl0_rxclkesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl0_rxlpdtesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl0_rxvalidesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl0_ulpsactivenot_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl1_errsyncesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl1_rxclkesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl1_rxlpdtesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl1_rxvalidesc_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl1_ulpsactivenot_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_init_done_UNCONNECTED : STD_LOGIC;
  signal NLW_phy_dl0_rxdataesc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_phy_dl0_rxtriggeresc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_phy_dl1_rxdataesc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_phy_dl1_rxtriggeresc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_sync_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_r_sync_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_r_sync_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_r_sync_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of csirxss_csi_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.CSIRXSS_CSI_IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of csirxss_csi_irq : signal is "XIL_INTERFACENAME INTR.CSIRXSS_CSI_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of dphy_clk_200M : signal is "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK";
  attribute X_INTERFACE_PARAMETER of dphy_clk_200M : signal is "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 200000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of lite_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.LITE_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of lite_aclk : signal is "XIL_INTERFACENAME CLK.LITE_ACLK, ASSOCIATED_BUSIF csirxss_s_axi, ASSOCIATED_RESET lite_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of lite_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.LITE_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of lite_aresetn : signal is "XIL_INTERFACENAME RST.LITE_ARESETN, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_hs_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_HS_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_hs_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_HS_P";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_lp_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_LP_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_clk_lp_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_LP_P";
  attribute X_INTERFACE_INFO of rxbyteclkhs : signal is "xilinx.com:signal:clock:1.0 CLK.RXBYTECLKHS CLK";
  attribute X_INTERFACE_PARAMETER of rxbyteclkhs : signal is "XIL_INTERFACENAME CLK.RXBYTECLKHS, CLK_DOMAIN bd_0ac3_phy_0_rxbyteclkhs, FREQ_HZ 100000000.0, PHASE 0";
  attribute X_INTERFACE_INFO of video_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.VIDEO_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of video_aclk : signal is "XIL_INTERFACENAME CLK.VIDEO_ACLK, ASSOCIATED_BUSIF video_out, ASSOCIATED_RESET video_aresetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of video_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.VIDEO_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of video_aresetn : signal is "XIL_INTERFACENAME RST.VIDEO_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of video_out_tlast : signal is "xilinx.com:interface:axis:1.0 video_out TLAST";
  attribute X_INTERFACE_INFO of video_out_tready : signal is "xilinx.com:interface:axis:1.0 video_out TREADY";
  attribute X_INTERFACE_INFO of video_out_tvalid : signal is "xilinx.com:interface:axis:1.0 video_out TVALID";
  attribute X_INTERFACE_INFO of csirxss_s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARADDR";
  attribute X_INTERFACE_PARAMETER of csirxss_s_axi_araddr : signal is "XIL_INTERFACENAME csirxss_s_axi, ADDR_WIDTH 17, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of csirxss_s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARPROT";
  attribute X_INTERFACE_INFO of csirxss_s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARREADY";
  attribute X_INTERFACE_INFO of csirxss_s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARVALID";
  attribute X_INTERFACE_INFO of csirxss_s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWADDR";
  attribute X_INTERFACE_INFO of csirxss_s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWPROT";
  attribute X_INTERFACE_INFO of csirxss_s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWREADY";
  attribute X_INTERFACE_INFO of csirxss_s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWVALID";
  attribute X_INTERFACE_INFO of csirxss_s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi BREADY";
  attribute X_INTERFACE_INFO of csirxss_s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi BRESP";
  attribute X_INTERFACE_INFO of csirxss_s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi BVALID";
  attribute X_INTERFACE_INFO of csirxss_s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi RDATA";
  attribute X_INTERFACE_INFO of csirxss_s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi RREADY";
  attribute X_INTERFACE_INFO of csirxss_s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi RRESP";
  attribute X_INTERFACE_INFO of csirxss_s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi RVALID";
  attribute X_INTERFACE_INFO of csirxss_s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi WDATA";
  attribute X_INTERFACE_INFO of csirxss_s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi WREADY";
  attribute X_INTERFACE_INFO of csirxss_s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi WSTRB";
  attribute X_INTERFACE_INFO of csirxss_s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 csirxss_s_axi WVALID";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_hs_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_HS_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_hs_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_HS_P";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_lp_n : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_LP_N";
  attribute X_INTERFACE_INFO of mipi_phy_if_data_lp_p : signal is "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_LP_P";
  attribute X_INTERFACE_INFO of video_out_tdata : signal is "xilinx.com:interface:axis:1.0 video_out TDATA";
  attribute X_INTERFACE_PARAMETER of video_out_tdata : signal is "XIL_INTERFACENAME video_out, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 8, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of video_out_tdest : signal is "xilinx.com:interface:axis:1.0 video_out TDEST";
  attribute X_INTERFACE_INFO of video_out_tuser : signal is "xilinx.com:interface:axis:1.0 video_out TUSER";
begin
  csirxss_csi_irq <= rx_interrupt;
  csirxss_s_axi_1_ARADDR(16 downto 0) <= csirxss_s_axi_araddr(16 downto 0);
  csirxss_s_axi_1_ARPROT(2 downto 0) <= csirxss_s_axi_arprot(2 downto 0);
  csirxss_s_axi_1_ARVALID(0) <= csirxss_s_axi_arvalid(0);
  csirxss_s_axi_1_AWADDR(16 downto 0) <= csirxss_s_axi_awaddr(16 downto 0);
  csirxss_s_axi_1_AWPROT(2 downto 0) <= csirxss_s_axi_awprot(2 downto 0);
  csirxss_s_axi_1_AWVALID(0) <= csirxss_s_axi_awvalid(0);
  csirxss_s_axi_1_BREADY(0) <= csirxss_s_axi_bready(0);
  csirxss_s_axi_1_RREADY(0) <= csirxss_s_axi_rready(0);
  csirxss_s_axi_1_WDATA(31 downto 0) <= csirxss_s_axi_wdata(31 downto 0);
  csirxss_s_axi_1_WSTRB(3 downto 0) <= csirxss_s_axi_wstrb(3 downto 0);
  csirxss_s_axi_1_WVALID(0) <= csirxss_s_axi_wvalid(0);
  csirxss_s_axi_arready(0) <= csirxss_s_axi_1_ARREADY(0);
  csirxss_s_axi_awready(0) <= csirxss_s_axi_1_AWREADY(0);
  csirxss_s_axi_bresp(1 downto 0) <= csirxss_s_axi_1_BRESP(1 downto 0);
  csirxss_s_axi_bvalid(0) <= csirxss_s_axi_1_BVALID(0);
  csirxss_s_axi_rdata(31 downto 0) <= csirxss_s_axi_1_RDATA(31 downto 0);
  csirxss_s_axi_rresp(1 downto 0) <= csirxss_s_axi_1_RRESP(1 downto 0);
  csirxss_s_axi_rvalid(0) <= csirxss_s_axi_1_RVALID(0);
  csirxss_s_axi_wready(0) <= csirxss_s_axi_1_WREADY(0);
  dlyctrl_rdy_out <= phy_dlyctrl_rdy_out;
  dphy_clk_200M_1 <= dphy_clk_200M;
  lite_aclk_1 <= lite_aclk;
  lite_aresetn_1 <= lite_aresetn;
  mipi_phy_if_1_CLK_HS_N <= mipi_phy_if_clk_hs_n;
  mipi_phy_if_1_CLK_HS_P <= mipi_phy_if_clk_hs_p;
  mipi_phy_if_1_CLK_LP_N <= mipi_phy_if_clk_lp_n;
  mipi_phy_if_1_CLK_LP_P <= mipi_phy_if_clk_lp_p;
  mipi_phy_if_1_DATA_HS_N(1 downto 0) <= mipi_phy_if_data_hs_n(1 downto 0);
  mipi_phy_if_1_DATA_HS_P(1 downto 0) <= mipi_phy_if_data_hs_p(1 downto 0);
  mipi_phy_if_1_DATA_LP_N(1 downto 0) <= mipi_phy_if_data_lp_n(1 downto 0);
  mipi_phy_if_1_DATA_LP_P(1 downto 0) <= mipi_phy_if_data_lp_p(1 downto 0);
  rxbyteclkhs <= phy_rxbyteclkhs;
  system_rst_out <= phy_system_rst_out;
  vfb_0_m_vfb_TREADY <= video_out_tready;
  video_aclk_1 <= video_aclk;
  video_aresetn_1 <= video_aresetn;
  video_out_tdata(15 downto 0) <= vfb_0_m_vfb_TDATA(15 downto 0);
  video_out_tdest(7 downto 0) <= vfb_0_m_vfb_TDEST(7 downto 0);
  video_out_tlast <= vfb_0_m_vfb_TLAST;
  video_out_tuser(0) <= vfb_0_m_vfb_TUSER(0);
  video_out_tvalid <= vfb_0_m_vfb_TVALID;
phy: component bd_0ac3_phy_0
     port map (
      cl_enable => phy_rx_mipi_ppi_if_CL_ENABLE,
      cl_rxclkactivehs => NLW_phy_cl_rxclkactivehs_UNCONNECTED,
      cl_rxulpsclknot => phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT,
      cl_stopstate => phy_rx_mipi_ppi_if_CL_STOPSTATE,
      cl_ulpsactivenot => NLW_phy_cl_ulpsactivenot_UNCONNECTED,
      clk_hs_rxn => mipi_phy_if_1_CLK_HS_N,
      clk_hs_rxp => mipi_phy_if_1_CLK_HS_P,
      clk_lp_rxn => mipi_phy_if_1_CLK_LP_N,
      clk_lp_rxp => mipi_phy_if_1_CLK_LP_P,
      core_clk => dphy_clk_200M_1,
      core_rst => r_sync_peripheral_reset(0),
      data_hs_rxn(1 downto 0) => mipi_phy_if_1_DATA_HS_N(1 downto 0),
      data_hs_rxp(1 downto 0) => mipi_phy_if_1_DATA_HS_P(1 downto 0),
      data_lp_rxn(1 downto 0) => mipi_phy_if_1_DATA_LP_N(1 downto 0),
      data_lp_rxp(1 downto 0) => mipi_phy_if_1_DATA_LP_P(1 downto 0),
      dl0_enable => phy_rx_mipi_ppi_if_DL0_ENABLE,
      dl0_errcontrol => phy_rx_mipi_ppi_if_DL0_ERRCONTROL,
      dl0_erresc => phy_rx_mipi_ppi_if_DL0_ERRESC,
      dl0_errsoths => phy_rx_mipi_ppi_if_DL0_ERRSOTHS,
      dl0_errsotsynchs => phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS,
      dl0_errsyncesc => NLW_phy_dl0_errsyncesc_UNCONNECTED,
      dl0_forcerxmode => '0',
      dl0_rxactivehs => phy_rx_mipi_ppi_if_DL0_RXACTIVEHS,
      dl0_rxclkesc => NLW_phy_dl0_rxclkesc_UNCONNECTED,
      dl0_rxdataesc(7 downto 0) => NLW_phy_dl0_rxdataesc_UNCONNECTED(7 downto 0),
      dl0_rxdatahs(7 downto 0) => phy_rx_mipi_ppi_if_DL0_RXDATAHS(7 downto 0),
      dl0_rxlpdtesc => NLW_phy_dl0_rxlpdtesc_UNCONNECTED,
      dl0_rxsynchs => phy_rx_mipi_ppi_if_DL0_RXSYNCHS,
      dl0_rxtriggeresc(3 downto 0) => NLW_phy_dl0_rxtriggeresc_UNCONNECTED(3 downto 0),
      dl0_rxulpsesc => phy_rx_mipi_ppi_if_DL0_RXULPSESC,
      dl0_rxvalidesc => NLW_phy_dl0_rxvalidesc_UNCONNECTED,
      dl0_rxvalidhs => phy_rx_mipi_ppi_if_DL0_RXVALIDHS,
      dl0_stopstate => phy_rx_mipi_ppi_if_DL0_STOPSTATE,
      dl0_ulpsactivenot => NLW_phy_dl0_ulpsactivenot_UNCONNECTED,
      dl1_enable => phy_rx_mipi_ppi_if_DL1_ENABLE,
      dl1_errcontrol => phy_rx_mipi_ppi_if_DL1_ERRCONTROL,
      dl1_erresc => phy_rx_mipi_ppi_if_DL1_ERRESC,
      dl1_errsoths => phy_rx_mipi_ppi_if_DL1_ERRSOTHS,
      dl1_errsotsynchs => phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS,
      dl1_errsyncesc => NLW_phy_dl1_errsyncesc_UNCONNECTED,
      dl1_forcerxmode => '0',
      dl1_rxactivehs => phy_rx_mipi_ppi_if_DL1_RXACTIVEHS,
      dl1_rxclkesc => NLW_phy_dl1_rxclkesc_UNCONNECTED,
      dl1_rxdataesc(7 downto 0) => NLW_phy_dl1_rxdataesc_UNCONNECTED(7 downto 0),
      dl1_rxdatahs(7 downto 0) => phy_rx_mipi_ppi_if_DL1_RXDATAHS(7 downto 0),
      dl1_rxlpdtesc => NLW_phy_dl1_rxlpdtesc_UNCONNECTED,
      dl1_rxsynchs => phy_rx_mipi_ppi_if_DL1_RXSYNCHS,
      dl1_rxtriggeresc(3 downto 0) => NLW_phy_dl1_rxtriggeresc_UNCONNECTED(3 downto 0),
      dl1_rxulpsesc => phy_rx_mipi_ppi_if_DL1_RXULPSESC,
      dl1_rxvalidesc => NLW_phy_dl1_rxvalidesc_UNCONNECTED,
      dl1_rxvalidhs => phy_rx_mipi_ppi_if_DL1_RXVALIDHS,
      dl1_stopstate => phy_rx_mipi_ppi_if_DL1_STOPSTATE,
      dl1_ulpsactivenot => NLW_phy_dl1_ulpsactivenot_UNCONNECTED,
      dlyctrl_rdy_out => phy_dlyctrl_rdy_out,
      init_done => NLW_phy_init_done_UNCONNECTED,
      rxbyteclkhs => phy_rxbyteclkhs,
      s_axi_aclk => lite_aclk_1,
      s_axi_araddr(6 downto 0) => xbar_M01_AXI_ARADDR(23 downto 17),
      s_axi_aresetn => lite_aresetn_1,
      s_axi_arready => xbar_M01_AXI_ARREADY,
      s_axi_arvalid => xbar_M01_AXI_ARVALID(1),
      s_axi_awaddr(6 downto 0) => xbar_M01_AXI_AWADDR(23 downto 17),
      s_axi_awready => xbar_M01_AXI_AWREADY,
      s_axi_awvalid => xbar_M01_AXI_AWVALID(1),
      s_axi_bready => xbar_M01_AXI_BREADY(1),
      s_axi_bresp(1 downto 0) => xbar_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => xbar_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => xbar_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => xbar_M01_AXI_RREADY(1),
      s_axi_rresp(1 downto 0) => xbar_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => xbar_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => xbar_M01_AXI_WDATA(63 downto 32),
      s_axi_wready => xbar_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => xbar_M01_AXI_WSTRB(7 downto 4),
      s_axi_wvalid => xbar_M01_AXI_WVALID(1),
      system_rst_out => phy_system_rst_out
    );
r_sync: component bd_0ac3_r_sync_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_r_sync_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => video_aresetn_1,
      interconnect_aresetn(0) => NLW_r_sync_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_r_sync_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_r_sync_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => r_sync_peripheral_reset(0),
      slowest_sync_clk => dphy_clk_200M_1
    );
rx: component bd_0ac3_rx_0
     port map (
      cl_enable => phy_rx_mipi_ppi_if_CL_ENABLE,
      cl_rxulpsclknot => phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT,
      cl_stopstate => phy_rx_mipi_ppi_if_CL_STOPSTATE,
      dl0_errcontrol => phy_rx_mipi_ppi_if_DL0_ERRCONTROL,
      dl0_erresc => phy_rx_mipi_ppi_if_DL0_ERRESC,
      dl0_errsoths => phy_rx_mipi_ppi_if_DL0_ERRSOTHS,
      dl0_errsotsynchs => phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS,
      dl0_rxactivehs => phy_rx_mipi_ppi_if_DL0_RXACTIVEHS,
      dl0_rxbyteclkhs => phy_rxbyteclkhs,
      dl0_rxdatahs(7 downto 0) => phy_rx_mipi_ppi_if_DL0_RXDATAHS(7 downto 0),
      dl0_rxsynchs => phy_rx_mipi_ppi_if_DL0_RXSYNCHS,
      dl0_rxulpmesc => phy_rx_mipi_ppi_if_DL0_RXULPSESC,
      dl0_rxvalidhs => phy_rx_mipi_ppi_if_DL0_RXVALIDHS,
      dl0_shutdown => phy_rx_mipi_ppi_if_DL0_ENABLE,
      dl0_stopstate => phy_rx_mipi_ppi_if_DL0_STOPSTATE,
      dl1_errcontrol => phy_rx_mipi_ppi_if_DL1_ERRCONTROL,
      dl1_erresc => phy_rx_mipi_ppi_if_DL1_ERRESC,
      dl1_errsoths => phy_rx_mipi_ppi_if_DL1_ERRSOTHS,
      dl1_errsotsynchs => phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS,
      dl1_rxactivehs => phy_rx_mipi_ppi_if_DL1_RXACTIVEHS,
      dl1_rxbyteclkhs => phy_rxbyteclkhs,
      dl1_rxdatahs(7 downto 0) => phy_rx_mipi_ppi_if_DL1_RXDATAHS(7 downto 0),
      dl1_rxsynchs => phy_rx_mipi_ppi_if_DL1_RXSYNCHS,
      dl1_rxulpmesc => phy_rx_mipi_ppi_if_DL1_RXULPSESC,
      dl1_rxvalidhs => phy_rx_mipi_ppi_if_DL1_RXVALIDHS,
      dl1_shutdown => phy_rx_mipi_ppi_if_DL1_ENABLE,
      dl1_stopstate => phy_rx_mipi_ppi_if_DL1_STOPSTATE,
      interrupt => rx_interrupt,
      m_axis_aclk => video_aclk_1,
      m_axis_aresetn => video_aresetn_1,
      m_axis_tdata(63 downto 0) => rx_m_axis_TDATA(63 downto 0),
      m_axis_tdest(1 downto 0) => rx_m_axis_TDEST(1 downto 0),
      m_axis_tkeep(7 downto 0) => rx_m_axis_TKEEP(7 downto 0),
      m_axis_tlast => rx_m_axis_TLAST,
      m_axis_tready => rx_m_axis_TREADY,
      m_axis_tuser(95 downto 0) => rx_m_axis_TUSER(95 downto 0),
      m_axis_tvalid => rx_m_axis_TVALID,
      mdt_tr => vfb_0_mdt_tr,
      mdt_tv => vfb_0_mdt_tv,
      s_axi_aclk => lite_aclk_1,
      s_axi_araddr(6 downto 0) => xbar_M00_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => lite_aresetn_1,
      s_axi_arready => xbar_M00_AXI_ARREADY,
      s_axi_arvalid => xbar_M00_AXI_ARVALID(0),
      s_axi_awaddr(6 downto 0) => xbar_M00_AXI_AWADDR(6 downto 0),
      s_axi_awready => xbar_M00_AXI_AWREADY,
      s_axi_awvalid => xbar_M00_AXI_AWVALID(0),
      s_axi_bready => xbar_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => xbar_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => xbar_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => xbar_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => xbar_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => xbar_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => xbar_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => xbar_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => xbar_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => xbar_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => xbar_M00_AXI_WVALID(0),
      sdt_tr => vfb_0_sdt_tr,
      sdt_tv => vfb_0_sdt_tv,
      vfb_tr => vfb_0_vfb_tr,
      vfb_tv => vfb_0_vfb_tv
    );
vfb_0: component bd_0ac3_vfb_0_0
     port map (
      mdt_tr => vfb_0_mdt_tr,
      mdt_tv => vfb_0_mdt_tv,
      s_axis_aclk => video_aclk_1,
      s_axis_aresetn => video_aresetn_1,
      s_axis_tdata(63 downto 0) => rx_m_axis_TDATA(63 downto 0),
      s_axis_tdest(1 downto 0) => rx_m_axis_TDEST(1 downto 0),
      s_axis_tkeep(7 downto 0) => rx_m_axis_TKEEP(7 downto 0),
      s_axis_tlast => rx_m_axis_TLAST,
      s_axis_tready => rx_m_axis_TREADY,
      s_axis_tuser(95 downto 0) => rx_m_axis_TUSER(95 downto 0),
      s_axis_tvalid => rx_m_axis_TVALID,
      sdt_tr => vfb_0_sdt_tr,
      sdt_tv => vfb_0_sdt_tv,
      vfb_clk => video_aclk_1,
      vfb_data(15 downto 0) => vfb_0_m_vfb_TDATA(15 downto 0),
      vfb_eol => vfb_0_m_vfb_TLAST,
      vfb_ready => vfb_0_m_vfb_TREADY,
      vfb_sof(0) => vfb_0_m_vfb_TUSER(0),
      vfb_tr => vfb_0_vfb_tr,
      vfb_tv => vfb_0_vfb_tv,
      vfb_valid => vfb_0_m_vfb_TVALID,
      vfb_vcdt(7 downto 0) => vfb_0_m_vfb_TDEST(7 downto 0)
    );
xbar: component bd_0ac3_xbar_0
     port map (
      aclk => lite_aclk_1,
      aresetn => lite_aresetn_1,
      m_axi_araddr(33 downto 17) => xbar_M01_AXI_ARADDR(33 downto 17),
      m_axi_araddr(16 downto 0) => xbar_M00_AXI_ARADDR(16 downto 0),
      m_axi_arprot(5 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(1) => xbar_M01_AXI_ARREADY,
      m_axi_arready(0) => xbar_M00_AXI_ARREADY,
      m_axi_arvalid(1) => xbar_M01_AXI_ARVALID(1),
      m_axi_arvalid(0) => xbar_M00_AXI_ARVALID(0),
      m_axi_awaddr(33 downto 17) => xbar_M01_AXI_AWADDR(33 downto 17),
      m_axi_awaddr(16 downto 0) => xbar_M00_AXI_AWADDR(16 downto 0),
      m_axi_awprot(5 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(1) => xbar_M01_AXI_AWREADY,
      m_axi_awready(0) => xbar_M00_AXI_AWREADY,
      m_axi_awvalid(1) => xbar_M01_AXI_AWVALID(1),
      m_axi_awvalid(0) => xbar_M00_AXI_AWVALID(0),
      m_axi_bready(1) => xbar_M01_AXI_BREADY(1),
      m_axi_bready(0) => xbar_M00_AXI_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_M01_AXI_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_M00_AXI_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_M01_AXI_BVALID,
      m_axi_bvalid(0) => xbar_M00_AXI_BVALID,
      m_axi_rdata(63 downto 32) => xbar_M01_AXI_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_M00_AXI_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_M01_AXI_RREADY(1),
      m_axi_rready(0) => xbar_M00_AXI_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_M01_AXI_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_M00_AXI_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_M01_AXI_RVALID,
      m_axi_rvalid(0) => xbar_M00_AXI_RVALID,
      m_axi_wdata(63 downto 32) => xbar_M01_AXI_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_M00_AXI_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_M01_AXI_WREADY,
      m_axi_wready(0) => xbar_M00_AXI_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_M01_AXI_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_M00_AXI_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_M01_AXI_WVALID(1),
      m_axi_wvalid(0) => xbar_M00_AXI_WVALID(0),
      s_axi_araddr(16 downto 0) => csirxss_s_axi_1_ARADDR(16 downto 0),
      s_axi_arprot(2 downto 0) => csirxss_s_axi_1_ARPROT(2 downto 0),
      s_axi_arready(0) => csirxss_s_axi_1_ARREADY(0),
      s_axi_arvalid(0) => csirxss_s_axi_1_ARVALID(0),
      s_axi_awaddr(16 downto 0) => csirxss_s_axi_1_AWADDR(16 downto 0),
      s_axi_awprot(2 downto 0) => csirxss_s_axi_1_AWPROT(2 downto 0),
      s_axi_awready(0) => csirxss_s_axi_1_AWREADY(0),
      s_axi_awvalid(0) => csirxss_s_axi_1_AWVALID(0),
      s_axi_bready(0) => csirxss_s_axi_1_BREADY(0),
      s_axi_bresp(1 downto 0) => csirxss_s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid(0) => csirxss_s_axi_1_BVALID(0),
      s_axi_rdata(31 downto 0) => csirxss_s_axi_1_RDATA(31 downto 0),
      s_axi_rready(0) => csirxss_s_axi_1_RREADY(0),
      s_axi_rresp(1 downto 0) => csirxss_s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid(0) => csirxss_s_axi_1_RVALID(0),
      s_axi_wdata(31 downto 0) => csirxss_s_axi_1_WDATA(31 downto 0),
      s_axi_wready(0) => csirxss_s_axi_1_WREADY(0),
      s_axi_wstrb(3 downto 0) => csirxss_s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid(0) => csirxss_s_axi_1_WVALID(0)
    );
end STRUCTURE;
