//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sat Nov 30 17:11:23 2019
//Host        : Gyc-Arch-Linux running 64-bit Arch Linux
//Command     : generate_target soc_bd.bd
//Design      : soc_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "soc_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=soc_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "soc_bd.hwdef" *) 
module soc_bd
   (system_clk,
    system_rst,
    uart_rxd,
    uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSTEM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSTEM_CLK, ASSOCIATED_RESET system_rst, CLK_DOMAIN soc_bd_system_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input system_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYSTEM_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYSTEM_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input system_rst;
  input uart_rxd;
  output uart_txd;

  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
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
  wire system_clk_0_1;
  wire system_rst_0_1;
  wire [0:0]util_vector_logic_0_Res;

  assign system_clk_0_1 = system_clk;
  assign system_rst_0_1 = system_rst;
  soc_bd_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(system_clk_0_1),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR[15:0]),
        .s_axi_arburst(axi_crossbar_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_crossbar_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(util_vector_logic_0_Res),
        .s_axi_arid(axi_crossbar_0_M00_AXI_ARID),
        .s_axi_arlen(axi_crossbar_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_crossbar_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_crossbar_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_crossbar_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR[15:0]),
        .s_axi_awburst(axi_crossbar_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_crossbar_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_crossbar_0_M00_AXI_AWID),
        .s_axi_awlen(axi_crossbar_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_crossbar_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_crossbar_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_awsize(axi_crossbar_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_bid(axi_crossbar_0_M00_AXI_BID),
        .s_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_rid(axi_crossbar_0_M00_AXI_RID),
        .s_axi_rlast(axi_crossbar_0_M00_AXI_RLAST),
        .s_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_crossbar_0_M00_AXI_WLAST),
        .s_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID));
  soc_bd_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(system_clk_0_1),
        .aresetn(util_vector_logic_0_Res),
        .m_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .m_axi_arburst(axi_crossbar_0_M00_AXI_ARBURST),
        .m_axi_arcache(axi_crossbar_0_M00_AXI_ARCACHE),
        .m_axi_arid(axi_crossbar_0_M00_AXI_ARID),
        .m_axi_arlen(axi_crossbar_0_M00_AXI_ARLEN),
        .m_axi_arlock(axi_crossbar_0_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_crossbar_0_M00_AXI_ARPROT),
        .m_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .m_axi_arsize(axi_crossbar_0_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .m_axi_awburst(axi_crossbar_0_M00_AXI_AWBURST),
        .m_axi_awcache(axi_crossbar_0_M00_AXI_AWCACHE),
        .m_axi_awid(axi_crossbar_0_M00_AXI_AWID),
        .m_axi_awlen(axi_crossbar_0_M00_AXI_AWLEN),
        .m_axi_awlock(axi_crossbar_0_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_crossbar_0_M00_AXI_AWPROT),
        .m_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .m_axi_awsize(axi_crossbar_0_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .m_axi_bid(axi_crossbar_0_M00_AXI_BID),
        .m_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .m_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .m_axi_buser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .m_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .m_axi_rid(axi_crossbar_0_M00_AXI_RID),
        .m_axi_rlast(axi_crossbar_0_M00_AXI_RLAST),
        .m_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .m_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .m_axi_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .m_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .m_axi_wlast(axi_crossbar_0_M00_AXI_WLAST),
        .m_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .m_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID),
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
  soc_bd_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
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
  soc_bd_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(system_rst_0_1),
        .Res(util_vector_logic_0_Res));
endmodule
