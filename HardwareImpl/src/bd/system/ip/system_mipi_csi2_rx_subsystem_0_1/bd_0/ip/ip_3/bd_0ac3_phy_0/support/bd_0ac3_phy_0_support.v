// /////////////////////////////////////////////////////////////////
// (c) Copyright 2015 - 2016 Xilinx, Inc. All rights reserved.	 
//   	                                						 
// This file contains confidential and proprietary information	 
// of Xilinx, Inc. and is protected under U.S. and	        	 
// international copyright and other intellectual property    	 
// laws.							                             
//   							                                 
// DISCLAIMER							                         
// This disclaimer is not a license and does not grant any	     
// rights to the materials distributed herewith. Except as	     
// otherwise provided in a valid license issued to you by	     
// Xilinx, and to the maximum extent permitted by applicable	
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND	     
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES	 
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING	 
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-	     
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and	     
// (2) Xilinx shall not be liable (whether in contract or tort,	 
// including negligence, or under any other theory of		     
// liability) for any loss or damage of any kind or nature	     
// related to, arising under or in connection with these	     
// materials, including for any direct, or any indirect,	    
// special, incidental, or consequential loss or damage		     
// (including loss of data, profits, goodwill, or any type of	 
// loss or damage suffered as a result of any action brought	 
// by a third party) even if such damage or loss was		     
// reasonably foreseeable or Xilinx had been advised of the	     
// possibility of the same.					                     
//   							                                 
// CRITICAL APPLICATIONS					                     
// Xilinx products are not designed or intended to be fail-	     
// safe, or for use in any application requiring fail-safe	     
// performance, such as life-support or safety devices or	     
// systems, Class III medical devices, nuclear facilities,	     
// applications related to the deployment of airbags, or any	  
// other applications that could lead to death, personal	      
// injury, or severe property or environmental damage		     
// (individually and collectively, "Critical			          
// Applications"). Customer assumes the sole risk and		     
// liability of any use of Xilinx products in Critical		     
// Applications, subject only to applicable laws and	  	     
// regulations governing limitations on product liability.	     
//   							                                 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS	     
// PART OF THIS FILE AT ALL TIMES. 				                 
// ////////////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------
// bd_0ac3_phy_0_support.v
//-----------------------------------------------------------------------------
//
// Filename        : bd_0ac3_phy_0_support.v
// Version         : v1.0
// Description     : D-PHY IP support module
// Verilog-Standard: Verilog'2001
//-----------------------------------------------------------------------------
//-- Structure:
//--               -- top.v (MASTER/TX)
//                     -- tx_fab_top.v
//                     -- tx_ioi.v
//                     -- tx_dphy_reg.v
//--               -- top.v (SLAVE/TX)
//                     -- rx_fab_top.v
//                     -- rx_ioi.v
//                     -- rx_dphy_reg.v
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x" 
//      reset signals:                          "rst", "rst_n" 
//      parameters:                             "C_*" 
//      user defined types:                     "*_TYPE" 
//      state machine next state:               "*_ns" 
//      state machine current state:            "*_cs" 
//      combinatorial signals:                  "*_com" 
//      pipelined or register delay signals:    "*_d#" 
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce" 
//      internal version of output port         "*_i"
//      device pins:                            "*_pin" 
//      component instantiations:               "<MODULE>I_<#|FUNC>
//-----------------------------------------------------------------------------

