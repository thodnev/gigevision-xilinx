--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Fri Feb  8 13:15:45 2019
--Host        : maks-pc running 64-bit Manjaro Linux
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_ALOWHI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_ALOWHI;

architecture STRUCTURE of m00_couplers_imp_ALOWHI is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_QHSX34 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_QHSX34;

architecture STRUCTURE of m00_couplers_imp_QHSX34 is
  component system_m00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_m00_regslice_0;
  component system_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_regslice_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_regslice_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_regslice_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_regslice_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_regslice_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_regslice_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_regslice_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_regslice_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_regslice_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_regslice_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_regslice_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_regslice_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= m00_regslice_to_m00_couplers_ARID(0);
  M_AXI_arlen(3 downto 0) <= m00_regslice_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= m00_regslice_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_regslice_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m00_regslice_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_regslice_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_regslice_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_regslice_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= m00_regslice_to_m00_couplers_AWID(0);
  M_AXI_awlen(3 downto 0) <= m00_regslice_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= m00_regslice_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_regslice_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m00_regslice_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_regslice_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= m00_regslice_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wid(0) <= m00_regslice_to_m00_couplers_WID(0);
  M_AXI_wlast <= m00_regslice_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= m00_regslice_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  m00_regslice_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  m00_regslice_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
auto_pc: component system_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_regslice_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_regslice_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_pc_to_m00_regslice_ARID(0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_regslice_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_regslice_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_regslice_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_regslice_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_regslice_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_regslice_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_pc_to_m00_regslice_AWID(0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_regslice_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_regslice_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_regslice_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_regslice_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      m_axi_bid(0) => auto_pc_to_m00_regslice_BID(0),
      m_axi_bready => auto_pc_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_regslice_RDATA(63 downto 0),
      m_axi_rid(0) => auto_pc_to_m00_regslice_RID(0),
      m_axi_rlast => auto_pc_to_m00_regslice_RLAST,
      m_axi_rready => auto_pc_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_regslice_WDATA(63 downto 0),
      m_axi_wid(0) => auto_pc_to_m00_regslice_WID(0),
      m_axi_wlast => auto_pc_to_m00_regslice_WLAST,
      m_axi_wready => auto_pc_to_m00_regslice_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_regslice_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_regslice_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => m00_couplers_to_auto_pc_BID(0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(0) => m00_couplers_to_auto_pc_RID(0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
m00_regslice: component system_m00_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m00_regslice_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m00_regslice_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m00_regslice_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => m00_regslice_to_m00_couplers_ARID(0),
      m_axi_arlen(3 downto 0) => m00_regslice_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => m00_regslice_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => m00_regslice_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m00_regslice_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => m00_regslice_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_regslice_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_regslice_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_regslice_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => m00_regslice_to_m00_couplers_AWID(0),
      m_axi_awlen(3 downto 0) => m00_regslice_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => m00_regslice_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => m00_regslice_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_regslice_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => m00_regslice_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bid(0) => m00_regslice_to_m00_couplers_BID(0),
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => m00_regslice_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => m00_regslice_to_m00_couplers_RID(0),
      m_axi_rlast => m00_regslice_to_m00_couplers_RLAST,
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => m00_regslice_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wid(0) => m00_regslice_to_m00_couplers_WID(0),
      m_axi_wlast => m00_regslice_to_m00_couplers_WLAST,
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => m00_regslice_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_pc_to_m00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_pc_to_m00_regslice_ARCACHE(3 downto 0),
      s_axi_arid(0) => auto_pc_to_m00_regslice_ARID(0),
      s_axi_arlen(3 downto 0) => auto_pc_to_m00_regslice_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => auto_pc_to_m00_regslice_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_pc_to_m00_regslice_ARQOS(3 downto 0),
      s_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      s_axi_arsize(2 downto 0) => auto_pc_to_m00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_pc_to_m00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_pc_to_m00_regslice_AWCACHE(3 downto 0),
      s_axi_awid(0) => auto_pc_to_m00_regslice_AWID(0),
      s_axi_awlen(3 downto 0) => auto_pc_to_m00_regslice_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => auto_pc_to_m00_regslice_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_pc_to_m00_regslice_AWQOS(3 downto 0),
      s_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      s_axi_awsize(2 downto 0) => auto_pc_to_m00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      s_axi_bid(0) => auto_pc_to_m00_regslice_BID(0),
      s_axi_bready => auto_pc_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      s_axi_rdata(63 downto 0) => auto_pc_to_m00_regslice_RDATA(63 downto 0),
      s_axi_rid(0) => auto_pc_to_m00_regslice_RID(0),
      s_axi_rlast => auto_pc_to_m00_regslice_RLAST,
      s_axi_rready => auto_pc_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      s_axi_wdata(63 downto 0) => auto_pc_to_m00_regslice_WDATA(63 downto 0),
      s_axi_wid(0) => auto_pc_to_m00_regslice_WID(0),
      s_axi_wlast => auto_pc_to_m00_regslice_WLAST,
      s_axi_wready => auto_pc_to_m00_regslice_WREADY,
      s_axi_wstrb(7 downto 0) => auto_pc_to_m00_regslice_WSTRB(7 downto 0),
      s_axi_wvalid => auto_pc_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_11U5WPZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_11U5WPZ;

architecture STRUCTURE of m01_couplers_imp_11U5WPZ is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_18U1YC5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_18U1YC5;

architecture STRUCTURE of m02_couplers_imp_18U1YC5 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_4FRXXG is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_4FRXXG;

architecture STRUCTURE of m03_couplers_imp_4FRXXG is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1V5JQ41 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_1V5JQ41;

architecture STRUCTURE of m04_couplers_imp_1V5JQ41 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_PNBBKW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_PNBBKW;

architecture STRUCTURE of m05_couplers_imp_PNBBKW is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_WN7EZ6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m06_couplers_imp_WN7EZ6;

architecture STRUCTURE of m06_couplers_imp_WN7EZ6 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m06_couplers_to_m06_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m06_couplers_to_m06_couplers_AWVALID(0);
  M_AXI_bready(0) <= m06_couplers_to_m06_couplers_BREADY(0);
  M_AXI_rready(0) <= m06_couplers_to_m06_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m06_couplers_to_m06_couplers_WVALID(0);
  S_AXI_arready(0) <= m06_couplers_to_m06_couplers_ARREADY(0);
  S_AXI_awready(0) <= m06_couplers_to_m06_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m06_couplers_to_m06_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m06_couplers_to_m06_couplers_RVALID(0);
  S_AXI_wready(0) <= m06_couplers_to_m06_couplers_WREADY(0);
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY(0) <= M_AXI_arready(0);
  m06_couplers_to_m06_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY(0) <= M_AXI_awready(0);
  m06_couplers_to_m06_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m06_couplers_to_m06_couplers_BREADY(0) <= S_AXI_bready(0);
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY(0) <= S_AXI_rready(0);
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY(0) <= M_AXI_wready(0);
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1OZMSXV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m07_couplers_imp_1OZMSXV;

architecture STRUCTURE of m07_couplers_imp_1OZMSXV is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m07_couplers_to_m07_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m07_couplers_to_m07_couplers_AWVALID(0);
  M_AXI_bready(0) <= m07_couplers_to_m07_couplers_BREADY(0);
  M_AXI_rready(0) <= m07_couplers_to_m07_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m07_couplers_to_m07_couplers_WVALID(0);
  S_AXI_arready(0) <= m07_couplers_to_m07_couplers_ARREADY(0);
  S_AXI_awready(0) <= m07_couplers_to_m07_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m07_couplers_to_m07_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m07_couplers_to_m07_couplers_RVALID(0);
  S_AXI_wready(0) <= m07_couplers_to_m07_couplers_WREADY(0);
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY(0) <= M_AXI_arready(0);
  m07_couplers_to_m07_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY(0) <= M_AXI_awready(0);
  m07_couplers_to_m07_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m07_couplers_to_m07_couplers_BREADY(0) <= S_AXI_bready(0);
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY(0) <= S_AXI_rready(0);
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY(0) <= M_AXI_wready(0);
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_NMIK3D is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_NMIK3D;

architecture STRUCTURE of m08_couplers_imp_NMIK3D is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m08_couplers_to_m08_couplers_ARADDR;
  M_AXI_arprot <= m08_couplers_to_m08_couplers_ARPROT;
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr <= m08_couplers_to_m08_couplers_AWADDR;
  M_AXI_awprot <= m08_couplers_to_m08_couplers_AWPROT;
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata <= m08_couplers_to_m08_couplers_WDATA;
  M_AXI_wstrb <= m08_couplers_to_m08_couplers_WSTRB;
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp <= m08_couplers_to_m08_couplers_BRESP;
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata <= m08_couplers_to_m08_couplers_RDATA;
  S_AXI_rresp <= m08_couplers_to_m08_couplers_RRESP;
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR <= S_AXI_araddr;
  m08_couplers_to_m08_couplers_ARPROT <= S_AXI_arprot;
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR <= S_AXI_awaddr;
  m08_couplers_to_m08_couplers_AWPROT <= S_AXI_awprot;
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP <= M_AXI_bresp;
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA <= M_AXI_rdata;
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP <= M_AXI_rresp;
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA <= S_AXI_wdata;
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB <= S_AXI_wstrb;
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1XQ6QI0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_1XQ6QI0;

architecture STRUCTURE of m09_couplers_imp_1XQ6QI0 is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_18TTR91 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_18TTR91;

architecture STRUCTURE of m10_couplers_imp_18TTR91 is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m10_couplers_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m10_couplers_to_m10_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m10_couplers_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m10_couplers_to_m10_couplers_AWVALID;
  M_AXI_bready <= m10_couplers_to_m10_couplers_BREADY;
  M_AXI_rready <= m10_couplers_to_m10_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m10_couplers_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m10_couplers_to_m10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m10_couplers_to_m10_couplers_WVALID;
  S_AXI_arready <= m10_couplers_to_m10_couplers_ARREADY;
  S_AXI_awready <= m10_couplers_to_m10_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_m10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m10_couplers_to_m10_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_m10_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_m10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m10_couplers_to_m10_couplers_RVALID;
  S_AXI_wready <= m10_couplers_to_m10_couplers_WREADY;
  m10_couplers_to_m10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_m10_couplers_ARREADY <= M_AXI_arready;
  m10_couplers_to_m10_couplers_ARVALID <= S_AXI_arvalid;
  m10_couplers_to_m10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_m10_couplers_AWREADY <= M_AXI_awready;
  m10_couplers_to_m10_couplers_AWVALID <= S_AXI_awvalid;
  m10_couplers_to_m10_couplers_BREADY <= S_AXI_bready;
  m10_couplers_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m10_couplers_to_m10_couplers_BVALID <= M_AXI_bvalid;
  m10_couplers_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m10_couplers_to_m10_couplers_RREADY <= S_AXI_rready;
  m10_couplers_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m10_couplers_to_m10_couplers_RVALID <= M_AXI_rvalid;
  m10_couplers_to_m10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_m10_couplers_WREADY <= M_AXI_wready;
  m10_couplers_to_m10_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m10_couplers_to_m10_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_4FIC9W is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m11_couplers_imp_4FIC9W;

architecture STRUCTURE of m11_couplers_imp_4FIC9W is
  signal m11_couplers_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m11_couplers_to_m11_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m11_couplers_to_m11_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m11_couplers_to_m11_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m11_couplers_to_m11_couplers_AWVALID(0);
  M_AXI_bready(0) <= m11_couplers_to_m11_couplers_BREADY(0);
  M_AXI_rready(0) <= m11_couplers_to_m11_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m11_couplers_to_m11_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m11_couplers_to_m11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m11_couplers_to_m11_couplers_WVALID(0);
  S_AXI_arready(0) <= m11_couplers_to_m11_couplers_ARREADY(0);
  S_AXI_awready(0) <= m11_couplers_to_m11_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m11_couplers_to_m11_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m11_couplers_to_m11_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m11_couplers_to_m11_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m11_couplers_to_m11_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m11_couplers_to_m11_couplers_RVALID(0);
  S_AXI_wready(0) <= m11_couplers_to_m11_couplers_WREADY(0);
  m11_couplers_to_m11_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m11_couplers_to_m11_couplers_ARREADY(0) <= M_AXI_arready(0);
  m11_couplers_to_m11_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m11_couplers_to_m11_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m11_couplers_to_m11_couplers_AWREADY(0) <= M_AXI_awready(0);
  m11_couplers_to_m11_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m11_couplers_to_m11_couplers_BREADY(0) <= S_AXI_bready(0);
  m11_couplers_to_m11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m11_couplers_to_m11_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m11_couplers_to_m11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m11_couplers_to_m11_couplers_RREADY(0) <= S_AXI_rready(0);
  m11_couplers_to_m11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m11_couplers_to_m11_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m11_couplers_to_m11_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m11_couplers_to_m11_couplers_WREADY(0) <= M_AXI_wready(0);
  m11_couplers_to_m11_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m11_couplers_to_m11_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_ALH0EU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m12_couplers_imp_ALH0EU;

architecture STRUCTURE of m12_couplers_imp_ALH0EU is
  signal m12_couplers_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_m12_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_m12_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m12_couplers_to_m12_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m12_couplers_to_m12_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m12_couplers_to_m12_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m12_couplers_to_m12_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m12_couplers_to_m12_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m12_couplers_to_m12_couplers_AWVALID(0);
  M_AXI_bready(0) <= m12_couplers_to_m12_couplers_BREADY(0);
  M_AXI_rready(0) <= m12_couplers_to_m12_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m12_couplers_to_m12_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m12_couplers_to_m12_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m12_couplers_to_m12_couplers_WVALID(0);
  S_AXI_arready(0) <= m12_couplers_to_m12_couplers_ARREADY(0);
  S_AXI_awready(0) <= m12_couplers_to_m12_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m12_couplers_to_m12_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m12_couplers_to_m12_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m12_couplers_to_m12_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m12_couplers_to_m12_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m12_couplers_to_m12_couplers_RVALID(0);
  S_AXI_wready(0) <= m12_couplers_to_m12_couplers_WREADY(0);
  m12_couplers_to_m12_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m12_couplers_to_m12_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m12_couplers_to_m12_couplers_ARREADY(0) <= M_AXI_arready(0);
  m12_couplers_to_m12_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m12_couplers_to_m12_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m12_couplers_to_m12_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m12_couplers_to_m12_couplers_AWREADY(0) <= M_AXI_awready(0);
  m12_couplers_to_m12_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m12_couplers_to_m12_couplers_BREADY(0) <= S_AXI_bready(0);
  m12_couplers_to_m12_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m12_couplers_to_m12_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m12_couplers_to_m12_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m12_couplers_to_m12_couplers_RREADY(0) <= S_AXI_rready(0);
  m12_couplers_to_m12_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m12_couplers_to_m12_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m12_couplers_to_m12_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m12_couplers_to_m12_couplers_WREADY(0) <= M_AXI_wready(0);
  m12_couplers_to_m12_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m12_couplers_to_m12_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m13_couplers_imp_11TWM2V is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m13_couplers_imp_11TWM2V;

architecture STRUCTURE of m13_couplers_imp_11TWM2V is
  signal m13_couplers_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_ARREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_AWREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_BREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_m13_couplers_BVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_RREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_m13_couplers_RVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_WREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_m13_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m13_couplers_to_m13_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m13_couplers_to_m13_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m13_couplers_to_m13_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m13_couplers_to_m13_couplers_AWVALID;
  M_AXI_bready <= m13_couplers_to_m13_couplers_BREADY;
  M_AXI_rready <= m13_couplers_to_m13_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m13_couplers_to_m13_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m13_couplers_to_m13_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m13_couplers_to_m13_couplers_WVALID;
  S_AXI_arready <= m13_couplers_to_m13_couplers_ARREADY;
  S_AXI_awready <= m13_couplers_to_m13_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m13_couplers_to_m13_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m13_couplers_to_m13_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m13_couplers_to_m13_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m13_couplers_to_m13_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m13_couplers_to_m13_couplers_RVALID;
  S_AXI_wready <= m13_couplers_to_m13_couplers_WREADY;
  m13_couplers_to_m13_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m13_couplers_to_m13_couplers_ARREADY <= M_AXI_arready;
  m13_couplers_to_m13_couplers_ARVALID <= S_AXI_arvalid;
  m13_couplers_to_m13_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m13_couplers_to_m13_couplers_AWREADY <= M_AXI_awready;
  m13_couplers_to_m13_couplers_AWVALID <= S_AXI_awvalid;
  m13_couplers_to_m13_couplers_BREADY <= S_AXI_bready;
  m13_couplers_to_m13_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m13_couplers_to_m13_couplers_BVALID <= M_AXI_bvalid;
  m13_couplers_to_m13_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m13_couplers_to_m13_couplers_RREADY <= S_AXI_rready;
  m13_couplers_to_m13_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m13_couplers_to_m13_couplers_RVALID <= M_AXI_rvalid;
  m13_couplers_to_m13_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m13_couplers_to_m13_couplers_WREADY <= M_AXI_wready;
  m13_couplers_to_m13_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m13_couplers_to_m13_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m14_couplers_imp_WMZSFM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m14_couplers_imp_WMZSFM;

architecture STRUCTURE of m14_couplers_imp_WMZSFM is
  signal m14_couplers_to_m14_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_m14_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_m14_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m14_couplers_to_m14_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m14_couplers_to_m14_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m14_couplers_to_m14_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m14_couplers_to_m14_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m14_couplers_to_m14_couplers_AWVALID(0);
  M_AXI_bready(0) <= m14_couplers_to_m14_couplers_BREADY(0);
  M_AXI_rready(0) <= m14_couplers_to_m14_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m14_couplers_to_m14_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m14_couplers_to_m14_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m14_couplers_to_m14_couplers_WVALID(0);
  S_AXI_arready(0) <= m14_couplers_to_m14_couplers_ARREADY(0);
  S_AXI_awready(0) <= m14_couplers_to_m14_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m14_couplers_to_m14_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m14_couplers_to_m14_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m14_couplers_to_m14_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m14_couplers_to_m14_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m14_couplers_to_m14_couplers_RVALID(0);
  S_AXI_wready(0) <= m14_couplers_to_m14_couplers_WREADY(0);
  m14_couplers_to_m14_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m14_couplers_to_m14_couplers_ARREADY(0) <= M_AXI_arready(0);
  m14_couplers_to_m14_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m14_couplers_to_m14_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m14_couplers_to_m14_couplers_AWREADY(0) <= M_AXI_awready(0);
  m14_couplers_to_m14_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m14_couplers_to_m14_couplers_BREADY(0) <= S_AXI_bready(0);
  m14_couplers_to_m14_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m14_couplers_to_m14_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m14_couplers_to_m14_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m14_couplers_to_m14_couplers_RREADY(0) <= S_AXI_rready(0);
  m14_couplers_to_m14_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m14_couplers_to_m14_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m14_couplers_to_m14_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m14_couplers_to_m14_couplers_WREADY(0) <= M_AXI_wready(0);
  m14_couplers_to_m14_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m14_couplers_to_m14_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1P403ZT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1P403ZT;

architecture STRUCTURE of s00_couplers_imp_1P403ZT is
  component system_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_s00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_s00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= s00_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_s00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_s00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_s00_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_s00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => s00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => s00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => s00_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => s00_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => s00_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_4WZP47 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_4WZP47;

architecture STRUCTURE of s00_couplers_imp_4WZP47 is
  component system_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_T4AL1T is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s00_couplers_imp_T4AL1T;

architecture STRUCTURE of s00_couplers_imp_T4AL1T is
  component system_s00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_s00_regslice_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_regslice_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_regslice_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_s00_couplers_RVALID : STD_LOGIC;
  signal NLW_s00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_regslice_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_regslice_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_regslice_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_regslice_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_regslice_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_regslice_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_regslice_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_regslice_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s00_regslice_to_s00_couplers_ARVALID;
  M_AXI_rready <= s00_regslice_to_s00_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_rdata(63 downto 0) <= s00_couplers_to_s00_regslice_RDATA(63 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  s00_couplers_to_s00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_regslice_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_regslice_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  s00_regslice_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_regslice_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_regslice_to_s00_couplers_RVALID <= M_AXI_rvalid;
s00_regslice: component system_s00_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_regslice_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_s00_couplers_ARVALID,
      m_axi_rdata(63 downto 0) => s00_regslice_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rlast => s00_regslice_to_s00_couplers_RLAST,
      m_axi_rready => s00_regslice_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_s00_couplers_RVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_s00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_rdata(63 downto 0) => s00_couplers_to_s00_regslice_RDATA(63 downto 0),
      s_axi_rlast => s00_couplers_to_s00_regslice_RLAST,
      s_axi_rready => s00_couplers_to_s00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_regslice_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1J3S6TC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1J3S6TC;

architecture STRUCTURE of s01_couplers_imp_1J3S6TC is
  component system_s01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component system_s01_regslice_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_s01_regslice_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_regslice_WVALID : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_regslice_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_s01_couplers_WLAST : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_regslice_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_s01_couplers_WVALID : STD_LOGIC;
  signal NLW_s01_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_regslice_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_regslice_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_regslice_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_regslice_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s01_regslice_to_s01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s01_regslice_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s01_regslice_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_regslice_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s01_regslice_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_regslice_to_s01_couplers_BREADY;
  M_AXI_wdata(63 downto 0) <= s01_regslice_to_s01_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= s01_regslice_to_s01_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= s01_regslice_to_s01_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= s01_regslice_to_s01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_awready <= s01_couplers_to_s01_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_regslice_BVALID;
  S_AXI_wready <= s01_couplers_to_s01_regslice_WREADY;
  s01_couplers_to_s01_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_regslice_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_regslice_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_regslice_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  s01_couplers_to_s01_regslice_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_regslice_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  s01_couplers_to_s01_regslice_WVALID <= S_AXI_wvalid;
  s01_regslice_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_regslice_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_regslice_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_regslice_to_s01_couplers_WREADY <= M_AXI_wready;
s01_regslice: component system_s01_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_awaddr(31 downto 0) => s01_regslice_to_s01_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s01_regslice_to_s01_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_regslice_to_s01_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s01_regslice_to_s01_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_regslice_to_s01_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s01_regslice_to_s01_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_regslice_to_s01_couplers_AWQOS(3 downto 0),
      m_axi_awready => s01_regslice_to_s01_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_s01_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_regslice_to_s01_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_regslice_to_s01_couplers_AWVALID,
      m_axi_bready => s01_regslice_to_s01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s01_regslice_to_s01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s01_regslice_to_s01_couplers_BVALID,
      m_axi_wdata(63 downto 0) => s01_regslice_to_s01_couplers_WDATA(63 downto 0),
      m_axi_wlast => s01_regslice_to_s01_couplers_WLAST,
      m_axi_wready => s01_regslice_to_s01_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => s01_regslice_to_s01_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => s01_regslice_to_s01_couplers_WVALID,
      s_axi_awaddr(31 downto 0) => s01_couplers_to_s01_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_couplers_to_s01_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_couplers_to_s01_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s01_couplers_to_s01_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s01_couplers_to_s01_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s01_couplers_to_s01_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s01_couplers_to_s01_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_couplers_to_s01_regslice_AWVALID,
      s_axi_bready => s01_couplers_to_s01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_s01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s01_couplers_to_s01_regslice_BVALID,
      s_axi_wdata(63 downto 0) => s01_couplers_to_s01_regslice_WDATA(63 downto 0),
      s_axi_wlast => s01_couplers_to_s01_regslice_WLAST,
      s_axi_wready => s01_couplers_to_s01_regslice_WREADY,
      s_axi_wstrb(7 downto 0) => s01_couplers_to_s01_regslice_WSTRB(7 downto 0),
      s_axi_wvalid => s01_couplers_to_s01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_mem_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end system_axi_mem_intercon_0;

architecture STRUCTURE of system_axi_mem_intercon_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_ARVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_AWVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_BREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_BVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RLAST : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_RVALID : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_WLAST : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WREADY : STD_LOGIC;
  signal s00_couplers_to_axi_mem_intercon_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_axi_mem_intercon_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_axi_mem_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= s00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= s00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_axi_mem_intercon_AWVALID;
  M00_AXI_bready <= s00_couplers_to_axi_mem_intercon_BREADY;
  M00_AXI_rready <= s00_couplers_to_axi_mem_intercon_RREADY;
  M00_AXI_wdata(63 downto 0) <= s00_couplers_to_axi_mem_intercon_WDATA(63 downto 0);
  M00_AXI_wlast <= s00_couplers_to_axi_mem_intercon_WLAST;
  M00_AXI_wstrb(7 downto 0) <= s00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_axi_mem_intercon_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_mem_intercon_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_mem_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_mem_intercon_to_s00_couplers_BVALID;
  S00_AXI_rdata(63 downto 0) <= axi_mem_intercon_to_s00_couplers_RDATA(63 downto 0);
  S00_AXI_rlast <= axi_mem_intercon_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_mem_intercon_to_s00_couplers_WREADY;
  axi_mem_intercon_ACLK_net <= M00_ACLK;
  axi_mem_intercon_ARESETN_net <= M00_ARESETN;
  axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARREGION(3 downto 0) <= S00_AXI_arregion(3 downto 0);
  axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_mem_intercon_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWREGION(3 downto 0) <= S00_AXI_awregion(3 downto 0);
  axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_mem_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_mem_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_mem_intercon_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_mem_intercon_to_s00_couplers_WDATA(63 downto 0) <= S00_AXI_wdata(63 downto 0);
  axi_mem_intercon_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_mem_intercon_to_s00_couplers_WSTRB(7 downto 0) <= S00_AXI_wstrb(7 downto 0);
  axi_mem_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_axi_mem_intercon_ARREADY <= M00_AXI_arready;
  s00_couplers_to_axi_mem_intercon_AWREADY <= M00_AXI_awready;
  s00_couplers_to_axi_mem_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_axi_mem_intercon_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  s00_couplers_to_axi_mem_intercon_RLAST <= M00_AXI_rlast;
  s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_axi_mem_intercon_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_axi_mem_intercon_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_1P403ZT
     port map (
      M_ACLK => axi_mem_intercon_ACLK_net,
      M_ARESETN => axi_mem_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_axi_mem_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_axi_mem_intercon_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_axi_mem_intercon_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_axi_mem_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_axi_mem_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_axi_mem_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_axi_mem_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_axi_mem_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_axi_mem_intercon_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => s00_couplers_to_axi_mem_intercon_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => s00_couplers_to_axi_mem_intercon_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_axi_mem_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_axi_mem_intercon_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_axi_mem_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_axi_mem_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_axi_mem_intercon_AWVALID,
      M_AXI_bready => s00_couplers_to_axi_mem_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_axi_mem_intercon_BVALID,
      M_AXI_rdata(63 downto 0) => s00_couplers_to_axi_mem_intercon_RDATA(63 downto 0),
      M_AXI_rlast => s00_couplers_to_axi_mem_intercon_RLAST,
      M_AXI_rready => s00_couplers_to_axi_mem_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_axi_mem_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_axi_mem_intercon_RVALID,
      M_AXI_wdata(63 downto 0) => s00_couplers_to_axi_mem_intercon_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_axi_mem_intercon_WLAST,
      M_AXI_wready => s00_couplers_to_axi_mem_intercon_WREADY,
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_axi_mem_intercon_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_axi_mem_intercon_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_mem_intercon_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_mem_intercon_to_s00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => axi_mem_intercon_to_s00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_mem_intercon_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_mem_intercon_to_s00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => axi_mem_intercon_to_s00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_to_s00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => axi_mem_intercon_to_s00_couplers_RDATA(63 downto 0),
      S_AXI_rlast => axi_mem_intercon_to_s00_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_to_s00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => axi_mem_intercon_to_s00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => axi_mem_intercon_to_s00_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => axi_mem_intercon_to_s00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => axi_mem_intercon_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_mem_intercon_HP0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end system_axi_mem_intercon_HP0_0;

architecture STRUCTURE of system_axi_mem_intercon_HP0_0 is
  component system_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal axi_mem_intercon_HP0_ACLK_net : STD_LOGIC;
  signal axi_mem_intercon_HP0_ARESETN_net : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_HP0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_BREADY : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_BVALID : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_WLAST : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_WREADY : STD_LOGIC;
  signal axi_mem_intercon_HP0_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_HP0_to_s01_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_mem_intercon_HP0_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_mem_intercon_HP0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARCACHE(3 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_mem_intercon_HP0_ARID(0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_mem_intercon_HP0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWCACHE(3 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_mem_intercon_HP0_AWID(0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_mem_intercon_HP0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_mem_intercon_HP0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_mem_intercon_HP0_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_WDATA(63 downto 0);
  M00_AXI_wid(0) <= m00_couplers_to_axi_mem_intercon_HP0_WID(0);
  M00_AXI_wlast <= m00_couplers_to_axi_mem_intercon_HP0_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_mem_intercon_HP0_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_mem_intercon_HP0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_mem_intercon_HP0_to_s00_couplers_ARREADY;
  S00_AXI_rdata(63 downto 0) <= axi_mem_intercon_HP0_to_s00_couplers_RDATA(63 downto 0);
  S00_AXI_rlast <= axi_mem_intercon_HP0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_mem_intercon_HP0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_mem_intercon_HP0_to_s00_couplers_RVALID;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_awready <= axi_mem_intercon_HP0_to_s01_couplers_AWREADY;
  S01_AXI_bresp(1 downto 0) <= axi_mem_intercon_HP0_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= axi_mem_intercon_HP0_to_s01_couplers_BVALID;
  S01_AXI_wready <= axi_mem_intercon_HP0_to_s01_couplers_WREADY;
  axi_mem_intercon_HP0_ACLK_net <= ACLK;
  axi_mem_intercon_HP0_ARESETN_net <= ARESETN;
  axi_mem_intercon_HP0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_mem_intercon_HP0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_mem_intercon_HP0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_mem_intercon_HP0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_mem_intercon_HP0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_mem_intercon_HP0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_mem_intercon_HP0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_mem_intercon_HP0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_mem_intercon_HP0_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  axi_mem_intercon_HP0_to_s01_couplers_BREADY <= S01_AXI_bready;
  axi_mem_intercon_HP0_to_s01_couplers_WDATA(63 downto 0) <= S01_AXI_wdata(63 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_WLAST <= S01_AXI_wlast;
  axi_mem_intercon_HP0_to_s01_couplers_WSTRB(7 downto 0) <= S01_AXI_wstrb(7 downto 0);
  axi_mem_intercon_HP0_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  m00_couplers_to_axi_mem_intercon_HP0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_mem_intercon_HP0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_mem_intercon_HP0_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_HP0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_HP0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_mem_intercon_HP0_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_mem_intercon_HP0_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_mem_intercon_HP0_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_mem_intercon_HP0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_mem_intercon_HP0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_mem_intercon_HP0_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_QHSX34
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARCACHE(3 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_mem_intercon_HP0_ARID(0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_mem_intercon_HP0_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_mem_intercon_HP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWCACHE(3 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_mem_intercon_HP0_AWID(0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_mem_intercon_HP0_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_mem_intercon_HP0_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_mem_intercon_HP0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_mem_intercon_HP0_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_mem_intercon_HP0_RLAST,
      M_AXI_rready => m00_couplers_to_axi_mem_intercon_HP0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_mem_intercon_HP0_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_WDATA(63 downto 0),
      M_AXI_wid(0) => m00_couplers_to_axi_mem_intercon_HP0_WID(0),
      M_AXI_wlast => m00_couplers_to_axi_mem_intercon_HP0_WLAST,
      M_AXI_wready => m00_couplers_to_axi_mem_intercon_HP0_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_mem_intercon_HP0_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_mem_intercon_HP0_WVALID,
      S_ACLK => axi_mem_intercon_HP0_ACLK_net,
      S_ARESETN => axi_mem_intercon_HP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_T4AL1T
     port map (
      M_ACLK => axi_mem_intercon_HP0_ACLK_net,
      M_ARESETN => axi_mem_intercon_HP0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_mem_intercon_HP0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_mem_intercon_HP0_to_s00_couplers_ARVALID,
      S_AXI_rdata(63 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_RDATA(63 downto 0),
      S_AXI_rlast => axi_mem_intercon_HP0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_mem_intercon_HP0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_mem_intercon_HP0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_mem_intercon_HP0_to_s00_couplers_RVALID
    );
s01_couplers: entity work.s01_couplers_imp_1J3S6TC
     port map (
      M_ACLK => axi_mem_intercon_HP0_ACLK_net,
      M_ARESETN => axi_mem_intercon_HP0_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(63 downto 0) => s01_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(7 downto 0) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_mem_intercon_HP0_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_mem_intercon_HP0_to_s01_couplers_AWVALID,
      S_AXI_bready => axi_mem_intercon_HP0_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_mem_intercon_HP0_to_s01_couplers_BVALID,
      S_AXI_wdata(63 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_WDATA(63 downto 0),
      S_AXI_wlast => axi_mem_intercon_HP0_to_s01_couplers_WLAST,
      S_AXI_wready => axi_mem_intercon_HP0_to_s01_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => axi_mem_intercon_HP0_to_s01_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => axi_mem_intercon_HP0_to_s01_couplers_WVALID
    );
xbar: component system_xbar_0
     port map (
      aclk => axi_mem_intercon_HP0_ACLK_net,
      aresetn => axi_mem_intercon_HP0_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1) => '0',
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 4) => B"0000",
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5 downto 3) => B"001",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => NLW_xbar_s_axi_awready_UNCONNECTED(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => B"011",
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => '0',
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => '0',
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => NLW_xbar_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => NLW_xbar_s_axi_bvalid_UNCONNECTED(0),
      s_axi_rdata(127 downto 64) => NLW_xbar_s_axi_rdata_UNCONNECTED(127 downto 64),
      s_axi_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(127 downto 64) => s01_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => '0',
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => NLW_xbar_s_axi_wready_UNCONNECTED(0),
      s_axi_wstrb(15 downto 8) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(7 downto 0) => B"11111111",
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ps7_0_axi_periph_GP0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC;
    M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M12_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M12_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M12_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_ACLK : in STD_LOGIC;
    M13_ARESETN : in STD_LOGIC;
    M13_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_arready : in STD_LOGIC;
    M13_AXI_arvalid : out STD_LOGIC;
    M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_awready : in STD_LOGIC;
    M13_AXI_awvalid : out STD_LOGIC;
    M13_AXI_bready : out STD_LOGIC;
    M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_bvalid : in STD_LOGIC;
    M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_rready : out STD_LOGIC;
    M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_rvalid : in STD_LOGIC;
    M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_wready : in STD_LOGIC;
    M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_wvalid : out STD_LOGIC;
    M14_ACLK : in STD_LOGIC;
    M14_ARESETN : in STD_LOGIC;
    M14_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M14_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M14_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M14_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end system_ps7_0_axi_periph_GP0_0;

architecture STRUCTURE of system_ps7_0_axi_periph_GP0_0 is
  component system_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component system_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC;
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC;
  signal M10_ACLK_1 : STD_LOGIC;
  signal M10_ARESETN_1 : STD_LOGIC;
  signal M11_ACLK_1 : STD_LOGIC;
  signal M11_ARESETN_1 : STD_LOGIC;
  signal M12_ACLK_1 : STD_LOGIC;
  signal M12_ARESETN_1 : STD_LOGIC;
  signal M13_ACLK_1 : STD_LOGIC;
  signal M13_ARESETN_1 : STD_LOGIC;
  signal M14_ACLK_1 : STD_LOGIC;
  signal M14_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_ARPROT : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_AWPROT : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m09_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m10_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m11_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC;
  signal m13_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC;
  signal m14_couplers_to_ps7_0_axi_periph_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m14_couplers_to_ps7_0_axi_periph_GP0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_ARPROT : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_AWPROT : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m12_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m13_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m13_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m14_couplers_ARADDR : STD_LOGIC_VECTOR ( 479 downto 448 );
  signal xbar_to_m14_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m14_couplers_ARVALID : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_AWADDR : STD_LOGIC_VECTOR ( 479 downto 448 );
  signal xbar_to_m14_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m14_couplers_AWVALID : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_BREADY : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m14_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m14_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m14_couplers_RREADY : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m14_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m14_couplers_WDATA : STD_LOGIC_VECTOR ( 479 downto 448 );
  signal xbar_to_m14_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m14_couplers_WSTRB : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_WVALID : STD_LOGIC_VECTOR ( 14 to 14 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M06_AXI_arvalid(0) <= m06_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M06_AXI_awvalid(0) <= m06_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M06_AXI_bready(0) <= m06_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M06_AXI_rready(0) <= m06_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M06_AXI_wvalid(0) <= m06_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M07_AXI_arvalid(0) <= m07_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M07_AXI_awvalid(0) <= m07_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M07_AXI_bready(0) <= m07_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M07_AXI_rready(0) <= m07_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= m07_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1 <= M08_ARESETN;
  M08_AXI_araddr(31) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(30) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(29) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(28) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(27) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(26) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(25) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(24) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(23) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(22) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(21) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(20) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(19) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(18) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(17) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(16) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(15) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(14) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(13) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(12) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(11) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(10) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(9) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(8) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(7) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(6) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(5) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(4) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(3) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(2) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(1) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_araddr(0) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR;
  M08_AXI_arprot(2) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  M08_AXI_arprot(1) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  M08_AXI_arprot(0) <= m08_couplers_to_ps7_0_axi_periph_GP0_ARPROT;
  M08_AXI_arvalid <= m08_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M08_AXI_awaddr(31) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(30) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(29) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(28) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(27) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(26) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(25) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(24) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(23) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(22) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(21) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(20) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(19) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(18) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(17) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(16) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(15) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(14) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(13) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(12) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(11) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(10) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(9) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(8) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(7) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(6) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(5) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(4) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(3) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(2) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(1) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awaddr(0) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR;
  M08_AXI_awprot(2) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  M08_AXI_awprot(1) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  M08_AXI_awprot(0) <= m08_couplers_to_ps7_0_axi_periph_GP0_AWPROT;
  M08_AXI_awvalid <= m08_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M08_AXI_bready <= m08_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M08_AXI_rready <= m08_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M08_AXI_wdata(31) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(30) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(29) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(28) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(27) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(26) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(25) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(24) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(23) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(22) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(21) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(20) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(19) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(18) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(17) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(16) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(15) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(14) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(13) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(12) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(11) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(10) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(9) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(8) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(7) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(6) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(5) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(4) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(3) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(2) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(1) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wdata(0) <= m08_couplers_to_ps7_0_axi_periph_GP0_WDATA;
  M08_AXI_wstrb(3) <= m08_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  M08_AXI_wstrb(2) <= m08_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  M08_AXI_wstrb(1) <= m08_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  M08_AXI_wstrb(0) <= m08_couplers_to_ps7_0_axi_periph_GP0_WSTRB;
  M08_AXI_wvalid <= m08_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1 <= M09_ARESETN;
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M09_AXI_arvalid <= m09_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M09_AXI_awvalid <= m09_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M09_AXI_bready <= m09_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M09_AXI_rready <= m09_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M09_AXI_wvalid <= m09_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M10_ACLK_1 <= M10_ACLK;
  M10_ARESETN_1 <= M10_ARESETN;
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M10_AXI_arvalid <= m10_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M10_AXI_awvalid <= m10_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M10_AXI_bready <= m10_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M10_AXI_rready <= m10_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= m10_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M10_AXI_wvalid <= m10_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M11_ACLK_1 <= M11_ACLK;
  M11_ARESETN_1 <= M11_ARESETN;
  M11_AXI_araddr(31 downto 0) <= m11_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M11_AXI_arvalid(0) <= m11_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M11_AXI_awaddr(31 downto 0) <= m11_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M11_AXI_awvalid(0) <= m11_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M11_AXI_bready(0) <= m11_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M11_AXI_rready(0) <= m11_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M11_AXI_wdata(31 downto 0) <= m11_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= m11_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M11_AXI_wvalid(0) <= m11_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M12_ACLK_1 <= M12_ACLK;
  M12_ARESETN_1 <= M12_ARESETN;
  M12_AXI_araddr(31 downto 0) <= m12_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M12_AXI_arprot(2 downto 0) <= m12_couplers_to_ps7_0_axi_periph_GP0_ARPROT(2 downto 0);
  M12_AXI_arvalid(0) <= m12_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M12_AXI_awaddr(31 downto 0) <= m12_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M12_AXI_awprot(2 downto 0) <= m12_couplers_to_ps7_0_axi_periph_GP0_AWPROT(2 downto 0);
  M12_AXI_awvalid(0) <= m12_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M12_AXI_bready(0) <= m12_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M12_AXI_rready(0) <= m12_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M12_AXI_wdata(31 downto 0) <= m12_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M12_AXI_wstrb(3 downto 0) <= m12_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M12_AXI_wvalid(0) <= m12_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  M13_ACLK_1 <= M13_ACLK;
  M13_ARESETN_1 <= M13_ARESETN;
  M13_AXI_araddr(31 downto 0) <= m13_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M13_AXI_arvalid <= m13_couplers_to_ps7_0_axi_periph_GP0_ARVALID;
  M13_AXI_awaddr(31 downto 0) <= m13_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M13_AXI_awvalid <= m13_couplers_to_ps7_0_axi_periph_GP0_AWVALID;
  M13_AXI_bready <= m13_couplers_to_ps7_0_axi_periph_GP0_BREADY;
  M13_AXI_rready <= m13_couplers_to_ps7_0_axi_periph_GP0_RREADY;
  M13_AXI_wdata(31 downto 0) <= m13_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M13_AXI_wstrb(3 downto 0) <= m13_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M13_AXI_wvalid <= m13_couplers_to_ps7_0_axi_periph_GP0_WVALID;
  M14_ACLK_1 <= M14_ACLK;
  M14_ARESETN_1 <= M14_ARESETN;
  M14_AXI_araddr(31 downto 0) <= m14_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0);
  M14_AXI_arvalid(0) <= m14_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0);
  M14_AXI_awaddr(31 downto 0) <= m14_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0);
  M14_AXI_awvalid(0) <= m14_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0);
  M14_AXI_bready(0) <= m14_couplers_to_ps7_0_axi_periph_GP0_BREADY(0);
  M14_AXI_rready(0) <= m14_couplers_to_ps7_0_axi_periph_GP0_RREADY(0);
  M14_AXI_wdata(31 downto 0) <= m14_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0);
  M14_AXI_wstrb(3 downto 0) <= m14_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0);
  M14_AXI_wvalid(0) <= m14_couplers_to_ps7_0_axi_periph_GP0_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_GP0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_GP0_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_GP0_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_GP0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_GP0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_GP0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_GP0_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_GP0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_GP0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_GP0_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_GP0_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M06_AXI_arready(0);
  m06_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M06_AXI_awready(0);
  m06_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M06_AXI_bvalid(0);
  m06_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M06_AXI_rvalid(0);
  m06_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M06_AXI_wready(0);
  m07_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M07_AXI_arready(0);
  m07_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M07_AXI_awready(0);
  m07_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M07_AXI_bvalid(0);
  m07_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M07_AXI_rvalid(0);
  m07_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M07_AXI_wready(0);
  m08_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M08_AXI_arready;
  m08_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M08_AXI_awready;
  m08_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M08_AXI_wready;
  m09_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M09_AXI_arready;
  m09_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M09_AXI_awready;
  m09_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M09_AXI_wready;
  m10_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M10_AXI_arready;
  m10_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M10_AXI_awready;
  m10_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M10_AXI_bvalid;
  m10_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M10_AXI_rvalid;
  m10_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M10_AXI_wready;
  m11_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M11_AXI_arready(0);
  m11_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M11_AXI_awready(0);
  m11_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  m11_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M11_AXI_bvalid(0);
  m11_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  m11_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  m11_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M11_AXI_rvalid(0);
  m11_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M11_AXI_wready(0);
  m12_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M12_AXI_arready(0);
  m12_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M12_AXI_awready(0);
  m12_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M12_AXI_bresp(1 downto 0);
  m12_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M12_AXI_bvalid(0);
  m12_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M12_AXI_rdata(31 downto 0);
  m12_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M12_AXI_rresp(1 downto 0);
  m12_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M12_AXI_rvalid(0);
  m12_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M12_AXI_wready(0);
  m13_couplers_to_ps7_0_axi_periph_GP0_ARREADY <= M13_AXI_arready;
  m13_couplers_to_ps7_0_axi_periph_GP0_AWREADY <= M13_AXI_awready;
  m13_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M13_AXI_bresp(1 downto 0);
  m13_couplers_to_ps7_0_axi_periph_GP0_BVALID <= M13_AXI_bvalid;
  m13_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M13_AXI_rdata(31 downto 0);
  m13_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M13_AXI_rresp(1 downto 0);
  m13_couplers_to_ps7_0_axi_periph_GP0_RVALID <= M13_AXI_rvalid;
  m13_couplers_to_ps7_0_axi_periph_GP0_WREADY <= M13_AXI_wready;
  m14_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0) <= M14_AXI_arready(0);
  m14_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0) <= M14_AXI_awready(0);
  m14_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0) <= M14_AXI_bresp(1 downto 0);
  m14_couplers_to_ps7_0_axi_periph_GP0_BVALID(0) <= M14_AXI_bvalid(0);
  m14_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0) <= M14_AXI_rdata(31 downto 0);
  m14_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0) <= M14_AXI_rresp(1 downto 0);
  m14_couplers_to_ps7_0_axi_periph_GP0_RVALID(0) <= M14_AXI_rvalid(0);
  m14_couplers_to_ps7_0_axi_periph_GP0_WREADY(0) <= M14_AXI_wready(0);
  ps7_0_axi_periph_GP0_ACLK_net <= ACLK;
  ps7_0_axi_periph_GP0_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_GP0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_GP0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_GP0_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_GP0_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_GP0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_GP0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_GP0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_ALOWHI
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_11U5WPZ
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_18U1YC5
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_4FRXXG
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1V5JQ41
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m04_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m04_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_PNBBKW
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wvalid(0) => m05_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_WN7EZ6
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m06_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m06_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m06_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m06_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m06_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m06_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m06_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m06_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m06_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m06_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready(0) => xbar_to_m06_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready(0) => xbar_to_m06_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready(0) => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m06_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m06_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready(0) => xbar_to_m06_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid(0) => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1OZMSXV
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m07_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m07_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m07_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m07_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m07_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m07_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m07_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m07_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m07_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m07_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready(0) => xbar_to_m07_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready(0) => xbar_to_m07_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready(0) => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m07_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m07_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => xbar_to_m07_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_NMIK3D
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN => M08_ARESETN_1,
      M_AXI_araddr => m08_couplers_to_ps7_0_axi_periph_GP0_ARADDR,
      M_AXI_arprot => m08_couplers_to_ps7_0_axi_periph_GP0_ARPROT,
      M_AXI_arready => m08_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m08_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr => m08_couplers_to_ps7_0_axi_periph_GP0_AWADDR,
      M_AXI_awprot => m08_couplers_to_ps7_0_axi_periph_GP0_AWPROT,
      M_AXI_awready => m08_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m08_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m08_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp => m08_couplers_to_ps7_0_axi_periph_GP0_BRESP(0),
      M_AXI_bvalid => m08_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata => m08_couplers_to_ps7_0_axi_periph_GP0_RDATA(0),
      M_AXI_rready => m08_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp => m08_couplers_to_ps7_0_axi_periph_GP0_RRESP(0),
      M_AXI_rvalid => m08_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata => m08_couplers_to_ps7_0_axi_periph_GP0_WDATA,
      M_AXI_wready => m08_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb => m08_couplers_to_ps7_0_axi_periph_GP0_WSTRB,
      M_AXI_wvalid => m08_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr => xbar_to_m08_couplers_ARADDR(256),
      S_AXI_arprot => xbar_to_m08_couplers_ARPROT(24),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr => xbar_to_m08_couplers_AWADDR(256),
      S_AXI_awprot => xbar_to_m08_couplers_AWPROT(24),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp => xbar_to_m08_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata => xbar_to_m08_couplers_RDATA,
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp => xbar_to_m08_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata => xbar_to_m08_couplers_WDATA(256),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m08_couplers_WSTRB(32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_1XQ6QI0
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN => M09_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready => m09_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m09_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready => m09_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m09_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m09_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m09_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready => m09_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m09_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready => m09_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m09_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr(31 downto 0) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp(1 downto 0) => xbar_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp(1 downto 0) => xbar_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m09_couplers_WDATA(319 downto 288),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_18TTR91
     port map (
      M_ACLK => M10_ACLK_1,
      M_ARESETN => M10_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready => m10_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m10_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready => m10_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m10_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m10_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m10_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready => m10_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m10_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready => m10_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m10_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m10_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      S_AXI_arready => xbar_to_m10_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr(31 downto 0) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      S_AXI_awready => xbar_to_m10_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bready => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp(1 downto 0) => xbar_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m10_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp(1 downto 0) => xbar_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m10_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m10_couplers_WDATA(351 downto 320),
      S_AXI_wready => xbar_to_m10_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      S_AXI_wvalid => xbar_to_m10_couplers_WVALID(10)
    );
m11_couplers: entity work.m11_couplers_imp_4FIC9W
     port map (
      M_ACLK => M11_ACLK_1,
      M_ARESETN => M11_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m11_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m11_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m11_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m11_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m11_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m11_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m11_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m11_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m11_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m11_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m11_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      S_AXI_arready(0) => xbar_to_m11_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m11_couplers_ARVALID(11),
      S_AXI_awaddr(31 downto 0) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      S_AXI_awready(0) => xbar_to_m11_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m11_couplers_AWVALID(11),
      S_AXI_bready(0) => xbar_to_m11_couplers_BREADY(11),
      S_AXI_bresp(1 downto 0) => xbar_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m11_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m11_couplers_RREADY(11),
      S_AXI_rresp(1 downto 0) => xbar_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m11_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m11_couplers_WDATA(383 downto 352),
      S_AXI_wready(0) => xbar_to_m11_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      S_AXI_wvalid(0) => xbar_to_m11_couplers_WVALID(11)
    );
m12_couplers: entity work.m12_couplers_imp_ALH0EU
     port map (
      M_ACLK => M12_ACLK_1,
      M_ARESETN => M12_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_ARPROT(2 downto 0),
      M_AXI_arready(0) => m12_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m12_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_AWPROT(2 downto 0),
      M_AXI_awready(0) => m12_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m12_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m12_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m12_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m12_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m12_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m12_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m12_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m12_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      S_AXI_arprot(2 downto 0) => xbar_to_m12_couplers_ARPROT(38 downto 36),
      S_AXI_arready(0) => xbar_to_m12_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m12_couplers_ARVALID(12),
      S_AXI_awaddr(31 downto 0) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      S_AXI_awprot(2 downto 0) => xbar_to_m12_couplers_AWPROT(38 downto 36),
      S_AXI_awready(0) => xbar_to_m12_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m12_couplers_AWVALID(12),
      S_AXI_bready(0) => xbar_to_m12_couplers_BREADY(12),
      S_AXI_bresp(1 downto 0) => xbar_to_m12_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m12_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m12_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m12_couplers_RREADY(12),
      S_AXI_rresp(1 downto 0) => xbar_to_m12_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m12_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m12_couplers_WDATA(415 downto 384),
      S_AXI_wready(0) => xbar_to_m12_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      S_AXI_wvalid(0) => xbar_to_m12_couplers_WVALID(12)
    );
m13_couplers: entity work.m13_couplers_imp_11TWM2V
     port map (
      M_ACLK => M13_ACLK_1,
      M_ARESETN => M13_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready => m13_couplers_to_ps7_0_axi_periph_GP0_ARREADY,
      M_AXI_arvalid => m13_couplers_to_ps7_0_axi_periph_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready => m13_couplers_to_ps7_0_axi_periph_GP0_AWREADY,
      M_AXI_awvalid => m13_couplers_to_ps7_0_axi_periph_GP0_AWVALID,
      M_AXI_bready => m13_couplers_to_ps7_0_axi_periph_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m13_couplers_to_ps7_0_axi_periph_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready => m13_couplers_to_ps7_0_axi_periph_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m13_couplers_to_ps7_0_axi_periph_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready => m13_couplers_to_ps7_0_axi_periph_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m13_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m13_couplers_to_ps7_0_axi_periph_GP0_WVALID,
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      S_AXI_arready => xbar_to_m13_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m13_couplers_ARVALID(13),
      S_AXI_awaddr(31 downto 0) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      S_AXI_awready => xbar_to_m13_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m13_couplers_AWVALID(13),
      S_AXI_bready => xbar_to_m13_couplers_BREADY(13),
      S_AXI_bresp(1 downto 0) => xbar_to_m13_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m13_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m13_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m13_couplers_RREADY(13),
      S_AXI_rresp(1 downto 0) => xbar_to_m13_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m13_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m13_couplers_WDATA(447 downto 416),
      S_AXI_wready => xbar_to_m13_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      S_AXI_wvalid => xbar_to_m13_couplers_WVALID(13)
    );
m14_couplers: entity work.m14_couplers_imp_WMZSFM
     port map (
      M_ACLK => M14_ACLK_1,
      M_ARESETN => M14_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m14_couplers_to_ps7_0_axi_periph_GP0_ARREADY(0),
      M_AXI_arvalid(0) => m14_couplers_to_ps7_0_axi_periph_GP0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m14_couplers_to_ps7_0_axi_periph_GP0_AWREADY(0),
      M_AXI_awvalid(0) => m14_couplers_to_ps7_0_axi_periph_GP0_AWVALID(0),
      M_AXI_bready(0) => m14_couplers_to_ps7_0_axi_periph_GP0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m14_couplers_to_ps7_0_axi_periph_GP0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_RDATA(31 downto 0),
      M_AXI_rready(0) => m14_couplers_to_ps7_0_axi_periph_GP0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m14_couplers_to_ps7_0_axi_periph_GP0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_WDATA(31 downto 0),
      M_AXI_wready(0) => m14_couplers_to_ps7_0_axi_periph_GP0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m14_couplers_to_ps7_0_axi_periph_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m14_couplers_to_ps7_0_axi_periph_GP0_WVALID(0),
      S_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m14_couplers_ARADDR(479 downto 448),
      S_AXI_arready(0) => xbar_to_m14_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m14_couplers_ARVALID(14),
      S_AXI_awaddr(31 downto 0) => xbar_to_m14_couplers_AWADDR(479 downto 448),
      S_AXI_awready(0) => xbar_to_m14_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m14_couplers_AWVALID(14),
      S_AXI_bready(0) => xbar_to_m14_couplers_BREADY(14),
      S_AXI_bresp(1 downto 0) => xbar_to_m14_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m14_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m14_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m14_couplers_RREADY(14),
      S_AXI_rresp(1 downto 0) => xbar_to_m14_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m14_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m14_couplers_WDATA(479 downto 448),
      S_AXI_wready(0) => xbar_to_m14_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m14_couplers_WSTRB(59 downto 56),
      S_AXI_wvalid(0) => xbar_to_m14_couplers_WVALID(14)
    );
s00_couplers: entity work.s00_couplers_imp_4WZP47
     port map (
      M_ACLK => ps7_0_axi_periph_GP0_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_GP0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_GP0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_GP0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_GP0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_GP0_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_GP0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_GP0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_GP0_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_GP0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_GP0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_GP0_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_GP0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_GP0_to_s00_couplers_WVALID
    );
xbar: component system_xbar_1
     port map (
      aclk => ps7_0_axi_periph_GP0_ACLK_net,
      aresetn => ps7_0_axi_periph_GP0_ARESETN_net,
      m_axi_araddr(479 downto 448) => xbar_to_m14_couplers_ARADDR(479 downto 448),
      m_axi_araddr(447 downto 416) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      m_axi_araddr(415 downto 384) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      m_axi_araddr(383 downto 352) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(44 downto 39) => NLW_xbar_m_axi_arprot_UNCONNECTED(44 downto 39),
      m_axi_arprot(38 downto 36) => xbar_to_m12_couplers_ARPROT(38 downto 36),
      m_axi_arprot(35 downto 27) => NLW_xbar_m_axi_arprot_UNCONNECTED(35 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(23 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 0),
      m_axi_arready(14) => xbar_to_m14_couplers_ARREADY(0),
      m_axi_arready(13) => xbar_to_m13_couplers_ARREADY,
      m_axi_arready(12) => xbar_to_m12_couplers_ARREADY(0),
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY(0),
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY(0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY(0),
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(14) => xbar_to_m14_couplers_ARVALID(14),
      m_axi_arvalid(13) => xbar_to_m13_couplers_ARVALID(13),
      m_axi_arvalid(12) => xbar_to_m12_couplers_ARVALID(12),
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID(11),
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(479 downto 448) => xbar_to_m14_couplers_AWADDR(479 downto 448),
      m_axi_awaddr(447 downto 416) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      m_axi_awaddr(415 downto 384) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      m_axi_awaddr(383 downto 352) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(44 downto 39) => NLW_xbar_m_axi_awprot_UNCONNECTED(44 downto 39),
      m_axi_awprot(38 downto 36) => xbar_to_m12_couplers_AWPROT(38 downto 36),
      m_axi_awprot(35 downto 27) => NLW_xbar_m_axi_awprot_UNCONNECTED(35 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(23 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 0),
      m_axi_awready(14) => xbar_to_m14_couplers_AWREADY(0),
      m_axi_awready(13) => xbar_to_m13_couplers_AWREADY,
      m_axi_awready(12) => xbar_to_m12_couplers_AWREADY(0),
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY(0),
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY(0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY(0),
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(14) => xbar_to_m14_couplers_AWVALID(14),
      m_axi_awvalid(13) => xbar_to_m13_couplers_AWVALID(13),
      m_axi_awvalid(12) => xbar_to_m12_couplers_AWVALID(12),
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID(11),
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(14) => xbar_to_m14_couplers_BREADY(14),
      m_axi_bready(13) => xbar_to_m13_couplers_BREADY(13),
      m_axi_bready(12) => xbar_to_m12_couplers_BREADY(12),
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY(11),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(29 downto 28) => xbar_to_m14_couplers_BRESP(1 downto 0),
      m_axi_bresp(27 downto 26) => xbar_to_m13_couplers_BRESP(1 downto 0),
      m_axi_bresp(25 downto 24) => xbar_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bresp(23 downto 22) => xbar_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(21 downto 20) => xbar_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(19 downto 18) => xbar_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(17) => xbar_to_m08_couplers_BRESP,
      m_axi_bresp(16) => xbar_to_m08_couplers_BRESP,
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(14) => xbar_to_m14_couplers_BVALID(0),
      m_axi_bvalid(13) => xbar_to_m13_couplers_BVALID,
      m_axi_bvalid(12) => xbar_to_m12_couplers_BVALID(0),
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID(0),
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID(0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID(0),
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(479 downto 448) => xbar_to_m14_couplers_RDATA(31 downto 0),
      m_axi_rdata(447 downto 416) => xbar_to_m13_couplers_RDATA(31 downto 0),
      m_axi_rdata(415 downto 384) => xbar_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rdata(383 downto 352) => xbar_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(351 downto 320) => xbar_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(319 downto 288) => xbar_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(287) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(286) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(285) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(284) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(283) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(282) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(281) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(280) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(279) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(278) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(277) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(276) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(275) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(274) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(273) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(272) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(271) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(270) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(269) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(268) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(267) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(266) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(265) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(264) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(263) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(262) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(261) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(260) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(259) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(258) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(257) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(256) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(14) => xbar_to_m14_couplers_RREADY(14),
      m_axi_rready(13) => xbar_to_m13_couplers_RREADY(13),
      m_axi_rready(12) => xbar_to_m12_couplers_RREADY(12),
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY(11),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(29 downto 28) => xbar_to_m14_couplers_RRESP(1 downto 0),
      m_axi_rresp(27 downto 26) => xbar_to_m13_couplers_RRESP(1 downto 0),
      m_axi_rresp(25 downto 24) => xbar_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rresp(23 downto 22) => xbar_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(21 downto 20) => xbar_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(19 downto 18) => xbar_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(17) => xbar_to_m08_couplers_RRESP,
      m_axi_rresp(16) => xbar_to_m08_couplers_RRESP,
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(14) => xbar_to_m14_couplers_RVALID(0),
      m_axi_rvalid(13) => xbar_to_m13_couplers_RVALID,
      m_axi_rvalid(12) => xbar_to_m12_couplers_RVALID(0),
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID(0),
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID(0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID(0),
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(479 downto 448) => xbar_to_m14_couplers_WDATA(479 downto 448),
      m_axi_wdata(447 downto 416) => xbar_to_m13_couplers_WDATA(447 downto 416),
      m_axi_wdata(415 downto 384) => xbar_to_m12_couplers_WDATA(415 downto 384),
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(14) => xbar_to_m14_couplers_WREADY(0),
      m_axi_wready(13) => xbar_to_m13_couplers_WREADY,
      m_axi_wready(12) => xbar_to_m12_couplers_WREADY(0),
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY(0),
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY(0),
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(59 downto 56) => xbar_to_m14_couplers_WSTRB(59 downto 56),
      m_axi_wstrb(55 downto 52) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      m_axi_wstrb(51 downto 48) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => NLW_xbar_m_axi_wstrb_UNCONNECTED(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(14) => xbar_to_m14_couplers_WVALID(14),
      m_axi_wvalid(13) => xbar_to_m13_couplers_WVALID(13),
      m_axi_wvalid(12) => xbar_to_m12_couplers_WVALID(12),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID(11),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    Vaux14_v_n : in STD_LOGIC;
    Vaux14_v_p : in STD_LOGIC;
    Vaux15_v_n : in STD_LOGIC;
    Vaux15_v_p : in STD_LOGIC;
    Vaux6_v_n : in STD_LOGIC;
    Vaux6_v_p : in STD_LOGIC;
    Vaux7_v_n : in STD_LOGIC;
    Vaux7_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    ac_bclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_iic_scl_i : in STD_LOGIC;
    ac_iic_scl_o : out STD_LOGIC;
    ac_iic_scl_t : out STD_LOGIC;
    ac_iic_sda_i : in STD_LOGIC;
    ac_iic_sda_o : out STD_LOGIC;
    ac_iic_sda_t : out STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_muten : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pbdat : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_pblrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_recdat : in STD_LOGIC_VECTOR ( 0 to 0 );
    ac_reclrc : out STD_LOGIC_VECTOR ( 0 to 0 );
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_iic_scl_i : in STD_LOGIC;
    cam_iic_scl_o : out STD_LOGIC;
    cam_iic_scl_t : out STD_LOGIC;
    cam_iic_sda_i : in STD_LOGIC;
    cam_iic_sda_o : out STD_LOGIC;
    cam_iic_sda_t : out STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rst_b_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rst_b_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rst_b_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_in_clk_n : in STD_LOGIC;
    hdmi_in_clk_p : in STD_LOGIC;
    hdmi_in_data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_in_ddc_scl_i : in STD_LOGIC;
    hdmi_in_ddc_scl_o : out STD_LOGIC;
    hdmi_in_ddc_scl_t : out STD_LOGIC;
    hdmi_in_ddc_sda_i : in STD_LOGIC;
    hdmi_in_ddc_sda_o : out STD_LOGIC;
    hdmi_in_ddc_sda_t : out STD_LOGIC;
    hdmi_in_hpd : out STD_LOGIC_VECTOR ( 0 to 0 );
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_scl_i : in STD_LOGIC;
    hdmi_out_ddc_scl_o : out STD_LOGIC;
    hdmi_out_ddc_scl_t : out STD_LOGIC;
    hdmi_out_ddc_sda_i : in STD_LOGIC;
    hdmi_out_ddc_sda_o : out STD_LOGIC;
    hdmi_out_ddc_sda_t : out STD_LOGIC;
    leds_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_4bits_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=65,numReposBlks=42,numNonXlnxBlks=4,numHierBlks=23,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_clkrst_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_axi_data_fifo_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_axi_data_fifo_0_0;
  component system_axi_gpio_eth_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axi_gpio_eth_0;
  component system_axi_gpio_led_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system_axi_gpio_led_0;
  component system_axi_gpio_sw_btn_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system_axi_gpio_sw_btn_0;
  component system_axi_gpio_video_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axi_gpio_video_0;
  component system_axi_iic_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axi_iic_0_0;
  component system_axi_vdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s2mm_frame_ptr_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component system_axi_vdma_0_0;
  component system_axi_vdma_1_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component system_axi_vdma_1_0;
  component system_axis_subset_converter_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axis_subset_converter_0_0;
  component system_axis_subset_converter_in_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axis_subset_converter_in_0;
  component system_axis_subset_converter_out_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axis_subset_converter_out_0;
  component system_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC
  );
  end component system_clk_wiz_0_0;
  component system_mipi_csi2_rx_subsystem_0_1 is
  port (
    lite_aclk : in STD_LOGIC;
    lite_aresetn : in STD_LOGIC;
    dphy_clk_200M : in STD_LOGIC;
    dlyctrl_rdy_out : out STD_LOGIC;
    rxbyteclkhs : out STD_LOGIC;
    system_rst_out : out STD_LOGIC;
    csirxss_csi_irq : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    video_aresetn : in STD_LOGIC;
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
    mipi_phy_if_clk_hs_n : in STD_LOGIC;
    mipi_phy_if_clk_hs_p : in STD_LOGIC;
    mipi_phy_if_clk_lp_n : in STD_LOGIC;
    mipi_phy_if_clk_lp_p : in STD_LOGIC;
    mipi_phy_if_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mipi_phy_if_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component system_mipi_csi2_rx_subsystem_0_1;
  component system_util_ds_buf_0_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_util_ds_buf_0_0;
  component system_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_v_axi4s_vid_out_0_0;
  component system_v_frmbuf_wr_0_1 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_mm_video_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_video_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_video_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_video_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_video_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_video_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_video_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_video_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_video_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_video_AWVALID : out STD_LOGIC;
    m_axi_mm_video_AWREADY : in STD_LOGIC;
    m_axi_mm_video_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm_video_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_video_WLAST : out STD_LOGIC;
    m_axi_mm_video_WVALID : out STD_LOGIC;
    m_axi_mm_video_WREADY : in STD_LOGIC;
    m_axi_mm_video_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_video_BVALID : in STD_LOGIC;
    m_axi_mm_video_BREADY : out STD_LOGIC;
    m_axi_mm_video_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm_video_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm_video_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_video_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_video_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_video_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_video_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_video_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm_video_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm_video_ARVALID : out STD_LOGIC;
    m_axi_mm_video_ARREADY : in STD_LOGIC;
    m_axi_mm_video_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm_video_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm_video_RLAST : in STD_LOGIC;
    m_axi_mm_video_RVALID : in STD_LOGIC;
    m_axi_mm_video_RREADY : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC;
    s_axis_video_TLAST : in STD_LOGIC;
    s_axis_video_TID : in STD_LOGIC;
    s_axis_video_TDEST : in STD_LOGIC
  );
  end component system_v_frmbuf_wr_0_1;
  component system_v_vid_in_axi4s_0_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component system_v_vid_in_axi4s_0_0;
  component system_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_0_0;
  component system_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_1_0;
  component system_PS_GPIO_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_PS_GPIO_0_0;
  component system_PS_GPIO_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_PS_GPIO_2_0;
  component system_axi_dynclk_0_0 is
  port (
    REF_CLK_I : in STD_LOGIC;
    PXL_CLK_O : out STD_LOGIC;
    PXL_CLK_5X_O : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component system_axi_dynclk_0_0;
  component system_axi_i2s_adi_0_0 is
  port (
    DATA_CLK_I : in STD_LOGIC;
    BCLK_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    LRCLK_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDATA_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDATA_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    DMA_REQ_TX_ACLK : in STD_LOGIC;
    DMA_REQ_TX_RSTN : in STD_LOGIC;
    DMA_REQ_TX_DAVALID : in STD_LOGIC;
    DMA_REQ_TX_DATYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_TX_DAREADY : out STD_LOGIC;
    DMA_REQ_TX_DRVALID : out STD_LOGIC;
    DMA_REQ_TX_DRTYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_TX_DRLAST : out STD_LOGIC;
    DMA_REQ_TX_DRREADY : in STD_LOGIC;
    DMA_REQ_RX_ACLK : in STD_LOGIC;
    DMA_REQ_RX_RSTN : in STD_LOGIC;
    DMA_REQ_RX_DAVALID : in STD_LOGIC;
    DMA_REQ_RX_DATYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_RX_DAREADY : out STD_LOGIC;
    DMA_REQ_RX_DRVALID : out STD_LOGIC;
    DMA_REQ_RX_DRTYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA_REQ_RX_DRLAST : out STD_LOGIC;
    DMA_REQ_RX_DRREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC
  );
  end component system_axi_i2s_adi_0_0;
  component system_dvi2rgb_1_0 is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SDA_O : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    SCL_I : in STD_LOGIC;
    SCL_O : out STD_LOGIC;
    SCL_T : out STD_LOGIC;
    pRst_n : in STD_LOGIC
  );
  end component system_dvi2rgb_1_0;
  component system_proc_sys_reset_0_0 is
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
  end component system_proc_sys_reset_0_0;
  component system_processing_system7_0_0 is
  port (
    GPIO_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 63 downto 0 );
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DMA0_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA0_DAVALID : out STD_LOGIC;
    DMA0_DRREADY : out STD_LOGIC;
    DMA1_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA1_DAVALID : out STD_LOGIC;
    DMA1_DRREADY : out STD_LOGIC;
    DMA0_ACLK : in STD_LOGIC;
    DMA0_DAREADY : in STD_LOGIC;
    DMA0_DRLAST : in STD_LOGIC;
    DMA0_DRVALID : in STD_LOGIC;
    DMA1_ACLK : in STD_LOGIC;
    DMA1_DAREADY : in STD_LOGIC;
    DMA1_DRLAST : in STD_LOGIC;
    DMA1_DRVALID : in STD_LOGIC;
    DMA0_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA1_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component system_processing_system7_0_0;
  component system_rgb2dvi_1_0 is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  end component system_rgb2dvi_1_0;
  component system_rst_ps7_0_100M_0 is
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
  end component system_rst_ps7_0_100M_0;
  component system_rst_ps7_0_133M_0 is
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
  end component system_rst_ps7_0_133M_0;
  component system_v_tc_in_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    det_clken : in STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hsync_in : in STD_LOGIC;
    vsync_in : in STD_LOGIC;
    active_video_in : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  end component system_v_tc_in_0;
  component system_v_tc_out_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    fsync_in : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_v_tc_out_0;
  component system_xadc_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp6 : in STD_LOGIC;
    vauxn6 : in STD_LOGIC;
    vauxp7 : in STD_LOGIC;
    vauxn7 : in STD_LOGIC;
    vauxp14 : in STD_LOGIC;
    vauxn14 : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component system_xadc_wiz_0_0;
  component system_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component system_xlconcat_0_0;
  component system_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlslice_0_0;
  signal SDATA_I_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Vaux14_1_V_N : STD_LOGIC;
  signal Vaux14_1_V_P : STD_LOGIC;
  signal Vaux15_1_V_N : STD_LOGIC;
  signal Vaux15_1_V_P : STD_LOGIC;
  signal Vaux6_1_V_N : STD_LOGIC;
  signal Vaux6_1_V_P : STD_LOGIC;
  signal Vaux7_1_V_N : STD_LOGIC;
  signal Vaux7_1_V_P : STD_LOGIC;
  signal Vp_Vn_1_V_N : STD_LOGIC;
  signal Vp_Vn_1_V_P : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_data_fifo_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_data_fifo_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_data_fifo_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_data_fifo_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_data_fifo_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_data_fifo_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_data_fifo_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_data_fifo_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_data_fifo_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_data_fifo_0_M_AXI_WVALID : STD_LOGIC;
  signal axi_dynclk_0_LOCKED_O : STD_LOGIC;
  signal axi_dynclk_0_PXL_CLK_5X_O : STD_LOGIC;
  signal axi_dynclk_0_PXL_CLK_O : STD_LOGIC;
  signal axi_gpio_0_GPIO1_TRI_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_GPIO1_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_GPIO1_TRI_T : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_GPIO2_TRI_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_eth_GPIO_TRI_I : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_eth_GPIO_TRI_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_eth_GPIO_TRI_T : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_i2s_adi_0_BCLK_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_i2s_adi_0_DMA_REQ_RX_TLAST : STD_LOGIC;
  signal axi_i2s_adi_0_DMA_REQ_RX_TREADY : STD_LOGIC;
  signal axi_i2s_adi_0_DMA_REQ_RX_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_i2s_adi_0_DMA_REQ_RX_TVALID : STD_LOGIC;
  signal axi_i2s_adi_0_DMA_REQ_TX_TLAST : STD_LOGIC;
  signal axi_i2s_adi_0_DMA_REQ_TX_TREADY : STD_LOGIC;
  signal axi_i2s_adi_0_DMA_REQ_TX_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_i2s_adi_0_DMA_REQ_TX_TVALID : STD_LOGIC;
  signal axi_i2s_adi_0_LRCLK_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_i2s_adi_0_SDATA_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_iic_0_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_T : STD_LOGIC;
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI1_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI1_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI1_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI1_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI1_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI1_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI1_WVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_mem_intercon_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_BREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_BVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_mem_intercon_M00_AXI_RLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_mem_intercon_M00_AXI_RVALID : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_mem_intercon_M00_AXI_WID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_mem_intercon_M00_AXI_WLAST : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WREADY : STD_LOGIC;
  signal axi_mem_intercon_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_mem_intercon_M00_AXI_WVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_vdma_0_s2mm_introut : STD_LOGIC;
  signal axi_vdma_1_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_vdma_1_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_vdma_1_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_1_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_vdma_1_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_1_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_vdma_1_mm2s_introut : STD_LOGIC;
  signal axis_subset_converter_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_subset_converter_0_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_subset_converter_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_subset_converter_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_subset_converter_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_subset_converter_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_subset_converter_in_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_subset_converter_in_M_AXIS_TLAST : STD_LOGIC;
  signal axis_subset_converter_in_M_AXIS_TREADY : STD_LOGIC;
  signal axis_subset_converter_in_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_subset_converter_in_M_AXIS_TVALID : STD_LOGIC;
  signal axis_subset_converter_out_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_subset_converter_out_M_AXIS_TLAST : STD_LOGIC;
  signal axis_subset_converter_out_M_AXIS_TREADY : STD_LOGIC;
  signal axis_subset_converter_out_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_subset_converter_out_M_AXIS_TVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal csi2_rst_gpio : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dma_irpt : STD_LOGIC;
  signal dma_rst_gpio : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dphy_1_CLK_HS_N : STD_LOGIC;
  signal dphy_1_CLK_HS_P : STD_LOGIC;
  signal dphy_1_CLK_LP_N : STD_LOGIC;
  signal dphy_1_CLK_LP_P : STD_LOGIC;
  signal dphy_1_DATA_HS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dphy_1_DATA_HS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dphy_1_DATA_LP_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dphy_1_DATA_LP_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dvi2rgb_1_DDC_SCL_I : STD_LOGIC;
  signal dvi2rgb_1_DDC_SCL_O : STD_LOGIC;
  signal dvi2rgb_1_DDC_SCL_T : STD_LOGIC;
  signal dvi2rgb_1_DDC_SDA_I : STD_LOGIC;
  signal dvi2rgb_1_DDC_SDA_O : STD_LOGIC;
  signal dvi2rgb_1_DDC_SDA_T : STD_LOGIC;
  signal dvi2rgb_1_PixelClk : STD_LOGIC;
  signal dvi2rgb_1_RGB_ACTIVE_VIDEO : STD_LOGIC;
  signal dvi2rgb_1_RGB_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dvi2rgb_1_RGB_HSYNC : STD_LOGIC;
  signal dvi2rgb_1_RGB_VSYNC : STD_LOGIC;
  signal dvi2rgb_1_aPixelClkLckd : STD_LOGIC;
  signal hdmi_in_1_CLK_N : STD_LOGIC;
  signal hdmi_in_1_CLK_P : STD_LOGIC;
  signal hdmi_in_1_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_in_1_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mipi_csi2_rx_subsystem_0_csirxss_csi_irq : STD_LOGIC;
  signal mipi_csi2_rx_subsystem_0_video_out_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mipi_csi2_rx_subsystem_0_video_out_TDEST : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mipi_csi2_rx_subsystem_0_video_out_TLAST : STD_LOGIC;
  signal mipi_csi2_rx_subsystem_0_video_out_TREADY : STD_LOGIC;
  signal mipi_csi2_rx_subsystem_0_video_out_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mipi_csi2_rx_subsystem_0_video_out_TVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_DMA0_ACK_TREADY : STD_LOGIC;
  signal processing_system7_0_DMA0_ACK_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_DMA0_ACK_TVALID : STD_LOGIC;
  signal processing_system7_0_DMA1_ACK_TREADY : STD_LOGIC;
  signal processing_system7_0_DMA1_ACK_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_DMA1_ACK_TVALID : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_FCLK_CLK2 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK3 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_GPIO_O : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal processing_system7_0_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_0_SDA_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SCL_T : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_I : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_O : STD_LOGIC;
  signal processing_system7_0_IIC_1_SDA_T : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M05_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M09_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M10_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M11_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M11_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M11_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M12_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M13_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M13_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M14_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M14_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M14_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M14_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M14_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_GP0_M14_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_GP0_M14_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal rgb2dvi_1_TMDS_CLK_N : STD_LOGIC;
  signal rgb2dvi_1_TMDS_CLK_P : STD_LOGIC;
  signal rgb2dvi_1_TMDS_DATA_N : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rgb2dvi_1_TMDS_DATA_P : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_ps7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_133M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_133M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sensor_rst_gpio : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clock_1 : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_axi4s_vid_out_0_vid_io_out_HSYNC : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_io_out_VSYNC : STD_LOGIC;
  signal v_axi4s_vid_out_0_vtg_ce : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARREADY : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_ARVALID : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWREADY : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_AWVALID : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_BREADY : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_BVALID : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_RLAST : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_RREADY : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_RVALID : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_WLAST : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_WREADY : STD_LOGIC;
  signal v_frmbuf_wr_0_m_axi_mm_video_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_frmbuf_wr_0_m_axi_mm_video_WVALID : STD_LOGIC;
  signal v_tc_1_irq : STD_LOGIC;
  signal v_tc_1_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_1_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_1_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_1_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_1_vtiming_out_VSYNC : STD_LOGIC;
  signal v_tc_in_irq : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_vid_in_axi4s_0_video_out_TLAST : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TREADY : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TUSER : STD_LOGIC;
  signal v_vid_in_axi4s_0_video_out_TVALID : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_vid_in_axi4s_0_vtiming_out_VSYNC : STD_LOGIC;
  signal xadc_wiz_0_ip2intc_irpt : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_iic_0_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_1_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axis_subset_converter_out_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_mipi_csi2_rx_subsystem_0_dlyctrl_rdy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_csi2_rx_subsystem_0_rxbyteclkhs_UNCONNECTED : STD_LOGIC;
  signal NLW_mipi_csi2_rx_subsystem_0_system_rst_out_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_GPIO_T_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_GP0_M08_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_133M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_133M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_133M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_in_intc_if_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_out_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_vid_in_axi4s_0_fid_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of Vaux14_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux14 V_N";
  attribute X_INTERFACE_INFO of Vaux14_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux14 V_P";
  attribute X_INTERFACE_INFO of Vaux15_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux15 V_N";
  attribute X_INTERFACE_INFO of Vaux15_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux15 V_P";
  attribute X_INTERFACE_INFO of Vaux6_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux6 V_N";
  attribute X_INTERFACE_INFO of Vaux6_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux6 V_P";
  attribute X_INTERFACE_INFO of Vaux7_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux7 V_N";
  attribute X_INTERFACE_INFO of Vaux7_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux7 V_P";
  attribute X_INTERFACE_INFO of Vp_Vn_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn V_N";
  attribute X_INTERFACE_INFO of Vp_Vn_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn V_P";
  attribute X_INTERFACE_INFO of ac_iic_scl_i : signal is "xilinx.com:interface:iic:1.0 ac_iic SCL_I";
  attribute X_INTERFACE_INFO of ac_iic_scl_o : signal is "xilinx.com:interface:iic:1.0 ac_iic SCL_O";
  attribute X_INTERFACE_INFO of ac_iic_scl_t : signal is "xilinx.com:interface:iic:1.0 ac_iic SCL_T";
  attribute X_INTERFACE_INFO of ac_iic_sda_i : signal is "xilinx.com:interface:iic:1.0 ac_iic SDA_I";
  attribute X_INTERFACE_INFO of ac_iic_sda_o : signal is "xilinx.com:interface:iic:1.0 ac_iic SDA_O";
  attribute X_INTERFACE_INFO of ac_iic_sda_t : signal is "xilinx.com:interface:iic:1.0 ac_iic SDA_T";
  attribute X_INTERFACE_INFO of ac_mclk : signal is "xilinx.com:signal:clock:1.0 CLK.AC_MCLK CLK";
  attribute X_INTERFACE_PARAMETER of ac_mclk : signal is "XIL_INTERFACENAME CLK.AC_MCLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 12000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of cam_iic_scl_i : signal is "xilinx.com:interface:iic:1.0 cam_iic SCL_I";
  attribute X_INTERFACE_INFO of cam_iic_scl_o : signal is "xilinx.com:interface:iic:1.0 cam_iic SCL_O";
  attribute X_INTERFACE_INFO of cam_iic_scl_t : signal is "xilinx.com:interface:iic:1.0 cam_iic SCL_T";
  attribute X_INTERFACE_INFO of cam_iic_sda_i : signal is "xilinx.com:interface:iic:1.0 cam_iic SDA_I";
  attribute X_INTERFACE_INFO of cam_iic_sda_o : signal is "xilinx.com:interface:iic:1.0 cam_iic SDA_O";
  attribute X_INTERFACE_INFO of cam_iic_sda_t : signal is "xilinx.com:interface:iic:1.0 cam_iic SDA_T";
  attribute X_INTERFACE_INFO of dphy_clk_hs_n : signal is "xilinx.com:interface:mipi_phy:1.0 dphy CLK_HS_N";
  attribute X_INTERFACE_INFO of dphy_clk_hs_p : signal is "xilinx.com:interface:mipi_phy:1.0 dphy CLK_HS_P";
  attribute X_INTERFACE_INFO of dphy_clk_lp_n : signal is "xilinx.com:interface:mipi_phy:1.0 dphy CLK_LP_N";
  attribute X_INTERFACE_INFO of dphy_clk_lp_p : signal is "xilinx.com:interface:mipi_phy:1.0 dphy CLK_LP_P";
  attribute X_INTERFACE_INFO of hdmi_in_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_N";
  attribute X_INTERFACE_INFO of hdmi_in_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in CLK_P";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_scl_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_T";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_i : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_I";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_o : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_O";
  attribute X_INTERFACE_INFO of hdmi_in_ddc_sda_t : signal is "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_T";
  attribute X_INTERFACE_INFO of hdmi_out_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_N";
  attribute X_INTERFACE_INFO of hdmi_out_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out CLK_P";
  attribute X_INTERFACE_INFO of hdmi_out_ddc_scl_i : signal is "xilinx.com:interface:iic:1.0 hdmi_out_ddc SCL_I";
  attribute X_INTERFACE_INFO of hdmi_out_ddc_scl_o : signal is "xilinx.com:interface:iic:1.0 hdmi_out_ddc SCL_O";
  attribute X_INTERFACE_INFO of hdmi_out_ddc_scl_t : signal is "xilinx.com:interface:iic:1.0 hdmi_out_ddc SCL_T";
  attribute X_INTERFACE_INFO of hdmi_out_ddc_sda_i : signal is "xilinx.com:interface:iic:1.0 hdmi_out_ddc SDA_I";
  attribute X_INTERFACE_INFO of hdmi_out_ddc_sda_o : signal is "xilinx.com:interface:iic:1.0 hdmi_out_ddc SDA_O";
  attribute X_INTERFACE_INFO of hdmi_out_ddc_sda_t : signal is "xilinx.com:interface:iic:1.0 hdmi_out_ddc SDA_T";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN system_sys_clock, FREQ_HZ 125000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of btns_4bits_tri_i : signal is "xilinx.com:interface:gpio:1.0 btns_4bits TRI_I";
  attribute X_INTERFACE_INFO of dphy_data_hs_n : signal is "xilinx.com:interface:mipi_phy:1.0 dphy DATA_HS_N";
  attribute X_INTERFACE_INFO of dphy_data_hs_p : signal is "xilinx.com:interface:mipi_phy:1.0 dphy DATA_HS_P";
  attribute X_INTERFACE_INFO of dphy_data_lp_n : signal is "xilinx.com:interface:mipi_phy:1.0 dphy DATA_LP_N";
  attribute X_INTERFACE_INFO of dphy_data_lp_p : signal is "xilinx.com:interface:mipi_phy:1.0 dphy DATA_LP_P";
  attribute X_INTERFACE_INFO of eth_rst_b_tri_i : signal is "xilinx.com:interface:gpio:1.0 eth_rst_b TRI_I";
  attribute X_INTERFACE_INFO of eth_rst_b_tri_o : signal is "xilinx.com:interface:gpio:1.0 eth_rst_b TRI_O";
  attribute X_INTERFACE_INFO of eth_rst_b_tri_t : signal is "xilinx.com:interface:gpio:1.0 eth_rst_b TRI_T";
  attribute X_INTERFACE_INFO of hdmi_in_data_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_N";
  attribute X_INTERFACE_INFO of hdmi_in_data_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_in DATA_P";
  attribute X_INTERFACE_INFO of hdmi_out_data_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_N";
  attribute X_INTERFACE_INFO of hdmi_out_data_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_out DATA_P";
  attribute X_INTERFACE_INFO of leds_4bits_tri_i : signal is "xilinx.com:interface:gpio:1.0 leds_4bits TRI_I";
  attribute X_INTERFACE_INFO of leds_4bits_tri_o : signal is "xilinx.com:interface:gpio:1.0 leds_4bits TRI_O";
  attribute X_INTERFACE_INFO of leds_4bits_tri_t : signal is "xilinx.com:interface:gpio:1.0 leds_4bits TRI_T";
  attribute X_INTERFACE_INFO of sws_4bits_tri_i : signal is "xilinx.com:interface:gpio:1.0 sws_4bits TRI_I";
begin
  SDATA_I_1(0) <= ac_recdat(0);
  Vaux14_1_V_N <= Vaux14_v_n;
  Vaux14_1_V_P <= Vaux14_v_p;
  Vaux15_1_V_N <= Vaux15_v_n;
  Vaux15_1_V_P <= Vaux15_v_p;
  Vaux6_1_V_N <= Vaux6_v_n;
  Vaux6_1_V_P <= Vaux6_v_p;
  Vaux7_1_V_N <= Vaux7_v_n;
  Vaux7_1_V_P <= Vaux7_v_p;
  Vp_Vn_1_V_N <= Vp_Vn_v_n;
  Vp_Vn_1_V_P <= Vp_Vn_v_p;
  ac_bclk(0) <= axi_i2s_adi_0_BCLK_O(0);
  ac_iic_scl_o <= processing_system7_0_IIC_1_SCL_O;
  ac_iic_scl_t <= processing_system7_0_IIC_1_SCL_T;
  ac_iic_sda_o <= processing_system7_0_IIC_1_SDA_O;
  ac_iic_sda_t <= processing_system7_0_IIC_1_SDA_T;
  ac_mclk <= clk_wiz_0_clk_out1;
  ac_muten(0) <= xlconstant_1_dout(0);
  ac_pbdat(0) <= axi_i2s_adi_0_SDATA_O(0);
  ac_pblrc(0) <= axi_i2s_adi_0_LRCLK_O(0);
  ac_reclrc(0) <= axi_i2s_adi_0_LRCLK_O(0);
  axi_gpio_0_GPIO1_TRI_I(3 downto 0) <= leds_4bits_tri_i(3 downto 0);
  axi_gpio_0_GPIO2_TRI_I(3 downto 0) <= btns_4bits_tri_i(3 downto 0);
  axi_gpio_0_GPIO_TRI_I(3 downto 0) <= sws_4bits_tri_i(3 downto 0);
  axi_gpio_eth_GPIO_TRI_I(0) <= eth_rst_b_tri_i(0);
  axi_iic_0_IIC_SCL_I <= cam_iic_scl_i;
  axi_iic_0_IIC_SDA_I <= cam_iic_sda_i;
  cam_gpio(0) <= sensor_rst_gpio(0);
  cam_iic_scl_o <= axi_iic_0_IIC_SCL_O;
  cam_iic_scl_t <= axi_iic_0_IIC_SCL_T;
  cam_iic_sda_o <= axi_iic_0_IIC_SDA_O;
  cam_iic_sda_t <= axi_iic_0_IIC_SDA_T;
  dphy_1_CLK_HS_N <= dphy_clk_hs_n;
  dphy_1_CLK_HS_P <= dphy_clk_hs_p;
  dphy_1_CLK_LP_N <= dphy_clk_lp_n;
  dphy_1_CLK_LP_P <= dphy_clk_lp_p;
  dphy_1_DATA_HS_N(1 downto 0) <= dphy_data_hs_n(1 downto 0);
  dphy_1_DATA_HS_P(1 downto 0) <= dphy_data_hs_p(1 downto 0);
  dphy_1_DATA_LP_N(1 downto 0) <= dphy_data_lp_n(1 downto 0);
  dphy_1_DATA_LP_P(1 downto 0) <= dphy_data_lp_p(1 downto 0);
  dvi2rgb_1_DDC_SCL_I <= hdmi_in_ddc_scl_i;
  dvi2rgb_1_DDC_SDA_I <= hdmi_in_ddc_sda_i;
  eth_rst_b_tri_o(0) <= axi_gpio_eth_GPIO_TRI_O(0);
  eth_rst_b_tri_t(0) <= axi_gpio_eth_GPIO_TRI_T(0);
  hdmi_in_1_CLK_N <= hdmi_in_clk_n;
  hdmi_in_1_CLK_P <= hdmi_in_clk_p;
  hdmi_in_1_DATA_N(2 downto 0) <= hdmi_in_data_n(2 downto 0);
  hdmi_in_1_DATA_P(2 downto 0) <= hdmi_in_data_p(2 downto 0);
  hdmi_in_ddc_scl_o <= dvi2rgb_1_DDC_SCL_O;
  hdmi_in_ddc_scl_t <= dvi2rgb_1_DDC_SCL_T;
  hdmi_in_ddc_sda_o <= dvi2rgb_1_DDC_SDA_O;
  hdmi_in_ddc_sda_t <= dvi2rgb_1_DDC_SDA_T;
  hdmi_in_hpd(0) <= axi_gpio_0_gpio_io_o(0);
  hdmi_out_clk_n <= rgb2dvi_1_TMDS_CLK_N;
  hdmi_out_clk_p <= rgb2dvi_1_TMDS_CLK_P;
  hdmi_out_data_n(2 downto 0) <= rgb2dvi_1_TMDS_DATA_N(2 downto 0);
  hdmi_out_data_p(2 downto 0) <= rgb2dvi_1_TMDS_DATA_P(2 downto 0);
  hdmi_out_ddc_scl_o <= processing_system7_0_IIC_0_SCL_O;
  hdmi_out_ddc_scl_t <= processing_system7_0_IIC_0_SCL_T;
  hdmi_out_ddc_sda_o <= processing_system7_0_IIC_0_SDA_O;
  hdmi_out_ddc_sda_t <= processing_system7_0_IIC_0_SDA_T;
  leds_4bits_tri_o(3 downto 0) <= axi_gpio_0_GPIO1_TRI_O(3 downto 0);
  leds_4bits_tri_t(3 downto 0) <= axi_gpio_0_GPIO1_TRI_T(3 downto 0);
  processing_system7_0_IIC_0_SCL_I <= hdmi_out_ddc_scl_i;
  processing_system7_0_IIC_0_SDA_I <= hdmi_out_ddc_sda_i;
  processing_system7_0_IIC_1_SCL_I <= ac_iic_scl_i;
  processing_system7_0_IIC_1_SDA_I <= ac_iic_sda_i;
  sys_clock_1 <= sys_clock;
PS_GPIO_0: component system_xlslice_0_0
     port map (
      Din(63 downto 0) => processing_system7_0_GPIO_O(63 downto 0),
      Dout(0) => dma_rst_gpio(0)
    );
PS_GPIO_2: component system_PS_GPIO_0_0
     port map (
      Din(63 downto 0) => processing_system7_0_GPIO_O(63 downto 0),
      Dout(0) => sensor_rst_gpio(0)
    );
PS_GPIO_3: component system_PS_GPIO_2_0
     port map (
      Din(63 downto 0) => processing_system7_0_GPIO_O(63 downto 0),
      Dout(0) => csi2_rst_gpio(0)
    );
axi_data_fifo_0: component system_axi_data_fifo_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => dma_rst_gpio(0),
      m_axi_araddr(31 downto 0) => axi_data_fifo_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_data_fifo_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_data_fifo_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_data_fifo_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_data_fifo_0_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => axi_data_fifo_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_data_fifo_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_data_fifo_0_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_data_fifo_0_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_data_fifo_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_data_fifo_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_data_fifo_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_data_fifo_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_data_fifo_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_data_fifo_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_data_fifo_0_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => axi_data_fifo_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_data_fifo_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_data_fifo_0_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_data_fifo_0_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_data_fifo_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_data_fifo_0_M_AXI_AWVALID,
      m_axi_bready => axi_data_fifo_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_data_fifo_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_data_fifo_0_M_AXI_BVALID,
      m_axi_rdata(63 downto 0) => axi_data_fifo_0_M_AXI_RDATA(63 downto 0),
      m_axi_rlast => axi_data_fifo_0_M_AXI_RLAST,
      m_axi_rready => axi_data_fifo_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_data_fifo_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_data_fifo_0_M_AXI_RVALID,
      m_axi_wdata(63 downto 0) => axi_data_fifo_0_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => axi_data_fifo_0_M_AXI_WLAST,
      m_axi_wready => axi_data_fifo_0_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => axi_data_fifo_0_M_AXI_WSTRB(7 downto 0),
      m_axi_wvalid => axi_data_fifo_0_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARLEN(7 downto 0),
      s_axi_arlock(0) => v_frmbuf_wr_0_m_axi_mm_video_ARLOCK(0),
      s_axi_arprot(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARQOS(3 downto 0),
      s_axi_arready => v_frmbuf_wr_0_m_axi_mm_video_ARREADY,
      s_axi_arregion(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARSIZE(2 downto 0),
      s_axi_arvalid => v_frmbuf_wr_0_m_axi_mm_video_ARVALID,
      s_axi_awaddr(31 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWLEN(7 downto 0),
      s_axi_awlock(0) => v_frmbuf_wr_0_m_axi_mm_video_AWLOCK(0),
      s_axi_awprot(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWQOS(3 downto 0),
      s_axi_awready => v_frmbuf_wr_0_m_axi_mm_video_AWREADY,
      s_axi_awregion(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWSIZE(2 downto 0),
      s_axi_awvalid => v_frmbuf_wr_0_m_axi_mm_video_AWVALID,
      s_axi_bready => v_frmbuf_wr_0_m_axi_mm_video_BREADY,
      s_axi_bresp(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_BRESP(1 downto 0),
      s_axi_bvalid => v_frmbuf_wr_0_m_axi_mm_video_BVALID,
      s_axi_rdata(63 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_RDATA(63 downto 0),
      s_axi_rlast => v_frmbuf_wr_0_m_axi_mm_video_RLAST,
      s_axi_rready => v_frmbuf_wr_0_m_axi_mm_video_RREADY,
      s_axi_rresp(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_RRESP(1 downto 0),
      s_axi_rvalid => v_frmbuf_wr_0_m_axi_mm_video_RVALID,
      s_axi_wdata(63 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_WDATA(63 downto 0),
      s_axi_wlast => v_frmbuf_wr_0_m_axi_mm_video_WLAST,
      s_axi_wready => v_frmbuf_wr_0_m_axi_mm_video_WREADY,
      s_axi_wstrb(7 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_WSTRB(7 downto 0),
      s_axi_wvalid => v_frmbuf_wr_0_m_axi_mm_video_WVALID
    );
axi_dynclk_0: component system_axi_dynclk_0_0
     port map (
      LOCKED_O => axi_dynclk_0_LOCKED_O,
      PXL_CLK_5X_O => axi_dynclk_0_PXL_CLK_5X_O,
      PXL_CLK_O => axi_dynclk_0_PXL_CLK_O,
      REF_CLK_I => processing_system7_0_FCLK_CLK0,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(4 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(4 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      s00_axi_awaddr(4 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(4 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M03_AXI_WVALID
    );
axi_gpio_eth: component system_axi_gpio_eth_0
     port map (
      gpio_io_i(0) => axi_gpio_eth_GPIO_TRI_I(0),
      gpio_io_o(0) => axi_gpio_eth_GPIO_TRI_O(0),
      gpio_io_t(0) => axi_gpio_eth_GPIO_TRI_T(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_GP0_M11_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_GP0_M11_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_GP0_M11_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_GP0_M11_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_GP0_M11_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_GP0_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_GP0_M11_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_GP0_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_GP0_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_GP0_M11_AXI_WVALID(0)
    );
axi_gpio_led: component system_axi_gpio_led_0
     port map (
      gpio_io_i(3 downto 0) => axi_gpio_0_GPIO1_TRI_I(3 downto 0),
      gpio_io_o(3 downto 0) => axi_gpio_0_GPIO1_TRI_O(3 downto 0),
      gpio_io_t(3 downto 0) => axi_gpio_0_GPIO1_TRI_T(3 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_GP0_M07_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_GP0_M07_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_GP0_M07_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_GP0_M07_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_GP0_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_GP0_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_GP0_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_GP0_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_GP0_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_GP0_M07_AXI_WVALID(0)
    );
axi_gpio_sw_btn: component system_axi_gpio_sw_btn_0
     port map (
      gpio2_io_i(3 downto 0) => axi_gpio_0_GPIO2_TRI_I(3 downto 0),
      gpio_io_i(3 downto 0) => axi_gpio_0_GPIO_TRI_I(3 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_GP0_M06_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_GP0_M06_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_GP0_M06_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_GP0_M06_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_GP0_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_GP0_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_GP0_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_GP0_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_GP0_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_GP0_M06_AXI_WVALID(0)
    );
axi_gpio_video: component system_axi_gpio_video_0
     port map (
      gpio2_io_i(0) => dvi2rgb_1_aPixelClkLckd,
      gpio_io_o(0) => axi_gpio_0_gpio_io_o(0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_GP0_M04_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_GP0_M04_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_GP0_M04_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_GP0_M04_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_GP0_M04_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_GP0_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_GP0_M04_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_GP0_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_GP0_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_GP0_M04_AXI_WVALID(0)
    );
axi_i2s_adi_0: component system_axi_i2s_adi_0_0
     port map (
      BCLK_O(0) => axi_i2s_adi_0_BCLK_O(0),
      DATA_CLK_I => clk_wiz_0_clk_out1,
      DMA_REQ_RX_ACLK => processing_system7_0_FCLK_CLK0,
      DMA_REQ_RX_DAREADY => processing_system7_0_DMA1_ACK_TREADY,
      DMA_REQ_RX_DATYPE(1 downto 0) => processing_system7_0_DMA1_ACK_TUSER(1 downto 0),
      DMA_REQ_RX_DAVALID => processing_system7_0_DMA1_ACK_TVALID,
      DMA_REQ_RX_DRLAST => axi_i2s_adi_0_DMA_REQ_RX_TLAST,
      DMA_REQ_RX_DRREADY => axi_i2s_adi_0_DMA_REQ_RX_TREADY,
      DMA_REQ_RX_DRTYPE(1 downto 0) => axi_i2s_adi_0_DMA_REQ_RX_TUSER(1 downto 0),
      DMA_REQ_RX_DRVALID => axi_i2s_adi_0_DMA_REQ_RX_TVALID,
      DMA_REQ_RX_RSTN => rst_ps7_0_100M_peripheral_aresetn(0),
      DMA_REQ_TX_ACLK => processing_system7_0_FCLK_CLK0,
      DMA_REQ_TX_DAREADY => processing_system7_0_DMA0_ACK_TREADY,
      DMA_REQ_TX_DATYPE(1 downto 0) => processing_system7_0_DMA0_ACK_TUSER(1 downto 0),
      DMA_REQ_TX_DAVALID => processing_system7_0_DMA0_ACK_TVALID,
      DMA_REQ_TX_DRLAST => axi_i2s_adi_0_DMA_REQ_TX_TLAST,
      DMA_REQ_TX_DRREADY => axi_i2s_adi_0_DMA_REQ_TX_TREADY,
      DMA_REQ_TX_DRTYPE(1 downto 0) => axi_i2s_adi_0_DMA_REQ_TX_TUSER(1 downto 0),
      DMA_REQ_TX_DRVALID => axi_i2s_adi_0_DMA_REQ_TX_TVALID,
      DMA_REQ_TX_RSTN => rst_ps7_0_100M_peripheral_aresetn(0),
      LRCLK_O(0) => axi_i2s_adi_0_LRCLK_O(0),
      SDATA_I(0) => SDATA_I_1(0),
      SDATA_O(0) => axi_i2s_adi_0_SDATA_O(0),
      S_AXI_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_ARADDR(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_ARADDR(31 downto 0),
      S_AXI_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S_AXI_ARREADY => ps7_0_axi_periph_GP0_M09_AXI_ARREADY,
      S_AXI_ARVALID => ps7_0_axi_periph_GP0_M09_AXI_ARVALID,
      S_AXI_AWADDR(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_AWADDR(31 downto 0),
      S_AXI_AWREADY => ps7_0_axi_periph_GP0_M09_AXI_AWREADY,
      S_AXI_AWVALID => ps7_0_axi_periph_GP0_M09_AXI_AWVALID,
      S_AXI_BREADY => ps7_0_axi_periph_GP0_M09_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => ps7_0_axi_periph_GP0_M09_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => ps7_0_axi_periph_GP0_M09_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => ps7_0_axi_periph_GP0_M09_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => ps7_0_axi_periph_GP0_M09_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => ps7_0_axi_periph_GP0_M09_AXI_WVALID
    );
axi_iic_0: component system_axi_iic_0_0
     port map (
      gpo(0) => NLW_axi_iic_0_gpo_UNCONNECTED(0),
      iic2intc_irpt => axi_iic_0_iic2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_GP0_M14_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_GP0_M14_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_GP0_M14_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_GP0_M14_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_GP0_M14_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_GP0_M14_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_GP0_M14_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_GP0_M14_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_GP0_M14_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_GP0_M14_AXI_WVALID(0),
      scl_i => axi_iic_0_IIC_SCL_I,
      scl_o => axi_iic_0_IIC_SCL_O,
      scl_t => axi_iic_0_IIC_SCL_T,
      sda_i => axi_iic_0_IIC_SDA_I,
      sda_o => axi_iic_0_IIC_SDA_O,
      sda_t => axi_iic_0_IIC_SDA_T
    );
axi_mem_intercon: entity work.system_axi_mem_intercon_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI1_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI1_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI1_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_mem_intercon_M00_AXI1_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_mem_intercon_M00_AXI1_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI1_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI1_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI1_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI1_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI1_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI1_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI1_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI1_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_mem_intercon_M00_AXI1_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_mem_intercon_M00_AXI1_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI1_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI1_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI1_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI1_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI1_AWVALID,
      M00_AXI_bready => axi_mem_intercon_M00_AXI1_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI1_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI1_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_mem_intercon_M00_AXI1_RDATA(63 downto 0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI1_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI1_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI1_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI1_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_mem_intercon_M00_AXI1_WDATA(63 downto 0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI1_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI1_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_mem_intercon_M00_AXI1_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI1_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_data_fifo_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_data_fifo_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_data_fifo_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_data_fifo_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_data_fifo_0_M_AXI_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => axi_data_fifo_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_data_fifo_0_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_data_fifo_0_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_data_fifo_0_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_data_fifo_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_data_fifo_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_data_fifo_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_data_fifo_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_data_fifo_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_data_fifo_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_data_fifo_0_M_AXI_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => axi_data_fifo_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_data_fifo_0_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_data_fifo_0_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_data_fifo_0_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_data_fifo_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_data_fifo_0_M_AXI_AWVALID,
      S00_AXI_bready => axi_data_fifo_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_data_fifo_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_data_fifo_0_M_AXI_BVALID,
      S00_AXI_rdata(63 downto 0) => axi_data_fifo_0_M_AXI_RDATA(63 downto 0),
      S00_AXI_rlast => axi_data_fifo_0_M_AXI_RLAST,
      S00_AXI_rready => axi_data_fifo_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_data_fifo_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_data_fifo_0_M_AXI_RVALID,
      S00_AXI_wdata(63 downto 0) => axi_data_fifo_0_M_AXI_WDATA(63 downto 0),
      S00_AXI_wlast => axi_data_fifo_0_M_AXI_WLAST,
      S00_AXI_wready => axi_data_fifo_0_M_AXI_WREADY,
      S00_AXI_wstrb(7 downto 0) => axi_data_fifo_0_M_AXI_WSTRB(7 downto 0),
      S00_AXI_wvalid => axi_data_fifo_0_M_AXI_WVALID
    );
axi_mem_intercon_HP0: entity work.system_axi_mem_intercon_HP0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK1(0),
      ARESETN => rst_ps7_0_133M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK1(0),
      M00_ARESETN => rst_ps7_0_133M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_mem_intercon_M00_AXI_ARID(0),
      M00_AXI_arlen(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_mem_intercon_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_mem_intercon_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_mem_intercon_M00_AXI_AWID(0),
      M00_AXI_awlen(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_mem_intercon_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_mem_intercon_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_mem_intercon_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_mem_intercon_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rid(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_mem_intercon_M00_AXI_RLAST,
      M00_AXI_rready => axi_mem_intercon_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_mem_intercon_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wid(0) => axi_mem_intercon_M00_AXI_WID(0),
      M00_AXI_wlast => axi_mem_intercon_M00_AXI_WLAST,
      M00_AXI_wready => axi_mem_intercon_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_mem_intercon_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK1(0),
      S00_ARESETN => rst_ps7_0_133M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_vdma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vdma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vdma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vdma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arready => axi_vdma_1_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vdma_1_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(63 downto 0) => axi_vdma_1_M_AXI_MM2S_RDATA(63 downto 0),
      S00_AXI_rlast => axi_vdma_1_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_vdma_1_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vdma_1_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vdma_1_M_AXI_MM2S_RVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK1(0),
      S01_ARESETN => rst_ps7_0_133M_peripheral_aresetn(0),
      S01_AXI_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      S01_AXI_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      S01_AXI_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID
    );
axi_vdma_0: component system_axi_vdma_0_0
     port map (
      axi_resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK1(0),
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      m_axi_s2mm_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      s2mm_frame_ptr_in(5 downto 0) => B"000000",
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => axi_vdma_0_s2mm_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_lite_bready => ps7_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M00_AXI_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK1(0),
      s_axis_s2mm_tdata(23 downto 0) => axis_subset_converter_in_M_AXIS_TDATA(23 downto 0),
      s_axis_s2mm_tkeep(2 downto 0) => B"111",
      s_axis_s2mm_tlast => axis_subset_converter_in_M_AXIS_TLAST,
      s_axis_s2mm_tready => axis_subset_converter_in_M_AXIS_TREADY,
      s_axis_s2mm_tuser(0) => axis_subset_converter_in_M_AXIS_TUSER(0),
      s_axis_s2mm_tvalid => axis_subset_converter_in_M_AXIS_TVALID
    );
axi_vdma_1: component system_axi_vdma_1_0
     port map (
      axi_resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK1(0),
      m_axi_mm2s_araddr(31 downto 0) => axi_vdma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_vdma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_vdma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_vdma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_vdma_1_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_vdma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_vdma_1_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(63 downto 0) => axi_vdma_1_M_AXI_MM2S_RDATA(63 downto 0),
      m_axi_mm2s_rlast => axi_vdma_1_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_vdma_1_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_vdma_1_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_vdma_1_M_AXI_MM2S_RVALID,
      m_axis_mm2s_aclk => processing_system7_0_FCLK_CLK1(0),
      m_axis_mm2s_tdata(23 downto 0) => axi_vdma_1_M_AXIS_MM2S_TDATA(23 downto 0),
      m_axis_mm2s_tkeep(2 downto 0) => axi_vdma_1_M_AXIS_MM2S_TKEEP(2 downto 0),
      m_axis_mm2s_tlast => axi_vdma_1_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_vdma_1_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => axi_vdma_1_M_AXIS_MM2S_TUSER(0),
      m_axis_mm2s_tvalid => axi_vdma_1_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_in(5 downto 0) => B"000000",
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_1_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => axi_vdma_1_mm2s_introut,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_GP0_M05_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_GP0_M05_AXI_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_GP0_M05_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_GP0_M05_AXI_AWVALID(0),
      s_axi_lite_bready => ps7_0_axi_periph_GP0_M05_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_GP0_M05_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_GP0_M05_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_GP0_M05_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_GP0_M05_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_GP0_M05_AXI_WVALID(0)
    );
axis_subset_converter_0: component system_axis_subset_converter_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => dma_rst_gpio(0),
      m_axis_tdata(23 downto 0) => axis_subset_converter_0_M_AXIS_TDATA(23 downto 0),
      m_axis_tdest(7 downto 0) => axis_subset_converter_0_M_AXIS_TDEST(7 downto 0),
      m_axis_tlast => axis_subset_converter_0_M_AXIS_TLAST,
      m_axis_tready => axis_subset_converter_0_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_subset_converter_0_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_subset_converter_0_M_AXIS_TVALID,
      s_axis_tdata(15 downto 0) => mipi_csi2_rx_subsystem_0_video_out_TDATA(15 downto 0),
      s_axis_tdest(7 downto 0) => mipi_csi2_rx_subsystem_0_video_out_TDEST(7 downto 0),
      s_axis_tlast => mipi_csi2_rx_subsystem_0_video_out_TLAST,
      s_axis_tready => mipi_csi2_rx_subsystem_0_video_out_TREADY,
      s_axis_tuser(0) => mipi_csi2_rx_subsystem_0_video_out_TUSER(0),
      s_axis_tvalid => mipi_csi2_rx_subsystem_0_video_out_TVALID
    );
axis_subset_converter_in: component system_axis_subset_converter_in_0
     port map (
      aclk => processing_system7_0_FCLK_CLK1(0),
      aresetn => xlconstant_0_dout(0),
      m_axis_tdata(23 downto 0) => axis_subset_converter_in_M_AXIS_TDATA(23 downto 0),
      m_axis_tlast => axis_subset_converter_in_M_AXIS_TLAST,
      m_axis_tready => axis_subset_converter_in_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_subset_converter_in_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_subset_converter_in_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(23 downto 0),
      s_axis_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      s_axis_tready => v_vid_in_axi4s_0_video_out_TREADY,
      s_axis_tuser(0) => v_vid_in_axi4s_0_video_out_TUSER,
      s_axis_tvalid => v_vid_in_axi4s_0_video_out_TVALID
    );
axis_subset_converter_out: component system_axis_subset_converter_out_0
     port map (
      aclk => processing_system7_0_FCLK_CLK1(0),
      aresetn => xlconstant_0_dout(0),
      m_axis_tdata(23 downto 0) => axis_subset_converter_out_M_AXIS_TDATA(23 downto 0),
      m_axis_tkeep(2 downto 0) => NLW_axis_subset_converter_out_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => axis_subset_converter_out_M_AXIS_TLAST,
      m_axis_tready => axis_subset_converter_out_M_AXIS_TREADY,
      m_axis_tuser(0) => axis_subset_converter_out_M_AXIS_TUSER(0),
      m_axis_tvalid => axis_subset_converter_out_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => axi_vdma_1_M_AXIS_MM2S_TDATA(23 downto 0),
      s_axis_tkeep(2 downto 0) => axi_vdma_1_M_AXIS_MM2S_TKEEP(2 downto 0),
      s_axis_tlast => axi_vdma_1_M_AXIS_MM2S_TLAST,
      s_axis_tready => axi_vdma_1_M_AXIS_MM2S_TREADY,
      s_axis_tuser(0) => axi_vdma_1_M_AXIS_MM2S_TUSER(0),
      s_axis_tvalid => axi_vdma_1_M_AXIS_MM2S_TVALID
    );
clk_wiz_0: component system_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2
    );
dvi2rgb_1: component system_dvi2rgb_1_0
     port map (
      PixelClk => dvi2rgb_1_PixelClk,
      RefClk => processing_system7_0_FCLK_CLK2,
      SCL_I => dvi2rgb_1_DDC_SCL_I,
      SCL_O => dvi2rgb_1_DDC_SCL_O,
      SCL_T => dvi2rgb_1_DDC_SCL_T,
      SDA_I => dvi2rgb_1_DDC_SDA_I,
      SDA_O => dvi2rgb_1_DDC_SDA_O,
      SDA_T => dvi2rgb_1_DDC_SDA_T,
      TMDS_Clk_n => hdmi_in_1_CLK_N,
      TMDS_Clk_p => hdmi_in_1_CLK_P,
      TMDS_Data_n(2 downto 0) => hdmi_in_1_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => hdmi_in_1_DATA_P(2 downto 0),
      aPixelClkLckd => dvi2rgb_1_aPixelClkLckd,
      aRst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      pRst_n => '1',
      vid_pData(23 downto 0) => dvi2rgb_1_RGB_DATA(23 downto 0),
      vid_pHSync => dvi2rgb_1_RGB_HSYNC,
      vid_pVDE => dvi2rgb_1_RGB_ACTIVE_VIDEO,
      vid_pVSync => dvi2rgb_1_RGB_VSYNC
    );
mipi_csi2_rx_subsystem_0: component system_mipi_csi2_rx_subsystem_0_1
     port map (
      csirxss_csi_irq => mipi_csi2_rx_subsystem_0_csirxss_csi_irq,
      csirxss_s_axi_araddr(16 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_ARADDR(16 downto 0),
      csirxss_s_axi_arprot(2 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_ARPROT(2 downto 0),
      csirxss_s_axi_arready(0) => ps7_0_axi_periph_GP0_M12_AXI_ARREADY(0),
      csirxss_s_axi_arvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_ARVALID(0),
      csirxss_s_axi_awaddr(16 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_AWADDR(16 downto 0),
      csirxss_s_axi_awprot(2 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_AWPROT(2 downto 0),
      csirxss_s_axi_awready(0) => ps7_0_axi_periph_GP0_M12_AXI_AWREADY(0),
      csirxss_s_axi_awvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_AWVALID(0),
      csirxss_s_axi_bready(0) => ps7_0_axi_periph_GP0_M12_AXI_BREADY(0),
      csirxss_s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_BRESP(1 downto 0),
      csirxss_s_axi_bvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_BVALID(0),
      csirxss_s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_RDATA(31 downto 0),
      csirxss_s_axi_rready(0) => ps7_0_axi_periph_GP0_M12_AXI_RREADY(0),
      csirxss_s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_RRESP(1 downto 0),
      csirxss_s_axi_rvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_RVALID(0),
      csirxss_s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_WDATA(31 downto 0),
      csirxss_s_axi_wready(0) => ps7_0_axi_periph_GP0_M12_AXI_WREADY(0),
      csirxss_s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_WSTRB(3 downto 0),
      csirxss_s_axi_wvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_WVALID(0),
      dlyctrl_rdy_out => NLW_mipi_csi2_rx_subsystem_0_dlyctrl_rdy_out_UNCONNECTED,
      dphy_clk_200M => clk_wiz_0_clk_out2,
      lite_aclk => processing_system7_0_FCLK_CLK0,
      lite_aresetn => rst_ps7_0_100M_interconnect_aresetn(0),
      mipi_phy_if_clk_hs_n => dphy_1_CLK_HS_N,
      mipi_phy_if_clk_hs_p => dphy_1_CLK_HS_P,
      mipi_phy_if_clk_lp_n => dphy_1_CLK_LP_N,
      mipi_phy_if_clk_lp_p => dphy_1_CLK_LP_P,
      mipi_phy_if_data_hs_n(1 downto 0) => dphy_1_DATA_HS_N(1 downto 0),
      mipi_phy_if_data_hs_p(1 downto 0) => dphy_1_DATA_HS_P(1 downto 0),
      mipi_phy_if_data_lp_n(1 downto 0) => dphy_1_DATA_LP_N(1 downto 0),
      mipi_phy_if_data_lp_p(1 downto 0) => dphy_1_DATA_LP_P(1 downto 0),
      rxbyteclkhs => NLW_mipi_csi2_rx_subsystem_0_rxbyteclkhs_UNCONNECTED,
      system_rst_out => NLW_mipi_csi2_rx_subsystem_0_system_rst_out_UNCONNECTED,
      video_aclk => processing_system7_0_FCLK_CLK0,
      video_aresetn => csi2_rst_gpio(0),
      video_out_tdata(15 downto 0) => mipi_csi2_rx_subsystem_0_video_out_TDATA(15 downto 0),
      video_out_tdest(7 downto 0) => mipi_csi2_rx_subsystem_0_video_out_TDEST(7 downto 0),
      video_out_tlast => mipi_csi2_rx_subsystem_0_video_out_TLAST,
      video_out_tready => mipi_csi2_rx_subsystem_0_video_out_TREADY,
      video_out_tuser(0) => mipi_csi2_rx_subsystem_0_video_out_TUSER(0),
      video_out_tvalid => mipi_csi2_rx_subsystem_0_video_out_TVALID
    );
proc_sys_reset_0: component system_proc_sys_reset_0_0
     port map (
      aux_reset_in => dvi2rgb_1_aPixelClkLckd,
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset(0),
      slowest_sync_clk => dvi2rgb_1_PixelClk
    );
processing_system7_0: component system_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      DMA0_ACLK => processing_system7_0_FCLK_CLK0,
      DMA0_DAREADY => processing_system7_0_DMA0_ACK_TREADY,
      DMA0_DATYPE(1 downto 0) => processing_system7_0_DMA0_ACK_TUSER(1 downto 0),
      DMA0_DAVALID => processing_system7_0_DMA0_ACK_TVALID,
      DMA0_DRLAST => axi_i2s_adi_0_DMA_REQ_TX_TLAST,
      DMA0_DRREADY => axi_i2s_adi_0_DMA_REQ_TX_TREADY,
      DMA0_DRTYPE(1 downto 0) => axi_i2s_adi_0_DMA_REQ_TX_TUSER(1 downto 0),
      DMA0_DRVALID => axi_i2s_adi_0_DMA_REQ_TX_TVALID,
      DMA1_ACLK => processing_system7_0_FCLK_CLK0,
      DMA1_DAREADY => processing_system7_0_DMA1_ACK_TREADY,
      DMA1_DATYPE(1 downto 0) => processing_system7_0_DMA1_ACK_TUSER(1 downto 0),
      DMA1_DAVALID => processing_system7_0_DMA1_ACK_TVALID,
      DMA1_DRLAST => axi_i2s_adi_0_DMA_REQ_RX_TLAST,
      DMA1_DRREADY => axi_i2s_adi_0_DMA_REQ_RX_TREADY,
      DMA1_DRTYPE(1 downto 0) => axi_i2s_adi_0_DMA_REQ_RX_TUSER(1 downto 0),
      DMA1_DRVALID => axi_i2s_adi_0_DMA_REQ_RX_TVALID,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK3,
      FCLK_CLK2 => processing_system7_0_FCLK_CLK2,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      GPIO_I(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      GPIO_O(63 downto 0) => processing_system7_0_GPIO_O(63 downto 0),
      GPIO_T(63 downto 0) => NLW_processing_system7_0_GPIO_T_UNCONNECTED(63 downto 0),
      I2C0_SCL_I => processing_system7_0_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_0_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_0_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_0_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_0_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_0_IIC_0_SDA_T,
      I2C1_SCL_I => processing_system7_0_IIC_1_SCL_I,
      I2C1_SCL_O => processing_system7_0_IIC_1_SCL_O,
      I2C1_SCL_T => processing_system7_0_IIC_1_SCL_T,
      I2C1_SDA_I => processing_system7_0_IIC_1_SDA_I,
      I2C1_SDA_O => processing_system7_0_IIC_1_SDA_O,
      I2C1_SDA_T => processing_system7_0_IIC_1_SDA_T,
      IRQ_F2P(8 downto 0) => xlconcat_0_dout(8 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK1(0),
      S_AXI_HP0_ARADDR(31 downto 0) => axi_mem_intercon_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_mem_intercon_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_mem_intercon_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 1) => B"00000",
      S_AXI_HP0_ARID(0) => axi_mem_intercon_M00_AXI_ARID(0),
      S_AXI_HP0_ARLEN(3 downto 0) => axi_mem_intercon_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_mem_intercon_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_mem_intercon_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_mem_intercon_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_mem_intercon_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_mem_intercon_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_mem_intercon_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_mem_intercon_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_mem_intercon_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_mem_intercon_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 1) => B"00000",
      S_AXI_HP0_AWID(0) => axi_mem_intercon_M00_AXI_AWID(0),
      S_AXI_HP0_AWLEN(3 downto 0) => axi_mem_intercon_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_mem_intercon_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_mem_intercon_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_mem_intercon_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_mem_intercon_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_mem_intercon_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_mem_intercon_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => axi_mem_intercon_M00_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => axi_mem_intercon_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_mem_intercon_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_mem_intercon_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_mem_intercon_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => axi_mem_intercon_M00_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => axi_mem_intercon_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_mem_intercon_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_mem_intercon_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_mem_intercon_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_mem_intercon_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 1) => B"00000",
      S_AXI_HP0_WID(0) => axi_mem_intercon_M00_AXI_WID(0),
      S_AXI_HP0_WLAST => axi_mem_intercon_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_mem_intercon_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_mem_intercon_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_mem_intercon_M00_AXI_WVALID,
      S_AXI_HP1_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP1_ARADDR(31 downto 0) => axi_mem_intercon_M00_AXI1_ARADDR(31 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => axi_mem_intercon_M00_AXI1_ARBURST(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => axi_mem_intercon_M00_AXI1_ARCACHE(3 downto 0),
      S_AXI_HP1_ARID(5 downto 0) => B"000000",
      S_AXI_HP1_ARLEN(3 downto 0) => axi_mem_intercon_M00_AXI1_ARLEN(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => axi_mem_intercon_M00_AXI1_ARLOCK(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => axi_mem_intercon_M00_AXI1_ARPROT(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => axi_mem_intercon_M00_AXI1_ARQOS(3 downto 0),
      S_AXI_HP1_ARREADY => axi_mem_intercon_M00_AXI1_ARREADY,
      S_AXI_HP1_ARSIZE(2 downto 0) => axi_mem_intercon_M00_AXI1_ARSIZE(2 downto 0),
      S_AXI_HP1_ARVALID => axi_mem_intercon_M00_AXI1_ARVALID,
      S_AXI_HP1_AWADDR(31 downto 0) => axi_mem_intercon_M00_AXI1_AWADDR(31 downto 0),
      S_AXI_HP1_AWBURST(1 downto 0) => axi_mem_intercon_M00_AXI1_AWBURST(1 downto 0),
      S_AXI_HP1_AWCACHE(3 downto 0) => axi_mem_intercon_M00_AXI1_AWCACHE(3 downto 0),
      S_AXI_HP1_AWID(5 downto 0) => B"000000",
      S_AXI_HP1_AWLEN(3 downto 0) => axi_mem_intercon_M00_AXI1_AWLEN(3 downto 0),
      S_AXI_HP1_AWLOCK(1 downto 0) => axi_mem_intercon_M00_AXI1_AWLOCK(1 downto 0),
      S_AXI_HP1_AWPROT(2 downto 0) => axi_mem_intercon_M00_AXI1_AWPROT(2 downto 0),
      S_AXI_HP1_AWQOS(3 downto 0) => axi_mem_intercon_M00_AXI1_AWQOS(3 downto 0),
      S_AXI_HP1_AWREADY => axi_mem_intercon_M00_AXI1_AWREADY,
      S_AXI_HP1_AWSIZE(2 downto 0) => axi_mem_intercon_M00_AXI1_AWSIZE(2 downto 0),
      S_AXI_HP1_AWVALID => axi_mem_intercon_M00_AXI1_AWVALID,
      S_AXI_HP1_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_BREADY => axi_mem_intercon_M00_AXI1_BREADY,
      S_AXI_HP1_BRESP(1 downto 0) => axi_mem_intercon_M00_AXI1_BRESP(1 downto 0),
      S_AXI_HP1_BVALID => axi_mem_intercon_M00_AXI1_BVALID,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(63 downto 0) => axi_mem_intercon_M00_AXI1_RDATA(63 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => '0',
      S_AXI_HP1_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_RLAST => axi_mem_intercon_M00_AXI1_RLAST,
      S_AXI_HP1_RREADY => axi_mem_intercon_M00_AXI1_RREADY,
      S_AXI_HP1_RRESP(1 downto 0) => axi_mem_intercon_M00_AXI1_RRESP(1 downto 0),
      S_AXI_HP1_RVALID => axi_mem_intercon_M00_AXI1_RVALID,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(63 downto 0) => axi_mem_intercon_M00_AXI1_WDATA(63 downto 0),
      S_AXI_HP1_WID(5 downto 0) => B"000000",
      S_AXI_HP1_WLAST => axi_mem_intercon_M00_AXI1_WLAST,
      S_AXI_HP1_WREADY => axi_mem_intercon_M00_AXI1_WREADY,
      S_AXI_HP1_WRISSUECAP1_EN => '0',
      S_AXI_HP1_WSTRB(7 downto 0) => axi_mem_intercon_M00_AXI1_WSTRB(7 downto 0),
      S_AXI_HP1_WVALID => axi_mem_intercon_M00_AXI1_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph_GP0: entity work.system_ps7_0_axi_periph_GP0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => ps7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => ps7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wvalid(0) => ps7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready(0) => ps7_0_axi_periph_GP0_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready(0) => ps7_0_axi_periph_GP0_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => ps7_0_axi_periph_GP0_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => ps7_0_axi_periph_GP0_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => ps7_0_axi_periph_GP0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M04_AXI_WVALID(0),
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready(0) => ps7_0_axi_periph_GP0_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready(0) => ps7_0_axi_periph_GP0_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => ps7_0_axi_periph_GP0_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => ps7_0_axi_periph_GP0_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => ps7_0_axi_periph_GP0_M05_AXI_WREADY,
      M05_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M05_AXI_WVALID(0),
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready(0) => ps7_0_axi_periph_GP0_M06_AXI_ARREADY,
      M06_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M06_AXI_ARVALID(0),
      M06_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready(0) => ps7_0_axi_periph_GP0_M06_AXI_AWREADY,
      M06_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M06_AXI_AWVALID(0),
      M06_AXI_bready(0) => ps7_0_axi_periph_GP0_M06_AXI_BREADY(0),
      M06_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready(0) => ps7_0_axi_periph_GP0_M06_AXI_RREADY(0),
      M06_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready(0) => ps7_0_axi_periph_GP0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M06_AXI_WVALID(0),
      M07_ACLK => processing_system7_0_FCLK_CLK0,
      M07_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready(0) => ps7_0_axi_periph_GP0_M07_AXI_ARREADY,
      M07_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M07_AXI_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready(0) => ps7_0_axi_periph_GP0_M07_AXI_AWREADY,
      M07_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M07_AXI_AWVALID(0),
      M07_AXI_bready(0) => ps7_0_axi_periph_GP0_M07_AXI_BREADY(0),
      M07_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready(0) => ps7_0_axi_periph_GP0_M07_AXI_RREADY(0),
      M07_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready(0) => ps7_0_axi_periph_GP0_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M07_AXI_WVALID(0),
      M08_ACLK => processing_system7_0_FCLK_CLK0,
      M08_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => NLW_ps7_0_axi_periph_GP0_M08_AXI_araddr_UNCONNECTED(31 downto 0),
      M08_AXI_arprot(2 downto 0) => NLW_ps7_0_axi_periph_GP0_M08_AXI_arprot_UNCONNECTED(2 downto 0),
      M08_AXI_arready => '0',
      M08_AXI_arvalid => NLW_ps7_0_axi_periph_GP0_M08_AXI_arvalid_UNCONNECTED,
      M08_AXI_awaddr(31 downto 0) => NLW_ps7_0_axi_periph_GP0_M08_AXI_awaddr_UNCONNECTED(31 downto 0),
      M08_AXI_awprot(2 downto 0) => NLW_ps7_0_axi_periph_GP0_M08_AXI_awprot_UNCONNECTED(2 downto 0),
      M08_AXI_awready => '0',
      M08_AXI_awvalid => NLW_ps7_0_axi_periph_GP0_M08_AXI_awvalid_UNCONNECTED,
      M08_AXI_bready => NLW_ps7_0_axi_periph_GP0_M08_AXI_bready_UNCONNECTED,
      M08_AXI_bresp(1 downto 0) => B"00",
      M08_AXI_bvalid => '0',
      M08_AXI_rdata(31 downto 0) => B"00000000000000000000000000000000",
      M08_AXI_rready => NLW_ps7_0_axi_periph_GP0_M08_AXI_rready_UNCONNECTED,
      M08_AXI_rresp(1 downto 0) => B"00",
      M08_AXI_rvalid => '0',
      M08_AXI_wdata(31 downto 0) => NLW_ps7_0_axi_periph_GP0_M08_AXI_wdata_UNCONNECTED(31 downto 0),
      M08_AXI_wready => '0',
      M08_AXI_wstrb(3 downto 0) => NLW_ps7_0_axi_periph_GP0_M08_AXI_wstrb_UNCONNECTED(3 downto 0),
      M08_AXI_wvalid => NLW_ps7_0_axi_periph_GP0_M08_AXI_wvalid_UNCONNECTED,
      M09_ACLK => processing_system7_0_FCLK_CLK0,
      M09_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arready => ps7_0_axi_periph_GP0_M09_AXI_ARREADY,
      M09_AXI_arvalid => ps7_0_axi_periph_GP0_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awready => ps7_0_axi_periph_GP0_M09_AXI_AWREADY,
      M09_AXI_awvalid => ps7_0_axi_periph_GP0_M09_AXI_AWVALID,
      M09_AXI_bready => ps7_0_axi_periph_GP0_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid => ps7_0_axi_periph_GP0_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready => ps7_0_axi_periph_GP0_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid => ps7_0_axi_periph_GP0_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready => ps7_0_axi_periph_GP0_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid => ps7_0_axi_periph_GP0_M09_AXI_WVALID,
      M10_ACLK => processing_system7_0_FCLK_CLK0,
      M10_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arready => ps7_0_axi_periph_GP0_M10_AXI_ARREADY,
      M10_AXI_arvalid => ps7_0_axi_periph_GP0_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awready => ps7_0_axi_periph_GP0_M10_AXI_AWREADY,
      M10_AXI_awvalid => ps7_0_axi_periph_GP0_M10_AXI_AWVALID,
      M10_AXI_bready => ps7_0_axi_periph_GP0_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid => ps7_0_axi_periph_GP0_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready => ps7_0_axi_periph_GP0_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid => ps7_0_axi_periph_GP0_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready => ps7_0_axi_periph_GP0_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid => ps7_0_axi_periph_GP0_M10_AXI_WVALID,
      M11_ACLK => processing_system7_0_FCLK_CLK0,
      M11_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready(0) => ps7_0_axi_periph_GP0_M11_AXI_ARREADY,
      M11_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M11_AXI_ARVALID(0),
      M11_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready(0) => ps7_0_axi_periph_GP0_M11_AXI_AWREADY,
      M11_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M11_AXI_AWVALID(0),
      M11_AXI_bready(0) => ps7_0_axi_periph_GP0_M11_AXI_BREADY(0),
      M11_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready(0) => ps7_0_axi_periph_GP0_M11_AXI_RREADY(0),
      M11_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready(0) => ps7_0_axi_periph_GP0_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M11_AXI_WVALID(0),
      M12_ACLK => processing_system7_0_FCLK_CLK0,
      M12_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M12_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_ARADDR(31 downto 0),
      M12_AXI_arprot(2 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_ARPROT(2 downto 0),
      M12_AXI_arready(0) => ps7_0_axi_periph_GP0_M12_AXI_ARREADY(0),
      M12_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_ARVALID(0),
      M12_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_AWADDR(31 downto 0),
      M12_AXI_awprot(2 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_AWPROT(2 downto 0),
      M12_AXI_awready(0) => ps7_0_axi_periph_GP0_M12_AXI_AWREADY(0),
      M12_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_AWVALID(0),
      M12_AXI_bready(0) => ps7_0_axi_periph_GP0_M12_AXI_BREADY(0),
      M12_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_BRESP(1 downto 0),
      M12_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_BVALID(0),
      M12_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_RDATA(31 downto 0),
      M12_AXI_rready(0) => ps7_0_axi_periph_GP0_M12_AXI_RREADY(0),
      M12_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_RRESP(1 downto 0),
      M12_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_RVALID(0),
      M12_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_WDATA(31 downto 0),
      M12_AXI_wready(0) => ps7_0_axi_periph_GP0_M12_AXI_WREADY(0),
      M12_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M12_AXI_WSTRB(3 downto 0),
      M12_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M12_AXI_WVALID(0),
      M13_ACLK => processing_system7_0_FCLK_CLK0,
      M13_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M13_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_ARADDR(31 downto 0),
      M13_AXI_arready => ps7_0_axi_periph_GP0_M13_AXI_ARREADY,
      M13_AXI_arvalid => ps7_0_axi_periph_GP0_M13_AXI_ARVALID,
      M13_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_AWADDR(31 downto 0),
      M13_AXI_awready => ps7_0_axi_periph_GP0_M13_AXI_AWREADY,
      M13_AXI_awvalid => ps7_0_axi_periph_GP0_M13_AXI_AWVALID,
      M13_AXI_bready => ps7_0_axi_periph_GP0_M13_AXI_BREADY,
      M13_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_BRESP(1 downto 0),
      M13_AXI_bvalid => ps7_0_axi_periph_GP0_M13_AXI_BVALID,
      M13_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_RDATA(31 downto 0),
      M13_AXI_rready => ps7_0_axi_periph_GP0_M13_AXI_RREADY,
      M13_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_RRESP(1 downto 0),
      M13_AXI_rvalid => ps7_0_axi_periph_GP0_M13_AXI_RVALID,
      M13_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_WDATA(31 downto 0),
      M13_AXI_wready => ps7_0_axi_periph_GP0_M13_AXI_WREADY,
      M13_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_WSTRB(3 downto 0),
      M13_AXI_wvalid => ps7_0_axi_periph_GP0_M13_AXI_WVALID,
      M14_ACLK => processing_system7_0_FCLK_CLK0,
      M14_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M14_AXI_araddr(31 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_ARADDR(31 downto 0),
      M14_AXI_arready(0) => ps7_0_axi_periph_GP0_M14_AXI_ARREADY,
      M14_AXI_arvalid(0) => ps7_0_axi_periph_GP0_M14_AXI_ARVALID(0),
      M14_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_AWADDR(31 downto 0),
      M14_AXI_awready(0) => ps7_0_axi_periph_GP0_M14_AXI_AWREADY,
      M14_AXI_awvalid(0) => ps7_0_axi_periph_GP0_M14_AXI_AWVALID(0),
      M14_AXI_bready(0) => ps7_0_axi_periph_GP0_M14_AXI_BREADY(0),
      M14_AXI_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_BRESP(1 downto 0),
      M14_AXI_bvalid(0) => ps7_0_axi_periph_GP0_M14_AXI_BVALID,
      M14_AXI_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_RDATA(31 downto 0),
      M14_AXI_rready(0) => ps7_0_axi_periph_GP0_M14_AXI_RREADY(0),
      M14_AXI_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_RRESP(1 downto 0),
      M14_AXI_rvalid(0) => ps7_0_axi_periph_GP0_M14_AXI_RVALID,
      M14_AXI_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_WDATA(31 downto 0),
      M14_AXI_wready(0) => ps7_0_axi_periph_GP0_M14_AXI_WREADY,
      M14_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M14_AXI_WSTRB(3 downto 0),
      M14_AXI_wvalid(0) => ps7_0_axi_periph_GP0_M14_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
rgb2dvi_1: component system_rgb2dvi_1_0
     port map (
      PixelClk => axi_dynclk_0_PXL_CLK_O,
      SerialClk => axi_dynclk_0_PXL_CLK_5X_O,
      TMDS_Clk_n => rgb2dvi_1_TMDS_CLK_N,
      TMDS_Clk_p => rgb2dvi_1_TMDS_CLK_P,
      TMDS_Data_n(2 downto 0) => rgb2dvi_1_TMDS_DATA_N(2 downto 0),
      TMDS_Data_p(2 downto 0) => rgb2dvi_1_TMDS_DATA_P(2 downto 0),
      aRst_n => axi_dynclk_0_LOCKED_O,
      vid_pData(23 downto 0) => v_axi4s_vid_out_0_vid_io_out_DATA(23 downto 0),
      vid_pHSync => v_axi4s_vid_out_0_vid_io_out_HSYNC,
      vid_pVDE => v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO,
      vid_pVSync => v_axi4s_vid_out_0_vid_io_out_VSYNC
    );
rst_ps7_0_100M: component system_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
rst_ps7_0_133M: component system_rst_ps7_0_133M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_133M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_133M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_133M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_133M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_133M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1(0)
    );
util_ds_buf_fclk1: component system_util_ds_buf_0_0
     port map (
      BUFG_I(0) => processing_system7_0_FCLK_CLK3,
      BUFG_O(0) => processing_system7_0_FCLK_CLK1(0)
    );
v_axi4s_vid_out_0: component system_v_axi4s_vid_out_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK1(0),
      aclken => '1',
      aresetn => xlconstant_0_dout(0),
      fid => '0',
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(23 downto 0) => axis_subset_converter_out_M_AXIS_TDATA(23 downto 0),
      s_axis_video_tlast => axis_subset_converter_out_M_AXIS_TLAST,
      s_axis_video_tready => axis_subset_converter_out_M_AXIS_TREADY,
      s_axis_video_tuser => axis_subset_converter_out_M_AXIS_TUSER(0),
      s_axis_video_tvalid => axis_subset_converter_out_M_AXIS_TVALID,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO,
      vid_data(23 downto 0) => v_axi4s_vid_out_0_vid_io_out_DATA(23 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED,
      vid_hsync => v_axi4s_vid_out_0_vid_io_out_HSYNC,
      vid_io_out_ce => '1',
      vid_io_out_clk => axi_dynclk_0_PXL_CLK_O,
      vid_io_out_reset => '0',
      vid_vblank => NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED,
      vid_vsync => v_axi4s_vid_out_0_vid_io_out_VSYNC,
      vtg_active_video => v_tc_1_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_0_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_1_vtiming_out_HBLANK,
      vtg_hsync => v_tc_1_vtiming_out_HSYNC,
      vtg_vblank => v_tc_1_vtiming_out_VBLANK,
      vtg_vsync => v_tc_1_vtiming_out_VSYNC
    );
v_frmbuf_wr_0: component system_v_frmbuf_wr_0_1
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_rst_n => rst_ps7_0_100M_peripheral_aresetn(0),
      interrupt => dma_irpt,
      m_axi_mm_video_ARADDR(31 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARADDR(31 downto 0),
      m_axi_mm_video_ARBURST(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARBURST(1 downto 0),
      m_axi_mm_video_ARCACHE(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARCACHE(3 downto 0),
      m_axi_mm_video_ARLEN(7 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARLEN(7 downto 0),
      m_axi_mm_video_ARLOCK(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARLOCK(1 downto 0),
      m_axi_mm_video_ARPROT(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARPROT(2 downto 0),
      m_axi_mm_video_ARQOS(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARQOS(3 downto 0),
      m_axi_mm_video_ARREADY => v_frmbuf_wr_0_m_axi_mm_video_ARREADY,
      m_axi_mm_video_ARREGION(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARREGION(3 downto 0),
      m_axi_mm_video_ARSIZE(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_ARSIZE(2 downto 0),
      m_axi_mm_video_ARVALID => v_frmbuf_wr_0_m_axi_mm_video_ARVALID,
      m_axi_mm_video_AWADDR(31 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWADDR(31 downto 0),
      m_axi_mm_video_AWBURST(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWBURST(1 downto 0),
      m_axi_mm_video_AWCACHE(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWCACHE(3 downto 0),
      m_axi_mm_video_AWLEN(7 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWLEN(7 downto 0),
      m_axi_mm_video_AWLOCK(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWLOCK(1 downto 0),
      m_axi_mm_video_AWPROT(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWPROT(2 downto 0),
      m_axi_mm_video_AWQOS(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWQOS(3 downto 0),
      m_axi_mm_video_AWREADY => v_frmbuf_wr_0_m_axi_mm_video_AWREADY,
      m_axi_mm_video_AWREGION(3 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWREGION(3 downto 0),
      m_axi_mm_video_AWSIZE(2 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_AWSIZE(2 downto 0),
      m_axi_mm_video_AWVALID => v_frmbuf_wr_0_m_axi_mm_video_AWVALID,
      m_axi_mm_video_BREADY => v_frmbuf_wr_0_m_axi_mm_video_BREADY,
      m_axi_mm_video_BRESP(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_BRESP(1 downto 0),
      m_axi_mm_video_BVALID => v_frmbuf_wr_0_m_axi_mm_video_BVALID,
      m_axi_mm_video_RDATA(63 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_RDATA(63 downto 0),
      m_axi_mm_video_RLAST => v_frmbuf_wr_0_m_axi_mm_video_RLAST,
      m_axi_mm_video_RREADY => v_frmbuf_wr_0_m_axi_mm_video_RREADY,
      m_axi_mm_video_RRESP(1 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_RRESP(1 downto 0),
      m_axi_mm_video_RVALID => v_frmbuf_wr_0_m_axi_mm_video_RVALID,
      m_axi_mm_video_WDATA(63 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_WDATA(63 downto 0),
      m_axi_mm_video_WLAST => v_frmbuf_wr_0_m_axi_mm_video_WLAST,
      m_axi_mm_video_WREADY => v_frmbuf_wr_0_m_axi_mm_video_WREADY,
      m_axi_mm_video_WSTRB(7 downto 0) => v_frmbuf_wr_0_m_axi_mm_video_WSTRB(7 downto 0),
      m_axi_mm_video_WVALID => v_frmbuf_wr_0_m_axi_mm_video_WVALID,
      s_axi_CTRL_ARADDR(6 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_ARADDR(6 downto 0),
      s_axi_CTRL_ARREADY => ps7_0_axi_periph_GP0_M13_AXI_ARREADY,
      s_axi_CTRL_ARVALID => ps7_0_axi_periph_GP0_M13_AXI_ARVALID,
      s_axi_CTRL_AWADDR(6 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_AWADDR(6 downto 0),
      s_axi_CTRL_AWREADY => ps7_0_axi_periph_GP0_M13_AXI_AWREADY,
      s_axi_CTRL_AWVALID => ps7_0_axi_periph_GP0_M13_AXI_AWVALID,
      s_axi_CTRL_BREADY => ps7_0_axi_periph_GP0_M13_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => ps7_0_axi_periph_GP0_M13_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => ps7_0_axi_periph_GP0_M13_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => ps7_0_axi_periph_GP0_M13_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => ps7_0_axi_periph_GP0_M13_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => ps7_0_axi_periph_GP0_M13_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => ps7_0_axi_periph_GP0_M13_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => axis_subset_converter_0_M_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST => axis_subset_converter_0_M_AXIS_TDEST(0),
      s_axis_video_TID => '0',
      s_axis_video_TKEEP(2 downto 0) => B"111",
      s_axis_video_TLAST => axis_subset_converter_0_M_AXIS_TLAST,
      s_axis_video_TREADY => axis_subset_converter_0_M_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => B"111",
      s_axis_video_TUSER => axis_subset_converter_0_M_AXIS_TUSER(0),
      s_axis_video_TVALID => axis_subset_converter_0_M_AXIS_TVALID
    );
v_tc_in: component system_v_tc_in_0
     port map (
      active_video_in => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      clk => dvi2rgb_1_PixelClk,
      clken => '1',
      det_clken => '1',
      hsync_in => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      intc_if(31 downto 0) => NLW_v_tc_in_intc_if_UNCONNECTED(31 downto 0),
      irq => v_tc_in_irq,
      resetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      vsync_in => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
v_tc_out: component system_v_tc_out_0
     port map (
      active_video_out => v_tc_1_vtiming_out_ACTIVE_VIDEO,
      clk => axi_dynclk_0_PXL_CLK_O,
      clken => '1',
      fsync_in => '0',
      fsync_out(0) => NLW_v_tc_out_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_0_vtg_ce,
      hblank_out => v_tc_1_vtiming_out_HBLANK,
      hsync_out => v_tc_1_vtiming_out_HSYNC,
      irq => v_tc_1_irq,
      resetn => '1',
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      vblank_out => v_tc_1_vtiming_out_VBLANK,
      vsync_out => v_tc_1_vtiming_out_VSYNC
    );
v_vid_in_axi4s_0: component system_v_vid_in_axi4s_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK1(0),
      aclken => '1',
      aresetn => xlconstant_0_dout(0),
      axis_enable => '1',
      fid => NLW_v_vid_in_axi4s_0_fid_UNCONNECTED,
      m_axis_video_tdata(23 downto 0) => v_vid_in_axi4s_0_video_out_TDATA(23 downto 0),
      m_axis_video_tlast => v_vid_in_axi4s_0_video_out_TLAST,
      m_axis_video_tready => v_vid_in_axi4s_0_video_out_TREADY,
      m_axis_video_tuser => v_vid_in_axi4s_0_video_out_TUSER,
      m_axis_video_tvalid => v_vid_in_axi4s_0_video_out_TVALID,
      overflow => NLW_v_vid_in_axi4s_0_overflow_UNCONNECTED,
      underflow => NLW_v_vid_in_axi4s_0_underflow_UNCONNECTED,
      vid_active_video => dvi2rgb_1_RGB_ACTIVE_VIDEO,
      vid_data(23 downto 0) => dvi2rgb_1_RGB_DATA(23 downto 0),
      vid_field_id => '0',
      vid_hblank => '0',
      vid_hsync => dvi2rgb_1_RGB_HSYNC,
      vid_io_in_ce => '1',
      vid_io_in_clk => dvi2rgb_1_PixelClk,
      vid_io_in_reset => proc_sys_reset_0_peripheral_reset(0),
      vid_vblank => '0',
      vid_vsync => dvi2rgb_1_RGB_VSYNC,
      vtd_active_video => v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO,
      vtd_field_id => NLW_v_vid_in_axi4s_0_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_0_vtd_hblank_UNCONNECTED,
      vtd_hsync => v_vid_in_axi4s_0_vtiming_out_HSYNC,
      vtd_vblank => NLW_v_vid_in_axi4s_0_vtd_vblank_UNCONNECTED,
      vtd_vsync => v_vid_in_axi4s_0_vtiming_out_VSYNC
    );
xadc_wiz_0: component system_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => xadc_wiz_0_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(10 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_GP0_M10_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_GP0_M10_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_AWADDR(10 downto 0),
      s_axi_awready => ps7_0_axi_periph_GP0_M10_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_GP0_M10_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_GP0_M10_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_GP0_M10_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_GP0_M10_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_GP0_M10_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_GP0_M10_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_GP0_M10_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_GP0_M10_AXI_WVALID,
      vauxn14 => Vaux14_1_V_N,
      vauxn15 => Vaux15_1_V_N,
      vauxn6 => Vaux6_1_V_N,
      vauxn7 => Vaux7_1_V_N,
      vauxp14 => Vaux14_1_V_P,
      vauxp15 => Vaux15_1_V_P,
      vauxp6 => Vaux6_1_V_P,
      vauxp7 => Vaux7_1_V_P,
      vn_in => Vp_Vn_1_V_N,
      vp_in => Vp_Vn_1_V_P
    );
xlconcat_0: component system_xlconcat_0_0
     port map (
      In0(0) => axi_vdma_1_mm2s_introut,
      In1(0) => axi_vdma_0_s2mm_introut,
      In2(0) => v_tc_1_irq,
      In3(0) => v_tc_in_irq,
      In4(0) => axi_gpio_0_ip2intc_irpt,
      In5(0) => xadc_wiz_0_ip2intc_irpt,
      In6(0) => mipi_csi2_rx_subsystem_0_csirxss_csi_irq,
      In7(0) => dma_irpt,
      In8(0) => axi_iic_0_iic2intc_irpt,
      dout(8 downto 0) => xlconcat_0_dout(8 downto 0)
    );
xlconstant_0: component system_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component system_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
