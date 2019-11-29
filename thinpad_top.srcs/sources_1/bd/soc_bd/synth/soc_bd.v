//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sat Nov 30 02:14:13 2019
//Host        : Gyc-Arch-Linux running 64-bit Arch Linux
//Command     : generate_target soc_bd.bd
//Design      : soc_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "soc_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=soc_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "soc_bd.hwdef" *) 
module soc_bd
   (base_ram_if_addr,
    base_ram_if_adv_ldn,
    base_ram_if_ben,
    base_ram_if_ce,
    base_ram_if_ce_n,
    base_ram_if_clken,
    base_ram_if_cre,
    base_ram_if_dq_i,
    base_ram_if_dq_o,
    base_ram_if_dq_t,
    base_ram_if_lbon,
    base_ram_if_oen,
    base_ram_if_qwen,
    base_ram_if_rnw,
    base_ram_if_rpn,
    base_ram_if_wait,
    base_ram_if_wen,
    ext_ram_if_addr,
    ext_ram_if_adv_ldn,
    ext_ram_if_ben,
    ext_ram_if_ce,
    ext_ram_if_ce_n,
    ext_ram_if_clken,
    ext_ram_if_cre,
    ext_ram_if_dq_i,
    ext_ram_if_dq_o,
    ext_ram_if_dq_t,
    ext_ram_if_lbon,
    ext_ram_if_oen,
    ext_ram_if_qwen,
    ext_ram_if_rnw,
    ext_ram_if_rpn,
    ext_ram_if_wait,
    ext_ram_if_wen,
    system_clk,
    system_rst,
    uart_rxd,
    uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if ADDR" *) output [31:0]base_ram_if_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if ADV_LDN" *) output base_ram_if_adv_ldn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if BEN" *) output [3:0]base_ram_if_ben;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if CE" *) output [0:0]base_ram_if_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if CE_N" *) output [0:0]base_ram_if_ce_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if CLKEN" *) output base_ram_if_clken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if CRE" *) output base_ram_if_cre;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if DQ_I" *) input [31:0]base_ram_if_dq_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if DQ_O" *) output [31:0]base_ram_if_dq_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if DQ_T" *) output [31:0]base_ram_if_dq_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if LBON" *) output base_ram_if_lbon;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if OEN" *) output [0:0]base_ram_if_oen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if QWEN" *) output [3:0]base_ram_if_qwen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if RNW" *) output base_ram_if_rnw;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if RPN" *) output base_ram_if_rpn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if WAIT" *) input [0:0]base_ram_if_wait;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 base_ram_if WEN" *) output base_ram_if_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if ADDR" *) output [31:0]ext_ram_if_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if ADV_LDN" *) output ext_ram_if_adv_ldn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if BEN" *) output [3:0]ext_ram_if_ben;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if CE" *) output [0:0]ext_ram_if_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if CE_N" *) output [0:0]ext_ram_if_ce_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if CLKEN" *) output ext_ram_if_clken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if CRE" *) output ext_ram_if_cre;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if DQ_I" *) input [31:0]ext_ram_if_dq_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if DQ_O" *) output [31:0]ext_ram_if_dq_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if DQ_T" *) output [31:0]ext_ram_if_dq_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if LBON" *) output ext_ram_if_lbon;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if OEN" *) output [0:0]ext_ram_if_oen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if QWEN" *) output [3:0]ext_ram_if_qwen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if RNW" *) output ext_ram_if_rnw;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if RPN" *) output ext_ram_if_rpn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if WAIT" *) input [0:0]ext_ram_if_wait;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 ext_ram_if WEN" *) output ext_ram_if_wen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSTEM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSTEM_CLK, ASSOCIATED_RESET system_rst, CLK_DOMAIN soc_bd_system_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input system_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYSTEM_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYSTEM_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input system_rst;
  input uart_rxd;
  output uart_txd;

  wire [31:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_ARBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_ARCACHE;
  wire [15:0]axi_crossbar_0_M00_AXI_ARID;
  wire [7:0]axi_crossbar_0_M00_AXI_ARLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_ARLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_ARPROT;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [2:0]axi_crossbar_0_M00_AXI_ARSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire [1:0]axi_crossbar_0_M00_AXI_AWBURST;
  wire [3:0]axi_crossbar_0_M00_AXI_AWCACHE;
  wire [15:0]axi_crossbar_0_M00_AXI_AWID;
  wire [7:0]axi_crossbar_0_M00_AXI_AWLEN;
  wire [0:0]axi_crossbar_0_M00_AXI_AWLOCK;
  wire [2:0]axi_crossbar_0_M00_AXI_AWPROT;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [2:0]axi_crossbar_0_M00_AXI_AWSIZE;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [15:0]axi_crossbar_0_M00_AXI_BID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [15:0]axi_crossbar_0_M00_AXI_RID;
  wire axi_crossbar_0_M00_AXI_RLAST;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_WLAST;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_ARADDR;
  wire [3:2]axi_crossbar_0_M01_AXI_ARBURST;
  wire [7:4]axi_crossbar_0_M01_AXI_ARCACHE;
  wire [31:16]axi_crossbar_0_M01_AXI_ARID;
  wire [15:8]axi_crossbar_0_M01_AXI_ARLEN;
  wire [1:1]axi_crossbar_0_M01_AXI_ARLOCK;
  wire [5:3]axi_crossbar_0_M01_AXI_ARPROT;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [5:3]axi_crossbar_0_M01_AXI_ARSIZE;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_AWADDR;
  wire [3:2]axi_crossbar_0_M01_AXI_AWBURST;
  wire [7:4]axi_crossbar_0_M01_AXI_AWCACHE;
  wire [31:16]axi_crossbar_0_M01_AXI_AWID;
  wire [15:8]axi_crossbar_0_M01_AXI_AWLEN;
  wire [1:1]axi_crossbar_0_M01_AXI_AWLOCK;
  wire [5:3]axi_crossbar_0_M01_AXI_AWPROT;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [5:3]axi_crossbar_0_M01_AXI_AWSIZE;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [15:0]axi_crossbar_0_M01_AXI_BID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [15:0]axi_crossbar_0_M01_AXI_RID;
  wire axi_crossbar_0_M01_AXI_RLAST;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_WLAST;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_ARADDR;
  wire [5:4]axi_crossbar_0_M02_AXI_ARBURST;
  wire [11:8]axi_crossbar_0_M02_AXI_ARCACHE;
  wire [47:32]axi_crossbar_0_M02_AXI_ARID;
  wire [23:16]axi_crossbar_0_M02_AXI_ARLEN;
  wire [2:2]axi_crossbar_0_M02_AXI_ARLOCK;
  wire [8:6]axi_crossbar_0_M02_AXI_ARPROT;
  wire [11:8]axi_crossbar_0_M02_AXI_ARQOS;
  wire axi_crossbar_0_M02_AXI_ARREADY;
  wire [8:6]axi_crossbar_0_M02_AXI_ARSIZE;
  wire [23:16]axi_crossbar_0_M02_AXI_ARUSER;
  wire [2:2]axi_crossbar_0_M02_AXI_ARVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_AWADDR;
  wire [5:4]axi_crossbar_0_M02_AXI_AWBURST;
  wire [11:8]axi_crossbar_0_M02_AXI_AWCACHE;
  wire [47:32]axi_crossbar_0_M02_AXI_AWID;
  wire [23:16]axi_crossbar_0_M02_AXI_AWLEN;
  wire [2:2]axi_crossbar_0_M02_AXI_AWLOCK;
  wire [8:6]axi_crossbar_0_M02_AXI_AWPROT;
  wire [11:8]axi_crossbar_0_M02_AXI_AWQOS;
  wire axi_crossbar_0_M02_AXI_AWREADY;
  wire [8:6]axi_crossbar_0_M02_AXI_AWSIZE;
  wire [23:16]axi_crossbar_0_M02_AXI_AWUSER;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [15:0]axi_crossbar_0_M02_AXI_BID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_BRESP;
  wire [7:0]axi_crossbar_0_M02_AXI_BUSER;
  wire axi_crossbar_0_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M02_AXI_RDATA;
  wire [15:0]axi_crossbar_0_M02_AXI_RID;
  wire axi_crossbar_0_M02_AXI_RLAST;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_RRESP;
  wire [7:0]axi_crossbar_0_M02_AXI_RUSER;
  wire axi_crossbar_0_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_WDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_WLAST;
  wire axi_crossbar_0_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_WSTRB;
  wire [23:16]axi_crossbar_0_M02_AXI_WUSER;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [31:0]axi_emc_0_EMC_INTF_ADDR;
  wire axi_emc_0_EMC_INTF_ADV_LDN;
  wire [3:0]axi_emc_0_EMC_INTF_BEN;
  wire [0:0]axi_emc_0_EMC_INTF_CE;
  wire [0:0]axi_emc_0_EMC_INTF_CE_N;
  wire axi_emc_0_EMC_INTF_CLKEN;
  wire axi_emc_0_EMC_INTF_CRE;
  wire [31:0]axi_emc_0_EMC_INTF_DQ_I;
  wire [31:0]axi_emc_0_EMC_INTF_DQ_O;
  wire [31:0]axi_emc_0_EMC_INTF_DQ_T;
  wire axi_emc_0_EMC_INTF_LBON;
  wire [0:0]axi_emc_0_EMC_INTF_OEN;
  wire [3:0]axi_emc_0_EMC_INTF_QWEN;
  wire axi_emc_0_EMC_INTF_RNW;
  wire axi_emc_0_EMC_INTF_RPN;
  wire [0:0]axi_emc_0_EMC_INTF_WAIT;
  wire axi_emc_0_EMC_INTF_WEN;
  wire [31:0]axi_emc_1_EMC_INTF_ADDR;
  wire axi_emc_1_EMC_INTF_ADV_LDN;
  wire [3:0]axi_emc_1_EMC_INTF_BEN;
  wire [0:0]axi_emc_1_EMC_INTF_CE;
  wire [0:0]axi_emc_1_EMC_INTF_CE_N;
  wire axi_emc_1_EMC_INTF_CLKEN;
  wire axi_emc_1_EMC_INTF_CRE;
  wire [31:0]axi_emc_1_EMC_INTF_DQ_I;
  wire [31:0]axi_emc_1_EMC_INTF_DQ_O;
  wire [31:0]axi_emc_1_EMC_INTF_DQ_T;
  wire axi_emc_1_EMC_INTF_LBON;
  wire [0:0]axi_emc_1_EMC_INTF_OEN;
  wire [3:0]axi_emc_1_EMC_INTF_QWEN;
  wire axi_emc_1_EMC_INTF_RNW;
  wire axi_emc_1_EMC_INTF_RPN;
  wire [0:0]axi_emc_1_EMC_INTF_WAIT;
  wire axi_emc_1_EMC_INTF_WEN;
  wire axi_uart16550_0_sout;
  wire [31:0]core_0_dbus_ARADDR;
  wire [1:0]core_0_dbus_ARBURST;
  wire [3:0]core_0_dbus_ARCACHE;
  wire [15:0]core_0_dbus_ARID;
  wire [7:0]core_0_dbus_ARLEN;
  wire core_0_dbus_ARLOCK;
  wire [2:0]core_0_dbus_ARPROT;
  wire [3:0]core_0_dbus_ARQOS;
  wire [0:0]core_0_dbus_ARREADY;
  wire [2:0]core_0_dbus_ARSIZE;
  wire [7:0]core_0_dbus_ARUSER;
  wire core_0_dbus_ARVALID;
  wire [31:0]core_0_dbus_AWADDR;
  wire [1:0]core_0_dbus_AWBURST;
  wire [3:0]core_0_dbus_AWCACHE;
  wire [15:0]core_0_dbus_AWID;
  wire [7:0]core_0_dbus_AWLEN;
  wire core_0_dbus_AWLOCK;
  wire [2:0]core_0_dbus_AWPROT;
  wire [3:0]core_0_dbus_AWQOS;
  wire [0:0]core_0_dbus_AWREADY;
  wire [2:0]core_0_dbus_AWSIZE;
  wire [7:0]core_0_dbus_AWUSER;
  wire core_0_dbus_AWVALID;
  wire [15:0]core_0_dbus_BID;
  wire core_0_dbus_BREADY;
  wire [1:0]core_0_dbus_BRESP;
  wire [7:0]core_0_dbus_BUSER;
  wire [0:0]core_0_dbus_BVALID;
  wire [31:0]core_0_dbus_RDATA;
  wire [15:0]core_0_dbus_RID;
  wire [0:0]core_0_dbus_RLAST;
  wire core_0_dbus_RREADY;
  wire [1:0]core_0_dbus_RRESP;
  wire [7:0]core_0_dbus_RUSER;
  wire [0:0]core_0_dbus_RVALID;
  wire [31:0]core_0_dbus_WDATA;
  wire core_0_dbus_WLAST;
  wire [0:0]core_0_dbus_WREADY;
  wire [3:0]core_0_dbus_WSTRB;
  wire [7:0]core_0_dbus_WUSER;
  wire core_0_dbus_WVALID;
  wire [31:0]core_0_ibus_ARADDR;
  wire [1:0]core_0_ibus_ARBURST;
  wire [3:0]core_0_ibus_ARCACHE;
  wire [15:0]core_0_ibus_ARID;
  wire [7:0]core_0_ibus_ARLEN;
  wire core_0_ibus_ARLOCK;
  wire [2:0]core_0_ibus_ARPROT;
  wire [3:0]core_0_ibus_ARQOS;
  wire [1:1]core_0_ibus_ARREADY;
  wire [2:0]core_0_ibus_ARSIZE;
  wire [7:0]core_0_ibus_ARUSER;
  wire core_0_ibus_ARVALID;
  wire [31:0]core_0_ibus_AWADDR;
  wire [1:0]core_0_ibus_AWBURST;
  wire [3:0]core_0_ibus_AWCACHE;
  wire [15:0]core_0_ibus_AWID;
  wire [7:0]core_0_ibus_AWLEN;
  wire core_0_ibus_AWLOCK;
  wire [2:0]core_0_ibus_AWPROT;
  wire [3:0]core_0_ibus_AWQOS;
  wire [1:1]core_0_ibus_AWREADY;
  wire [2:0]core_0_ibus_AWSIZE;
  wire [7:0]core_0_ibus_AWUSER;
  wire core_0_ibus_AWVALID;
  wire [31:16]core_0_ibus_BID;
  wire core_0_ibus_BREADY;
  wire [3:2]core_0_ibus_BRESP;
  wire [15:8]core_0_ibus_BUSER;
  wire [1:1]core_0_ibus_BVALID;
  wire [63:32]core_0_ibus_RDATA;
  wire [31:16]core_0_ibus_RID;
  wire [1:1]core_0_ibus_RLAST;
  wire core_0_ibus_RREADY;
  wire [3:2]core_0_ibus_RRESP;
  wire [15:8]core_0_ibus_RUSER;
  wire [1:1]core_0_ibus_RVALID;
  wire [31:0]core_0_ibus_WDATA;
  wire core_0_ibus_WLAST;
  wire [1:1]core_0_ibus_WREADY;
  wire [3:0]core_0_ibus_WSTRB;
  wire [7:0]core_0_ibus_WUSER;
  wire core_0_ibus_WVALID;
  wire sin_0_1;
  wire [12:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [12:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire system_clk_0_1;
  wire system_rst_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [11:0]NLW_axi_crossbar_0_m_axi_arqos_UNCONNECTED;
  wire [23:0]NLW_axi_crossbar_0_m_axi_aruser_UNCONNECTED;
  wire [11:0]NLW_axi_crossbar_0_m_axi_awqos_UNCONNECTED;
  wire [23:0]NLW_axi_crossbar_0_m_axi_awuser_UNCONNECTED;
  wire [23:0]NLW_axi_crossbar_0_m_axi_wuser_UNCONNECTED;

  assign axi_emc_0_EMC_INTF_DQ_I = base_ram_if_dq_i[31:0];
  assign axi_emc_0_EMC_INTF_WAIT = base_ram_if_wait[0];
  assign axi_emc_1_EMC_INTF_DQ_I = ext_ram_if_dq_i[31:0];
  assign axi_emc_1_EMC_INTF_WAIT = ext_ram_if_wait[0];
  assign base_ram_if_addr[31:0] = axi_emc_0_EMC_INTF_ADDR;
  assign base_ram_if_adv_ldn = axi_emc_0_EMC_INTF_ADV_LDN;
  assign base_ram_if_ben[3:0] = axi_emc_0_EMC_INTF_BEN;
  assign base_ram_if_ce[0] = axi_emc_0_EMC_INTF_CE;
  assign base_ram_if_ce_n[0] = axi_emc_0_EMC_INTF_CE_N;
  assign base_ram_if_clken = axi_emc_0_EMC_INTF_CLKEN;
  assign base_ram_if_cre = axi_emc_0_EMC_INTF_CRE;
  assign base_ram_if_dq_o[31:0] = axi_emc_0_EMC_INTF_DQ_O;
  assign base_ram_if_dq_t[31:0] = axi_emc_0_EMC_INTF_DQ_T;
  assign base_ram_if_lbon = axi_emc_0_EMC_INTF_LBON;
  assign base_ram_if_oen[0] = axi_emc_0_EMC_INTF_OEN;
  assign base_ram_if_qwen[3:0] = axi_emc_0_EMC_INTF_QWEN;
  assign base_ram_if_rnw = axi_emc_0_EMC_INTF_RNW;
  assign base_ram_if_rpn = axi_emc_0_EMC_INTF_RPN;
  assign base_ram_if_wen = axi_emc_0_EMC_INTF_WEN;
  assign ext_ram_if_addr[31:0] = axi_emc_1_EMC_INTF_ADDR;
  assign ext_ram_if_adv_ldn = axi_emc_1_EMC_INTF_ADV_LDN;
  assign ext_ram_if_ben[3:0] = axi_emc_1_EMC_INTF_BEN;
  assign ext_ram_if_ce[0] = axi_emc_1_EMC_INTF_CE;
  assign ext_ram_if_ce_n[0] = axi_emc_1_EMC_INTF_CE_N;
  assign ext_ram_if_clken = axi_emc_1_EMC_INTF_CLKEN;
  assign ext_ram_if_cre = axi_emc_1_EMC_INTF_CRE;
  assign ext_ram_if_dq_o[31:0] = axi_emc_1_EMC_INTF_DQ_O;
  assign ext_ram_if_dq_t[31:0] = axi_emc_1_EMC_INTF_DQ_T;
  assign ext_ram_if_lbon = axi_emc_1_EMC_INTF_LBON;
  assign ext_ram_if_oen[0] = axi_emc_1_EMC_INTF_OEN;
  assign ext_ram_if_qwen[3:0] = axi_emc_1_EMC_INTF_QWEN;
  assign ext_ram_if_rnw = axi_emc_1_EMC_INTF_RNW;
  assign ext_ram_if_rpn = axi_emc_1_EMC_INTF_RPN;
  assign ext_ram_if_wen = axi_emc_1_EMC_INTF_WEN;
  assign sin_0_1 = uart_rxd;
  assign system_clk_0_1 = system_clk;
  assign system_rst_0_1 = system_rst;
  assign uart_txd = axi_uart16550_0_sout;
  soc_bd_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(system_clk_0_1),
        .aresetn(util_vector_logic_0_Res),
        .m_axi_araddr({axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arburst({axi_crossbar_0_M02_AXI_ARBURST,axi_crossbar_0_M01_AXI_ARBURST,axi_crossbar_0_M00_AXI_ARBURST}),
        .m_axi_arcache({axi_crossbar_0_M02_AXI_ARCACHE,axi_crossbar_0_M01_AXI_ARCACHE,axi_crossbar_0_M00_AXI_ARCACHE}),
        .m_axi_arid({axi_crossbar_0_M02_AXI_ARID,axi_crossbar_0_M01_AXI_ARID,axi_crossbar_0_M00_AXI_ARID}),
        .m_axi_arlen({axi_crossbar_0_M02_AXI_ARLEN,axi_crossbar_0_M01_AXI_ARLEN,axi_crossbar_0_M00_AXI_ARLEN}),
        .m_axi_arlock({axi_crossbar_0_M02_AXI_ARLOCK,axi_crossbar_0_M01_AXI_ARLOCK,axi_crossbar_0_M00_AXI_ARLOCK}),
        .m_axi_arprot({axi_crossbar_0_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,axi_crossbar_0_M00_AXI_ARPROT}),
        .m_axi_arqos({axi_crossbar_0_M02_AXI_ARQOS,NLW_axi_crossbar_0_m_axi_arqos_UNCONNECTED[7:0]}),
        .m_axi_arready({axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arsize({axi_crossbar_0_M02_AXI_ARSIZE,axi_crossbar_0_M01_AXI_ARSIZE,axi_crossbar_0_M00_AXI_ARSIZE}),
        .m_axi_aruser({axi_crossbar_0_M02_AXI_ARUSER,NLW_axi_crossbar_0_m_axi_aruser_UNCONNECTED[15:0]}),
        .m_axi_arvalid({axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awburst({axi_crossbar_0_M02_AXI_AWBURST,axi_crossbar_0_M01_AXI_AWBURST,axi_crossbar_0_M00_AXI_AWBURST}),
        .m_axi_awcache({axi_crossbar_0_M02_AXI_AWCACHE,axi_crossbar_0_M01_AXI_AWCACHE,axi_crossbar_0_M00_AXI_AWCACHE}),
        .m_axi_awid({axi_crossbar_0_M02_AXI_AWID,axi_crossbar_0_M01_AXI_AWID,axi_crossbar_0_M00_AXI_AWID}),
        .m_axi_awlen({axi_crossbar_0_M02_AXI_AWLEN,axi_crossbar_0_M01_AXI_AWLEN,axi_crossbar_0_M00_AXI_AWLEN}),
        .m_axi_awlock({axi_crossbar_0_M02_AXI_AWLOCK,axi_crossbar_0_M01_AXI_AWLOCK,axi_crossbar_0_M00_AXI_AWLOCK}),
        .m_axi_awprot({axi_crossbar_0_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,axi_crossbar_0_M00_AXI_AWPROT}),
        .m_axi_awqos({axi_crossbar_0_M02_AXI_AWQOS,NLW_axi_crossbar_0_m_axi_awqos_UNCONNECTED[7:0]}),
        .m_axi_awready({axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awsize({axi_crossbar_0_M02_AXI_AWSIZE,axi_crossbar_0_M01_AXI_AWSIZE,axi_crossbar_0_M00_AXI_AWSIZE}),
        .m_axi_awuser({axi_crossbar_0_M02_AXI_AWUSER,NLW_axi_crossbar_0_m_axi_awuser_UNCONNECTED[15:0]}),
        .m_axi_awvalid({axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bid({axi_crossbar_0_M02_AXI_BID,axi_crossbar_0_M01_AXI_BID,axi_crossbar_0_M00_AXI_BID}),
        .m_axi_bready({axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_buser({axi_crossbar_0_M02_AXI_BUSER,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bvalid({axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rid({axi_crossbar_0_M02_AXI_RID,axi_crossbar_0_M01_AXI_RID,axi_crossbar_0_M00_AXI_RID}),
        .m_axi_rlast({axi_crossbar_0_M02_AXI_RLAST,axi_crossbar_0_M01_AXI_RLAST,axi_crossbar_0_M00_AXI_RLAST}),
        .m_axi_rready({axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_ruser({axi_crossbar_0_M02_AXI_RUSER,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rvalid({axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wlast({axi_crossbar_0_M02_AXI_WLAST,axi_crossbar_0_M01_AXI_WLAST,axi_crossbar_0_M00_AXI_WLAST}),
        .m_axi_wready({axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wuser({axi_crossbar_0_M02_AXI_WUSER,NLW_axi_crossbar_0_m_axi_wuser_UNCONNECTED[15:0]}),
        .m_axi_wvalid({axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr({core_0_ibus_ARADDR,core_0_dbus_ARADDR}),
        .s_axi_arburst({core_0_ibus_ARBURST,core_0_dbus_ARBURST}),
        .s_axi_arcache({core_0_ibus_ARCACHE,core_0_dbus_ARCACHE}),
        .s_axi_arid({core_0_ibus_ARID,core_0_dbus_ARID}),
        .s_axi_arlen({core_0_ibus_ARLEN,core_0_dbus_ARLEN}),
        .s_axi_arlock({core_0_ibus_ARLOCK,core_0_dbus_ARLOCK}),
        .s_axi_arprot({core_0_ibus_ARPROT,core_0_dbus_ARPROT}),
        .s_axi_arqos({core_0_ibus_ARQOS,core_0_dbus_ARQOS}),
        .s_axi_arready({core_0_ibus_ARREADY,core_0_dbus_ARREADY}),
        .s_axi_arsize({core_0_ibus_ARSIZE,core_0_dbus_ARSIZE}),
        .s_axi_aruser({core_0_ibus_ARUSER,core_0_dbus_ARUSER}),
        .s_axi_arvalid({core_0_ibus_ARVALID,core_0_dbus_ARVALID}),
        .s_axi_awaddr({core_0_ibus_AWADDR,core_0_dbus_AWADDR}),
        .s_axi_awburst({core_0_ibus_AWBURST,core_0_dbus_AWBURST}),
        .s_axi_awcache({core_0_ibus_AWCACHE,core_0_dbus_AWCACHE}),
        .s_axi_awid({core_0_ibus_AWID,core_0_dbus_AWID}),
        .s_axi_awlen({core_0_ibus_AWLEN,core_0_dbus_AWLEN}),
        .s_axi_awlock({core_0_ibus_AWLOCK,core_0_dbus_AWLOCK}),
        .s_axi_awprot({core_0_ibus_AWPROT,core_0_dbus_AWPROT}),
        .s_axi_awqos({core_0_ibus_AWQOS,core_0_dbus_AWQOS}),
        .s_axi_awready({core_0_ibus_AWREADY,core_0_dbus_AWREADY}),
        .s_axi_awsize({core_0_ibus_AWSIZE,core_0_dbus_AWSIZE}),
        .s_axi_awuser({core_0_ibus_AWUSER,core_0_dbus_AWUSER}),
        .s_axi_awvalid({core_0_ibus_AWVALID,core_0_dbus_AWVALID}),
        .s_axi_bid({core_0_ibus_BID,core_0_dbus_BID}),
        .s_axi_bready({core_0_ibus_BREADY,core_0_dbus_BREADY}),
        .s_axi_bresp({core_0_ibus_BRESP,core_0_dbus_BRESP}),
        .s_axi_buser({core_0_ibus_BUSER,core_0_dbus_BUSER}),
        .s_axi_bvalid({core_0_ibus_BVALID,core_0_dbus_BVALID}),
        .s_axi_rdata({core_0_ibus_RDATA,core_0_dbus_RDATA}),
        .s_axi_rid({core_0_ibus_RID,core_0_dbus_RID}),
        .s_axi_rlast({core_0_ibus_RLAST,core_0_dbus_RLAST}),
        .s_axi_rready({core_0_ibus_RREADY,core_0_dbus_RREADY}),
        .s_axi_rresp({core_0_ibus_RRESP,core_0_dbus_RRESP}),
        .s_axi_ruser({core_0_ibus_RUSER,core_0_dbus_RUSER}),
        .s_axi_rvalid({core_0_ibus_RVALID,core_0_dbus_RVALID}),
        .s_axi_wdata({core_0_ibus_WDATA,core_0_dbus_WDATA}),
        .s_axi_wlast({core_0_ibus_WLAST,core_0_dbus_WLAST}),
        .s_axi_wready({core_0_ibus_WREADY,core_0_dbus_WREADY}),
        .s_axi_wstrb({core_0_ibus_WSTRB,core_0_dbus_WSTRB}),
        .s_axi_wuser({core_0_ibus_WUSER,core_0_dbus_WUSER}),
        .s_axi_wvalid({core_0_ibus_WVALID,core_0_dbus_WVALID}));
  soc_bd_axi_emc_0_0 axi_emc_0
       (.mem_a(axi_emc_0_EMC_INTF_ADDR),
        .mem_adv_ldn(axi_emc_0_EMC_INTF_ADV_LDN),
        .mem_ben(axi_emc_0_EMC_INTF_BEN),
        .mem_ce(axi_emc_0_EMC_INTF_CE),
        .mem_cen(axi_emc_0_EMC_INTF_CE_N),
        .mem_cken(axi_emc_0_EMC_INTF_CLKEN),
        .mem_cre(axi_emc_0_EMC_INTF_CRE),
        .mem_dq_i(axi_emc_0_EMC_INTF_DQ_I),
        .mem_dq_o(axi_emc_0_EMC_INTF_DQ_O),
        .mem_dq_t(axi_emc_0_EMC_INTF_DQ_T),
        .mem_lbon(axi_emc_0_EMC_INTF_LBON),
        .mem_oen(axi_emc_0_EMC_INTF_OEN),
        .mem_qwen(axi_emc_0_EMC_INTF_QWEN),
        .mem_rnw(axi_emc_0_EMC_INTF_RNW),
        .mem_rpn(axi_emc_0_EMC_INTF_RPN),
        .mem_wait(axi_emc_0_EMC_INTF_WAIT),
        .mem_wen(axi_emc_0_EMC_INTF_WEN),
        .rdclk(system_clk_0_1),
        .s_axi_aclk(system_clk_0_1),
        .s_axi_aresetn(util_vector_logic_0_Res),
        .s_axi_mem_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .s_axi_mem_arburst(axi_crossbar_0_M00_AXI_ARBURST),
        .s_axi_mem_arcache(axi_crossbar_0_M00_AXI_ARCACHE),
        .s_axi_mem_arid(axi_crossbar_0_M00_AXI_ARID),
        .s_axi_mem_arlen(axi_crossbar_0_M00_AXI_ARLEN),
        .s_axi_mem_arlock(axi_crossbar_0_M00_AXI_ARLOCK),
        .s_axi_mem_arprot(axi_crossbar_0_M00_AXI_ARPROT),
        .s_axi_mem_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_mem_arsize(axi_crossbar_0_M00_AXI_ARSIZE),
        .s_axi_mem_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_mem_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .s_axi_mem_awburst(axi_crossbar_0_M00_AXI_AWBURST),
        .s_axi_mem_awcache(axi_crossbar_0_M00_AXI_AWCACHE),
        .s_axi_mem_awid(axi_crossbar_0_M00_AXI_AWID),
        .s_axi_mem_awlen(axi_crossbar_0_M00_AXI_AWLEN),
        .s_axi_mem_awlock(axi_crossbar_0_M00_AXI_AWLOCK),
        .s_axi_mem_awprot(axi_crossbar_0_M00_AXI_AWPROT),
        .s_axi_mem_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_mem_awsize(axi_crossbar_0_M00_AXI_AWSIZE),
        .s_axi_mem_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_mem_bid(axi_crossbar_0_M00_AXI_BID),
        .s_axi_mem_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_mem_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_mem_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_mem_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_mem_rid(axi_crossbar_0_M00_AXI_RID),
        .s_axi_mem_rlast(axi_crossbar_0_M00_AXI_RLAST),
        .s_axi_mem_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_mem_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_mem_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_mem_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_mem_wlast(axi_crossbar_0_M00_AXI_WLAST),
        .s_axi_mem_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_mem_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_mem_wvalid(axi_crossbar_0_M00_AXI_WVALID));
  soc_bd_axi_emc_0_1 axi_emc_1
       (.mem_a(axi_emc_1_EMC_INTF_ADDR),
        .mem_adv_ldn(axi_emc_1_EMC_INTF_ADV_LDN),
        .mem_ben(axi_emc_1_EMC_INTF_BEN),
        .mem_ce(axi_emc_1_EMC_INTF_CE),
        .mem_cen(axi_emc_1_EMC_INTF_CE_N),
        .mem_cken(axi_emc_1_EMC_INTF_CLKEN),
        .mem_cre(axi_emc_1_EMC_INTF_CRE),
        .mem_dq_i(axi_emc_1_EMC_INTF_DQ_I),
        .mem_dq_o(axi_emc_1_EMC_INTF_DQ_O),
        .mem_dq_t(axi_emc_1_EMC_INTF_DQ_T),
        .mem_lbon(axi_emc_1_EMC_INTF_LBON),
        .mem_oen(axi_emc_1_EMC_INTF_OEN),
        .mem_qwen(axi_emc_1_EMC_INTF_QWEN),
        .mem_rnw(axi_emc_1_EMC_INTF_RNW),
        .mem_rpn(axi_emc_1_EMC_INTF_RPN),
        .mem_wait(axi_emc_1_EMC_INTF_WAIT),
        .mem_wen(axi_emc_1_EMC_INTF_WEN),
        .rdclk(system_clk_0_1),
        .s_axi_aclk(system_clk_0_1),
        .s_axi_aresetn(util_vector_logic_0_Res),
        .s_axi_mem_araddr(axi_crossbar_0_M01_AXI_ARADDR),
        .s_axi_mem_arburst(axi_crossbar_0_M01_AXI_ARBURST),
        .s_axi_mem_arcache(axi_crossbar_0_M01_AXI_ARCACHE),
        .s_axi_mem_arid(axi_crossbar_0_M01_AXI_ARID),
        .s_axi_mem_arlen(axi_crossbar_0_M01_AXI_ARLEN),
        .s_axi_mem_arlock(axi_crossbar_0_M01_AXI_ARLOCK),
        .s_axi_mem_arprot(axi_crossbar_0_M01_AXI_ARPROT),
        .s_axi_mem_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_mem_arsize(axi_crossbar_0_M01_AXI_ARSIZE),
        .s_axi_mem_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_mem_awaddr(axi_crossbar_0_M01_AXI_AWADDR),
        .s_axi_mem_awburst(axi_crossbar_0_M01_AXI_AWBURST),
        .s_axi_mem_awcache(axi_crossbar_0_M01_AXI_AWCACHE),
        .s_axi_mem_awid(axi_crossbar_0_M01_AXI_AWID),
        .s_axi_mem_awlen(axi_crossbar_0_M01_AXI_AWLEN),
        .s_axi_mem_awlock(axi_crossbar_0_M01_AXI_AWLOCK),
        .s_axi_mem_awprot(axi_crossbar_0_M01_AXI_AWPROT),
        .s_axi_mem_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axi_mem_awsize(axi_crossbar_0_M01_AXI_AWSIZE),
        .s_axi_mem_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axi_mem_bid(axi_crossbar_0_M01_AXI_BID),
        .s_axi_mem_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axi_mem_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axi_mem_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axi_mem_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axi_mem_rid(axi_crossbar_0_M01_AXI_RID),
        .s_axi_mem_rlast(axi_crossbar_0_M01_AXI_RLAST),
        .s_axi_mem_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axi_mem_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axi_mem_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axi_mem_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axi_mem_wlast(axi_crossbar_0_M01_AXI_WLAST),
        .s_axi_mem_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axi_mem_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axi_mem_wvalid(axi_crossbar_0_M01_AXI_WVALID));
  soc_bd_axi_uart16550_0_0 axi_uart16550_0
       (.ctsn(1'b1),
        .dcdn(1'b1),
        .dsrn(1'b1),
        .freeze(1'b0),
        .rin(1'b1),
        .s_axi_aclk(system_clk_0_1),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(util_vector_logic_0_Res),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .sin(sin_0_1),
        .sout(axi_uart16550_0_sout));
  soc_bd_core_0_0 core_0
       (.dbus_araddr(core_0_dbus_ARADDR),
        .dbus_arburst(core_0_dbus_ARBURST),
        .dbus_arcache(core_0_dbus_ARCACHE),
        .dbus_arid(core_0_dbus_ARID),
        .dbus_arlen(core_0_dbus_ARLEN),
        .dbus_arlock(core_0_dbus_ARLOCK),
        .dbus_arprot(core_0_dbus_ARPROT),
        .dbus_arqos(core_0_dbus_ARQOS),
        .dbus_arready(core_0_dbus_ARREADY),
        .dbus_arsize(core_0_dbus_ARSIZE),
        .dbus_aruser(core_0_dbus_ARUSER),
        .dbus_arvalid(core_0_dbus_ARVALID),
        .dbus_awaddr(core_0_dbus_AWADDR),
        .dbus_awburst(core_0_dbus_AWBURST),
        .dbus_awcache(core_0_dbus_AWCACHE),
        .dbus_awid(core_0_dbus_AWID),
        .dbus_awlen(core_0_dbus_AWLEN),
        .dbus_awlock(core_0_dbus_AWLOCK),
        .dbus_awprot(core_0_dbus_AWPROT),
        .dbus_awqos(core_0_dbus_AWQOS),
        .dbus_awready(core_0_dbus_AWREADY),
        .dbus_awsize(core_0_dbus_AWSIZE),
        .dbus_awuser(core_0_dbus_AWUSER),
        .dbus_awvalid(core_0_dbus_AWVALID),
        .dbus_bid(core_0_dbus_BID),
        .dbus_bready(core_0_dbus_BREADY),
        .dbus_bresp(core_0_dbus_BRESP),
        .dbus_buser(core_0_dbus_BUSER),
        .dbus_bvalid(core_0_dbus_BVALID),
        .dbus_rdata(core_0_dbus_RDATA),
        .dbus_rid(core_0_dbus_RID),
        .dbus_rlast(core_0_dbus_RLAST),
        .dbus_rready(core_0_dbus_RREADY),
        .dbus_rresp(core_0_dbus_RRESP),
        .dbus_ruser(core_0_dbus_RUSER),
        .dbus_rvalid(core_0_dbus_RVALID),
        .dbus_wdata(core_0_dbus_WDATA),
        .dbus_wlast(core_0_dbus_WLAST),
        .dbus_wready(core_0_dbus_WREADY),
        .dbus_wstrb(core_0_dbus_WSTRB),
        .dbus_wuser(core_0_dbus_WUSER),
        .dbus_wvalid(core_0_dbus_WVALID),
        .ibus_araddr(core_0_ibus_ARADDR),
        .ibus_arburst(core_0_ibus_ARBURST),
        .ibus_arcache(core_0_ibus_ARCACHE),
        .ibus_arid(core_0_ibus_ARID),
        .ibus_arlen(core_0_ibus_ARLEN),
        .ibus_arlock(core_0_ibus_ARLOCK),
        .ibus_arprot(core_0_ibus_ARPROT),
        .ibus_arqos(core_0_ibus_ARQOS),
        .ibus_arready(core_0_ibus_ARREADY),
        .ibus_arsize(core_0_ibus_ARSIZE),
        .ibus_aruser(core_0_ibus_ARUSER),
        .ibus_arvalid(core_0_ibus_ARVALID),
        .ibus_awaddr(core_0_ibus_AWADDR),
        .ibus_awburst(core_0_ibus_AWBURST),
        .ibus_awcache(core_0_ibus_AWCACHE),
        .ibus_awid(core_0_ibus_AWID),
        .ibus_awlen(core_0_ibus_AWLEN),
        .ibus_awlock(core_0_ibus_AWLOCK),
        .ibus_awprot(core_0_ibus_AWPROT),
        .ibus_awqos(core_0_ibus_AWQOS),
        .ibus_awready(core_0_ibus_AWREADY),
        .ibus_awsize(core_0_ibus_AWSIZE),
        .ibus_awuser(core_0_ibus_AWUSER),
        .ibus_awvalid(core_0_ibus_AWVALID),
        .ibus_bid(core_0_ibus_BID),
        .ibus_bready(core_0_ibus_BREADY),
        .ibus_bresp(core_0_ibus_BRESP),
        .ibus_buser(core_0_ibus_BUSER),
        .ibus_bvalid(core_0_ibus_BVALID),
        .ibus_rdata(core_0_ibus_RDATA),
        .ibus_rid(core_0_ibus_RID),
        .ibus_rlast(core_0_ibus_RLAST),
        .ibus_rready(core_0_ibus_RREADY),
        .ibus_rresp(core_0_ibus_RRESP),
        .ibus_ruser(core_0_ibus_RUSER),
        .ibus_rvalid(core_0_ibus_RVALID),
        .ibus_wdata(core_0_ibus_WDATA),
        .ibus_wlast(core_0_ibus_WLAST),
        .ibus_wready(core_0_ibus_WREADY),
        .ibus_wstrb(core_0_ibus_WSTRB),
        .ibus_wuser(core_0_ibus_WUSER),
        .ibus_wvalid(core_0_ibus_WVALID),
        .system_clk(system_clk_0_1),
        .system_rst(system_rst_0_1));
  soc_bd_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_crossbar_0_M02_AXI_ARADDR),
        .S00_AXI_arburst(axi_crossbar_0_M02_AXI_ARBURST),
        .S00_AXI_arcache(axi_crossbar_0_M02_AXI_ARCACHE),
        .S00_AXI_arid(axi_crossbar_0_M02_AXI_ARID),
        .S00_AXI_arlen(axi_crossbar_0_M02_AXI_ARLEN),
        .S00_AXI_arlock(axi_crossbar_0_M02_AXI_ARLOCK),
        .S00_AXI_arprot(axi_crossbar_0_M02_AXI_ARPROT),
        .S00_AXI_arqos(axi_crossbar_0_M02_AXI_ARQOS),
        .S00_AXI_arready(axi_crossbar_0_M02_AXI_ARREADY),
        .S00_AXI_arsize(axi_crossbar_0_M02_AXI_ARSIZE),
        .S00_AXI_aruser(axi_crossbar_0_M02_AXI_ARUSER),
        .S00_AXI_arvalid(axi_crossbar_0_M02_AXI_ARVALID),
        .S00_AXI_awaddr(axi_crossbar_0_M02_AXI_AWADDR),
        .S00_AXI_awburst(axi_crossbar_0_M02_AXI_AWBURST),
        .S00_AXI_awcache(axi_crossbar_0_M02_AXI_AWCACHE),
        .S00_AXI_awid(axi_crossbar_0_M02_AXI_AWID),
        .S00_AXI_awlen(axi_crossbar_0_M02_AXI_AWLEN),
        .S00_AXI_awlock(axi_crossbar_0_M02_AXI_AWLOCK),
        .S00_AXI_awprot(axi_crossbar_0_M02_AXI_AWPROT),
        .S00_AXI_awqos(axi_crossbar_0_M02_AXI_AWQOS),
        .S00_AXI_awready(axi_crossbar_0_M02_AXI_AWREADY),
        .S00_AXI_awsize(axi_crossbar_0_M02_AXI_AWSIZE),
        .S00_AXI_awuser(axi_crossbar_0_M02_AXI_AWUSER),
        .S00_AXI_awvalid(axi_crossbar_0_M02_AXI_AWVALID),
        .S00_AXI_bid(axi_crossbar_0_M02_AXI_BID),
        .S00_AXI_bready(axi_crossbar_0_M02_AXI_BREADY),
        .S00_AXI_bresp(axi_crossbar_0_M02_AXI_BRESP),
        .S00_AXI_buser(axi_crossbar_0_M02_AXI_BUSER),
        .S00_AXI_bvalid(axi_crossbar_0_M02_AXI_BVALID),
        .S00_AXI_rdata(axi_crossbar_0_M02_AXI_RDATA),
        .S00_AXI_rid(axi_crossbar_0_M02_AXI_RID),
        .S00_AXI_rlast(axi_crossbar_0_M02_AXI_RLAST),
        .S00_AXI_rready(axi_crossbar_0_M02_AXI_RREADY),
        .S00_AXI_rresp(axi_crossbar_0_M02_AXI_RRESP),
        .S00_AXI_ruser(axi_crossbar_0_M02_AXI_RUSER),
        .S00_AXI_rvalid(axi_crossbar_0_M02_AXI_RVALID),
        .S00_AXI_wdata(axi_crossbar_0_M02_AXI_WDATA),
        .S00_AXI_wlast(axi_crossbar_0_M02_AXI_WLAST),
        .S00_AXI_wready(axi_crossbar_0_M02_AXI_WREADY),
        .S00_AXI_wstrb(axi_crossbar_0_M02_AXI_WSTRB),
        .S00_AXI_wuser(axi_crossbar_0_M02_AXI_WUSER),
        .S00_AXI_wvalid(axi_crossbar_0_M02_AXI_WVALID),
        .aclk(system_clk_0_1),
        .aresetn(util_vector_logic_0_Res));
  soc_bd_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(system_rst_0_1),
        .Res(util_vector_logic_0_Res));
endmodule
