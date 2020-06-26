-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Feb  8 12:38:12 2019
-- Host        : maks-pc running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top system_axi_data_fifo_0_0 -prefix
--               system_axi_data_fifo_0_0_ system_axi_data_fifo_0_0_sim_netlist.vhdl
-- Design      : system_axi_data_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_axi_data_fifo_0_0_xpm_cdc_async_rst : entity is "ASYNC_RST";
end system_axi_data_fifo_0_0_xpm_cdc_async_rst;

architecture STRUCTURE of system_axi_data_fifo_0_0_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ : entity is "ASYNC_RST";
end \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_axi_data_fifo_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end system_axi_data_fifo_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of system_axi_data_fifo_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_dly_D : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of system_axi_data_fifo_0_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\ : STD_LOGIC;
  signal ENA_I : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => \gc0.count_d1_reg[8]\(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => m_axi_rdata(30 downto 23),
      DIADI(23 downto 16) => m_axi_rdata(21 downto 14),
      DIADI(15 downto 8) => m_axi_rdata(12 downto 5),
      DIADI(7 downto 4) => m_axi_rdata(3 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      DIBDI(31) => m_axi_rid(0),
      DIBDI(30 downto 24) => m_axi_rdata(63 downto 57),
      DIBDI(23 downto 8) => m_axi_rdata(55 downto 40),
      DIBDI(7 downto 0) => m_axi_rdata(38 downto 31),
      DIPADIP(3) => '0',
      DIPADIP(2) => m_axi_rdata(22),
      DIPADIP(1) => m_axi_rdata(13),
      DIPADIP(0) => m_axi_rdata(4),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => m_axi_rdata(56),
      DIPBDIP(1) => '0',
      DIPBDIP(0) => m_axi_rdata(39),
      DOADO(31 downto 24) => D(34 downto 27),
      DOADO(23 downto 16) => D(25 downto 18),
      DOADO(15 downto 8) => D(16 downto 9),
      DOADO(7 downto 0) => D(7 downto 0),
      DOBDO(31 downto 24) => D(68 downto 61),
      DOBDO(23 downto 8) => D(59 downto 44),
      DOBDO(7 downto 0) => D(42 downto 35),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\,
      DOPADOP(2) => D(26),
      DOPADOP(1) => D(17),
      DOPADOP(0) => D(8),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\,
      DOPBDOP(2) => D(60),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\,
      DOPBDOP(0) => D(43),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => E(0),
      WEBWE(6) => E(0),
      WEBWE(5) => E(0),
      WEBWE(4) => E(0),
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => \out\,
      I2 => m_axi_rvalid,
      O => ENA_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_compare__parameterized0\ is
  port (
    comp0 : out STD_LOGIC;
    \gc0.count_d1_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_compare__parameterized0\ : entity is "compare";
end \system_axi_data_fifo_0_0_compare__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_compare__parameterized0\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gc0.count_d1_reg[6]\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_compare__parameterized0_0\ is
  port (
    \ram_full_comb__5\ : out STD_LOGIC;
    \gc0.count_d1_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_compare__parameterized0_0\ : entity is "compare";
end \system_axi_data_fifo_0_0_compare__parameterized0_0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_compare__parameterized0_0\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gc0.count_d1_reg[6]\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(0)
    );
\ram_full_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FFF08080808"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => comp1,
      I2 => p_8_out,
      I3 => comp0,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I5 => \out\,
      O => \ram_full_comb__5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_compare__parameterized0_1\ is
  port (
    comp0 : out STD_LOGIC;
    \gc0.count_d1_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC;
    \gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_compare__parameterized0_1\ : entity is "compare";
end \system_axi_data_fifo_0_0_compare__parameterized0_1\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_compare__parameterized0_1\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gc0.count_d1_reg[6]\,
      S(2) => \gc0.count_d1_reg[4]\,
      S(1) => \gc0.count_d1_reg[2]\,
      S(0) => \gc0.count_d1_reg[0]\
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gcc0.gc0.count_d1_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_compare__parameterized0_2\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_compare__parameterized0_2\ : entity is "compare";
end \system_axi_data_fifo_0_0_compare__parameterized0_2\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_compare__parameterized0_2\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gcc0.gc0.count_d1_reg[8]\(0)
    );
\ram_empty_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFFFF88008888"
    )
        port map (
      I0 => E(0),
      I1 => comp1,
      I2 => comp0,
      I3 => ram_full_fb_i_reg,
      I4 => m_axi_rvalid,
      I5 => \out\,
      O => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 62 downto 0 );
    s_aclk : in STD_LOGIC;
    EN : in STD_LOGIC;
    UNCONN_IN : in STD_LOGIC_VECTOR ( 62 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_dmem;

architecture STRUCTURE of system_axi_data_fifo_0_0_dmem is
  signal p_0_out : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_60_62_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_31_60_62_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_60_62_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_30_35 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_36_41 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_42_47 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_48_53 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_54_59 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_60_62 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(1 downto 0),
      DIB(1 downto 0) => UNCONN_IN(3 downto 2),
      DIC(1 downto 0) => UNCONN_IN(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(13 downto 12),
      DIB(1 downto 0) => UNCONN_IN(15 downto 14),
      DIC(1 downto 0) => UNCONN_IN(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(19 downto 18),
      DIB(1 downto 0) => UNCONN_IN(21 downto 20),
      DIC(1 downto 0) => UNCONN_IN(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(25 downto 24),
      DIB(1 downto 0) => UNCONN_IN(27 downto 26),
      DIC(1 downto 0) => UNCONN_IN(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1 downto 0) => p_0_out(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(31 downto 30),
      DIB(1 downto 0) => UNCONN_IN(33 downto 32),
      DIC(1 downto 0) => UNCONN_IN(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(31 downto 30),
      DOB(1 downto 0) => p_0_out(33 downto 32),
      DOC(1 downto 0) => p_0_out(35 downto 34),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(37 downto 36),
      DIB(1 downto 0) => UNCONN_IN(39 downto 38),
      DIC(1 downto 0) => UNCONN_IN(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(37 downto 36),
      DOB(1 downto 0) => p_0_out(39 downto 38),
      DOC(1 downto 0) => p_0_out(41 downto 40),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(43 downto 42),
      DIB(1 downto 0) => UNCONN_IN(45 downto 44),
      DIC(1 downto 0) => UNCONN_IN(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(43 downto 42),
      DOB(1 downto 0) => p_0_out(45 downto 44),
      DOC(1 downto 0) => p_0_out(47 downto 46),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(49 downto 48),
      DIB(1 downto 0) => UNCONN_IN(51 downto 50),
      DIC(1 downto 0) => UNCONN_IN(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(49 downto 48),
      DOB(1 downto 0) => p_0_out(51 downto 50),
      DOC(1 downto 0) => p_0_out(53 downto 52),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(55 downto 54),
      DIB(1 downto 0) => UNCONN_IN(57 downto 56),
      DIC(1 downto 0) => UNCONN_IN(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(55 downto 54),
      DOB(1 downto 0) => p_0_out(57 downto 56),
      DOC(1 downto 0) => p_0_out(59 downto 58),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_60_62: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(61 downto 60),
      DIB(1) => '0',
      DIB(0) => UNCONN_IN(62),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(61 downto 60),
      DOB(1) => NLW_RAM_reg_0_31_60_62_DOB_UNCONNECTED(1),
      DOB(0) => p_0_out(62),
      DOC(1 downto 0) => NLW_RAM_reg_0_31_60_62_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_60_62_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => UNCONN_IN(7 downto 6),
      DIB(1 downto 0) => UNCONN_IN(9 downto 8),
      DIC(1 downto 0) => UNCONN_IN(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(29),
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(30),
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(31),
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(32),
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(33),
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(34),
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(35),
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(36),
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(37),
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(38),
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(39),
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(40),
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(41),
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(42),
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(43),
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(44),
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(45),
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(46),
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(47),
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(48),
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(49),
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(50),
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(51),
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(52),
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(53),
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(54),
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(55),
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(56),
      Q => dout_i(56),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(57),
      Q => dout_i(57),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(58),
      Q => dout_i(58),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(59),
      Q => dout_i(59),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(60),
      Q => dout_i(60),
      R => '0'
    );
\gpr1.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(61),
      Q => dout_i(61),
      R => '0'
    );
\gpr1.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(62),
      Q => dout_i(62),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[61]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_rd_bin_cntr;

architecture STRUCTURE of system_axi_data_fifo_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair0";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \gpr1.dout_i_reg[61]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \gpr1.dout_i_reg[61]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \gpr1.dout_i_reg[61]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \gpr1.dout_i_reg[61]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(4),
      Q => \gpr1.dout_i_reg[61]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => plusOp(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_rd_bin_cntr__parameterized0\ is
  port (
    \gc0.count_d1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ram_empty_i_reg_0 : out STD_LOGIC;
    ram_empty_i_reg_1 : out STD_LOGIC;
    ram_empty_i_reg_2 : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gcc0.gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_rd_bin_cntr__parameterized0\ : entity is "rd_bin_cntr";
end \system_axi_data_fifo_0_0_rd_bin_cntr__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_rd_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[8]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair12";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gc0.count_d1_reg[8]_0\(0) <= \^gc0.count_d1_reg[8]_0\(0);
\gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__1\(0)
    );
\gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__1\(1)
    );
\gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      O => \plusOp__1\(2)
    );
\gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => \plusOp__1\(3)
    );
\gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(1),
      I3 => rd_pntr_plus1(3),
      I4 => rd_pntr_plus1(4),
      O => \plusOp__1\(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(0),
      I3 => rd_pntr_plus1(2),
      I4 => rd_pntr_plus1(4),
      I5 => rd_pntr_plus1(5),
      O => \plusOp__1\(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus1(6),
      O => \plusOp__1\(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus1(6),
      I2 => rd_pntr_plus1(7),
      O => \plusOp__1\(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => \gc0.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus1(7),
      I3 => \^gc0.count_d1_reg[8]_0\(0),
      O => \plusOp__1\(8)
    );
\gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(5),
      I1 => rd_pntr_plus1(3),
      I2 => rd_pntr_plus1(1),
      I3 => rd_pntr_plus1(0),
      I4 => rd_pntr_plus1(2),
      I5 => rd_pntr_plus1(4),
      O => \gc0.count[8]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(2),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(3),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(4),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(5),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(6),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(7),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gc0.count_d1_reg[8]_0\(0),
      Q => \^q\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(0),
      Q => rd_pntr_plus1(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(1),
      Q => rd_pntr_plus1(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(2),
      Q => rd_pntr_plus1(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(3),
      Q => rd_pntr_plus1(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(4),
      Q => rd_pntr_plus1(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(5),
      Q => rd_pntr_plus1(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(6),
      Q => rd_pntr_plus1(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(7),
      Q => rd_pntr_plus1(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(8),
      Q => \^gc0.count_d1_reg[8]_0\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gcc0.gc0.count_d1_reg[7]\(0),
      I2 => \^q\(1),
      I3 => \gcc0.gc0.count_d1_reg[7]\(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => \gcc0.gc0.count_d1_reg[7]\(0),
      I2 => rd_pntr_plus1(1),
      I3 => \gcc0.gc0.count_d1_reg[7]\(1),
      O => v1_reg_1(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gcc0.gc0.count_reg[7]\(0),
      I2 => \^q\(1),
      I3 => \gcc0.gc0.count_reg[7]\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gcc0.gc0.count_d1_reg[7]\(0),
      I2 => \^q\(1),
      I3 => \gcc0.gc0.count_d1_reg[7]\(1),
      O => ram_empty_i_reg
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gcc0.gc0.count_d1_reg[7]\(2),
      I2 => \^q\(3),
      I3 => \gcc0.gc0.count_d1_reg[7]\(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => \gcc0.gc0.count_d1_reg[7]\(2),
      I2 => rd_pntr_plus1(3),
      I3 => \gcc0.gc0.count_d1_reg[7]\(3),
      O => v1_reg_1(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gcc0.gc0.count_reg[7]\(2),
      I2 => \^q\(3),
      I3 => \gcc0.gc0.count_reg[7]\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gcc0.gc0.count_d1_reg[7]\(2),
      I2 => \^q\(3),
      I3 => \gcc0.gc0.count_d1_reg[7]\(3),
      O => ram_empty_i_reg_0
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gcc0.gc0.count_d1_reg[7]\(4),
      I2 => \^q\(5),
      I3 => \gcc0.gc0.count_d1_reg[7]\(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(4),
      I1 => \gcc0.gc0.count_d1_reg[7]\(4),
      I2 => rd_pntr_plus1(5),
      I3 => \gcc0.gc0.count_d1_reg[7]\(5),
      O => v1_reg_1(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gcc0.gc0.count_reg[7]\(4),
      I2 => \^q\(5),
      I3 => \gcc0.gc0.count_reg[7]\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gcc0.gc0.count_d1_reg[7]\(4),
      I2 => \^q\(5),
      I3 => \gcc0.gc0.count_d1_reg[7]\(5),
      O => ram_empty_i_reg_1
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gcc0.gc0.count_d1_reg[7]\(6),
      I2 => \^q\(7),
      I3 => \gcc0.gc0.count_d1_reg[7]\(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => \gcc0.gc0.count_d1_reg[7]\(6),
      I2 => rd_pntr_plus1(7),
      I3 => \gcc0.gc0.count_d1_reg[7]\(7),
      O => v1_reg_1(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gcc0.gc0.count_reg[7]\(6),
      I2 => \^q\(7),
      I3 => \gcc0.gc0.count_reg[7]\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gcc0.gc0.count_d1_reg[7]\(6),
      I2 => \^q\(7),
      I3 => \gcc0.gc0.count_d1_reg[7]\(7),
      O => ram_empty_i_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_rd_fwft is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_4_out__0\ : out STD_LOGIC;
    \gc0.count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    empty_fwft_fb_o_i_reg_0 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[22]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_rd_fwft;

architecture STRUCTURE of system_axi_data_fifo_0_0_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^p_4_out__0\ : STD_LOGIC;
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\ <= empty_fwft_i;
  \p_4_out__0\ <= \^p_4_out__0\;
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCB8000"
    )
        port map (
      I0 => \^p_4_out__0\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => ram_empty_fb_i_reg,
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
\arvalid_en0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(0)
    );
\arvalid_en0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => S(0)
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FF00080000"
    )
        port map (
      I0 => arready_pkt,
      I1 => CO(0),
      I2 => empty_fwft_i,
      I3 => curr_fwft_state(1),
      I4 => curr_fwft_state(0),
      I5 => empty_fwft_fb_i,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FF00080000"
    )
        port map (
      I0 => arready_pkt,
      I1 => CO(0),
      I2 => empty_fwft_i,
      I3 => curr_fwft_state(1),
      I4 => curr_fwft_state(0),
      I5 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000555555555555"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => empty_fwft_i,
      I2 => CO(0),
      I3 => arready_pkt,
      I4 => curr_fwft_state(1),
      I5 => curr_fwft_state(0),
      O => \gc0.count_reg[0]\(0)
    );
\gfwd_rev_pipeline1.m_valid_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => CO(0),
      I2 => arready_pkt,
      O => \^p_4_out__0\
    );
\goreg_dm.dout_i[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008FF0000"
    )
        port map (
      I0 => arready_pkt,
      I1 => CO(0),
      I2 => empty_fwft_i,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      I5 => AR(0),
      O => E(0)
    );
\gpr1.dout_i[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777F777"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => arready_pkt,
      I3 => CO(0),
      I4 => empty_fwft_i,
      I5 => ram_empty_fb_i_reg,
      O => \gpr1.dout_i_reg[0]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFAAAA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => empty_fwft_i,
      I2 => CO(0),
      I3 => arready_pkt,
      I4 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAA0000FFFFFFFF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => empty_fwft_i,
      I2 => CO(0),
      I3 => arready_pkt,
      I4 => curr_fwft_state(0),
      I5 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7F7FFFFFFFF"
    )
        port map (
      I0 => arready_pkt,
      I1 => CO(0),
      I2 => empty_fwft_i,
      I3 => empty_fwft_fb_o_i_reg_0,
      I4 => s_axi_rready,
      I5 => \goreg_dm.dout_i_reg[22]\(0),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_rd_fwft__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    empty_fwft_i_reg_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_rd_fwft__parameterized0\ : entity is "rd_fwft";
end \system_axi_data_fifo_0_0_rd_fwft__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_rd_fwft__parameterized0\ is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal \aempty_fwft_i0__1\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal \empty_fwft_i0__1\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\ <= empty_fwft_fb_o_i;
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF02F20000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => empty_fwft_fb_o_i,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => ram_empty_fb_i_reg,
      I5 => aempty_fwft_fb_i,
      O => \aempty_fwft_i0__1\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \aempty_fwft_i0__1\,
      Q => aempty_fwft_fb_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
aempty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \aempty_fwft_i0__1\,
      Q => aempty_fwft_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0400"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => s_axi_rready,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => empty_fwft_fb_i,
      O => \empty_fwft_i0__1\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_fb_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => s_axi_rready,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
empty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gc0.count_d1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04555555"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => s_axi_rready,
      I2 => empty_fwft_fb_o_i,
      I3 => curr_fwft_state(1),
      I4 => curr_fwft_state(0),
      O => \gc0.count_reg[0]\(0)
    );
\goreg_bm.dout_i[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004F00"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => Q(1),
      I5 => Q(0),
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => empty_fwft_fb_o_i,
      I3 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A200FFFF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => empty_fwft_fb_o_i,
      I3 => curr_fwft_state(0),
      I4 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFFF0D000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => empty_fwft_fb_o_i,
      I2 => empty_fwft_i_reg_0,
      I3 => CO(0),
      I4 => arready_pkt,
      I5 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0),
      O => S(0)
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_rd_status_flags_ss;

architecture STRUCTURE of system_axi_data_fifo_0_0_rd_status_flags_ss is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_wr_bin_cntr is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    comp0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    comp1 : out STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    PNTR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc0.count_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_wr_bin_cntr;

architecture STRUCTURE of system_axi_data_fifo_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^comp0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_5_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_6_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_2 : label is "soft_lutpair2";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  comp0 <= \^comp0\;
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      I2 => p_13_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      I3 => p_13_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      I4 => p_13_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(4),
      Q => \^q\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AR(0),
      Q => p_13_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => p_13_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => p_13_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => p_13_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(4),
      Q => p_13_out(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => ram_empty_fb_i_reg(0),
      I1 => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\,
      I2 => \^comp0\,
      I3 => E(0),
      I4 => ram_empty_fb_i_reg_0,
      O => ram_empty_i_reg
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_reg[4]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_reg[4]\(0),
      I4 => ram_empty_fb_i_i_5_n_0,
      O => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \^q\(1),
      I1 => PNTR(1),
      I2 => \^q\(0),
      I3 => PNTR(0),
      I4 => ram_empty_fb_i_i_6_n_0,
      O => \^comp0\
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gc0.count_reg[4]\(3),
      I2 => \^q\(2),
      I3 => \gc0.count_reg[4]\(2),
      I4 => \gc0.count_reg[4]\(4),
      I5 => \^q\(4),
      O => ram_empty_fb_i_i_5_n_0
    );
ram_empty_fb_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => PNTR(3),
      I2 => \^q\(2),
      I3 => PNTR(2),
      I4 => PNTR(4),
      I5 => \^q\(4),
      O => ram_empty_fb_i_i_6_n_0
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => p_13_out(1),
      I1 => PNTR(1),
      I2 => p_13_out(0),
      I3 => PNTR(0),
      I4 => ram_full_fb_i_i_3_n_0,
      O => comp1
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_13_out(3),
      I1 => PNTR(3),
      I2 => p_13_out(2),
      I3 => PNTR(2),
      I4 => PNTR(4),
      I5 => p_13_out(4),
      O => ram_full_fb_i_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_wr_bin_cntr__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_empty_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg_0 : out STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_wr_bin_cntr__parameterized0\ : entity is "wr_bin_cntr";
end \system_axi_data_fifo_0_0_wr_bin_cntr__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_wr_bin_cntr__parameterized0\ is
  signal \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gcc0.gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_1\ : label is "soft_lutpair15";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) <= \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\gcc0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__2\(0)
    );
\gcc0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__2\(1)
    );
\gcc0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \plusOp__2\(2)
    );
\gcc0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \plusOp__2\(3)
    );
\gcc0.gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \plusOp__2\(4)
    );
\gcc0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \plusOp__2\(5)
    );
\gcc0.gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      O => \plusOp__2\(6)
    );
\gcc0.gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \plusOp__2\(7)
    );
\gcc0.gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gcc0.gc0.count[8]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => p_13_out(8),
      O => \plusOp__2\(8)
    );
\gcc0.gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \gcc0.gc0.count[8]_i_2_n_0\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(8),
      Q => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(0),
      Q => \^q\(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(1),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(2),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(3),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(4),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(5),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(6),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(7),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gcc0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(8),
      Q => p_13_out(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      I1 => \gc0.count_d1_reg[8]\(0),
      O => v1_reg(0)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      I1 => \gc0.count_reg[8]\(0),
      O => ram_empty_i_reg(0)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_13_out(8),
      I1 => \gc0.count_d1_reg[8]\(0),
      O => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\(8),
      I1 => \gc0.count_d1_reg[8]\(0),
      O => ram_empty_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_wr_status_flags_ss is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_wr_status_flags_ss;

architecture STRUCTURE of system_axi_data_fifo_0_0_wr_status_flags_ss is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_comb : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  E(0) <= \^e\(0);
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ram_full_i,
      I1 => s_axi_arvalid,
      I2 => ram_full_fb_i,
      O => \^e\(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080FFF08080808"
    )
        port map (
      I0 => \^e\(0),
      I1 => comp1,
      I2 => ram_empty_fb_i_reg(0),
      I3 => comp0,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      I5 => ram_full_fb_i,
      O => ram_full_comb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_arready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of system_axi_data_fifo_0_0_blk_mem_gen_prim_width is
  signal ENB_dly : STD_LOGIC;
  signal \^enb_dly_d\ : STD_LOGIC;
  signal POR_B : STD_LOGIC;
  signal RSTB_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  ENB_dly_D <= \^enb_dly_d\;
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ENB_dly,
      Q => \^enb_dly_d\,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => POR_B,
      Q => ENB_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTB_SHFT_REG(0),
      I1 => RSTB_SHFT_REG(4),
      O => p_1_out
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_1_out,
      Q => POR_B,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => '1',
      Q => RSTB_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_aclk,
      D => RSTB_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTB_SHFT_REG(4),
      R => '0'
    );
\prim_noinit.ram\: entity work.system_axi_data_fifo_0_0_blk_mem_gen_prim_wrapper
     port map (
      D(68 downto 0) => D(68 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => \^enb_dly_d\,
      POR_B => POR_B,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_memory is
  port (
    \gfwd_rev_pipeline1.storage_data1_reg[62]\ : out STD_LOGIC_VECTOR ( 62 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC;
    empty_fwft_fb_o_i_reg : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_fwft_i_reg : in STD_LOGIC;
    rd_fifo_free_space : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gfwd_rev_pipeline1.s_ready_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    EN : in STD_LOGIC;
    UNCONN_IN : in STD_LOGIC_VECTOR ( 62 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_memory;

architecture STRUCTURE of system_axi_data_fifo_0_0_memory is
  signal dout_i : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\ : STD_LOGIC;
  signal \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_n_3\ : STD_LOGIC;
  signal \^gfwd_rev_pipeline1.storage_data1_reg[62]\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \i__carry__0_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i__carry__0_i_7\ : label is "soft_lutpair4";
begin
  \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ <= \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\;
  \gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0) <= \^gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0);
arvalid_en0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(6),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(29),
      I3 => Q(7),
      O => DI(3)
    );
arvalid_en0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(4),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(27),
      I3 => Q(5),
      O => DI(2)
    );
arvalid_en0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(2),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      I3 => Q(3),
      O => DI(1)
    );
arvalid_en0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(0),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I3 => Q(1),
      O => DI(0)
    );
arvalid_en0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(6),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      I2 => Q(7),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(29),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(3)
    );
arvalid_en0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(4),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      I2 => Q(5),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(27),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(2)
    );
arvalid_en0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(2),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      I2 => Q(3),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(1)
    );
arvalid_en0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(0),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I2 => Q(1),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(0)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(0),
      I1 => rd_fifo_free_space(0),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(0)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(1),
      I1 => rd_fifo_free_space(1),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(1)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(2),
      I1 => rd_fifo_free_space(2),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(2)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(3),
      I1 => rd_fifo_free_space(3),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(3)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(3),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(2),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(1),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(0),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(4),
      I1 => rd_fifo_free_space(4),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(4)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(5),
      I1 => rd_fifo_free_space(5),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(5)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(6),
      I1 => rd_fifo_free_space(6),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(6)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(7),
      I1 => rd_fifo_free_space(7),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(7)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(7),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(29),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(6),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(5),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(27),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(4),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(8),
      I1 => rd_fifo_free_space(8),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(8)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222F222"
    )
        port map (
      I0 => s_axi_rready,
      I1 => empty_fwft_fb_o_i_reg,
      I2 => arready_pkt,
      I3 => CO(0),
      I4 => empty_fwft_i_reg,
      O => E(0)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => minusOp(9),
      I1 => rd_fifo_free_space(9),
      I2 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      O => D(9)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => empty_fwft_fb_o_i_reg,
      I1 => s_axi_rready,
      I2 => arready_pkt,
      I3 => CO(0),
      I4 => empty_fwft_i_reg,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0\,
      CO(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_1\,
      CO(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_2\,
      CO(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0\,
      S(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0\,
      S(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0\,
      S(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0\,
      CO(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0\,
      CO(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_1\,
      CO(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_2\,
      CO(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => minusOp(7 downto 4),
      S(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0\,
      S(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0\,
      S(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0\,
      S(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0\,
      CO(3 downto 1) => \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 2) => \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => minusOp(9 downto 8),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0)
    );
\gdm.dm_gen.dm\: entity work.system_axi_data_fifo_0_0_dmem
     port map (
      EN => EN,
      UNCONN_IN(62 downto 0) => UNCONN_IN(62 downto 0),
      count_d1(4 downto 0) => count_d1(4 downto 0),
      count_d10_in(4 downto 0) => count_d10_in(4 downto 0),
      dout_i(62 downto 0) => dout_i(62 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => \gpregsm1.curr_fwft_state_reg[0]\(0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(0),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(10),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(11),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(12),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(13),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(14),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(15),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(16),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(17),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(18),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(19),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(1),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(20),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(21),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(22),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(23),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(24),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(25),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(26),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(27),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(28),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(29),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(2),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(30),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(31),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(32),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(33),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(34),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(35),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(36),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(37),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(38),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(39),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(3),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(40),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(41),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(42),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(43),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(44),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(45),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(46),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(47),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(48),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(49),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(4),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(50),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(51),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(52),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(53),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(54),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(55),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(56),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(56),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(57),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(57),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(58),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(58),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(59),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(59),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(5),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(60),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(60),
      R => '0'
    );
\goreg_dm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(61),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(61),
      R => '0'
    );
\goreg_dm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(62),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(62),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(6),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(7),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(8),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      D => dout_i(9),
      Q => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF8700"
    )
        port map (
      I0 => \i__carry__0_i_5_n_0\,
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(29),
      I3 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I4 => Q(7),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => \i__carry__0_i_5_n_0\,
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      I2 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I3 => Q(6),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => \i__carry__0_i_6_n_0\,
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(27),
      I2 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I3 => Q(5),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => \i__carry__0_i_7_n_0\,
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      I2 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I3 => Q(4),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(27),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I4 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      I5 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(26),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I4 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF7F00"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(29),
      I1 => \i__carry__0_i_5_n_0\,
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(28),
      I3 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I4 => Q(8),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000808"
    )
        port map (
      I0 => arready_pkt,
      I1 => CO(0),
      I2 => empty_fwft_i_reg,
      I3 => empty_fwft_fb_o_i_reg,
      I4 => s_axi_rready,
      O => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FFFF807F0000"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      I3 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(25),
      I4 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I5 => Q(3),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF8700"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I2 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(24),
      I3 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I4 => Q(2),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      I1 => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(23),
      I2 => \^gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      I3 => Q(1),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_rd_logic is
  port (
    \out\ : out STD_LOGIC;
    \gpregsm1.user_valid_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_4_out__0\ : out STD_LOGIC;
    \gc0.count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[61]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_fwft_fb_o_i_reg : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[22]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_rd_logic;

architecture STRUCTURE of system_axi_data_fifo_0_0_rd_logic is
  signal \^gc0.count_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC;
begin
  \gc0.count_reg[0]\(0) <= \^gc0.count_reg[0]\(0);
  \out\ <= \^out\;
\gr1.gr1_int.rfwft\: entity work.system_axi_data_fifo_0_0_rd_fwft
     port map (
      AR(0) => AR(0),
      CO(0) => CO(0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      S(0) => S(0),
      arready_pkt => arready_pkt,
      empty_fwft_fb_o_i_reg_0 => empty_fwft_fb_o_i_reg,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\(0),
      \gc0.count_reg[0]\(0) => \^gc0.count_reg[0]\(0),
      \goreg_dm.dout_i_reg[22]\(0) => \goreg_dm.dout_i_reg[22]\(0),
      \gpr1.dout_i_reg[0]\(0) => \gpr1.dout_i_reg[0]\(0),
      \out\ => \gpregsm1.user_valid_reg\,
      \p_4_out__0\ => \p_4_out__0\,
      ram_empty_fb_i_reg => \^out\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready
    );
\grss.rsts\: entity work.system_axi_data_fifo_0_0_rd_status_flags_ss
     port map (
      AR(0) => AR(0),
      \out\ => \^out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      s_aclk => s_aclk
    );
rpntr: entity work.system_axi_data_fifo_0_0_rd_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^gc0.count_reg[0]\(0),
      Q(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gpr1.dout_i_reg[61]\(4 downto 0) => \gpr1.dout_i_reg[61]\(4 downto 0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_rd_status_flags_ss__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \gc0.count_d1_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC;
    \gc0.count_d1_reg[6]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gcc0.gc0.count_d1_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_rd_status_flags_ss__parameterized0\ : entity is "rd_status_flags_ss";
end \system_axi_data_fifo_0_0_rd_status_flags_ss__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_rd_status_flags_ss__parameterized0\ is
  signal c2_n_0 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c1: entity work.\system_axi_data_fifo_0_0_compare__parameterized0_1\
     port map (
      comp0 => comp0,
      \gc0.count_d1_reg[0]\ => \gc0.count_d1_reg[0]\,
      \gc0.count_d1_reg[2]\ => \gc0.count_d1_reg[2]\,
      \gc0.count_d1_reg[4]\ => \gc0.count_d1_reg[4]\,
      \gc0.count_d1_reg[6]\ => \gc0.count_d1_reg[6]\,
      \gcc0.gc0.count_d1_reg[8]\ => \gcc0.gc0.count_d1_reg[8]\
    );
c2: entity work.\system_axi_data_fifo_0_0_compare__parameterized0_2\
     port map (
      E(0) => E(0),
      comp0 => comp0,
      \gcc0.gc0.count_d1_reg[8]\(0) => \gcc0.gc0.count_d1_reg[8]_0\(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => ram_empty_fb_i,
      ram_empty_i_reg => c2_n_0,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_empty_fb_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
ram_empty_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_empty_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_reset_blk_ramfifo is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_reset_blk_ramfifo;

architecture STRUCTURE of system_axi_data_fifo_0_0_reset_blk_ramfifo is
  signal \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sckt_wr_rst_cc(1),
      I1 => sckt_wr_rst_cc(0),
      I2 => rst_wr_reg2,
      O => AR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sckt_wr_rst_cc(2),
      I1 => sckt_wr_rst_cc(3),
      I2 => sckt_wr_rst_cc(0),
      I3 => sckt_wr_rst_cc(1),
      I4 => rst_wr_reg2,
      O => \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => sckt_wr_rst_cc(0),
      I3 => sckt_wr_rst_cc(1),
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => sckt_wr_rst_cc(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(0),
      Q => sckt_wr_rst_cc(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(1),
      Q => sckt_wr_rst_cc(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(2),
      Q => sckt_wr_rst_cc(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\system_axi_data_fifo_0_0_xpm_cdc_async_rst__1\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized0\ : entity is "reset_blk_ramfifo";
end \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized0\ is
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_busy_rach : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \out\ <= rst_d2;
  ram_full_i_reg <= rst_d3;
\grstd1.grst_full.grst_f.rst_d1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I4 => rst_wr_reg2,
      O => wr_rst_busy_rach
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => wr_rst_busy_rach,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\system_axi_data_fifo_0_0_xpm_cdc_async_rst__2\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => rst_wr_reg2,
      O => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized1\ is
  port (
    src_arst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.m_valid_i_reg\ : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \gfwd_rev_pipeline1.m_valid_i_reg_0\ : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized1\ : entity is "reset_blk_ramfifo";
end \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized1\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized1\ is
  signal \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\ : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "false";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "false";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "false";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "false";
  signal \^src_arst\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "false";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \out\ <= rst_d2;
  src_arst <= \^src_arst\;
\gfwd_rev_pipeline1.m_valid_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F03A"
    )
        port map (
      I0 => \p_4_out__0\,
      I1 => m_axi_arready,
      I2 => \gfwd_rev_pipeline1.m_valid_i_reg_0\,
      I3 => areset_d1,
      I4 => \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\,
      O => \gfwd_rev_pipeline1.m_valid_i_reg\
    );
\gfwd_rev_pipeline1.m_valid_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I3 => rst_d2,
      O => \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\
    );
\gfwd_rev_pipeline1.s_ready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFC0EA"
    )
        port map (
      I0 => arready_pkt,
      I1 => m_axi_arready,
      I2 => \gfwd_rev_pipeline1.m_valid_i_reg_0\,
      I3 => \p_4_out__0\,
      I4 => areset_d1,
      I5 => \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\,
      O => \gfwd_rev_pipeline1.s_ready_i_reg\
    );
\grstd1.grst_full.grst_f.rst_d1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I4 => rst_wr_reg2,
      O => \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.system_axi_data_fifo_0_0_xpm_cdc_async_rst
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => \^src_arst\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \^src_arst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized2\ is
  port (
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    ENB_I : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized2\ : entity is "reset_blk_ramfifo";
end \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized2\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dest_rst : STD_LOGIC;
  signal \^grstd1.grst_full.grst_f.rst_d3_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal wr_rst_busy_i : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= \^grstd1.grst_full.grst_f.rst_d3_reg_0\;
  \out\ <= rst_d3;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => p_8_out,
      I4 => ram_empty_fb_i_reg,
      O => ENB_I
    );
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \^grstd1.grst_full.grst_f.rst_d3_reg_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d2,
      Q => rst_d3,
      S => \^grstd1.grst_full.grst_f.rst_d3_reg_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => dest_rst,
      Q => \^q\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^q\(0),
      Q => \^q\(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^q\(1),
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.system_axi_data_fifo_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => dest_rst,
      src_rst => src_arst
    );
wr_rst_busy_i_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I3 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      O => wr_rst_busy_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_wr_logic is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    PNTR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc0.count_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_data_fifo_0_0_wr_logic;

architecture STRUCTURE of system_axi_data_fifo_0_0_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal comp0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.system_axi_data_fifo_0_0_wr_status_flags_ss
     port map (
      E(0) => \^e\(0),
      comp0 => comp0,
      comp1 => comp1,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => \out\,
      ram_empty_fb_i_reg(0) => ram_empty_fb_i_reg(0),
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
wpntr: entity work.system_axi_data_fifo_0_0_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      PNTR(4 downto 0) => PNTR(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      comp0 => comp0,
      comp1 => comp1,
      \gc0.count_reg[4]\(4 downto 0) => \gc0.count_reg[4]\(4 downto 0),
      ram_empty_fb_i_reg(0) => ram_empty_fb_i_reg(0),
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg_0,
      ram_empty_i_reg => ram_empty_i_reg,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_wr_status_flags_ss__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    \gc0.count_d1_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_wr_status_flags_ss__parameterized0\ : entity is "wr_status_flags_ss";
end \system_axi_data_fifo_0_0_wr_status_flags_ss__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_wr_status_flags_ss__parameterized0\ is
  signal comp0 : STD_LOGIC;
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal \ram_full_comb__5\ : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c0: entity work.\system_axi_data_fifo_0_0_compare__parameterized0\
     port map (
      comp0 => comp0,
      \gc0.count_d1_reg[6]\(3 downto 0) => \gc0.count_d1_reg[6]\(3 downto 0),
      v1_reg(0) => v1_reg(0)
    );
c1: entity work.\system_axi_data_fifo_0_0_compare__parameterized0_0\
     port map (
      comp0 => comp0,
      \gc0.count_d1_reg[6]\(3 downto 0) => \gc0.count_d1_reg[6]_0\(3 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => ram_full_fb_i,
      p_8_out => p_8_out,
      \ram_full_comb__5\ => \ram_full_comb__5\,
      v1_reg_0(0) => v1_reg_0(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => m_axi_rready
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ram_full_comb__5\,
      Q => ram_full_fb_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
ram_full_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ram_full_comb__5\,
      Q => ram_full_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_axi_reg_slice is
  port (
    src_arst : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    arready_pkt : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 62 downto 0 );
    s_aclk : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 62 downto 0 )
  );
end system_axi_data_fifo_0_0_axi_reg_slice;

architecture STRUCTURE of system_axi_data_fifo_0_0_axi_reg_slice is
  signal areset_d1 : STD_LOGIC;
  signal \^arready_pkt\ : STD_LOGIC;
  signal extnd_reset : STD_LOGIC;
  signal \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
begin
  arready_pkt <= \^arready_pkt\;
  m_axi_arvalid <= \^m_axi_arvalid\;
\gfwd_rev_pipeline1.areset_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => extnd_reset,
      Q => areset_d1,
      R => '0'
    );
\gfwd_rev_pipeline1.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rstblk_n_3,
      Q => \^m_axi_arvalid\,
      R => '0'
    );
\gfwd_rev_pipeline1.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rstblk_n_2,
      Q => \^arready_pkt\,
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1[62]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_arvalid\,
      O => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\
    );
\gfwd_rev_pipeline1.storage_data1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(0),
      Q => UNCONN_OUT(0),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(10),
      Q => UNCONN_OUT(10),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(11),
      Q => UNCONN_OUT(11),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(12),
      Q => UNCONN_OUT(12),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(13),
      Q => UNCONN_OUT(13),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(14),
      Q => UNCONN_OUT(14),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(15),
      Q => UNCONN_OUT(15),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(16),
      Q => UNCONN_OUT(16),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(17),
      Q => UNCONN_OUT(17),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(18),
      Q => UNCONN_OUT(18),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(19),
      Q => UNCONN_OUT(19),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(1),
      Q => UNCONN_OUT(1),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(20),
      Q => UNCONN_OUT(20),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(21),
      Q => UNCONN_OUT(21),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(22),
      Q => UNCONN_OUT(22),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(23),
      Q => UNCONN_OUT(23),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(24),
      Q => UNCONN_OUT(24),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(25),
      Q => UNCONN_OUT(25),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(26),
      Q => UNCONN_OUT(26),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(27),
      Q => UNCONN_OUT(27),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(28),
      Q => UNCONN_OUT(28),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(29),
      Q => UNCONN_OUT(29),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(2),
      Q => UNCONN_OUT(2),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(30),
      Q => UNCONN_OUT(30),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(31),
      Q => UNCONN_OUT(31),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(32),
      Q => UNCONN_OUT(32),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(33),
      Q => UNCONN_OUT(33),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(34),
      Q => UNCONN_OUT(34),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(35),
      Q => UNCONN_OUT(35),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(36),
      Q => UNCONN_OUT(36),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(37),
      Q => UNCONN_OUT(37),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(38),
      Q => UNCONN_OUT(38),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(39),
      Q => UNCONN_OUT(39),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(3),
      Q => UNCONN_OUT(3),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(40),
      Q => UNCONN_OUT(40),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(41),
      Q => UNCONN_OUT(41),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(42),
      Q => UNCONN_OUT(42),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(43),
      Q => UNCONN_OUT(43),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(44),
      Q => UNCONN_OUT(44),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(45),
      Q => UNCONN_OUT(45),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(46),
      Q => UNCONN_OUT(46),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(47),
      Q => UNCONN_OUT(47),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(48),
      Q => UNCONN_OUT(48),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(49),
      Q => UNCONN_OUT(49),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(4),
      Q => UNCONN_OUT(4),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(50),
      Q => UNCONN_OUT(50),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(51),
      Q => UNCONN_OUT(51),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(52),
      Q => UNCONN_OUT(52),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(53),
      Q => UNCONN_OUT(53),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(54),
      Q => UNCONN_OUT(54),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(55),
      Q => UNCONN_OUT(55),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(56),
      Q => UNCONN_OUT(56),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(57),
      Q => UNCONN_OUT(57),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(58),
      Q => UNCONN_OUT(58),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(59),
      Q => UNCONN_OUT(59),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(5),
      Q => UNCONN_OUT(5),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(60),
      Q => UNCONN_OUT(60),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(61),
      Q => UNCONN_OUT(61),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(62),
      Q => UNCONN_OUT(62),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(6),
      Q => UNCONN_OUT(6),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(7),
      Q => UNCONN_OUT(7),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(8),
      Q => UNCONN_OUT(8),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[62]_i_1_n_0\,
      D => D(9),
      Q => UNCONN_OUT(9),
      R => '0'
    );
rstblk: entity work.\system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized1\
     port map (
      areset_d1 => areset_d1,
      arready_pkt => \^arready_pkt\,
      \gfwd_rev_pipeline1.m_valid_i_reg\ => rstblk_n_3,
      \gfwd_rev_pipeline1.m_valid_i_reg_0\ => \^m_axi_arvalid\,
      \gfwd_rev_pipeline1.s_ready_i_reg\ => rstblk_n_2,
      m_axi_arready => m_axi_arready,
      \out\ => extnd_reset,
      \p_4_out__0\ => \p_4_out__0\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of system_axi_data_fifo_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.system_axi_data_fifo_0_0_blk_mem_gen_prim_width
     port map (
      D(68 downto 0) => D(68 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_fifo_generator_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gfwd_rev_pipeline1.storage_data1_reg[62]\ : out STD_LOGIC_VECTOR ( 62 downto 0 );
    \p_4_out__0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arready : out STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    empty_fwft_fb_o_i_reg : in STD_LOGIC;
    rd_fifo_free_space : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNCONN_IN : in STD_LOGIC_VECTOR ( 62 downto 0 )
  );
end system_axi_data_fifo_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of system_axi_data_fifo_0_0_fifo_generator_ramfifo is
  signal \^gfwd_rev_pipeline1.storage_data1_reg[62]\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal \gntv_or_sync_fifo.gl0.rd_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
begin
  \gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0) <= \^gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0);
  \out\ <= \^out\;
\gntv_or_sync_fifo.gl0.rd\: entity work.system_axi_data_fifo_0_0_rd_logic
     port map (
      AR(0) => rstblk_n_2,
      CO(0) => CO(0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_3\,
      Q(1 downto 0) => Q(9 downto 8),
      S(0) => S(0),
      arready_pkt => arready_pkt,
      empty_fwft_fb_o_i_reg => empty_fwft_fb_o_i_reg,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]_0\(0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(0),
      \gc0.count_d1_reg[4]\(4 downto 0) => rd_pntr_plus1(4 downto 0),
      \gc0.count_reg[0]\(0) => p_8_out,
      \goreg_dm.dout_i_reg[22]\(0) => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(22),
      \gpr1.dout_i_reg[0]\(0) => ram_rd_en_i,
      \gpr1.dout_i_reg[61]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gpregsm1.user_valid_reg\ => \^out\,
      \out\ => p_2_out,
      \p_4_out__0\ => \p_4_out__0\,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.system_axi_data_fifo_0_0_wr_logic
     port map (
      AR(0) => rstblk_n_2,
      E(0) => p_19_out,
      PNTR(4 downto 0) => p_0_out_0(4 downto 0),
      Q(4 downto 0) => p_12_out(4 downto 0),
      \gc0.count_reg[4]\(4 downto 0) => rd_pntr_plus1(4 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      ram_empty_fb_i_reg(0) => p_8_out,
      ram_empty_fb_i_reg_0 => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
\gntv_or_sync_fifo.mem\: entity work.system_axi_data_fifo_0_0_memory
     port map (
      CO(0) => CO(0),
      D(9 downto 0) => D(9 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => E(0),
      EN => p_19_out,
      Q(8 downto 0) => Q(8 downto 0),
      UNCONN_IN(62 downto 0) => UNCONN_IN(62 downto 0),
      arready_pkt => arready_pkt,
      count_d1(4 downto 0) => p_0_out_0(4 downto 0),
      count_d10_in(4 downto 0) => p_12_out(4 downto 0),
      empty_fwft_fb_o_i_reg => empty_fwft_fb_o_i_reg,
      empty_fwft_i_reg => \^out\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(2 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(3 downto 1),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0),
      \gfwd_rev_pipeline1.s_ready_i_reg\(0) => \gntv_or_sync_fifo.gl0.rd_n_3\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0) => \^gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => ram_rd_en_i,
      rd_fifo_free_space(9 downto 0) => rd_fifo_free_space(9 downto 0),
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready
    );
rstblk: entity work.\system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized0\
     port map (
      AR(0) => rstblk_n_2,
      \out\ => rst_full_ff_i,
      ram_full_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_rd_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \gpregsm1.user_valid_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : out STD_LOGIC;
    \gc0.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gcc0.gc0.count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    empty_fwft_i_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_rd_logic__parameterized0\ : entity is "rd_logic";
end \system_axi_data_fifo_0_0_rd_logic__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_rd_logic__parameterized0\ is
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out\ : STD_LOGIC;
  signal \^p_8_out\ : STD_LOGIC;
  signal rpntr_n_22 : STD_LOGIC;
  signal rpntr_n_23 : STD_LOGIC;
  signal rpntr_n_24 : STD_LOGIC;
  signal rpntr_n_25 : STD_LOGIC;
begin
  \out\ <= \^out\;
  p_8_out <= \^p_8_out\;
\gr1.gr1_int.rfwft\: entity work.\system_axi_data_fifo_0_0_rd_fwft__parameterized0\
     port map (
      CO(0) => CO(0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      S(0) => S(0),
      arready_pkt => arready_pkt,
      empty_fwft_i_reg_0 => empty_fwft_i_reg,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0),
      \gc0.count_reg[0]\(0) => \^p_8_out\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\,
      \out\ => \gpregsm1.user_valid_reg\,
      ram_empty_fb_i_reg => \^out\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\grss.rsts\: entity work.\system_axi_data_fifo_0_0_rd_status_flags_ss__parameterized0\
     port map (
      E(0) => \^p_8_out\,
      \gc0.count_d1_reg[0]\ => rpntr_n_22,
      \gc0.count_d1_reg[2]\ => rpntr_n_23,
      \gc0.count_d1_reg[4]\ => rpntr_n_24,
      \gc0.count_d1_reg[6]\ => rpntr_n_25,
      \gcc0.gc0.count_d1_reg[8]\ => \gcc0.gc0.count_d1_reg[8]\,
      \gcc0.gc0.count_d1_reg[8]_0\(0) => \gcc0.gc0.count_d1_reg[8]_0\(0),
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\,
      \out\ => \^out\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      s_aclk => s_aclk,
      v1_reg(3 downto 0) => \c2/v1_reg\(3 downto 0)
    );
rpntr: entity work.\system_axi_data_fifo_0_0_rd_bin_cntr__parameterized0\
     port map (
      E(0) => \^p_8_out\,
      Q(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \gc0.count_d1_reg[8]_0\(0) => \gc0.count_d1_reg[8]\(0),
      \gcc0.gc0.count_d1_reg[7]\(7 downto 0) => \gcc0.gc0.count_d1_reg[7]\(7 downto 0),
      \gcc0.gc0.count_reg[7]\(7 downto 0) => \gcc0.gc0.count_reg[7]\(7 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\,
      ram_empty_i_reg => rpntr_n_22,
      ram_empty_i_reg_0 => rpntr_n_23,
      ram_empty_i_reg_1 => rpntr_n_24,
      ram_empty_i_reg_2 => rpntr_n_25,
      s_aclk => s_aclk,
      v1_reg(3 downto 0) => v1_reg(3 downto 0),
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0),
      v1_reg_1(3 downto 0) => \c2/v1_reg\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_wr_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_empty_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg_0 : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \gc0.count_d1_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_wr_logic__parameterized0\ : entity is "wr_logic";
end \system_axi_data_fifo_0_0_wr_logic__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_wr_logic__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.\system_axi_data_fifo_0_0_wr_status_flags_ss__parameterized0\
     port map (
      E(0) => \^e\(0),
      \gc0.count_d1_reg[6]\(3 downto 0) => \gc0.count_d1_reg[6]\(3 downto 0),
      \gc0.count_d1_reg[6]_0\(3 downto 0) => \gc0.count_d1_reg[6]_0\(3 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\,
      \out\ => \out\,
      p_8_out => p_8_out,
      s_aclk => s_aclk,
      v1_reg(0) => \c0/v1_reg\(4),
      v1_reg_0(0) => \c1/v1_reg\(4)
    );
wpntr: entity work.\system_axi_data_fifo_0_0_wr_bin_cntr__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      E(0) => \^e\(0),
      Q(7 downto 0) => Q(7 downto 0),
      \gc0.count_d1_reg[8]\(0) => \gc0.count_d1_reg[8]\(0),
      \gc0.count_reg[8]\(0) => \gc0.count_reg[8]\(0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\,
      ram_empty_i_reg(0) => ram_empty_i_reg(0),
      ram_empty_i_reg_0 => ram_empty_i_reg_0,
      s_aclk => s_aclk,
      v1_reg(0) => \c0/v1_reg\(4),
      v1_reg_0(0) => \c1/v1_reg\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_blk_mem_gen_top;

architecture STRUCTURE of system_axi_data_fifo_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.system_axi_data_fifo_0_0_blk_mem_gen_generic_cstr
     port map (
      D(68 downto 0) => D(68 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_fifo_generator_top is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gfwd_rev_pipeline1.storage_data1_reg[62]\ : out STD_LOGIC_VECTOR ( 62 downto 0 );
    \p_4_out__0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arready : out STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    empty_fwft_fb_o_i_reg : in STD_LOGIC;
    rd_fifo_free_space : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    UNCONN_IN : in STD_LOGIC_VECTOR ( 62 downto 0 )
  );
end system_axi_data_fifo_0_0_fifo_generator_top;

architecture STRUCTURE of system_axi_data_fifo_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.system_axi_data_fifo_0_0_fifo_generator_ramfifo
     port map (
      CO(0) => CO(0),
      D(9 downto 0) => D(9 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => E(0),
      Q(9 downto 0) => Q(9 downto 0),
      S(0) => S(0),
      UNCONN_IN(62 downto 0) => UNCONN_IN(62 downto 0),
      arready_pkt => arready_pkt,
      empty_fwft_fb_o_i_reg => empty_fwft_fb_o_i_reg,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]_0\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]_0\(0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0) => \gfwd_rev_pipeline1.storage_data1_reg[62]\(62 downto 0),
      \out\ => \out\,
      \p_4_out__0\ => \p_4_out__0\,
      rd_fifo_free_space(9 downto 0) => rd_fifo_free_space(9 downto 0),
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.system_axi_data_fifo_0_0_blk_mem_gen_top
     port map (
      D(68 downto 0) => D(68 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1;

architecture STRUCTURE of system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1 is
begin
inst_blk_mem_gen: entity work.system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1_synth
     port map (
      D(68 downto 0) => D(68 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_memory__parameterized0\ is
  port (
    ENB_dly_D : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gcc0.gc0.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    empty_fwft_fb_o_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_memory__parameterized0\ : entity is "memory";
end \system_axi_data_fifo_0_0_memory__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_memory__parameterized0\ is
  signal doutb : STD_LOGIC_VECTOR ( 68 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.system_axi_data_fifo_0_0_blk_mem_gen_v8_4_1
     port map (
      D(68 downto 0) => doutb(68 downto 0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc0.count_d1_reg[8]\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => \gcc0.gc0.count_d1_reg[8]\(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(0),
      Q => UNCONN_OUT(0),
      R => '0'
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(10),
      Q => UNCONN_OUT(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(11),
      Q => UNCONN_OUT(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(12),
      Q => UNCONN_OUT(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(13),
      Q => UNCONN_OUT(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(14),
      Q => UNCONN_OUT(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(15),
      Q => UNCONN_OUT(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(16),
      Q => UNCONN_OUT(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(17),
      Q => UNCONN_OUT(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(18),
      Q => UNCONN_OUT(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(19),
      Q => UNCONN_OUT(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(1),
      Q => UNCONN_OUT(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(20),
      Q => UNCONN_OUT(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(21),
      Q => UNCONN_OUT(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(22),
      Q => UNCONN_OUT(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(23),
      Q => UNCONN_OUT(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(24),
      Q => UNCONN_OUT(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(25),
      Q => UNCONN_OUT(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(26),
      Q => UNCONN_OUT(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(27),
      Q => UNCONN_OUT(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(28),
      Q => UNCONN_OUT(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(29),
      Q => UNCONN_OUT(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(2),
      Q => UNCONN_OUT(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(30),
      Q => UNCONN_OUT(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(31),
      Q => UNCONN_OUT(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(32),
      Q => UNCONN_OUT(32),
      R => '0'
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(33),
      Q => UNCONN_OUT(33),
      R => '0'
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(34),
      Q => UNCONN_OUT(34),
      R => '0'
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(35),
      Q => UNCONN_OUT(35),
      R => '0'
    );
\goreg_bm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(36),
      Q => UNCONN_OUT(36),
      R => '0'
    );
\goreg_bm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(37),
      Q => UNCONN_OUT(37),
      R => '0'
    );
\goreg_bm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(38),
      Q => UNCONN_OUT(38),
      R => '0'
    );
\goreg_bm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(39),
      Q => UNCONN_OUT(39),
      R => '0'
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(3),
      Q => UNCONN_OUT(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(40),
      Q => UNCONN_OUT(40),
      R => '0'
    );
\goreg_bm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(41),
      Q => UNCONN_OUT(41),
      R => '0'
    );
\goreg_bm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(42),
      Q => UNCONN_OUT(42),
      R => '0'
    );
\goreg_bm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(43),
      Q => UNCONN_OUT(43),
      R => '0'
    );
\goreg_bm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(44),
      Q => UNCONN_OUT(44),
      R => '0'
    );
\goreg_bm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(45),
      Q => UNCONN_OUT(45),
      R => '0'
    );
\goreg_bm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(46),
      Q => UNCONN_OUT(46),
      R => '0'
    );
\goreg_bm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(47),
      Q => UNCONN_OUT(47),
      R => '0'
    );
\goreg_bm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(48),
      Q => UNCONN_OUT(48),
      R => '0'
    );
\goreg_bm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(49),
      Q => UNCONN_OUT(49),
      R => '0'
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(4),
      Q => UNCONN_OUT(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(50),
      Q => UNCONN_OUT(50),
      R => '0'
    );
\goreg_bm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(51),
      Q => UNCONN_OUT(51),
      R => '0'
    );
\goreg_bm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(52),
      Q => UNCONN_OUT(52),
      R => '0'
    );
\goreg_bm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(53),
      Q => UNCONN_OUT(53),
      R => '0'
    );
\goreg_bm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(54),
      Q => UNCONN_OUT(54),
      R => '0'
    );
\goreg_bm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(55),
      Q => UNCONN_OUT(55),
      R => '0'
    );
\goreg_bm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(56),
      Q => UNCONN_OUT(56),
      R => '0'
    );
\goreg_bm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(57),
      Q => UNCONN_OUT(57),
      R => '0'
    );
\goreg_bm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(58),
      Q => UNCONN_OUT(58),
      R => '0'
    );
\goreg_bm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(59),
      Q => UNCONN_OUT(59),
      R => '0'
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(5),
      Q => UNCONN_OUT(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(60),
      Q => UNCONN_OUT(60),
      R => '0'
    );
\goreg_bm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(61),
      Q => UNCONN_OUT(61),
      R => '0'
    );
\goreg_bm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(62),
      Q => UNCONN_OUT(62),
      R => '0'
    );
\goreg_bm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(63),
      Q => UNCONN_OUT(63),
      R => '0'
    );
\goreg_bm.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(64),
      Q => UNCONN_OUT(64),
      R => '0'
    );
\goreg_bm.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(65),
      Q => UNCONN_OUT(65),
      R => '0'
    );
\goreg_bm.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(66),
      Q => UNCONN_OUT(66),
      R => '0'
    );
\goreg_bm.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(67),
      Q => UNCONN_OUT(67),
      R => '0'
    );
\goreg_bm.dout_i_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(68),
      Q => UNCONN_OUT(68),
      R => '0'
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(6),
      Q => UNCONN_OUT(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(7),
      Q => UNCONN_OUT(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(8),
      Q => UNCONN_OUT(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => empty_fwft_fb_o_i_reg(0),
      D => doutb(9),
      Q => UNCONN_OUT(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_fifo_generator_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \system_axi_data_fifo_0_0_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_fifo_generator_ramfifo__parameterized0\ is
  signal dout_i : STD_LOGIC;
  signal full_fb_rdch : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_20\ : STD_LOGIC;
  signal \grss.rsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gwss.wsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwss.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
  signal rstblk_n_4 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.\system_axi_data_fifo_0_0_rd_logic__parameterized0\
     port map (
      CO(0) => CO(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => p_0_out(8 downto 0),
      E(0) => dout_i,
      Q(1) => rstblk_n_3,
      Q(0) => rstblk_n_4,
      S(0) => S(0),
      arready_pkt => arready_pkt,
      empty_fwft_i_reg => empty_fwft_i_reg,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0) => Q(0),
      \gc0.count_d1_reg[8]\(0) => rd_pntr_plus1(8),
      \gcc0.gc0.count_d1_reg[7]\(7 downto 0) => p_12_out(7 downto 0),
      \gcc0.gc0.count_d1_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_20\,
      \gcc0.gc0.count_d1_reg[8]_0\(0) => \grss.rsts/c2/v1_reg\(4),
      \gcc0.gc0.count_reg[7]\(7 downto 0) => p_13_out(7 downto 0),
      \gpregsm1.user_valid_reg\ => \out\,
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => rstblk_n_1,
      \out\ => p_2_out,
      p_8_out => p_8_out,
      ram_full_fb_i_reg => full_fb_rdch,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      v1_reg(3 downto 0) => \gwss.wsts/c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \gwss.wsts/c1/v1_reg\(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\system_axi_data_fifo_0_0_wr_logic__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => p_12_out(8 downto 0),
      E(0) => p_19_out,
      Q(7 downto 0) => p_13_out(7 downto 0),
      \gc0.count_d1_reg[6]\(3 downto 0) => \gwss.wsts/c0/v1_reg\(3 downto 0),
      \gc0.count_d1_reg[6]_0\(3 downto 0) => \gwss.wsts/c1/v1_reg\(3 downto 0),
      \gc0.count_d1_reg[8]\(0) => p_0_out(8),
      \gc0.count_reg[8]\(0) => rd_pntr_plus1(8),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ => rstblk_n_1,
      \out\ => full_fb_rdch,
      p_8_out => p_8_out,
      ram_empty_i_reg(0) => \grss.rsts/c2/v1_reg\(4),
      ram_empty_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_20\,
      s_aclk => s_aclk
    );
\gntv_or_sync_fifo.mem\: entity work.\system_axi_data_fifo_0_0_memory__parameterized0\
     port map (
      DIADI(3 downto 0) => DIADI(3 downto 0),
      E(0) => p_19_out,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      UNCONN_OUT(68 downto 0) => UNCONN_OUT(68 downto 0),
      empty_fwft_fb_o_i_reg(0) => dout_i,
      \gc0.count_d1_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gcc0.gc0.count_d1_reg[8]\(8 downto 0) => p_12_out(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => full_fb_rdch,
      s_aclk => s_aclk
    );
rstblk: entity work.\system_axi_data_fifo_0_0_reset_blk_ramfifo__parameterized2\
     port map (
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      Q(1) => rstblk_n_3,
      Q(0) => rstblk_n_4,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rstblk_n_1,
      \out\ => rst_full_gen_i,
      p_8_out => p_8_out,
      ram_empty_fb_i_reg => p_2_out,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_data_fifo_0_0_fifo_generator_top__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_data_fifo_0_0_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \system_axi_data_fifo_0_0_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \system_axi_data_fifo_0_0_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\system_axi_data_fifo_0_0_fifo_generator_ramfifo__parameterized0\
     port map (
      CO(0) => CO(0),
      DIADI(3 downto 0) => DIADI(3 downto 0),
      Q(0) => Q(0),
      S(0) => S(0),
      UNCONN_OUT(68 downto 0) => UNCONN_OUT(68 downto 0),
      arready_pkt => arready_pkt,
      empty_fwft_i_reg => empty_fwft_i_reg,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_fifo_generator_v13_2_2_synth is
  port (
    Q : out STD_LOGIC_VECTOR ( 68 downto 0 );
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 62 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 62 downto 0 );
    m_axi_arready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
end system_axi_data_fifo_0_0_fifo_generator_v13_2_2_synth;

architecture STRUCTURE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2_synth is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal arready_pkt : STD_LOGIC;
  signal arvalid_en : STD_LOGIC;
  signal arvalid_en0_carry_n_0 : STD_LOGIC;
  signal arvalid_en0_carry_n_1 : STD_LOGIC;
  signal arvalid_en0_carry_n_2 : STD_LOGIC;
  signal arvalid_en0_carry_n_3 : STD_LOGIC;
  signal empty_fb_rdch : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_32\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_33\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_34\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_58\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_59\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_60\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_61\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_62\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_63\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_64\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_67\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_87\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_88\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_89\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_90\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_91\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_92\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_93\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_94\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_95\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_96\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_1\ : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_4_out__0\ : STD_LOGIC;
  signal rach_empty : STD_LOGIC;
  signal rd_fifo_free_space : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_arvalid_en0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_arvalid_en0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_arvalid_en0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of arvalid_en0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \arvalid_en0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\,
      DI(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\,
      DI(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\,
      DI(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\,
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_67\,
      O(3 downto 0) => rd_fifo_free_space(3 downto 0),
      S(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_88\,
      S(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_89\,
      S(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_90\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_91\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      DI(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      DI(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      DI(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\,
      O(3 downto 0) => rd_fifo_free_space(7 downto 4),
      S(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_92\,
      S(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_93\,
      S(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_94\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_95\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      O(3 downto 2) => \NLW__inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => rd_fifo_free_space(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_1\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_96\
    );
arvalid_en0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => arvalid_en0_carry_n_0,
      CO(2) => arvalid_en0_carry_n_1,
      CO(1) => arvalid_en0_carry_n_2,
      CO(0) => arvalid_en0_carry_n_3,
      CYINIT => '0',
      DI(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83\,
      DI(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84\,
      DI(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85\,
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86\,
      O(3 downto 0) => NLW_arvalid_en0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79\,
      S(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80\,
      S(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82\
    );
\arvalid_en0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => arvalid_en0_carry_n_0,
      CO(3 downto 1) => \NLW_arvalid_en0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => arvalid_en,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_87\,
      O(3 downto 0) => \NLW_arvalid_en0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_1\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(0),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(1),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(2),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(3),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(4),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(5),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(6),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(7),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      CLR => p_0_out_0,
      D => p_1_in(8),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      D => p_1_in(9),
      PRE => p_0_out_0,
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\
    );
\gaxi_full_lite.gread_ch.grach2.axi_rach\: entity work.system_axi_data_fifo_0_0_fifo_generator_top
     port map (
      CO(0) => arvalid_en,
      D(9 downto 0) => p_1_in(9 downto 0),
      DI(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83\,
      DI(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84\,
      DI(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85\,
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86\,
      E(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_66\,
      Q(9) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\,
      Q(8) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      Q(7) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      Q(6) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      Q(5) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      Q(4) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\,
      Q(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\,
      Q(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\,
      Q(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\,
      Q(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_1\,
      UNCONN_IN(62 downto 0) => DI(62 downto 0),
      arready_pkt => arready_pkt,
      empty_fwft_fb_o_i_reg => empty_fb_rdch,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]_0\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_87\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\ => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_67\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_88\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_89\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_90\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_0\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_91\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_92\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_93\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_94\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_95\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_96\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(62) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(61) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(60) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(59) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(58) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(57) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(56) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(55) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(54) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(53) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(52) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(51) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(50) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(49) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(48) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(47) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(46) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(45) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(44) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(43) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(42) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(41) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(40) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(39) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(38) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(37) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(36) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(35) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(34) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(33) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(32) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_32\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(31) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_33\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(30) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_34\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(29 downto 22) => value(7 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(21) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(20) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(19) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(18) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(17) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(16) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(15) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(14) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(13) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(12) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(11) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(10) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(9) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(8) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(7) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(6) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_58\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(5) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_59\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(4) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_60\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_61\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_62\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_63\,
      \gfwd_rev_pipeline1.storage_data1_reg[62]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_64\,
      \out\ => rach_empty,
      \p_4_out__0\ => \p_4_out__0\,
      rd_fifo_free_space(9 downto 0) => rd_fifo_free_space(9 downto 0),
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gread_ch.grach2.gaxi_arvld.rach_pkt_reg_slice\: entity work.system_axi_data_fifo_0_0_axi_reg_slice
     port map (
      D(62) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2\,
      D(61) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3\,
      D(60) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4\,
      D(59) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5\,
      D(58) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6\,
      D(57) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7\,
      D(56) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8\,
      D(55) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9\,
      D(54) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10\,
      D(53) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11\,
      D(52) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12\,
      D(51) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13\,
      D(50) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14\,
      D(49) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15\,
      D(48) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16\,
      D(47) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17\,
      D(46) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18\,
      D(45) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19\,
      D(44) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20\,
      D(43) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21\,
      D(42) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22\,
      D(41) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23\,
      D(40) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24\,
      D(39) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25\,
      D(38) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26\,
      D(37) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27\,
      D(36) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28\,
      D(35) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29\,
      D(34) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30\,
      D(33) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31\,
      D(32) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_32\,
      D(31) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_33\,
      D(30) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_34\,
      D(29 downto 22) => value(7 downto 0),
      D(21) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43\,
      D(20) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44\,
      D(19) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45\,
      D(18) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46\,
      D(17) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47\,
      D(16) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48\,
      D(15) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49\,
      D(14) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50\,
      D(13) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51\,
      D(12) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52\,
      D(11) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53\,
      D(10) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54\,
      D(9) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55\,
      D(8) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56\,
      D(7) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57\,
      D(6) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_58\,
      D(5) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_59\,
      D(4) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_60\,
      D(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_61\,
      D(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_62\,
      D(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_63\,
      D(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_64\,
      UNCONN_OUT(62 downto 0) => UNCONN_OUT(62 downto 0),
      arready_pkt => arready_pkt,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \p_4_out__0\ => \p_4_out__0\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gread_ch.grdch2.axi_rdch\: entity work.\system_axi_data_fifo_0_0_fifo_generator_top__parameterized0\
     port map (
      CO(0) => arvalid_en,
      DIADI(3 downto 0) => DIADI(3 downto 0),
      Q(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\,
      S(0) => \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_1\,
      UNCONN_OUT(68 downto 0) => Q(68 downto 0),
      arready_pkt => arready_pkt,
      empty_fwft_i_reg => rach_empty,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => empty_fb_rdch,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      src_arst => inverted_reset
    );
\reset_gen_cc.rstblk_cc\: entity work.system_axi_data_fifo_0_0_reset_blk_ramfifo
     port map (
      AR(0) => p_0_out_0,
      s_aclk => s_aclk,
      src_arst => inverted_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_fifo_generator_v13_2_2 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 63;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 69;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 63;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 74;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 74;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x72";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 2;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 32;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 512;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 32;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 0;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 9;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 5;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 : entity is 1;
end system_axi_data_fifo_0_0_fifo_generator_v13_2_2;

architecture STRUCTURE of system_axi_data_fifo_0_0_fifo_generator_v13_2_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(5) <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(5) <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(5) <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(5) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(5) <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(5) <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.system_axi_data_fifo_0_0_fifo_generator_v13_2_2_synth
     port map (
      DI(62) => s_axi_arid(0),
      DI(61 downto 30) => s_axi_araddr(31 downto 0),
      DI(29 downto 22) => s_axi_arlen(7 downto 0),
      DI(21 downto 19) => s_axi_arsize(2 downto 0),
      DI(18 downto 17) => s_axi_arburst(1 downto 0),
      DI(16) => s_axi_arlock(0),
      DI(15 downto 12) => s_axi_arcache(3 downto 0),
      DI(11 downto 9) => s_axi_arprot(2 downto 0),
      DI(8 downto 5) => s_axi_arqos(3 downto 0),
      DI(4 downto 1) => s_axi_arregion(3 downto 0),
      DI(0) => s_axi_aruser(0),
      DIADI(3 downto 2) => m_axi_rresp(1 downto 0),
      DIADI(1) => m_axi_ruser(0),
      DIADI(0) => m_axi_rlast,
      Q(68) => s_axi_rid(0),
      Q(67 downto 4) => s_axi_rdata(63 downto 0),
      Q(3 downto 2) => s_axi_rresp(1 downto 0),
      Q(1) => s_axi_ruser(0),
      Q(0) => s_axi_rlast,
      UNCONN_OUT(62) => m_axi_arid(0),
      UNCONN_OUT(61 downto 30) => m_axi_araddr(31 downto 0),
      UNCONN_OUT(29 downto 22) => m_axi_arlen(7 downto 0),
      UNCONN_OUT(21 downto 19) => m_axi_arsize(2 downto 0),
      UNCONN_OUT(18 downto 17) => m_axi_arburst(1 downto 0),
      UNCONN_OUT(16) => m_axi_arlock(0),
      UNCONN_OUT(15 downto 12) => m_axi_arcache(3 downto 0),
      UNCONN_OUT(11 downto 9) => m_axi_arprot(2 downto 0),
      UNCONN_OUT(8 downto 5) => m_axi_arqos(3 downto 0),
      UNCONN_OUT(4 downto 1) => m_axi_arregion(3 downto 0),
      UNCONN_OUT(0) => m_axi_aruser(0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo is
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
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
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
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
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
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 0;
  attribute C_AXI_READ_FIFO_DELAY : integer;
  attribute C_AXI_READ_FIFO_DELAY of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_AXI_READ_FIFO_DEPTH : integer;
  attribute C_AXI_READ_FIFO_DEPTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 512;
  attribute C_AXI_READ_FIFO_TYPE : string;
  attribute C_AXI_READ_FIFO_TYPE of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is "bram";
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 0;
  attribute C_AXI_WRITE_FIFO_DELAY : integer;
  attribute C_AXI_WRITE_FIFO_DELAY of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 0;
  attribute C_AXI_WRITE_FIFO_DEPTH : integer;
  attribute C_AXI_WRITE_FIFO_DEPTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 0;
  attribute C_AXI_WRITE_FIFO_TYPE : string;
  attribute C_AXI_WRITE_FIFO_TYPE of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is "lut";
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is "zynq";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 2;
  attribute P_PRIM_FIFO_TYPE : string;
  attribute P_PRIM_FIFO_TYPE of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is "512x72";
  attribute P_READ_FIFO_DEPTH_LOG : integer;
  attribute P_READ_FIFO_DEPTH_LOG of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 9;
  attribute P_WIDTH_RACH : integer;
  attribute P_WIDTH_RACH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 63;
  attribute P_WIDTH_RDCH : integer;
  attribute P_WIDTH_RDCH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 69;
  attribute P_WIDTH_WACH : integer;
  attribute P_WIDTH_WACH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 63;
  attribute P_WIDTH_WDCH : integer;
  attribute P_WIDTH_WDCH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 74;
  attribute P_WIDTH_WRCH : integer;
  attribute P_WIDTH_WRCH of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 4;
  attribute P_WRITE_FIFO_DEPTH_LOG : integer;
  attribute P_WRITE_FIFO_DEPTH_LOG of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo : entity is 1;
end system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo;

architecture STRUCTURE of system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_buser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awregion\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awuser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_wuser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_bready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_wlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_wvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_awready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_bvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_wready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_s_axis_tready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axis_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axis_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axis_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_dout_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awaddr_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awburst_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awcache_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awlen_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awlock_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awprot_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awqos_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awregion_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_wdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_wid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_wstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_wuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_bid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_bresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_buser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_AXI_ADDR_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 32;
  attribute C_AXI_ARUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_AWUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_BUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_DATA_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 64;
  attribute C_AXI_ID_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_RUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_WUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \gen_fifo.fifo_gen_inst\ : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \gen_fifo.fifo_gen_inst\ : label is 63;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \gen_fifo.fifo_gen_inst\ : label is 69;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \gen_fifo.fifo_gen_inst\ : label is 63;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \gen_fifo.fifo_gen_inst\ : label is 74;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \gen_fifo.fifo_gen_inst\ : label is 74;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \gen_fifo.fifo_gen_inst\ : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_FAMILY of \gen_fifo.fifo_gen_inst\ : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \gen_fifo.fifo_gen_inst\ : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \gen_fifo.fifo_gen_inst\ : label is "512x72";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \gen_fifo.fifo_gen_inst\ : label is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \gen_fifo.fifo_gen_inst\ : label is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \gen_fifo.fifo_gen_inst\ : label is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \gen_fifo.fifo_gen_inst\ : label is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \gen_fifo.fifo_gen_inst\ : label is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \gen_fifo.fifo_gen_inst\ : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \gen_fifo.fifo_gen_inst\ : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \gen_fifo.fifo_gen_inst\ : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \gen_fifo.fifo_gen_inst\ : label is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \gen_fifo.fifo_gen_inst\ : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \gen_fifo.fifo_gen_inst\ : label is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \gen_fifo.fifo_gen_inst\ : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \gen_fifo.fifo_gen_inst\ : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \gen_fifo.fifo_gen_inst\ : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \gen_fifo.fifo_gen_inst\ : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \gen_fifo.fifo_gen_inst\ : label is 32;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \gen_fifo.fifo_gen_inst\ : label is 512;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \gen_fifo.fifo_gen_inst\ : label is 32;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \gen_fifo.fifo_gen_inst\ : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \gen_fifo.fifo_gen_inst\ : label is 9;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \gen_fifo.fifo_gen_inst\ : label is 1;
begin
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bid\(0) <= m_axi_bid(0);
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_buser\(0) <= m_axi_buser(0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_awaddr\(31 downto 0) <= s_axi_awaddr(31 downto 0);
  \^s_axi_awburst\(1 downto 0) <= s_axi_awburst(1 downto 0);
  \^s_axi_awcache\(3 downto 0) <= s_axi_awcache(3 downto 0);
  \^s_axi_awid\(0) <= s_axi_awid(0);
  \^s_axi_awlen\(7 downto 0) <= s_axi_awlen(7 downto 0);
  \^s_axi_awlock\(0) <= s_axi_awlock(0);
  \^s_axi_awprot\(2 downto 0) <= s_axi_awprot(2 downto 0);
  \^s_axi_awqos\(3 downto 0) <= s_axi_awqos(3 downto 0);
  \^s_axi_awregion\(3 downto 0) <= s_axi_awregion(3 downto 0);
  \^s_axi_awsize\(2 downto 0) <= s_axi_awsize(2 downto 0);
  \^s_axi_awuser\(0) <= s_axi_awuser(0);
  \^s_axi_awvalid\ <= s_axi_awvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_wdata\(63 downto 0) <= s_axi_wdata(63 downto 0);
  \^s_axi_wlast\ <= s_axi_wlast;
  \^s_axi_wstrb\(7 downto 0) <= s_axi_wstrb(7 downto 0);
  \^s_axi_wuser\(0) <= s_axi_wuser(0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_awaddr(31 downto 0) <= \^s_axi_awaddr\(31 downto 0);
  m_axi_awburst(1 downto 0) <= \^s_axi_awburst\(1 downto 0);
  m_axi_awcache(3 downto 0) <= \^s_axi_awcache\(3 downto 0);
  m_axi_awid(0) <= \^s_axi_awid\(0);
  m_axi_awlen(7 downto 0) <= \^s_axi_awlen\(7 downto 0);
  m_axi_awlock(0) <= \^s_axi_awlock\(0);
  m_axi_awprot(2 downto 0) <= \^s_axi_awprot\(2 downto 0);
  m_axi_awqos(3 downto 0) <= \^s_axi_awqos\(3 downto 0);
  m_axi_awregion(3 downto 0) <= \^s_axi_awregion\(3 downto 0);
  m_axi_awsize(2 downto 0) <= \^s_axi_awsize\(2 downto 0);
  m_axi_awuser(0) <= \^s_axi_awuser\(0);
  m_axi_awvalid <= \^s_axi_awvalid\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_wdata(63 downto 0) <= \^s_axi_wdata\(63 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \^s_axi_wlast\;
  m_axi_wstrb(7 downto 0) <= \^s_axi_wstrb\(7 downto 0);
  m_axi_wuser(0) <= \^s_axi_wuser\(0);
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_awready <= \^m_axi_awready\;
  s_axi_bid(0) <= \^m_axi_bid\(0);
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \^m_axi_buser\(0);
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fifo.fifo_gen_inst\: entity work.system_axi_data_fifo_0_0_fifo_generator_v13_2_2
     port map (
      almost_empty => \NLW_gen_fifo.fifo_gen_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gen_fifo.fifo_gen_inst_almost_full_UNCONNECTED\,
      axi_ar_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_ar_data_count_UNCONNECTED\(5 downto 0),
      axi_ar_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED\,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_ar_overflow_UNCONNECTED\,
      axi_ar_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED\,
      axi_ar_prog_empty_thresh(4 downto 0) => B"00000",
      axi_ar_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_full_UNCONNECTED\,
      axi_ar_prog_full_thresh(4 downto 0) => B"00000",
      axi_ar_rd_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED\(5 downto 0),
      axi_ar_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED\,
      axi_ar_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_ar_underflow_UNCONNECTED\,
      axi_ar_wr_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED\(5 downto 0),
      axi_aw_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_aw_data_count_UNCONNECTED\(5 downto 0),
      axi_aw_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED\,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_aw_overflow_UNCONNECTED\,
      axi_aw_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED\,
      axi_aw_prog_empty_thresh(4 downto 0) => B"00000",
      axi_aw_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_full_UNCONNECTED\,
      axi_aw_prog_full_thresh(4 downto 0) => B"00000",
      axi_aw_rd_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED\(5 downto 0),
      axi_aw_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED\,
      axi_aw_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_aw_underflow_UNCONNECTED\,
      axi_aw_wr_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED\(5 downto 0),
      axi_b_data_count(4 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_b_data_count_UNCONNECTED\(4 downto 0),
      axi_b_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_b_dbiterr_UNCONNECTED\,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_b_overflow_UNCONNECTED\,
      axi_b_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_empty_UNCONNECTED\,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_full_UNCONNECTED\,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_b_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_b_sbiterr_UNCONNECTED\,
      axi_b_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_b_underflow_UNCONNECTED\,
      axi_b_wr_data_count(4 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_r_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_r_data_count_UNCONNECTED\(9 downto 0),
      axi_r_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_r_dbiterr_UNCONNECTED\,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_r_overflow_UNCONNECTED\,
      axi_r_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_empty_UNCONNECTED\,
      axi_r_prog_empty_thresh(8 downto 0) => B"000000000",
      axi_r_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_full_UNCONNECTED\,
      axi_r_prog_full_thresh(8 downto 0) => B"000000000",
      axi_r_rd_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED\(9 downto 0),
      axi_r_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_r_sbiterr_UNCONNECTED\,
      axi_r_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_r_underflow_UNCONNECTED\,
      axi_r_wr_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED\(9 downto 0),
      axi_w_data_count(1 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_w_data_count_UNCONNECTED\(1 downto 0),
      axi_w_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_w_dbiterr_UNCONNECTED\,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_w_overflow_UNCONNECTED\,
      axi_w_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_empty_UNCONNECTED\,
      axi_w_prog_empty_thresh(0) => '0',
      axi_w_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_full_UNCONNECTED\,
      axi_w_prog_full_thresh(0) => '0',
      axi_w_rd_data_count(1 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED\(1 downto 0),
      axi_w_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_w_sbiterr_UNCONNECTED\,
      axi_w_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_w_underflow_UNCONNECTED\,
      axi_w_wr_data_count(1 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED\(1 downto 0),
      axis_data_count(10 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axis_data_count_UNCONNECTED\(10 downto 0),
      axis_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axis_dbiterr_UNCONNECTED\,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => \NLW_gen_fifo.fifo_gen_inst_axis_overflow_UNCONNECTED\,
      axis_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axis_prog_empty_UNCONNECTED\,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => \NLW_gen_fifo.fifo_gen_inst_axis_prog_full_UNCONNECTED\,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axis_rd_data_count_UNCONNECTED\(10 downto 0),
      axis_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axis_sbiterr_UNCONNECTED\,
      axis_underflow => \NLW_gen_fifo.fifo_gen_inst_axis_underflow_UNCONNECTED\,
      axis_wr_data_count(10 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axis_wr_data_count_UNCONNECTED\(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_data_count_UNCONNECTED\(9 downto 0),
      dbiterr => \NLW_gen_fifo.fifo_gen_inst_dbiterr_UNCONNECTED\,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => \NLW_gen_fifo.fifo_gen_inst_dout_UNCONNECTED\(17 downto 0),
      empty => \NLW_gen_fifo.fifo_gen_inst_empty_UNCONNECTED\,
      full => \NLW_gen_fifo.fifo_gen_inst_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '1',
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => m_axi_aruser(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awaddr_UNCONNECTED\(31 downto 0),
      m_axi_awburst(1 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awburst_UNCONNECTED\(1 downto 0),
      m_axi_awcache(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awcache_UNCONNECTED\(3 downto 0),
      m_axi_awid(0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awid_UNCONNECTED\(0),
      m_axi_awlen(7 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awlen_UNCONNECTED\(7 downto 0),
      m_axi_awlock(0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awlock_UNCONNECTED\(0),
      m_axi_awprot(2 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awprot_UNCONNECTED\(2 downto 0),
      m_axi_awqos(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awqos_UNCONNECTED\(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awregion_UNCONNECTED\(3 downto 0),
      m_axi_awsize(2 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awsize_UNCONNECTED\(2 downto 0),
      m_axi_awuser(0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awuser_UNCONNECTED\(0),
      m_axi_awvalid => \NLW_gen_fifo.fifo_gen_inst_m_axi_awvalid_UNCONNECTED\,
      m_axi_bid(0) => '0',
      m_axi_bready => \NLW_gen_fifo.fifo_gen_inst_m_axi_bready_UNCONNECTED\,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_wdata_UNCONNECTED\(63 downto 0),
      m_axi_wid(0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_wid_UNCONNECTED\(0),
      m_axi_wlast => \NLW_gen_fifo.fifo_gen_inst_m_axi_wlast_UNCONNECTED\,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_wstrb_UNCONNECTED\(7 downto 0),
      m_axi_wuser(0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_wuser_UNCONNECTED\(0),
      m_axi_wvalid => \NLW_gen_fifo.fifo_gen_inst_m_axi_wvalid_UNCONNECTED\,
      m_axis_tdata(63 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tdata_UNCONNECTED\(63 downto 0),
      m_axis_tdest(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tdest_UNCONNECTED\(3 downto 0),
      m_axis_tid(7 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tid_UNCONNECTED\(7 downto 0),
      m_axis_tkeep(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tkeep_UNCONNECTED\(3 downto 0),
      m_axis_tlast => \NLW_gen_fifo.fifo_gen_inst_m_axis_tlast_UNCONNECTED\,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tstrb_UNCONNECTED\(3 downto 0),
      m_axis_tuser(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tuser_UNCONNECTED\(3 downto 0),
      m_axis_tvalid => \NLW_gen_fifo.fifo_gen_inst_m_axis_tvalid_UNCONNECTED\,
      overflow => \NLW_gen_fifo.fifo_gen_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_gen_fifo.fifo_gen_inst_prog_empty_UNCONNECTED\,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => \NLW_gen_fifo.fifo_gen_inst_prog_full_UNCONNECTED\,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_rd_data_count_UNCONNECTED\(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => \NLW_gen_fifo.fifo_gen_inst_rd_rst_busy_UNCONNECTED\,
      rst => '0',
      s_aclk => aclk,
      s_aclk_en => '1',
      s_aresetn => aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => s_axi_aruser(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => \NLW_gen_fifo.fifo_gen_inst_s_axi_awready_UNCONNECTED\,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => \NLW_gen_fifo.fifo_gen_inst_s_axi_bid_UNCONNECTED\(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => \NLW_gen_fifo.fifo_gen_inst_s_axi_bresp_UNCONNECTED\(1 downto 0),
      s_axi_buser(0) => \NLW_gen_fifo.fifo_gen_inst_s_axi_buser_UNCONNECTED\(0),
      s_axi_bvalid => \NLW_gen_fifo.fifo_gen_inst_s_axi_bvalid_UNCONNECTED\,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => s_axi_ruser(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => \NLW_gen_fifo.fifo_gen_inst_s_axi_wready_UNCONNECTED\,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => \NLW_gen_fifo.fifo_gen_inst_s_axis_tready_UNCONNECTED\,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => \NLW_gen_fifo.fifo_gen_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      srst => '0',
      underflow => \NLW_gen_fifo.fifo_gen_inst_underflow_UNCONNECTED\,
      valid => \NLW_gen_fifo.fifo_gen_inst_valid_UNCONNECTED\,
      wr_ack => \NLW_gen_fifo.fifo_gen_inst_wr_ack_UNCONNECTED\,
      wr_clk => '0',
      wr_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_wr_data_count_UNCONNECTED\(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => \NLW_gen_fifo.fifo_gen_inst_wr_rst_busy_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_data_fifo_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axi_data_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axi_data_fifo_0_0 : entity is "system_axi_data_fifo_0_0,axi_data_fifo_v2_1_16_axi_data_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_axi_data_fifo_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_axi_data_fifo_0_0 : entity is "axi_data_fifo_v2_1_16_axi_data_fifo,Vivado 2018.2";
end system_axi_data_fifo_0_0;

architecture STRUCTURE of system_axi_data_fifo_0_0 is
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_READ_FIFO_DELAY : integer;
  attribute C_AXI_READ_FIFO_DELAY of inst : label is 1;
  attribute C_AXI_READ_FIFO_DEPTH : integer;
  attribute C_AXI_READ_FIFO_DEPTH of inst : label is 512;
  attribute C_AXI_READ_FIFO_TYPE : string;
  attribute C_AXI_READ_FIFO_TYPE of inst : label is "bram";
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WRITE_FIFO_DELAY : integer;
  attribute C_AXI_WRITE_FIFO_DELAY of inst : label is 0;
  attribute C_AXI_WRITE_FIFO_DEPTH : integer;
  attribute C_AXI_WRITE_FIFO_DEPTH of inst : label is 0;
  attribute C_AXI_WRITE_FIFO_TYPE : string;
  attribute C_AXI_WRITE_FIFO_TYPE of inst : label is "lut";
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_PRIM_FIFO_TYPE : string;
  attribute P_PRIM_FIFO_TYPE of inst : label is "512x72";
  attribute P_READ_FIFO_DEPTH_LOG : integer;
  attribute P_READ_FIFO_DEPTH_LOG of inst : label is 9;
  attribute P_WIDTH_RACH : integer;
  attribute P_WIDTH_RACH of inst : label is 63;
  attribute P_WIDTH_RDCH : integer;
  attribute P_WIDTH_RDCH of inst : label is 69;
  attribute P_WIDTH_WACH : integer;
  attribute P_WIDTH_WACH of inst : label is 63;
  attribute P_WIDTH_WDCH : integer;
  attribute P_WIDTH_WDCH of inst : label is 74;
  attribute P_WIDTH_WRCH : integer;
  attribute P_WIDTH_WRCH of inst : label is 4;
  attribute P_WRITE_FIFO_DEPTH_LOG : integer;
  attribute P_WRITE_FIFO_DEPTH_LOG of inst : label is 1;
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREGION";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.system_axi_data_fifo_0_0_axi_data_fifo_v2_1_16_axi_data_fifo
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