///////////////////////////////////////////////////////////////////////////////
// Module Declaration
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_0ac3_phy_0_support
#( 
   parameter C_IS_7SERIES = "TRUE", 
   parameter C_SHARE_IDLYCTRL = "true", 
   parameter C_EN_CLK300M = "FALSE", 
   // DPHY Function Mode
   // Valid values are MASTER (TX) and SLAVE (RX)
   parameter C_DPHY_MODE = "SLAVE", 
   // DPHY Data Lanes
   // Valid values are from 1 to 4	   
   parameter C_DPHY_LANES = 2, 
   // DPHY Line Rate in Mbps
   // Valid values are from 80 to 1500 in the order of 1 Mbps for D-PHY v1.1 Spec
   // Valid values are from 80 to 2500 in the order of 1 Mbps for D-PHY v1.2 Spec
   // No real values are allowed in Line Rate	   
   parameter C_HS_LINE_RATE = 800,
   // Transmit first deskew calibration sequence by D-PHY TX for line rates above 1.5 Gbps
   parameter C_XMIT_FIRST_DESKEW_SEQ  =  "false",  
   // Transmit periodic deskew calibration sequence by D-PHY TX for line rates above 1.5 Gbps
   parameter C_XMIT_PERIODIC_DESKEW_SEQ  =  "false",  
   // First deskew calibration sequence duration in txbyteclkhs clocks
   parameter C_SKEWCAL_FIRST_TIME  =  4096,  
   // Periodic deskew calibration sequence duration in txbyteclkhs clocks
   parameter C_SKEWCAL_PERIODIC_TIME  =  128,   
   // Enable deskew sequence detection logic in D-PHY RX for line rates above 1.5 Gbps
   parameter C_RCVE_DESKEW_SEQ  =  "false",  
   // T_LPX protocol timing parameter in ns
   // Default : 50 ns
   // Valid values are from 50 to 100 	   
   parameter C_LPX_PERIOD = 50,
   // Stable clock period in ns
   parameter C_STABLE_CLK_PERIOD = 5.000,
   // Escape mode clock period in ns
   // Valid range is from 50 to 100 ns (10 MHz to 20 MHz)
   // Usually equals to T_LPX timing parameter	   
   parameter C_ESC_CLK_PERIOD = 50.000,
   // T_INIT Timing parameter for Initialization
   // Valid range is from 500 us to 1 ms
   // MASTER (TX) is configured for 1 ms
   // SLAVE (RX) is configured for 500 us
   parameter C_INIT = 100000, 
   // T_WAKEUP timing parameter
   // Valid value is 1 ms for MASTER (TX) and SLAVE (RX)  
   parameter C_WAKEUP = 1000000,  
   // T_WAKEUP timing parameter to exit from ULPS
   parameter C_EN_ULPS_WAKEUP_CNT = "FALSE",  
   // Infer OBUFTDS for 7-Series HS outputs
   parameter C_EN_HS_OBUFTDS = "FALSE",  
   parameter C_USE_LANE0_TXREADYHS = "FALSE",  
   // HS_SETTLE timing parameter in ns
   // min is 85 + 6 UI
   // max is 145 + 10 UI
   parameter C_HS_SETTLE_NS = 147,  
   // HS [T/R]X Timeout in bytes
   // Valid range is from 1000 to 65541	   
   parameter C_HS_TIMEOUT = 65541,
   // Escape mode timeout in ns
   // TX DPHY use this param as Escape Mode Silence Timeout for LPDT
   // RX DPHY use this param as Escape Mode Timeout for LPDT
   // 32 Bytes x T_LPX(50) x 16  = 25600
   parameter C_ESC_TIMEOUT = 25600,
   // Synchronizer flip-flop stages and arrived using device 
   // characterization metrics
   // Valid range is from 3 to 7	   
   parameter MTBF_SYNC_STAGES = 3,
   parameter C_EN_TIMEOUT_REGS = 0,
   parameter DPHY_PRESET = "CSI2RX_XLNX",
   parameter SUPPORT_LEVEL = 1,
   // AXI-Lite Register Interface Enable	   
   parameter C_EN_REG_IF = 1,
   // Additional debug registers	   
   parameter C_EN_DEBUG_REGS = 0,
   // Simulation control
   parameter C_EXAMPLE_SIMULATION = "false",
   // TXPLL input clock frequency in ns
   parameter C_TXPLL_CLKIN_PERIOD = 8.0,
   // byteclkhs clock period derived from line rate  
   parameter C_DIV4_CLK_PERIOD = 10.000,     
   // Calibration Mode for IDELAY in Slave mode of IP
   parameter C_CAL_MODE = "FIXED",
   // IDELAY Tap value when calibration mode is Fixed
   parameter C_IDLY_TAP = 2     
   )
   (
       input                core_clk,
       input                core_rst,
       output               rxbyteclkhs,
       output               system_rst_out,
       output               init_done,

       //Clock lane PPI RX interface 
       output               cl_rxclkactivehs,
       output               cl_stopstate,
       input                cl_enable,
       output               cl_rxulpsclknot,
       output               cl_ulpsactivenot,

       //Data lane - 0 PPI RX high speed signals
       output   [7:0]       dl0_rxdatahs,
       output               dl0_rxvalidhs,
       output               dl0_rxactivehs,
       output               dl0_rxsynchs,

       //Data lane - 0 RX control siganls
       input                dl0_forcerxmode,
       output               dl0_stopstate,
       input                dl0_enable,
       output               dl0_ulpsactivenot,

       //Data lane - 0 RX escape mode signals
       output               dl0_rxclkesc,
       output               dl0_rxlpdtesc,
       output               dl0_rxulpsesc,
       output   [3:0]       dl0_rxtriggeresc,
       output   [7:0]       dl0_rxdataesc,
       output               dl0_rxvalidesc,

       //Data lane - 0 RX error signals
       output               dl0_errsoths,
       output               dl0_errsotsynchs,
       output               dl0_erresc,
       output               dl0_errsyncesc,
       output               dl0_errcontrol,

       //Data lane - 1 PPI RX high speed signals
       output   [7:0]       dl1_rxdatahs,
       output               dl1_rxvalidhs,
       output               dl1_rxactivehs,
       output               dl1_rxsynchs,

       //Data lane - 1 RX control siganls
       input                dl1_forcerxmode,
       output               dl1_stopstate,
       input                dl1_enable,
       output               dl1_ulpsactivenot,

       //Data lane - 1 RX escape mode signals
       output               dl1_rxclkesc,
       output               dl1_rxlpdtesc,
       output               dl1_rxulpsesc,
       output   [3:0]       dl1_rxtriggeresc,
       output   [7:0]       dl1_rxdataesc,
       output               dl1_rxvalidesc,

       //Data lane - 1 RX error signals
       output               dl1_errsoths,
       output               dl1_errsotsynchs,
       output               dl1_erresc,
       output               dl1_errsyncesc,
       output               dl1_errcontrol,

       output               dlyctrl_rdy_out,
  
       //AXI4-Lite slave signals for register access
       input                s_axi_aclk,
       input                s_axi_aresetn,
       input    [6:0]       s_axi_awaddr,
       output               s_axi_awready,
       input                s_axi_awvalid,
       input    [6:0]       s_axi_araddr,
       output               s_axi_arready,
       input                s_axi_arvalid,
       input    [31:0]      s_axi_wdata,
       input    [3:0]       s_axi_wstrb,
       output               s_axi_wready,
       input                s_axi_wvalid,
       output   [31:0]      s_axi_rdata,
       output   [1:0]       s_axi_rresp,
       input                s_axi_rready,
       output               s_axi_rvalid,
       output   [1:0]       s_axi_bresp,
       input                s_axi_bready,
       output               s_axi_bvalid,

       //IO I/F signals for SLAVE(RX)
       input                clk_hs_rxp,
       input                clk_hs_rxn,
       input    [C_DPHY_LANES -1:0] data_hs_rxp,
       input    [C_DPHY_LANES -1:0] data_hs_rxn,
       input                clk_lp_rxp,
       input                clk_lp_rxn,
       input    [C_DPHY_LANES -1:0] data_lp_rxp,
       input    [C_DPHY_LANES -1:0] data_lp_rxn
   );

       wire                    core_rst_coreclk_sync;
       wire                    core_ref_clk_w;
       wire                    div4_clk_t;
       wire                    div4_clk_w;
       wire                    fifo_rd_clk_t;
       wire                    hssio_div4_clk_w;
       wire                    tx_div4_clk_pll_w;
       wire                    div4_config_clk_w;
       wire                    pass_in_rst;
       wire     [3:0]          tap_val_pass;
      wire  [31:0]            tap_val_dyn_out_w; 
       wire                    w_dlyctrl_rdy_out;
       wire                    clk_in_w;
       wire                    div_clk_w;
       wire                    div_clk90_w;
       wire                    clk_in_phs;
       wire [(C_DPHY_LANES*8)-1:0]         data_in_to_device_w;
       wire                    config_div4_clk_pll_w;
       wire                    mmcm_locked_w;
       wire                    mmcm_reset_w;
       wire                    pll_reset_w;
       wire                    pll_locked_w;
       wire                    phy_reset_w;
       wire                    clkoutphy_out_w;
       wire                    system_rst_phybyteclk_w;
       wire                    system_rst_byteclk_w;
       wire                    system_rst_escclk_w;
       wire                    dphy_srst_w;
       wire                    dphy_en_w; 
       wire                    system_rst_w;
       wire                    clkoutphy_i;
       wire                    clkoutphy_hssio_i;
       wire                    txclkesc_w;
       wire                    rxbyteclkhs_w;
       wire   [C_DPHY_LANES:0]            lp_rx_disable_w;

       wire                    clk_rxp;  
       wire                    clk_rxn;  
       wire   [C_DPHY_LANES -1:0] data_rxp;  
       wire   [C_DPHY_LANES -1:0] data_rxn;  
       wire   [8:0]            idelay_tap_value_w;
       wire                    idelay_load_w;
       wire                    idelay_ready_w;
       wire                    cl_enable_sync;

       //Clock lane IOB signals 
       wire                    rx_cl_disable_ibuf_w;
       wire                    rx_cl_lp_dp_w;
       wire                    rx_cl_lp_dn_w;

       //Clock lane IOFSR signals
       wire   [7:0]            rx_cl_hs_dp_w;
       wire                    bit_slc_rst_w;


       //Clock lane XiPHY FIFO signals
       wire                    rx_cl_fifo_empty_w;
       wire                    rx_cl_fifo_rd_en_w;
       wire                    rx_cl_fifo_rd_clk_w;
       wire                    rx_cl_n_fifo_empty_w;
       wire                    rx_cl_n_fifo_rd_en_w;

      //Data lane - 0 IOB signals 
       wire                    rx_dl0_disable_ibuf_w;
       wire                    rx_dl0_lp_dp_w;
       wire                    rx_dl0_lp_dn_w;
       //Data lane - 0 IOFSR signals
       wire   [7:0]            rx_dl0_hs_dp_w;

       //Data lane - 0 XiPHY FIFO signals
       wire                    rx_dl0_fifo_empty_w;
       wire                    rx_dl0_fifo_rd_en_w;
       wire                    rx_dl0_fifo_rd_clk_w;
       wire                    rx_dl0_n_fifo_empty_w;
       wire                    rx_dl0_n_fifo_rd_en_w;

       //Data lane - 1 IOB signals 
       wire                    rx_dl1_disable_ibuf_w;
       wire                    rx_dl1_lp_dp_w;
       wire                    rx_dl1_lp_dn_w;
       //Data lane - 1 IOFSR signals
       wire   [7:0]            rx_dl1_hs_dp_w;

       //Data lane - 1 XiPHY FIFO signals
       wire                    rx_dl1_fifo_empty_w;
       wire                    rx_dl1_fifo_rd_en_w;
       wire                    rx_dl1_fifo_rd_clk_w;
       wire                    rx_dl1_n_fifo_empty_w;
       wire                    rx_dl1_n_fifo_rd_en_w;
       //Data lane - 2 IOB signals 
       wire                    rx_dl2_disable_ibuf_w;
       wire                    rx_dl2_lp_dp_w;
       wire                    rx_dl2_lp_dn_w;
       //Data lane - 2 IOFSR signals
       wire   [7:0]            rx_dl2_hs_dp_w;

       //Data lane - 2 XiPHY FIFO signals
       wire                    rx_dl2_fifo_empty_w;
       wire                    rx_dl2_fifo_rd_en_w;
       wire                    rx_dl2_fifo_rd_clk_w;
       wire                    rx_dl2_n_fifo_empty_w;
       wire                    rx_dl2_n_fifo_rd_en_w;
       //Data lane - 3 IOB signals 
       wire                    rx_dl3_disable_ibuf_w;
       wire                    rx_dl3_lp_dp_w;
       wire                    rx_dl3_lp_dn_w;
       //Data lane - 3 IOFSR signals
       wire   [7:0]            rx_dl3_hs_dp_w;

       //Data lane - 3 XiPHY FIFO signals
       wire                    rx_dl3_fifo_empty_w;
       wire                    rx_dl3_fifo_rd_en_w;
       wire                    rx_dl3_fifo_rd_clk_w;
       wire                    rx_dl3_n_fifo_empty_w;
       wire                    rx_dl3_n_fifo_rd_en_w;
       wire                    dl0_rxclkesc_raw;
       
       wire                    dl1_rxclkesc_raw; 
       wire                    dl2_forcerxmode; 
       wire                    dl2_enable; 
       wire   [7:0]            dl2_rxdatahs;
       wire   [3:0]            dl2_rxtriggeresc;
       wire   [7:0]            dl2_rxdataesc;
       wire                    dl2_rxskewcalhs;
       wire                    dl3_forcerxmode; 
       wire                    dl3_enable; 
       wire   [7:0]            dl3_rxdatahs;
       wire   [3:0]            dl3_rxtriggeresc;
       wire   [7:0]            dl3_rxdataesc;
       wire                    dl3_rxskewcalhs;
    //Output signal assignments

   assign     dl2_forcerxmode       =  1'b0;
   assign     dl2_enable            =  1'b0;
   assign     dl3_forcerxmode       =  1'b0;
   assign     dl3_enable            =  1'b0;
 
   assign      rx_cl_lp_dp_w        =  clk_lp_rxp;
   assign      rx_cl_lp_dn_w        =  clk_lp_rxn;
   assign      rx_dl0_lp_dp_w       =  data_lp_rxp[0];
   assign      rx_dl0_lp_dn_w       =  data_lp_rxn[0];
   assign      rx_dl1_lp_dp_w       =  data_lp_rxp[1];
   assign      rx_dl1_lp_dn_w       =  data_lp_rxn[1];
   assign      dlyctrl_rdy_out     =   w_dlyctrl_rdy_out;
       //RX Fabric logic instance 
  generate if(C_DPHY_MODE == "SLAVE") begin: slave_rx


    mipi_dphy_v4_1_1_rx_rst_sync #
    (
      .c_init_val      (1'b1),
      .c_mtbf_stages   (2)
    ) u_core_rst_coreclk_sync_rx_i (
      .prmry_in        (core_rst),
      .scndry_aclk     (core_clk),
      .scndry_out      (core_rst_coreclk_sync)
    );  

  // Synchronize the cl_enable
      mipi_dphy_v4_1_1_rx_sync_cell
        #(
           .c_cdc_type      (1               ),   
           .c_flop_input    (0               ),  
           .c_reset_state   (1               ),  
           .c_single_bit    (1               ),  
           .c_vector_width  (2               ),  
           .c_mtbf_stages   (MTBF_SYNC_STAGES)  
         )cl_enable_sync_support_i 
         (
           .prmry_aclk      (core_clk        ),
           .prmry_rst_n     (1'b1            ),
           .prmry_in        (cl_enable       ),
           .prmry_vect_in   (2'd0            ),
           .scndry_aclk     (core_clk        ),
           .scndry_rst_n    (1'b1            ),
           .prmry_ack       (                ),
           .scndry_out      (cl_enable_sync  ),
           .scndry_vect_out (                ) 
          );

    // RX Reset Logic Instance
    mipi_dphy_v4_1_1_rx_rst_logic_7series #
    (
        .STABLE_CLK_PERIOD       (C_STABLE_CLK_PERIOD),
        .DPHY_PRESET             (DPHY_PRESET        )
    )
    u_rx_rst_logic_7series
    (
        .core_clk                (core_clk),               // 200 MHz stable clock
        .core_rst                (core_rst_coreclk_sync),  // Active high core reset
        .cl_enable               (cl_enable_sync),         // RX Clock Lane enable from PPI
        .srst                    (dphy_srst_w),            // Soft rst from register
        .dphyen                  (dphy_en_w),              // Enable bit from register 
        .system_rst_byteclk      (system_rst_byteclk_w),   // System reset for cl_txbyteclkhs domain
        .system_rst              (system_rst_w)            // System reset
    );

   assign  system_rst_out = system_rst_w;

   mipi_dphy_v4_1_1_rx_fab_top
   #(  .C_DPHY_MODE          (C_DPHY_MODE         ), 
       .C_IS_7SERIES         (C_IS_7SERIES        ),
       .DPHY_PRESET          (DPHY_PRESET         ),
       .C_DPHY_LANES         (C_DPHY_LANES        ), 
       .C_HS_LINE_RATE       (C_HS_LINE_RATE      ), 
       .C_LPX_PERIOD         (C_LPX_PERIOD        ),
       .C_STABLE_CLK_PERIOD  (C_STABLE_CLK_PERIOD ),
       .MTBF_SYNC_STAGES     (MTBF_SYNC_STAGES    ),
       .C_INIT               (C_INIT              ),
       .C_WAKEUP             (C_WAKEUP            ),
       .C_HS_RX_TIMEOUT      (C_HS_TIMEOUT        ),
       .C_ESC_TIMEOUT        (C_ESC_TIMEOUT       ),
       .SUPPORT_LEVEL        (SUPPORT_LEVEL       ),
       .C_EN_TIMEOUT_REGS    (C_EN_TIMEOUT_REGS   ),
       .C_EN_REGISTER        (C_EN_REG_IF         ),
       .C_EN_ULPS_WAKEUP_CNT (C_EN_ULPS_WAKEUP_CNT),
       .C_RCVE_DESKEW_SEQ    (C_RCVE_DESKEW_SEQ   ),
       .C_HS_SETTLE_VAL      (C_HS_SETTLE_NS      ),
       .C_IDLY_TAP           (C_IDLY_TAP          ), 
       .C_EN_DEBUG_REGS      (C_EN_DEBUG_REGS     )
   ) dphy_rx_fab_top
   (     
       .rx_div4_clk          (div4_clk_w            ),            //input                rx_div4_clk,
       .clk_200m             (core_clk              ),            //input                clk_200m,
       .core_clk             (core_clk              ),            //input                core_clk,
       .core_rst             (core_rst_coreclk_sync ),            //input                core_rst,
       .core_ref_clk         (core_ref_clk_w        ),            //output               core_ref_clk,
       .bit_slc_rst          (bit_slc_rst_w         ),            //output               bit_slc_rst,

       .system_rst_in        (system_rst_w),//input                system_rst_in,
       .dphy_srst_out        (dphy_srst_w),//output               dphy_srst_out,
       .dphy_en_out          (dphy_en_w),//output               dphy_en_out,
       .phy_rst              (),         //output               phy_rst,
       .phy_ready            (phy_rdy_out),
       .system_rst_phybyteclk_in  (1'b0),//input                system_rst_phybyteclk_in,
       .system_rst_byteclk_in(system_rst_byteclk_w),//input                system_rst_byteclk_in,
       .sys_rst_byteclk_out  (/*system_rst_out*/),
                                 
       .init_done            (init_done             ),

       .idelay_tap_value     (idelay_tap_value_w    ),            //output   [8:0]       idelay_tap_value,
       .idelay_load          (idelay_load_w         ),            //output               idelay_load,
       .idelay_ready         (1'b0                  ),            //input                idelay_ready,
       .tap_val_dyn_out   (tap_val_dyn_out_w),                                                             ////Data lane - 0 IOB signals 
       .rx_dl0_en_hs_lpn     (                      ),            //output               rx_dl0_en_hs_lpn,
       .rx_dl0_disable_ibuf  (rx_dl0_disable_ibuf_w ),            //output               rx_dl0_disable_ibuf,
       .rx_dl0_lp_dp         (rx_dl0_lp_dp_w        ),            //input                rx_dl0_lp_dp,
       .rx_dl0_lp_dn         (rx_dl0_lp_dn_w        ),            //input                rx_dl0_lp_dn,
                                                                ////Data lane - 0 IOFSR signals
       .rx_dl0_hs_dp         (rx_dl0_hs_dp_w        ),            //input    [7:0]       rx_dl0_hs_dp,
                                                                ////Data lane - 0 XiPHY FIFO signals
       .rx_dl0_fifo_empty    (rx_dl0_fifo_empty_w   ),            //input                rx_dl0_fifo_empty,
       .rx_dl0_fifo_rd_en    (/*rx_dl0_fifo_rd_en_w*/   ),            //output               rx_dl0_fifo_rd_en,
       .rx_dl0_fifo_rd_clk   (rx_dl0_fifo_rd_clk_w  ),            //output               rx_dl0_fifo_rd_clk,
                                                                ////Data lane - 0 PPI RX high speed signals
       .dl0_rxdatahs         (dl0_rxdatahs          ),            //output   [7:0]       dl0_rxdatahs,
       .dl0_rxvalidhs        (dl0_rxvalidhs         ),            //output               dl0_rxvalidhs,
       .dl0_rxactivehs       (dl0_rxactivehs        ),            //output               dl0_rxactivehs,
       .dl0_rxskewcalhs      (dl0_rxskewcalhs       ),            //output               dl0_rxskewcalhs,
       .dl0_rxsynchs         (dl0_rxsynchs          ),            //output               dl0_rxsynchs,
                                                                ////Data lane - 0 RX control siganls
       .dl0_forcerxmode      (dl0_forcerxmode       ),            //input                dl0_forcerxmode,
       .dl0_stopstate        (dl0_stopstate         ),            //output               dl0_stopstate,
       .dl0_enable           (dl0_enable            ),            //input                dl0_enable,
       .dl0_ulpsactivenot    (dl0_ulpsactivenot     ),            //output               dl0_ulpsactivenot,
                                                                ////Data lane - 0 RX escape mode signals
       .dl0_rxclkesc         (dl0_rxclkesc          ),            //output               dl0_rxclkesc,
       .dl0_rxlpdtesc        (dl0_rxlpdtesc         ),            //output               dl0_rxlpdtesc,
       .dl0_rxulpsesc        (dl0_rxulpsesc         ),            //output               dl0_rxulpsesc,
       .dl0_rxtriggeresc     (dl0_rxtriggeresc      ),            //output   [3:0]       dl0_rxtriggeresc,
       .dl0_rxdataesc        (dl0_rxdataesc         ),            //output   [7:0]       dl0_rxdataesc,
       .dl0_rxvalidesc       (dl0_rxvalidesc        ),            //output               dl0_rxvalidesc,
                                                                ////Data lane - 0 RX error signals
       .dl0_errsoths         (dl0_errsoths          ),            //output               dl0_errsoths,
       .dl0_errsotsynchs     (dl0_errsotsynchs      ),            //output               dl0_errsotsynchs,
       .dl0_erresc           (dl0_erresc            ),            //output               dl0_erresc,
       .dl0_errsyncesc       (dl0_errsyncesc        ),            //output               dl0_errsyncesc,
       .dl0_errcontrol       (dl0_errcontrol        ),            //output               dl0_errcontrol,
                                 
                                                                ////Data lane - 1 IOB signals 
       .rx_dl1_en_hs_lpn     (                      ),            //output               rx_dl1_en_hs_lpn,
       .rx_dl1_disable_ibuf  (rx_dl1_disable_ibuf_w ),            //output               rx_dl1_disable_ibuf,
       .rx_dl1_lp_dp         (rx_dl1_lp_dp_w        ),            //input                rx_dl1_lp_dp,
       .rx_dl1_lp_dn         (rx_dl1_lp_dn_w        ),            //input                rx_dl1_lp_dn,
                                                                ////Data lane - 1 IOFSR signals
       .rx_dl1_hs_dp         (rx_dl1_hs_dp_w        ),            //input    [7:0]       rx_dl1_hs_dp,
                                                                ////Data lane - 1 XiPHY FIFO signals
       .rx_dl1_fifo_empty    (rx_dl1_fifo_empty_w   ),            //input                rx_dl1_fifo_empty,
       .rx_dl1_fifo_rd_en    (/*rx_dl1_fifo_rd_en_w*/   ),            //output               rx_dl1_fifo_rd_en,
       .rx_dl1_fifo_rd_clk   (rx_dl1_fifo_rd_clk_w  ),            //output               rx_dl1_fifo_rd_clk,
                                                       
                                                                ////Data lane - 1 PPI RX high speed signals
       .dl1_rxdatahs         (dl1_rxdatahs          ),            //output   [7:0]       dl1_rxdatahs,
       .dl1_rxvalidhs        (dl1_rxvalidhs         ),            //output               dl1_rxvalidhs,
       .dl1_rxactivehs       (dl1_rxactivehs        ),            //output               dl1_rxactivehs,
       .dl1_rxskewcalhs      (dl1_rxskewcalhs       ),            //output               dl1_rxskewcalhs,
       .dl1_rxsynchs         (dl1_rxsynchs          ),            //output               dl1_rxsynchs,
                                                       
                                                                ////Data lane - 1 RX control siganls
       .dl1_forcerxmode      (dl1_forcerxmode       ),            //input                dl1_forcerxmode,
       .dl1_stopstate        (dl1_stopstate         ),            //output               dl1_stopstate,
       .dl1_enable           (dl1_enable            ),            //input                dl1_enable,
       .dl1_ulpsactivenot    (dl1_ulpsactivenot     ),            //output               dl1_ulpsactivenot,
                                                                ////Data lane - 1 RX escape mode signals
       .dl1_rxclkesc         (dl1_rxclkesc          ),            //output               dl1_rxclkesc,
       .dl1_rxlpdtesc        (dl1_rxlpdtesc         ),            //output               dl1_rxlpdtesc,
       .dl1_rxulpsesc        (dl1_rxulpsesc         ),            //output               dl1_rxulpsesc,
       .dl1_rxtriggeresc     (dl1_rxtriggeresc      ),            //output   [3:0]       dl1_rxtriggeresc,
       .dl1_rxdataesc        (dl1_rxdataesc         ),            //output   [7:0]       dl1_rxdataesc,
       .dl1_rxvalidesc       (dl1_rxvalidesc        ),            //output               dl1_rxvalidesc,
                                                               ////Data lane - 1 RX error signals
       .dl1_errsoths         (dl1_errsoths          ),            //output               dl1_errsoths,
       .dl1_errsotsynchs     (dl1_errsotsynchs      ),            //output               dl1_errsotsynchs,
       .dl1_erresc           (dl1_erresc            ),            //output               dl1_erresc,
       .dl1_errsyncesc       (dl1_errsyncesc        ),            //output               dl1_errsyncesc,
       .dl1_errcontrol       (dl1_errcontrol        ),            //output               dl1_errcontrol,
                              
                                                              ////Data lane - 2 IOB signals 
       .rx_dl2_en_hs_lpn     (                      ),            //output               rx_dl2_en_hs_lpn,
       .rx_dl2_disable_ibuf  (rx_dl2_disable_ibuf_w ),            //output               rx_dl2_disable_ibuf,
       .rx_dl2_lp_dp         (rx_dl2_lp_dp_w        ),            //input                rx_dl2_lp_dp,
       .rx_dl2_lp_dn         (rx_dl2_lp_dn_w        ),            //input                rx_dl2_lp_dn,
                                                  ////Data lane - 2 IOFSR signals
       .rx_dl2_hs_dp         (rx_dl2_hs_dp_w        ),            //input    [7:0]       rx_dl2_hs_dp,
                                              ////Data lane - 2 XiPHY FIFO signals
       .rx_dl2_fifo_empty    (rx_dl2_fifo_empty_w   ),            //input                rx_dl2_fifo_empty,
       .rx_dl2_fifo_rd_en    (/*rx_dl2_fifo_rd_en_w*/   ),            //output               rx_dl2_fifo_rd_en,
       .rx_dl2_fifo_rd_clk   (rx_dl2_fifo_rd_clk_w  ),            //output               rx_dl2_fifo_rd_clk,
                                                        ////Data lane - 2 PPI RX high speed signals
       .dl2_rxdatahs         (dl2_rxdatahs          ),            //output   [7:0]       dl2_rxdatahs,
       .dl2_rxvalidhs        (dl2_rxvalidhs         ),            //output               dl2_rxvalidhs,
       .dl2_rxactivehs       (dl2_rxactivehs        ),            //output               dl2_rxactivehs,
       .dl2_rxskewcalhs      (dl2_rxskewcalhs       ),            //output               dl2_rxskewcalhs,
       .dl2_rxsynchs         (dl2_rxsynchs          ),            //output               dl2_rxsynchs,
                                                               ////Data lane - 2 RX control siganls
       .dl2_forcerxmode      (dl2_forcerxmode       ),            //input                dl2_forcerxmode,
       .dl2_stopstate        (dl2_stopstate         ),            //output               dl2_stopstate,
       .dl2_enable           (dl2_enable            ),            //input                dl2_enable,
       .dl2_ulpsactivenot    (dl2_ulpsactivenot     ),            //output               dl2_ulpsactivenot,
                                                               ////Data lane - 2 RX escape mode signals
       .dl2_rxclkesc         (dl2_rxclkesc          ),            //output               dl2_rxclkesc,
       .dl2_rxlpdtesc        (dl2_rxlpdtesc         ),            //output               dl2_rxlpdtesc,
       .dl2_rxulpsesc        (dl2_rxulpsesc         ),            //output               dl2_rxulpsesc,
       .dl2_rxtriggeresc     (dl2_rxtriggeresc      ),            //output   [3:0]       dl2_rxtriggeresc,
       .dl2_rxdataesc        (dl2_rxdataesc         ),            //output   [7:0]       dl2_rxdataesc,
       .dl2_rxvalidesc       (dl2_rxvalidesc        ),            //output               dl2_rxvalidesc,
                                                                ////Data lane - 2 RX error signals
       .dl2_errsoths         (dl2_errsoths          ),            //output               dl2_errsoths,
       .dl2_errsotsynchs     (dl2_errsotsynchs      ),            //output               dl2_errsotsynchs,
       .dl2_erresc           (dl2_erresc            ),            //output               dl2_erresc,
       .dl2_errsyncesc       (dl2_errsyncesc        ),            //output               dl2_errsyncesc,
       .dl2_errcontrol       (dl2_errcontrol        ),            //output               dl2_errcontrol,
                                                               ////Data lane - 3 IOB signals 
       .rx_dl3_en_hs_lpn     (                      ),            //output               rx_dl3_en_hs_lpn,
       .rx_dl3_disable_ibuf  (rx_dl3_disable_ibuf_w ),            //output               rx_dl3_disable_ibuf,
       .rx_dl3_lp_dp         (rx_dl3_lp_dp_w        ),            //input                rx_dl3_lp_dp,
       .rx_dl3_lp_dn         (rx_dl3_lp_dn_w        ),            //input                rx_dl3_lp_dn,
 
                                                    ////Data lane - 3 IOFSR signals
       .rx_dl3_hs_dp         (rx_dl3_hs_dp_w        ),            //input    [7:0]       rx_dl3_hs_dp,
                                                    ////Data lane - 3 XiPHY FIFO signals
       .rx_dl3_fifo_empty    (rx_dl3_fifo_empty_w   ),            //input                rx_dl3_fifo_empty,
       .rx_dl3_fifo_rd_en    (/*rx_dl3_fifo_rd_en_w*/   ),            //output               rx_dl3_fifo_rd_en,
       .rx_dl3_fifo_rd_clk   (rx_dl3_fifo_rd_clk_w  ),            //output               rx_dl3_fifo_rd_clk,
                                                                ////Data lane - 3 PPI RX high speed signals
       .dl3_rxdatahs         (dl3_rxdatahs          ),            //output   [7:0]       dl3_rxdatahs,
       .dl3_rxvalidhs        (dl3_rxvalidhs         ),            //output               dl3_rxvalidhs,
       .dl3_rxactivehs       (dl3_rxactivehs        ),            //output               dl3_rxactivehs,
       .dl3_rxskewcalhs      (dl3_rxskewcalhs       ),            //output               dl3_rxskewcalhs,
       .dl3_rxsynchs         (dl3_rxsynchs          ),            //output               dl3_rxsynchs,
                                                                ////Data lane - 3 RX control siganls
       .dl3_forcerxmode      (dl3_forcerxmode       ),            //input                dl3_forcerxmode,
       .dl3_stopstate        (dl3_stopstate         ),            //output               dl3_stopstate,
       .dl3_enable           (dl3_enable            ),            //input                dl3_enable,
       .dl3_ulpsactivenot    (dl3_ulpsactivenot     ),            //output               dl3_ulpsactivenot,
                                                                ////Data lane - 3 RX escape mode signals
       .dl3_rxclkesc         (dl3_rxclkesc          ),            //output               dl3_rxclkesc,
       .dl3_rxlpdtesc        (dl3_rxlpdtesc         ),            //output               dl3_rxlpdtesc,
       .dl3_rxulpsesc        (dl3_rxulpsesc         ),            //output               dl3_rxulpsesc,
       .dl3_rxtriggeresc     (dl3_rxtriggeresc      ),            //output   [3:0]       dl3_rxtriggeresc,
       .dl3_rxdataesc        (dl3_rxdataesc         ),            //output   [7:0]       dl3_rxdataesc,
       .dl3_rxvalidesc       (dl3_rxvalidesc        ),            //output               dl3_rxvalidesc,
                                                                ////Data lane - 3 RX error signals
       .dl3_errsoths         (dl3_errsoths          ),            //output               dl3_errsoths,
       .dl3_errsotsynchs     (dl3_errsotsynchs      ),            //output               dl3_errsotsynchs,
       .dl3_erresc           (dl3_erresc            ),            //output               dl3_erresc,
       .dl3_errsyncesc       (dl3_errsyncesc        ),            //output               dl3_errsyncesc,
       .dl3_errcontrol       (dl3_errcontrol        ),            //output               dl3_errcontrol,
                                                                ////Clock lane PPI RX interface 
       .cl_rxclkactivehs     (cl_rxclkactivehs      ),            //output               cl_rxclkactivehs,
       .cl_stopstate         (cl_stopstate          ),            //output               cl_stopstate,
       .cl_enable            (cl_enable_sync        ),            //input                cl_enable,
       .cl_rxulpsclknot      (cl_rxulpsclknot       ),            //output               cl_rxulpsclknot,
       .cl_ulpsactivenot     (cl_ulpsactivenot      ),            //output               cl_ulpsactivenot,
                                 
                                                                ////Clock lane IOB signals 
       .rx_cl_en_hs_lpn      (                      ),            //output               rx_cl_en_hs_lpn,
       .rx_cl_disable_ibuf   (rx_cl_disable_ibuf_w  ),            //output               rx_cl_disable_ibuf,
       .rx_cl_lp_dp          (rx_cl_lp_dp_w         ),            //input                rx_cl_lp_dp,
       .rx_cl_lp_dn          (rx_cl_lp_dn_w         ),            //input                rx_cl_lp_dn,
    
                                                               ////Clock lane IOFSR signals
       .rx_cl_hs_dp          (rx_cl_hs_dp_w         ),            //input    [7:0]       rx_cl_hs_dp,
                                                               ////Clock lane XiPHY FIFO signals
       .rx_cl_fifo_empty     (rx_cl_fifo_empty_w    ),            //input                rx_cl_fifo_empty,
       .rx_cl_fifo_rd_en     (rx_cl_fifo_rd_en_w    ),            //output               rx_cl_fifo_rd_en,
       .rx_cl_fifo_rd_clk    (rx_cl_fifo_rd_clk_w   ),            //output               rx_cl_fifo_rd_clk,
                                 
       //AXI4-Lite slave signals for register access
       .s_axi_aclk           (s_axi_aclk          ),            //input                s_axi_aclk,
       .s_axi_aresetn        (s_axi_aresetn       ),            //input                s_axi_aresetn,
       .s_axi_awaddr         (s_axi_awaddr        ),            //input    [6:0]       s_axi_awaddr,
       .s_axi_awready        (s_axi_awready       ),            //output               s_axi_awready,
       .s_axi_awvalid        (s_axi_awvalid       ),            //input                s_axi_awvalid,
       .s_axi_araddr         (s_axi_araddr        ),            //input    [6:0]       s_axi_araddr,
       .s_axi_arready        (s_axi_arready       ),            //output               s_axi_arready,
       .s_axi_arvalid        (s_axi_arvalid       ),            //input                s_axi_arvalid,
       .s_axi_wdata          (s_axi_wdata         ),            //input    [31:0]      s_axi_wdata,
       .s_axi_wstrb          (s_axi_wstrb         ),            //input    [3:0]       s_axi_wstrb,
       .s_axi_wready         (s_axi_wready        ),            //output               s_axi_wready,
       .s_axi_wvalid         (s_axi_wvalid        ),            //input                s_axi_wvalid,
       .s_axi_rdata          (s_axi_rdata         ),            //output   [31:0]      s_axi_rdata,
       .s_axi_rresp          (s_axi_rresp         ),            //output   [1:0]       s_axi_rresp,
       .s_axi_rready         (s_axi_rready        ),            //input                s_axi_rready,
       .s_axi_rvalid         (s_axi_rvalid        ),            //output               s_axi_rvalid,
       .s_axi_bresp          (s_axi_bresp         ),            //output   [1:0]       s_axi_bresp,
       .s_axi_bready         (s_axi_bready        ),            //input                s_axi_bready,
       .s_axi_bvalid         (s_axi_bvalid        ),            //output               s_axi_bvalid
       .tap_comp_res         (                    ),
       .tap_comp_rst         (1'b0                ),
       .cal_pass             (1'b0),
       .cal_done             (1'b0),
       .idly_tap_val         (5'd0),
       .reg_cal_start        (),
       .dly_ctrl_rdy         (w_dlyctrl_rdy_out)
   );


  assign  rxbyteclkhs               = div4_clk_w;

   mipi_dphy_v4_1_1_rx_ioi_7series
  #(   .C_DPHY_LANES         (C_DPHY_LANES        ), 
       .C_CAL_MODE           (C_CAL_MODE          ), 
       .C_IDLY_TAP           (C_IDLY_TAP          ), 
       .C_IDLY_GRP_NAME      ("mipi_csi2rx_idly_group"                  ), 
       .C_SHARE_IDLYCTRL     (C_SHARE_IDLYCTRL     ), 
       .MTBF_SYNC_STAGES     (MTBF_SYNC_STAGES    )
   )  bd_0ac3_phy_0_rx_ioi_i 
   (
       .core_clk             (core_clk             ),           //input                core_clk,
       .system_reset         (system_rst_w         ), 
       .div4_clk_out         (div4_clk_w           ),           //output               div4_clk_out,
       .clk_reset            (1'b0                 ),           //input                clk_reset,
       .io_reset             (system_rst_out       ),           //input                io_reset,
       .tap_ioi_dyn          (tap_val_dyn_out_w ), 
       // From the system into the device
       .data_in_to_device    (data_in_to_device_w  ),           //output [(C_DPHY_LANES*8)-1:0]         data_in_to_device,

       //IO I/F signals
       .data_hs_rxp          (data_hs_rxp          ),           //input    [C_DPHY_LANES -1:0] data_hs_rxp,
       .data_hs_rxn          (data_hs_rxn          ),           //input    [C_DPHY_LANES -1:0] data_hs_rxn,
       .clk_hs_rxp           (clk_hs_rxp           ),           //input                 clk_hs_rxp,
       .clk_hs_rxn           (clk_hs_rxn           ),           //input                 clk_hs_rxn
       .cal_start            (1'b0                 ),
       .dlyctrl_rdy          (w_dlyctrl_rdy_out    ),
       .cal_pass             (                     ),
       .cal_done             (                     ),

       .pass_in_rst          (                     ),
       .rx_clk_active        (1'b0                 ),
       .tap_val_pass_in      (4'b0000              )
   );

  assign  phy_rdy_out               = 1'b1;
  assign  rx_cl_hs_dp_w             = 8'd0;
  assign  rx_dl0_hs_dp_w            = data_in_to_device_w[7:0];
  assign  rx_dl1_hs_dp_w            = data_in_to_device_w[15:8];



  end
  endgenerate 
       
endmodule
