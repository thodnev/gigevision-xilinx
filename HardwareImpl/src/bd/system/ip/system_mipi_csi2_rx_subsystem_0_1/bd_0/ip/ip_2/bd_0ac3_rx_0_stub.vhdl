-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Feb  8 12:50:14 2019
-- Host        : maks-pc running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/maks/Documents/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/bd_0ac3_rx_0_stub.vhdl
-- Design      : bd_0ac3_rx_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0ac3_rx_0 is
  Port ( 
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

end bd_0ac3_rx_0;

architecture stub of bd_0ac3_rx_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[6:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,cl_stopstate,cl_enable,cl_rxulpsclknot,dl0_rxbyteclkhs,dl0_rxdatahs[7:0],dl0_rxvalidhs,dl0_rxactivehs,dl0_rxsynchs,dl0_stopstate,dl0_shutdown,dl0_rxulpmesc,dl0_errsoths,dl0_errsotsynchs,dl0_erresc,dl0_errcontrol,dl1_rxbyteclkhs,dl1_rxdatahs[7:0],dl1_rxvalidhs,dl1_rxactivehs,dl1_rxsynchs,dl1_stopstate,dl1_shutdown,dl1_rxulpmesc,dl1_errsoths,dl1_errsotsynchs,dl1_erresc,dl1_errcontrol,m_axis_aclk,m_axis_aresetn,m_axis_tready,m_axis_tvalid,m_axis_tlast,m_axis_tdata[63:0],m_axis_tkeep[7:0],m_axis_tuser[95:0],m_axis_tdest[1:0],mdt_tv,mdt_tr,sdt_tv,sdt_tr,vfb_tv,vfb_tr,interrupt";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mipi_csi2_rx_ctrl_v1_0_8_top,Vivado 2018.2";
begin
end;
