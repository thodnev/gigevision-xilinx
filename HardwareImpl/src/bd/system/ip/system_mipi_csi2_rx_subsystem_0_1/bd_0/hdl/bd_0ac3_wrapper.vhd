--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_0ac3_wrapper.bd
--Design : bd_0ac3_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0ac3_wrapper is
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
end bd_0ac3_wrapper;

architecture STRUCTURE of bd_0ac3_wrapper is
  component bd_0ac3 is
  port (
    mipi_phy_if_clk_hs_n : in STD_LOGIC;
    mipi_phy_if_clk_hs_p : in STD_LOGIC;
    mipi_phy_if_clk_lp_n : in STD_LOGIC;
    mipi_phy_if_clk_lp_p : in STD_LOGIC;
    mipi_phy_if_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    csirxss_s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    csirxss_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    csirxss_s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csirxss_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    csirxss_s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    csirxss_s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    csirxss_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    csirxss_s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    csirxss_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    csirxss_s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    csirxss_s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    video_out_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_tlast : out STD_LOGIC;
    video_out_tready : in STD_LOGIC;
    video_out_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_tvalid : out STD_LOGIC;
    csirxss_csi_irq : out STD_LOGIC;
    rxbyteclkhs : out STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    video_aresetn : in STD_LOGIC;
    lite_aclk : in STD_LOGIC;
    lite_aresetn : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    dlyctrl_rdy_out : out STD_LOGIC;
    system_rst_out : out STD_LOGIC
  );
  end component bd_0ac3;
begin
bd_0ac3_i: component bd_0ac3
     port map (
      csirxss_csi_irq => csirxss_csi_irq,
      csirxss_s_axi_araddr(16 downto 0) => csirxss_s_axi_araddr(16 downto 0),
      csirxss_s_axi_arprot(2 downto 0) => csirxss_s_axi_arprot(2 downto 0),
      csirxss_s_axi_arready(0) => csirxss_s_axi_arready(0),
      csirxss_s_axi_arvalid(0) => csirxss_s_axi_arvalid(0),
      csirxss_s_axi_awaddr(16 downto 0) => csirxss_s_axi_awaddr(16 downto 0),
      csirxss_s_axi_awprot(2 downto 0) => csirxss_s_axi_awprot(2 downto 0),
      csirxss_s_axi_awready(0) => csirxss_s_axi_awready(0),
      csirxss_s_axi_awvalid(0) => csirxss_s_axi_awvalid(0),
      csirxss_s_axi_bready(0) => csirxss_s_axi_bready(0),
      csirxss_s_axi_bresp(1 downto 0) => csirxss_s_axi_bresp(1 downto 0),
      csirxss_s_axi_bvalid(0) => csirxss_s_axi_bvalid(0),
      csirxss_s_axi_rdata(31 downto 0) => csirxss_s_axi_rdata(31 downto 0),
      csirxss_s_axi_rready(0) => csirxss_s_axi_rready(0),
      csirxss_s_axi_rresp(1 downto 0) => csirxss_s_axi_rresp(1 downto 0),
      csirxss_s_axi_rvalid(0) => csirxss_s_axi_rvalid(0),
      csirxss_s_axi_wdata(31 downto 0) => csirxss_s_axi_wdata(31 downto 0),
      csirxss_s_axi_wready(0) => csirxss_s_axi_wready(0),
      csirxss_s_axi_wstrb(3 downto 0) => csirxss_s_axi_wstrb(3 downto 0),
      csirxss_s_axi_wvalid(0) => csirxss_s_axi_wvalid(0),
      dlyctrl_rdy_out => dlyctrl_rdy_out,
      dphy_clk_200M => dphy_clk_200M,
      lite_aclk => lite_aclk,
      lite_aresetn => lite_aresetn,
      mipi_phy_if_clk_hs_n => mipi_phy_if_clk_hs_n,
      mipi_phy_if_clk_hs_p => mipi_phy_if_clk_hs_p,
      mipi_phy_if_clk_lp_n => mipi_phy_if_clk_lp_n,
      mipi_phy_if_clk_lp_p => mipi_phy_if_clk_lp_p,
      mipi_phy_if_data_hs_n(1 downto 0) => mipi_phy_if_data_hs_n(1 downto 0),
      mipi_phy_if_data_hs_p(1 downto 0) => mipi_phy_if_data_hs_p(1 downto 0),
      mipi_phy_if_data_lp_n(1 downto 0) => mipi_phy_if_data_lp_n(1 downto 0),
      mipi_phy_if_data_lp_p(1 downto 0) => mipi_phy_if_data_lp_p(1 downto 0),
      rxbyteclkhs => rxbyteclkhs,
      system_rst_out => system_rst_out,
      video_aclk => video_aclk,
      video_aresetn => video_aresetn,
      video_out_tdata(15 downto 0) => video_out_tdata(15 downto 0),
      video_out_tdest(7 downto 0) => video_out_tdest(7 downto 0),
      video_out_tlast => video_out_tlast,
      video_out_tready => video_out_tready,
      video_out_tuser(0) => video_out_tuser(0),
      video_out_tvalid => video_out_tvalid
    );
end STRUCTURE;
