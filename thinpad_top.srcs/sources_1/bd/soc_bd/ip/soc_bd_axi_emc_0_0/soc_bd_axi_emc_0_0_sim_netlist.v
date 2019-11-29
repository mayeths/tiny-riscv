// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Nov 30 02:10:39 2019
// Host        : Gyc-Arch-Linux running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/gaoyichuan/workspace/cod/cod19grp73/thinpad_top.srcs/sources_1/bd/soc_bd/ip/soc_bd_axi_emc_0_0/soc_bd_axi_emc_0_0_sim_netlist.v
// Design      : soc_bd_axi_emc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_bd_axi_emc_0_0,axi_emc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_emc,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module soc_bd_axi_emc_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    rdclk,
    s_axi_mem_awid,
    s_axi_mem_awaddr,
    s_axi_mem_awlen,
    s_axi_mem_awsize,
    s_axi_mem_awburst,
    s_axi_mem_awlock,
    s_axi_mem_awcache,
    s_axi_mem_awprot,
    s_axi_mem_awvalid,
    s_axi_mem_awready,
    s_axi_mem_wdata,
    s_axi_mem_wstrb,
    s_axi_mem_wlast,
    s_axi_mem_wvalid,
    s_axi_mem_wready,
    s_axi_mem_bid,
    s_axi_mem_bresp,
    s_axi_mem_bvalid,
    s_axi_mem_bready,
    s_axi_mem_arid,
    s_axi_mem_araddr,
    s_axi_mem_arlen,
    s_axi_mem_arsize,
    s_axi_mem_arburst,
    s_axi_mem_arlock,
    s_axi_mem_arcache,
    s_axi_mem_arprot,
    s_axi_mem_arvalid,
    s_axi_mem_arready,
    s_axi_mem_rid,
    s_axi_mem_rdata,
    s_axi_mem_rresp,
    s_axi_mem_rlast,
    s_axi_mem_rvalid,
    s_axi_mem_rready,
    mem_dq_i,
    mem_dq_o,
    mem_dq_t,
    mem_a,
    mem_ce,
    mem_cen,
    mem_oen,
    mem_wen,
    mem_ben,
    mem_qwen,
    mem_rpn,
    mem_adv_ldn,
    mem_lbon,
    mem_cken,
    mem_rnw,
    mem_cre,
    mem_wait);
  (* sigis = "Clk" *) (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_mem:s_axi_reg, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN soc_bd_system_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* sigis = "Rst" *) (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* sigis = "Clk" *) (* x_interface_info = "xilinx.com:signal:clock:1.0 rdclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME rdclk, ASSOCIATED_BUSIF EMC_INTF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN soc_bd_system_clk, INSERT_VIP 0" *) input rdclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_MEM, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 16, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN soc_bd_system_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]s_axi_mem_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWADDR" *) input [31:0]s_axi_mem_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLEN" *) input [7:0]s_axi_mem_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWSIZE" *) input [2:0]s_axi_mem_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWBURST" *) input [1:0]s_axi_mem_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLOCK" *) input s_axi_mem_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWCACHE" *) input [3:0]s_axi_mem_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWPROT" *) input [2:0]s_axi_mem_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWVALID" *) input s_axi_mem_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREADY" *) output s_axi_mem_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WDATA" *) input [31:0]s_axi_mem_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WSTRB" *) input [3:0]s_axi_mem_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WLAST" *) input s_axi_mem_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WVALID" *) input s_axi_mem_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WREADY" *) output s_axi_mem_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BID" *) output [15:0]s_axi_mem_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BRESP" *) output [1:0]s_axi_mem_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BVALID" *) output s_axi_mem_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BREADY" *) input s_axi_mem_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARID" *) input [15:0]s_axi_mem_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARADDR" *) input [31:0]s_axi_mem_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLEN" *) input [7:0]s_axi_mem_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARSIZE" *) input [2:0]s_axi_mem_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARBURST" *) input [1:0]s_axi_mem_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLOCK" *) input s_axi_mem_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARCACHE" *) input [3:0]s_axi_mem_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARPROT" *) input [2:0]s_axi_mem_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARVALID" *) input s_axi_mem_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREADY" *) output s_axi_mem_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RID" *) output [15:0]s_axi_mem_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RDATA" *) output [31:0]s_axi_mem_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RRESP" *) output [1:0]s_axi_mem_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RLAST" *) output s_axi_mem_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RVALID" *) output s_axi_mem_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RREADY" *) input s_axi_mem_rready;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF DQ_I" *) (* x_interface_parameter = "XIL_INTERFACENAME EMC_INTF, BOARD.ASSOCIATED_PARAM EMC_BOARD_INTERFACE" *) input [31:0]mem_dq_i;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF DQ_O" *) output [31:0]mem_dq_o;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF DQ_T" *) output [31:0]mem_dq_t;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF ADDR" *) output [31:0]mem_a;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CE" *) output [0:0]mem_ce;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CE_N" *) output [0:0]mem_cen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF OEN" *) output [0:0]mem_oen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF WEN" *) output mem_wen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF BEN" *) output [3:0]mem_ben;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF QWEN" *) output [3:0]mem_qwen;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF RPN" *) output mem_rpn;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF ADV_LDN" *) output mem_adv_ldn;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF LBON" *) output mem_lbon;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CLKEN" *) output mem_cken;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF RNW" *) output mem_rnw;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF CRE" *) output mem_cre;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 EMC_INTF WAIT" *) input [0:0]mem_wait;

  wire \<const0> ;
  wire [31:0]mem_a;
  wire [3:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire [31:0]mem_dq_i;
  wire [31:0]mem_dq_o;
  wire [31:0]mem_dq_t;
  wire [0:0]mem_oen;
  wire [3:0]mem_qwen;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  wire rdclk;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [15:0]s_axi_mem_arid;
  wire [7:0]s_axi_mem_arlen;
  wire s_axi_mem_arready;
  wire [2:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [15:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire s_axi_mem_awready;
  wire [2:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [15:0]s_axi_mem_bid;
  wire s_axi_mem_bready;
  wire [1:1]\^s_axi_mem_bresp ;
  wire s_axi_mem_bvalid;
  wire [31:0]s_axi_mem_rdata;
  wire [15:0]s_axi_mem_rid;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [1:1]\^s_axi_mem_rresp ;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;

  assign mem_adv_ldn = \<const0> ;
  assign mem_cken = \<const0> ;
  assign mem_lbon = \<const0> ;
  assign s_axi_mem_bresp[1] = \^s_axi_mem_bresp [1];
  assign s_axi_mem_bresp[0] = \<const0> ;
  assign s_axi_mem_rresp[1] = \^s_axi_mem_rresp [1];
  assign s_axi_mem_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  soc_bd_axi_emc_0_0_axi_emc U0
       (.E(s_axi_mem_awready),
        .mem_a(mem_a),
        .mem_ben(mem_ben),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .rdclk(rdclk),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arid(s_axi_mem_arid),
        .s_axi_mem_arlen(s_axi_mem_arlen),
        .s_axi_mem_arsize(s_axi_mem_arsize[1:0]),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_arvalid_0(s_axi_mem_arready),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awid(s_axi_mem_awid),
        .s_axi_mem_awlen(s_axi_mem_awlen),
        .s_axi_mem_awsize(s_axi_mem_awsize[1:0]),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_bid(s_axi_mem_bid),
        .s_axi_mem_bready(s_axi_mem_bready),
        .s_axi_mem_bresp(\^s_axi_mem_bresp ),
        .s_axi_mem_bvalid_reg_reg(s_axi_mem_bvalid),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rid(s_axi_mem_rid),
        .s_axi_mem_rlast(s_axi_mem_rlast),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(\^s_axi_mem_rresp ),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .s_axi_mem_wdata(s_axi_mem_wdata),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wready(s_axi_mem_wready),
        .s_axi_mem_wstrb(s_axi_mem_wstrb),
        .s_axi_mem_wvalid(s_axi_mem_wvalid));
endmodule

(* ORIG_REF_NAME = "EMC" *) 
module soc_bd_axi_emc_0_0_EMC
   (ip2bus_addrack,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    mem_wen,
    ip2bus_rdack,
    transaction_done_i,
    mem_cen,
    mem_oen,
    mem_rpn,
    mem_ce,
    mem_rnw,
    pend_rdreq,
    pend_wrreq,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ,
    Q,
    s_axi_mem_arvalid_0,
    \FSM_sequential_crnt_state_reg[4] ,
    \FSM_sequential_crnt_state_reg[0] ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ,
    \burst_addr_cnt_reg[5] ,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    \FSM_sequential_crnt_state_reg[1] ,
    \FSM_sequential_crnt_state_reg[2] ,
    \FSM_sequential_crnt_state_reg[1]_0 ,
    \FSM_sequential_crnt_state_reg[1]_1 ,
    s_axi_mem_wvalid_0,
    \FSM_sequential_crnt_state_reg[1]_2 ,
    \FSM_sequential_crnt_state_reg[2]_0 ,
    rd_fifo_wr_en,
    \FSM_sequential_crnt_state_reg[2]_1 ,
    Mem_addr,
    \IP2Bus_Data_reg[0] ,
    mem_dq_o,
    mem_dq_t,
    mem_qwen,
    mem_ben,
    reset_fifo,
    s_axi_aclk,
    bus2ip_reset,
    \DATA_STORE_GEN[24].WRDATA_REG ,
    readreq_th_reset,
    temp_bus2ip_cs,
    IP2Bus_RdAck0,
    bus2Mem_RdReq,
    pend_rdreq_reg,
    pend_wrreq_reg,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    bus2ip_wrreq_i,
    s_axi_mem_arvalid,
    rw_flag_reg,
    s_axi_mem_wvalid,
    s_axi_mem_awvalid,
    \FSM_sequential_crnt_state_reg[0]_1 ,
    \FSM_sequential_crnt_state[0]_i_5 ,
    Bus2IP_RdReq_emc,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    s_axi_mem_wlast,
    \DATA_STORE_GEN[0].WRDATA_REG ,
    bus2ip_rd_req_reg_reg,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ,
    addr_sm_ps_IDLE_reg_i_3,
    \FSM_sequential_crnt_state_reg[1]_3 ,
    \FSM_sequential_crnt_state_reg[3] ,
    \FSM_sequential_crnt_state[1]_i_5 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    Bus2IP_Addr,
    Bus2IP_BE,
    mem_dq_i,
    rdclk);
  output ip2bus_addrack;
  output \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  output mem_wen;
  output ip2bus_rdack;
  output transaction_done_i;
  output [0:0]mem_cen;
  output [0:0]mem_oen;
  output mem_rpn;
  output [0:0]mem_ce;
  output mem_rnw;
  output pend_rdreq;
  output pend_wrreq;
  output \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ;
  output [0:0]Q;
  output s_axi_mem_arvalid_0;
  output \FSM_sequential_crnt_state_reg[4] ;
  output \FSM_sequential_crnt_state_reg[0] ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  output \burst_addr_cnt_reg[5] ;
  output \FSM_sequential_crnt_state_reg[0]_0 ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \FSM_sequential_crnt_state_reg[2] ;
  output \FSM_sequential_crnt_state_reg[1]_0 ;
  output \FSM_sequential_crnt_state_reg[1]_1 ;
  output s_axi_mem_wvalid_0;
  output \FSM_sequential_crnt_state_reg[1]_2 ;
  output \FSM_sequential_crnt_state_reg[2]_0 ;
  output rd_fifo_wr_en;
  output \FSM_sequential_crnt_state_reg[2]_1 ;
  output [0:31]Mem_addr;
  output [31:0]\IP2Bus_Data_reg[0] ;
  output [31:0]mem_dq_o;
  output [31:0]mem_dq_t;
  output [3:0]mem_qwen;
  output [3:0]mem_ben;
  input reset_fifo;
  input s_axi_aclk;
  input bus2ip_reset;
  input [31:0]\DATA_STORE_GEN[24].WRDATA_REG ;
  input readreq_th_reset;
  input temp_bus2ip_cs;
  input IP2Bus_RdAck0;
  input bus2Mem_RdReq;
  input pend_rdreq_reg;
  input pend_wrreq_reg;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  input bus2ip_wrreq_i;
  input s_axi_mem_arvalid;
  input rw_flag_reg;
  input s_axi_mem_wvalid;
  input s_axi_mem_awvalid;
  input \FSM_sequential_crnt_state_reg[0]_1 ;
  input \FSM_sequential_crnt_state[0]_i_5 ;
  input Bus2IP_RdReq_emc;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  input s_axi_mem_wlast;
  input \DATA_STORE_GEN[0].WRDATA_REG ;
  input bus2ip_rd_req_reg_reg;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  input [7:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  input addr_sm_ps_IDLE_reg_i_3;
  input \FSM_sequential_crnt_state_reg[1]_3 ;
  input \FSM_sequential_crnt_state_reg[3] ;
  input \FSM_sequential_crnt_state[1]_i_5 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  input [0:31]Bus2IP_Addr;
  input [0:3]Bus2IP_BE;
  input [31:0]mem_dq_i;
  input rdclk;

  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire \BURST_CNT/CE ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  wire [0:31]Bus2IP_Addr;
  wire [0:3]Bus2IP_BE;
  wire Bus2IP_RdReq_emc;
  wire COUNTERS_I_n_32;
  wire COUNTERS_I_n_33;
  wire COUNTERS_I_n_34;
  wire COUNTERS_I_n_38;
  wire COUNTERS_I_n_41;
  wire COUNTERS_I_n_42;
  wire COUNTERS_I_n_43;
  wire COUNTERS_I_n_44;
  wire \DATA_STORE_GEN[0].WRDATA_REG ;
  wire [31:0]\DATA_STORE_GEN[24].WRDATA_REG ;
  wire \FSM_sequential_crnt_state[0]_i_5 ;
  wire \FSM_sequential_crnt_state[1]_i_5 ;
  wire \FSM_sequential_crnt_state_reg[0] ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire \FSM_sequential_crnt_state_reg[0]_1 ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_crnt_state_reg[1]_0 ;
  wire \FSM_sequential_crnt_state_reg[1]_1 ;
  wire \FSM_sequential_crnt_state_reg[1]_2 ;
  wire \FSM_sequential_crnt_state_reg[1]_3 ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \FSM_sequential_crnt_state_reg[2]_0 ;
  wire \FSM_sequential_crnt_state_reg[2]_1 ;
  wire \FSM_sequential_crnt_state_reg[3] ;
  wire \FSM_sequential_crnt_state_reg[4] ;
  wire [31:0]\IP2Bus_Data_reg[0] ;
  wire IP2Bus_RdAck0;
  wire IPIC_IF_I_n_3;
  wire IPIC_IF_I_n_5;
  wire MEM_STATE_MACHINE_I_n_14;
  wire MEM_STATE_MACHINE_I_n_18;
  wire MEM_STATE_MACHINE_I_n_28;
  wire MEM_STATE_MACHINE_I_n_29;
  wire MEM_STATE_MACHINE_I_n_32;
  wire MEM_STATE_MACHINE_I_n_52;
  wire MEM_STATE_MACHINE_I_n_6;
  wire MEM_STATE_MACHINE_I_n_78;
  wire MEM_STATE_MACHINE_I_n_79;
  wire MEM_STATE_MACHINE_I_n_80;
  wire MEM_STATE_MACHINE_I_n_81;
  wire [0:3]Mem_BEN_int;
  wire Mem_CE_int;
  wire [0:31]Mem_DQ_I_v;
  wire [0:31]Mem_addr;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire [7:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  wire [0:0]Q;
  wire \THZCNT_I/CE ;
  wire \TLZCNT_I/CE ;
  wire \TPACCCNT_I/CE ;
  wire \TPACCCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TPACCCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TPACCCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/CE ;
  wire \TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/CE ;
  wire \TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWPHCNT_I/S ;
  wire \TWRCNT_I/CE ;
  wire \TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \T_WRREC_CNT_I/PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire addr_sm_ps_IDLE_reg_i_3;
  wire \burst_addr_cnt_reg[5] ;
  wire bus2Mem_RdReq;
  wire [0:3]bus2ip_ben_int;
  wire bus2ip_rd_req_reg_reg;
  wire bus2ip_reset;
  wire bus2ip_wrreq_i;
  wire [1:0]crnt_state;
  wire data_strobe_c;
  wire ip2bus_addrack;
  wire ip2bus_rdack;
  wire [0:31]mem2Bus_Data;
  wire mem_CEN_cmb;
  wire mem_OEN_cmb;
  wire mem_RNW_cmb;
  wire mem_WEN_cmb;
  wire [3:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire [31:0]mem_dq_i;
  wire [31:0]mem_dq_o;
  wire [0:31]mem_dq_o_int;
  wire [31:0]mem_dq_t;
  wire [31:31]mem_dq_t_int;
  wire mem_dqt_t_d;
  wire [0:0]mem_oen;
  wire [3:0]mem_qwen;
  wire [0:3]mem_qwen_int;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  wire [0:3]p_0_in;
  wire pend_rdreq;
  wire pend_rdreq_reg;
  wire pend_wrreq;
  wire pend_wrreq_reg;
  wire rd_fifo_wr_en;
  wire rdclk;
  wire read_ack;
  wire readreq_th_reset;
  wire reset_fifo;
  wire rw_flag_reg;
  wire s_axi_aclk;
  wire s_axi_mem_arvalid;
  wire s_axi_mem_arvalid_0;
  wire s_axi_mem_awvalid;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wvalid;
  wire s_axi_mem_wvalid_0;
  wire temp_bus2ip_cs;
  wire [0:3]tpacc_cnt;
  wire tpacc_cnt_en;
  wire transaction_done_cmb;
  wire transaction_done_i;
  wire [0:3]trd_cnt;
  wire trd_cnt_en;
  wire [0:4]twph_cnt;
  wire twph_cnt_en;
  wire twr_cnt_en;
  wire [0:14]twr_rec_cnt;
  wire twr_rec_cnt_en_int;

  soc_bd_axi_emc_0_0_addr_counter_mux ADDR_COUNTER_MUX_I
       (.Bus2IP_Addr(Bus2IP_Addr),
        .Bus2IP_BE(Bus2IP_BE),
        .D({Mem_BEN_int[0],Mem_BEN_int[1],Mem_BEN_int[2],Mem_BEN_int[3]}),
        .Mem_Ben(bus2ip_ben_int),
        .Mem_addr(Mem_addr),
        .bus2ip_reset(bus2ip_reset),
        .data_strobe_c(data_strobe_c),
        .s_axi_aclk(s_axi_aclk));
  soc_bd_axi_emc_0_0_counters COUNTERS_I
       (.CE(\TWRCNT_I/CE ),
        .CE_13(\TPACCCNT_I/CE ),
        .CE_18(\THZCNT_I/CE ),
        .CE_4(\TWPHCNT_I/CE ),
        .CE_5(\TLZCNT_I/CE ),
        .CE_9(\TRDCNT_I/CE ),
        .\FSM_sequential_crnt_state[1]_i_3 (MEM_STATE_MACHINE_I_n_32),
        .\FSM_sequential_crnt_state[1]_i_3_0 (MEM_STATE_MACHINE_I_n_29),
        .\FSM_sequential_crnt_state_reg[1] (COUNTERS_I_n_33),
        .\FSM_sequential_crnt_state_reg[1]_0 (MEM_STATE_MACHINE_I_n_18),
        .\FSM_sequential_crnt_state_reg[1]_1 (MEM_STATE_MACHINE_I_n_28),
        .\FSM_sequential_crnt_state_reg[1]_2 (MEM_STATE_MACHINE_I_n_52),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ({p_0_in[0],p_0_in[1],p_0_in[2],p_0_in[3]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ({trd_cnt[0],trd_cnt[1],trd_cnt[2],trd_cnt[3]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ({tpacc_cnt[0],tpacc_cnt[1],tpacc_cnt[2],tpacc_cnt[3]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ({twr_rec_cnt[0],twr_rec_cnt[1],twr_rec_cnt[2],twr_rec_cnt[3],twr_rec_cnt[4],twr_rec_cnt[5],twr_rec_cnt[6],twr_rec_cnt[7],twr_rec_cnt[8],twr_rec_cnt[9],twr_rec_cnt[10],twr_rec_cnt[11],twr_rec_cnt[12],twr_rec_cnt[13],twr_rec_cnt[14]}),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 (\TPACCCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 (\T_WRREC_CNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 (\TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 (\TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_81),
        .\PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 (COUNTERS_I_n_44),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (COUNTERS_I_n_38),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 (COUNTERS_I_n_41),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 (COUNTERS_I_n_32),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 (\TPACCCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 (\T_WRREC_CNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 (\TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 (\TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 (MEM_STATE_MACHINE_I_n_6),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_79),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 (MEM_STATE_MACHINE_I_n_80),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 (\TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 (\TPACCCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 (\T_WRREC_CNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 (\TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 (\TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 (\T_WRREC_CNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 (COUNTERS_I_n_42),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 (COUNTERS_I_n_34),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 (COUNTERS_I_n_43),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q(crnt_state),
        .S(\TWPHCNT_I/S ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .tpacc_cnt_en(tpacc_cnt_en),
        .transaction_done_cmb(transaction_done_cmb),
        .transaction_done_reg_reg(MEM_STATE_MACHINE_I_n_78),
        .transaction_done_reg_reg_0(MEM_STATE_MACHINE_I_n_14),
        .transaction_done_reg_reg_1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .trd_cnt_en(trd_cnt_en),
        .twph_cnt(twph_cnt),
        .twph_cnt_en(twph_cnt_en),
        .twr_cnt_en(twr_cnt_en),
        .twr_rec_cnt_en_int(twr_rec_cnt_en_int));
  soc_bd_axi_emc_0_0_io_registers IO_REGISTERS_I
       (.D({mem_dq_o_int[0],mem_dq_o_int[1],mem_dq_o_int[2],mem_dq_o_int[3],mem_dq_o_int[4],mem_dq_o_int[5],mem_dq_o_int[6],mem_dq_o_int[7],mem_dq_o_int[8],mem_dq_o_int[9],mem_dq_o_int[10],mem_dq_o_int[11],mem_dq_o_int[12],mem_dq_o_int[13],mem_dq_o_int[14],mem_dq_o_int[15],mem_dq_o_int[16],mem_dq_o_int[17],mem_dq_o_int[18],mem_dq_o_int[19],mem_dq_o_int[20],mem_dq_o_int[21],mem_dq_o_int[22],mem_dq_o_int[23],mem_dq_o_int[24],mem_dq_o_int[25],mem_dq_o_int[26],mem_dq_o_int[27],mem_dq_o_int[28],mem_dq_o_int[29],mem_dq_o_int[30],mem_dq_o_int[31]}),
        .Mem_CE_int(Mem_CE_int),
        .Q({Mem_DQ_I_v[0],Mem_DQ_I_v[1],Mem_DQ_I_v[2],Mem_DQ_I_v[3],Mem_DQ_I_v[4],Mem_DQ_I_v[5],Mem_DQ_I_v[6],Mem_DQ_I_v[7],Mem_DQ_I_v[8],Mem_DQ_I_v[9],Mem_DQ_I_v[10],Mem_DQ_I_v[11],Mem_DQ_I_v[12],Mem_DQ_I_v[13],Mem_DQ_I_v[14],Mem_DQ_I_v[15],Mem_DQ_I_v[16],Mem_DQ_I_v[17],Mem_DQ_I_v[18],Mem_DQ_I_v[19],Mem_DQ_I_v[20],Mem_DQ_I_v[21],Mem_DQ_I_v[22],Mem_DQ_I_v[23],Mem_DQ_I_v[24],Mem_DQ_I_v[25],Mem_DQ_I_v[26],Mem_DQ_I_v[27],Mem_DQ_I_v[28],Mem_DQ_I_v[29],Mem_DQ_I_v[30],Mem_DQ_I_v[31]}),
        .bus2ip_reset(bus2ip_reset),
        .mem_CEN_cmb(mem_CEN_cmb),
        .mem_OEN_cmb(mem_OEN_cmb),
        .mem_RNW_cmb(mem_RNW_cmb),
        .mem_WEN_cmb(mem_WEN_cmb),
        .mem_ben(mem_ben),
        .\mem_ben_reg_reg[0]_0 ({Mem_BEN_int[0],Mem_BEN_int[1],Mem_BEN_int[2],Mem_BEN_int[3]}),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .\mem_dq_t_reg_reg[0]_0 (mem_dq_t_int),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .\mem_qwen_reg_reg[0]_0 ({mem_qwen_int[0],mem_qwen_int[1],mem_qwen_int[2],mem_qwen_int[3]}),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .rdclk(rdclk),
        .s_axi_aclk(s_axi_aclk));
  soc_bd_axi_emc_0_0_ipic_if IPIC_IF_I
       (.CE(\BURST_CNT/CE ),
        .D({mem2Bus_Data[0],mem2Bus_Data[1],mem2Bus_Data[2],mem2Bus_Data[3],mem2Bus_Data[4],mem2Bus_Data[5],mem2Bus_Data[6],mem2Bus_Data[7],mem2Bus_Data[8],mem2Bus_Data[9],mem2Bus_Data[10],mem2Bus_Data[11],mem2Bus_Data[12],mem2Bus_Data[13],mem2Bus_Data[14],mem2Bus_Data[15],mem2Bus_Data[16],mem2Bus_Data[17],mem2Bus_Data[18],mem2Bus_Data[19],mem2Bus_Data[20],mem2Bus_Data[21],mem2Bus_Data[22],mem2Bus_Data[23],mem2Bus_Data[24],mem2Bus_Data[25],mem2Bus_Data[26],mem2Bus_Data[27],mem2Bus_Data[28],mem2Bus_Data[29],mem2Bus_Data[30],mem2Bus_Data[31]}),
        .\FSM_sequential_crnt_state_reg[1] (IPIC_IF_I_n_5),
        .\FSM_sequential_emc_addr_ps[0]_i_5 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\FSM_sequential_emc_addr_ps[0]_i_5_0 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .\IP2Bus_Data_reg[0]_0 (\IP2Bus_Data_reg[0] ),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 (ip2bus_addrack),
        .Q(crnt_state[1]),
        .\burst_addr_cnt[7]_i_3 (COUNTERS_I_n_38),
        .\burst_addr_cnt[7]_i_3_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .ip2bus_rdack(ip2bus_rdack),
        .pend_rdreq(pend_rdreq),
        .pend_rdreq_reg_0(pend_rdreq_reg),
        .pend_wrreq(pend_wrreq),
        .pend_wrreq_reg_0(IPIC_IF_I_n_3),
        .pend_wrreq_reg_1(pend_wrreq_reg),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .reset_fifo(reset_fifo),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs));
  soc_bd_axi_emc_0_0_mem_state_machine MEM_STATE_MACHINE_I
       (.\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 (\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .CE(\TWPHCNT_I/CE ),
        .CE_0(\THZCNT_I/CE ),
        .CE_1(\TPACCCNT_I/CE ),
        .CE_10(\TWRCNT_I/CE ),
        .CE_15(\TLZCNT_I/CE ),
        .CE_2(\TRDCNT_I/CE ),
        .CE_9(\BURST_CNT/CE ),
        .\DATA_STORE_GEN[0].WRDATA_REG (\DATA_STORE_GEN[0].WRDATA_REG ),
        .\FSM_sequential_crnt_state[0]_i_5 (\FSM_sequential_crnt_state[0]_i_5 ),
        .\FSM_sequential_crnt_state[1]_i_5_0 (\FSM_sequential_crnt_state[1]_i_5 ),
        .\FSM_sequential_crnt_state_reg[0]_0 (MEM_STATE_MACHINE_I_n_6),
        .\FSM_sequential_crnt_state_reg[0]_1 (\FSM_sequential_crnt_state_reg[0] ),
        .\FSM_sequential_crnt_state_reg[0]_2 (MEM_STATE_MACHINE_I_n_29),
        .\FSM_sequential_crnt_state_reg[0]_3 (\FSM_sequential_crnt_state_reg[0]_0 ),
        .\FSM_sequential_crnt_state_reg[0]_4 (\FSM_sequential_crnt_state_reg[0]_1 ),
        .\FSM_sequential_crnt_state_reg[1]_0 (MEM_STATE_MACHINE_I_n_18),
        .\FSM_sequential_crnt_state_reg[1]_1 (\FSM_sequential_crnt_state_reg[1] ),
        .\FSM_sequential_crnt_state_reg[1]_2 (\FSM_sequential_crnt_state_reg[1]_0 ),
        .\FSM_sequential_crnt_state_reg[1]_3 (\FSM_sequential_crnt_state_reg[1]_1 ),
        .\FSM_sequential_crnt_state_reg[1]_4 (\FSM_sequential_crnt_state_reg[1]_2 ),
        .\FSM_sequential_crnt_state_reg[1]_5 (COUNTERS_I_n_32),
        .\FSM_sequential_crnt_state_reg[1]_6 (\FSM_sequential_crnt_state_reg[1]_3 ),
        .\FSM_sequential_crnt_state_reg[2]_0 (\FSM_sequential_crnt_state_reg[2] ),
        .\FSM_sequential_crnt_state_reg[2]_1 (\FSM_sequential_crnt_state_reg[2]_0 ),
        .\FSM_sequential_crnt_state_reg[2]_2 (\FSM_sequential_crnt_state_reg[2]_1 ),
        .\FSM_sequential_crnt_state_reg[2]_3 (MEM_STATE_MACHINE_I_n_78),
        .\FSM_sequential_crnt_state_reg[2]_4 (COUNTERS_I_n_43),
        .\FSM_sequential_crnt_state_reg[3]_0 (\FSM_sequential_crnt_state_reg[3] ),
        .\FSM_sequential_crnt_state_reg[4]_0 (\FSM_sequential_crnt_state_reg[4] ),
        .\FSM_sequential_crnt_state_reg[4]_1 (MEM_STATE_MACHINE_I_n_14),
        .\FSM_sequential_crnt_state_reg[4]_2 ({mem_qwen_int[0],mem_qwen_int[1],mem_qwen_int[2],mem_qwen_int[3]}),
        .\FSM_sequential_crnt_state_reg[4]_3 (MEM_STATE_MACHINE_I_n_28),
        .\FSM_sequential_emc_addr_ps[0]_i_2 (IPIC_IF_I_n_3),
        .Mem_Ben(bus2ip_ben_int),
        .Mem_CE_int(Mem_CE_int),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (COUNTERS_I_n_42),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ({trd_cnt[0],trd_cnt[1],trd_cnt[2],trd_cnt[3]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ({tpacc_cnt[0],tpacc_cnt[1],tpacc_cnt[2],tpacc_cnt[3]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3 (COUNTERS_I_n_41),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 ({twr_rec_cnt[0],twr_rec_cnt[1],twr_rec_cnt[2],twr_rec_cnt[3],twr_rec_cnt[4],twr_rec_cnt[5],twr_rec_cnt[6],twr_rec_cnt[7],twr_rec_cnt[8],twr_rec_cnt[9],twr_rec_cnt[10],twr_rec_cnt[11],twr_rec_cnt[12],twr_rec_cnt[13],twr_rec_cnt[14]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 ({p_0_in[0],p_0_in[1],p_0_in[2],p_0_in[3]}),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\TWPHCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14 (\T_WRREC_CNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19 (\TWRCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5 (\TRDCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 (\TPACCCNT_I/PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_81),
        .\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 (COUNTERS_I_n_44),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\TWPHCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13 (\T_WRREC_CNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18 (\TWRCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4 (\TRDCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 (\TPACCCNT_I/PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\TWPHCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12 (\T_WRREC_CNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17 (\TWRCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3 (\TRDCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 (\TPACCCNT_I/PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 (MEM_STATE_MACHINE_I_n_79),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 (MEM_STATE_MACHINE_I_n_80),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\TWPHCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_11 (\T_WRREC_CNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 (\TWRCNT_I/PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg (\T_WRREC_CNT_I/PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q({Q,crnt_state}),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 (COUNTERS_I_n_33),
        .S(\TWPHCNT_I/S ),
        .addr_sm_ps_IDLE_reg_i_3(addr_sm_ps_IDLE_reg_i_3),
        .\burst_addr_cnt_reg[5] (\burst_addr_cnt_reg[5] ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_rd_req_reg_reg(bus2ip_rd_req_reg_reg),
        .bus2ip_rd_req_reg_reg_0(IPIC_IF_I_n_5),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .data_strobe_c(data_strobe_c),
        .ip2bus_addrack(ip2bus_addrack),
        .mem_CEN_cmb(mem_CEN_cmb),
        .mem_OEN_cmb(mem_OEN_cmb),
        .mem_RNW_cmb(mem_RNW_cmb),
        .mem_WEN_cmb(mem_WEN_cmb),
        .\mem_a_int_reg[0] (COUNTERS_I_n_38),
        .mem_dqt_t_d(mem_dqt_t_d),
        .mem_dqt_t_d_reg(mem_dq_t_int),
        .new_page_d1_reg_0(MEM_STATE_MACHINE_I_n_32),
        .pend_rdreq(pend_rdreq),
        .pend_wrreq(pend_wrreq),
        .read_ack(read_ack),
        .read_ack_reg_reg_0(COUNTERS_I_n_34),
        .read_ack_reg_reg_1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ),
        .read_break_reg_d1_reg_0(MEM_STATE_MACHINE_I_n_52),
        .rw_flag_reg(rw_flag_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_arvalid_0(s_axi_mem_arvalid_0),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .s_axi_mem_wvalid_0(s_axi_mem_wvalid_0),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .tpacc_cnt_en(tpacc_cnt_en),
        .transaction_done_cmb(transaction_done_cmb),
        .transaction_done_i(transaction_done_i),
        .trd_cnt_en(trd_cnt_en),
        .twph_cnt(twph_cnt),
        .twph_cnt_en(twph_cnt_en),
        .twr_cnt_en(twr_cnt_en),
        .twr_rec_cnt_en_int(twr_rec_cnt_en_int));
  soc_bd_axi_emc_0_0_mem_steer MEM_STEER_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .D({mem_dq_o_int[0],mem_dq_o_int[1],mem_dq_o_int[2],mem_dq_o_int[3],mem_dq_o_int[4],mem_dq_o_int[5],mem_dq_o_int[6],mem_dq_o_int[7],mem_dq_o_int[8],mem_dq_o_int[9],mem_dq_o_int[10],mem_dq_o_int[11],mem_dq_o_int[12],mem_dq_o_int[13],mem_dq_o_int[14],mem_dq_o_int[15],mem_dq_o_int[16],mem_dq_o_int[17],mem_dq_o_int[18],mem_dq_o_int[19],mem_dq_o_int[20],mem_dq_o_int[21],mem_dq_o_int[22],mem_dq_o_int[23],mem_dq_o_int[24],mem_dq_o_int[25],mem_dq_o_int[26],mem_dq_o_int[27],mem_dq_o_int[28],mem_dq_o_int[29],mem_dq_o_int[30],mem_dq_o_int[31]}),
        .\DATA_STORE_GEN[24].WRDATA_REG_0 (\DATA_STORE_GEN[24].WRDATA_REG ),
        .Q({Mem_DQ_I_v[0],Mem_DQ_I_v[1],Mem_DQ_I_v[2],Mem_DQ_I_v[3],Mem_DQ_I_v[4],Mem_DQ_I_v[5],Mem_DQ_I_v[6],Mem_DQ_I_v[7],Mem_DQ_I_v[8],Mem_DQ_I_v[9],Mem_DQ_I_v[10],Mem_DQ_I_v[11],Mem_DQ_I_v[12],Mem_DQ_I_v[13],Mem_DQ_I_v[14],Mem_DQ_I_v[15],Mem_DQ_I_v[16],Mem_DQ_I_v[17],Mem_DQ_I_v[18],Mem_DQ_I_v[19],Mem_DQ_I_v[20],Mem_DQ_I_v[21],Mem_DQ_I_v[22],Mem_DQ_I_v[23],Mem_DQ_I_v[24],Mem_DQ_I_v[25],Mem_DQ_I_v[26],Mem_DQ_I_v[27],Mem_DQ_I_v[28],Mem_DQ_I_v[29],Mem_DQ_I_v[30],Mem_DQ_I_v[31]}),
        .\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 ({mem2Bus_Data[0],mem2Bus_Data[1],mem2Bus_Data[2],mem2Bus_Data[3],mem2Bus_Data[4],mem2Bus_Data[5],mem2Bus_Data[6],mem2Bus_Data[7],mem2Bus_Data[8],mem2Bus_Data[9],mem2Bus_Data[10],mem2Bus_Data[11],mem2Bus_Data[12],mem2Bus_Data[13],mem2Bus_Data[14],mem2Bus_Data[15],mem2Bus_Data[16],mem2Bus_Data[17],mem2Bus_Data[18],mem2Bus_Data[19],mem2Bus_Data[20],mem2Bus_Data[21],mem2Bus_Data[22],mem2Bus_Data[23],mem2Bus_Data[24],mem2Bus_Data[25],mem2Bus_Data[26],mem2Bus_Data[27],mem2Bus_Data[28],mem2Bus_Data[29],mem2Bus_Data[30],mem2Bus_Data[31]}),
        .bus2ip_reset(bus2ip_reset),
        .data_strobe_c(data_strobe_c),
        .mem_WEN_cmb(mem_WEN_cmb),
        .mem_dqt_t_d(mem_dqt_t_d),
        .read_ack(read_ack),
        .readreq_th_reset(readreq_th_reset),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "addr_counter_mux" *) 
module soc_bd_axi_emc_0_0_addr_counter_mux
   (D,
    Mem_Ben,
    Mem_addr,
    bus2ip_reset,
    data_strobe_c,
    Bus2IP_Addr,
    s_axi_aclk,
    Bus2IP_BE);
  output [3:0]D;
  output [0:3]Mem_Ben;
  output [0:31]Mem_addr;
  input bus2ip_reset;
  input data_strobe_c;
  input [0:31]Bus2IP_Addr;
  input s_axi_aclk;
  input [0:3]Bus2IP_BE;

  wire [0:31]Bus2IP_Addr;
  wire [0:3]Bus2IP_BE;
  wire [3:0]D;
  wire [0:3]Mem_Ben;
  wire [0:31]Mem_addr;
  wire bus2ip_reset;
  wire data_strobe_c;
  wire s_axi_aclk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[0]),
        .Q(Mem_addr[0]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[10].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[10]),
        .Q(Mem_addr[10]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[11].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[11]),
        .Q(Mem_addr[11]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[12].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[12]),
        .Q(Mem_addr[12]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[13].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[13]),
        .Q(Mem_addr[13]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[14].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[14]),
        .Q(Mem_addr[14]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[15].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[15]),
        .Q(Mem_addr[15]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[16].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[16]),
        .Q(Mem_addr[16]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[17].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[17]),
        .Q(Mem_addr[17]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[18].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[18]),
        .Q(Mem_addr[18]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[19].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[19]),
        .Q(Mem_addr[19]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[1].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[1]),
        .Q(Mem_addr[1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[20].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[20]),
        .Q(Mem_addr[20]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[21].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[21]),
        .Q(Mem_addr[21]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[22].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[22]),
        .Q(Mem_addr[22]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[23].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[23]),
        .Q(Mem_addr[23]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[24].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[24]),
        .Q(Mem_addr[24]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[25].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[25]),
        .Q(Mem_addr[25]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[26].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[26]),
        .Q(Mem_addr[26]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[27].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[27]),
        .Q(Mem_addr[27]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[28].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[28]),
        .Q(Mem_addr[28]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[29].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[29]),
        .Q(Mem_addr[29]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[2].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[2]),
        .Q(Mem_addr[2]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[30].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[30]),
        .Q(Mem_addr[30]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[31].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[31]),
        .Q(Mem_addr[31]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[3].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[3]),
        .Q(Mem_addr[3]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[4].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[4]),
        .Q(Mem_addr[4]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[5].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[5]),
        .Q(Mem_addr[5]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[6].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[6]),
        .Q(Mem_addr[6]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[7].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[7]),
        .Q(Mem_addr[7]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[8].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[8]),
        .Q(Mem_addr[8]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ADDRESS_STORE_GEN[9].ADDRESS_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_Addr[9]),
        .Q(Mem_addr[9]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[0].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_BE[0]),
        .Q(Mem_Ben[0]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[1].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_BE[1]),
        .Q(Mem_Ben[1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[2].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_BE[2]),
        .Q(Mem_Ben[2]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BEN_STORE_GEN[3].BEN_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(Bus2IP_BE[3]),
        .Q(Mem_Ben[3]),
        .R(bus2ip_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ben_reg[0]_i_1 
       (.I0(Mem_Ben[0]),
        .O(D[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ben_reg[1]_i_1 
       (.I0(Mem_Ben[1]),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ben_reg[2]_i_1 
       (.I0(Mem_Ben[2]),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_ben_reg[3]_i_1 
       (.I0(Mem_Ben[3]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "axi_emc" *) 
module soc_bd_axi_emc_0_0_axi_emc
   (s_axi_mem_wready,
    s_axi_mem_rdata,
    s_axi_mem_bid,
    E,
    s_axi_mem_rid,
    s_axi_mem_arvalid_0,
    mem_wen,
    mem_dq_o,
    mem_dq_t,
    mem_cen,
    mem_oen,
    mem_qwen,
    mem_ben,
    mem_rpn,
    mem_ce,
    mem_rnw,
    mem_a,
    s_axi_mem_rresp,
    s_axi_mem_bvalid_reg_reg,
    s_axi_mem_rlast,
    s_axi_mem_rvalid,
    s_axi_mem_bresp,
    s_axi_mem_wvalid,
    s_axi_aclk,
    s_axi_mem_awid,
    s_axi_mem_arid,
    s_axi_mem_wdata,
    mem_dq_i,
    rdclk,
    s_axi_aresetn,
    s_axi_mem_wstrb,
    s_axi_mem_awaddr,
    s_axi_mem_araddr,
    s_axi_mem_awlen,
    s_axi_mem_arlen,
    s_axi_mem_awsize,
    s_axi_mem_arsize,
    s_axi_mem_awburst,
    s_axi_mem_arburst,
    s_axi_mem_rready,
    s_axi_mem_arvalid,
    s_axi_mem_awvalid,
    s_axi_mem_wlast,
    s_axi_mem_bready);
  output s_axi_mem_wready;
  output [31:0]s_axi_mem_rdata;
  output [15:0]s_axi_mem_bid;
  output [0:0]E;
  output [15:0]s_axi_mem_rid;
  output [0:0]s_axi_mem_arvalid_0;
  output mem_wen;
  output [31:0]mem_dq_o;
  output [31:0]mem_dq_t;
  output [0:0]mem_cen;
  output [0:0]mem_oen;
  output [3:0]mem_qwen;
  output [3:0]mem_ben;
  output mem_rpn;
  output [0:0]mem_ce;
  output mem_rnw;
  output [31:0]mem_a;
  output [0:0]s_axi_mem_rresp;
  output s_axi_mem_bvalid_reg_reg;
  output s_axi_mem_rlast;
  output s_axi_mem_rvalid;
  output [0:0]s_axi_mem_bresp;
  input s_axi_mem_wvalid;
  input s_axi_aclk;
  input [15:0]s_axi_mem_awid;
  input [15:0]s_axi_mem_arid;
  input [31:0]s_axi_mem_wdata;
  input [31:0]mem_dq_i;
  input rdclk;
  input s_axi_aresetn;
  input [3:0]s_axi_mem_wstrb;
  input [31:0]s_axi_mem_awaddr;
  input [31:0]s_axi_mem_araddr;
  input [7:0]s_axi_mem_awlen;
  input [7:0]s_axi_mem_arlen;
  input [1:0]s_axi_mem_awsize;
  input [1:0]s_axi_mem_arsize;
  input [1:0]s_axi_mem_awburst;
  input [1:0]s_axi_mem_arburst;
  input s_axi_mem_rready;
  input s_axi_mem_arvalid;
  input s_axi_mem_awvalid;
  input s_axi_mem_wlast;
  input s_axi_mem_bready;

  wire AXI_EMC_NATIVE_INTERFACE_I_n_0;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_1;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_13;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_17;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_18;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_19;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_20;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_21;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_22;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_23;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_24;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_25;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_28;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_29;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_3;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_30;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_31;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_32;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_33;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_34;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_35;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_36;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_4;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_45;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_75;
  wire AXI_EMC_NATIVE_INTERFACE_I_n_76;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ;
  wire Bus2IP_RdReq_emc;
  wire [0:0]E;
  wire EMC_CTRL_I_n_12;
  wire EMC_CTRL_I_n_13;
  wire EMC_CTRL_I_n_15;
  wire EMC_CTRL_I_n_16;
  wire EMC_CTRL_I_n_17;
  wire EMC_CTRL_I_n_18;
  wire EMC_CTRL_I_n_19;
  wire EMC_CTRL_I_n_20;
  wire EMC_CTRL_I_n_21;
  wire EMC_CTRL_I_n_22;
  wire EMC_CTRL_I_n_23;
  wire EMC_CTRL_I_n_24;
  wire EMC_CTRL_I_n_25;
  wire EMC_CTRL_I_n_26;
  wire EMC_CTRL_I_n_27;
  wire EMC_CTRL_I_n_28;
  wire EMC_CTRL_I_n_29;
  wire EMC_CTRL_I_n_31;
  wire \IPIC_IF_I/IP2Bus_RdAck0 ;
  wire \IPIC_IF_I/pend_rdreq ;
  wire \IPIC_IF_I/pend_wrreq ;
  wire \IPIC_IF_I/reset_fifo ;
  wire [2:2]\MEM_STATE_MACHINE_I/crnt_state ;
  wire \MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire \MEM_STEER_I/readreq_th_reset ;
  wire bus2Mem_RdReq;
  wire [19:0]bus2ip_addr_i_reg;
  wire [0:3]bus2ip_ben_fixed;
  wire [0:7]bus2ip_burstlength;
  wire bus2ip_reset;
  wire bus2ip_wrreq_i;
  wire ip2bus_addrack;
  wire [0:31]ip2bus_data;
  wire ip2bus_rdack;
  wire [31:0]mem_a;
  wire [0:31]mem_a_int;
  wire [3:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire [31:0]mem_dq_i;
  wire [31:0]mem_dq_o;
  wire [31:0]mem_dq_t;
  wire [0:0]mem_oen;
  wire [3:0]mem_qwen;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  wire [1:0]p_1_out;
  wire rd_fifo_wr_en;
  wire rdclk;
  wire rw_flag_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [15:0]s_axi_mem_arid;
  wire [7:0]s_axi_mem_arlen;
  wire [1:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [0:0]s_axi_mem_arvalid_0;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [15:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire [1:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [15:0]s_axi_mem_bid;
  wire s_axi_mem_bready;
  wire [0:0]s_axi_mem_bresp;
  wire s_axi_mem_bvalid_reg_reg;
  wire [31:0]s_axi_mem_rdata;
  wire [15:0]s_axi_mem_rid;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [0:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;
  wire temp_bus2ip_cs;
  wire [31:0]temp_bus2ip_data;
  wire transaction_done_i;

  soc_bd_axi_emc_0_0_axi_emc_native_interface AXI_EMC_NATIVE_INTERFACE_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] (AXI_EMC_NATIVE_INTERFACE_I_n_1),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] (AXI_EMC_NATIVE_INTERFACE_I_n_3),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] (AXI_EMC_NATIVE_INTERFACE_I_n_4),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] (EMC_CTRL_I_n_25),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 (EMC_CTRL_I_n_23),
        .Bus2IP_Addr({bus2ip_addr_i_reg,p_1_out}),
        .Bus2IP_BE(bus2ip_ben_fixed),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .\DATA_STORE_GEN[0].WRDATA_REG (\MEM_STATE_MACHINE_I/crnt_state ),
        .\DATA_STORE_GEN[0].WRDATA_REG_0 (EMC_CTRL_I_n_18),
        .E(s_axi_mem_arvalid_0),
        .\FSM_sequential_crnt_state[0]_i_2 (EMC_CTRL_I_n_17),
        .\FSM_sequential_crnt_state[0]_i_2_0 (EMC_CTRL_I_n_31),
        .\FSM_sequential_crnt_state[0]_i_9 (EMC_CTRL_I_n_13),
        .\FSM_sequential_crnt_state[1]_i_9 (EMC_CTRL_I_n_19),
        .\FSM_sequential_crnt_state_reg[2] (AXI_EMC_NATIVE_INTERFACE_I_n_34),
        .\INFERRED_GEN.data_reg[255][8]_srl32__0 ({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .IP2Bus_RdAck0(\IPIC_IF_I/IP2Bus_RdAck0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (AXI_EMC_NATIVE_INTERFACE_I_n_13),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_28),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (AXI_EMC_NATIVE_INTERFACE_I_n_31),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (AXI_EMC_NATIVE_INTERFACE_I_n_75),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 (AXI_EMC_NATIVE_INTERFACE_I_n_76),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0] (AXI_EMC_NATIVE_INTERFACE_I_n_30),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_33),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 (AXI_EMC_NATIVE_INTERFACE_I_n_36),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (EMC_CTRL_I_n_20),
        .Q({AXI_EMC_NATIVE_INTERFACE_I_n_17,AXI_EMC_NATIVE_INTERFACE_I_n_18,AXI_EMC_NATIVE_INTERFACE_I_n_19,AXI_EMC_NATIVE_INTERFACE_I_n_20,AXI_EMC_NATIVE_INTERFACE_I_n_21,AXI_EMC_NATIVE_INTERFACE_I_n_22}),
        .SR(AXI_EMC_NATIVE_INTERFACE_I_n_0),
        .addr_sm_ps_IDLE_reg_reg_0(EMC_CTRL_I_n_28),
        .addr_sm_ps_IDLE_reg_reg_1(EMC_CTRL_I_n_27),
        .addr_sm_ps_IDLE_reg_reg_2(EMC_CTRL_I_n_22),
        .addr_sm_ps_IDLE_reg_reg_3(EMC_CTRL_I_n_26),
        .\burst_addr_cnt_reg[2]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_24),
        .\burst_addr_cnt_reg[5]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_23),
        .\burst_addr_cnt_reg[7]_0 (EMC_CTRL_I_n_24),
        .\burstlength_reg_reg[7]_0 ({bus2ip_burstlength[0],bus2ip_burstlength[1],bus2ip_burstlength[2],bus2ip_burstlength[3],bus2ip_burstlength[4],bus2ip_burstlength[5],bus2ip_burstlength[6],bus2ip_burstlength[7]}),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .\bus2ip_BE_reg_reg[1]_0 (AXI_EMC_NATIVE_INTERFACE_I_n_32),
        .\bus2ip_data_reg_reg[31]_0 (temp_bus2ip_data),
        .bus2ip_rd_req_reg_reg_0(EMC_CTRL_I_n_21),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wr_req_reg_reg_0(AXI_EMC_NATIVE_INTERFACE_I_n_25),
        .bus2ip_wr_req_reg_reg_1(AXI_EMC_NATIVE_INTERFACE_I_n_29),
        .bus2ip_wr_req_reg_reg_2(AXI_EMC_NATIVE_INTERFACE_I_n_45),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .ip2bus_addrack(ip2bus_addrack),
        .ip2bus_rdack(ip2bus_rdack),
        .pend_rdreq(\IPIC_IF_I/pend_rdreq ),
        .pend_rdreq_reg(AXI_EMC_NATIVE_INTERFACE_I_n_35),
        .pend_rdreq_reg_0(EMC_CTRL_I_n_12),
        .pend_wrreq(\IPIC_IF_I/pend_wrreq ),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .readreq_th_reset(\MEM_STEER_I/readreq_th_reset ),
        .reset_fifo(\IPIC_IF_I/reset_fifo ),
        .rw_flag_reg(rw_flag_reg),
        .rw_flag_reg_reg_0(EMC_CTRL_I_n_16),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(E),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arid(s_axi_mem_arid),
        .s_axi_mem_arlen(s_axi_mem_arlen),
        .s_axi_mem_arsize(s_axi_mem_arsize),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awid(s_axi_mem_awid),
        .s_axi_mem_awlen(s_axi_mem_awlen),
        .s_axi_mem_awsize(s_axi_mem_awsize),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_bid(s_axi_mem_bid),
        .\s_axi_mem_bid_reg_reg[0]_0 (EMC_CTRL_I_n_15),
        .s_axi_mem_bready(s_axi_mem_bready),
        .s_axi_mem_bresp(s_axi_mem_bresp),
        .s_axi_mem_bvalid_reg_reg_0(s_axi_mem_bvalid_reg_reg),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rid(s_axi_mem_rid),
        .s_axi_mem_rlast(s_axi_mem_rlast),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(s_axi_mem_rresp),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .s_axi_mem_wdata(s_axi_mem_wdata),
        .s_axi_mem_wready(s_axi_mem_wready),
        .s_axi_mem_wstrb(s_axi_mem_wstrb),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .transaction_done_i(transaction_done_i));
  soc_bd_axi_emc_0_0_EMC EMC_CTRL_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\MEM_STEER_I/ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] (AXI_EMC_NATIVE_INTERFACE_I_n_35),
        .Bus2IP_Addr({bus2ip_addr_i_reg[19],bus2ip_addr_i_reg[18],bus2ip_addr_i_reg[17],bus2ip_addr_i_reg[16],bus2ip_addr_i_reg[15],bus2ip_addr_i_reg[14],bus2ip_addr_i_reg[13],bus2ip_addr_i_reg[12],bus2ip_addr_i_reg[11],bus2ip_addr_i_reg[10],bus2ip_addr_i_reg[9],bus2ip_addr_i_reg[8],bus2ip_addr_i_reg[7],bus2ip_addr_i_reg[6],bus2ip_addr_i_reg[5],bus2ip_addr_i_reg[4],bus2ip_addr_i_reg[3],bus2ip_addr_i_reg[2],bus2ip_addr_i_reg[1],bus2ip_addr_i_reg[0],AXI_EMC_NATIVE_INTERFACE_I_n_17,AXI_EMC_NATIVE_INTERFACE_I_n_18,AXI_EMC_NATIVE_INTERFACE_I_n_19,AXI_EMC_NATIVE_INTERFACE_I_n_20,AXI_EMC_NATIVE_INTERFACE_I_n_21,AXI_EMC_NATIVE_INTERFACE_I_n_22,AXI_EMC_NATIVE_INTERFACE_I_n_4,AXI_EMC_NATIVE_INTERFACE_I_n_3,\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ,AXI_EMC_NATIVE_INTERFACE_I_n_1,p_1_out[1],p_1_out[0]}),
        .Bus2IP_BE(bus2ip_ben_fixed),
        .Bus2IP_RdReq_emc(Bus2IP_RdReq_emc),
        .\DATA_STORE_GEN[0].WRDATA_REG (AXI_EMC_NATIVE_INTERFACE_I_n_34),
        .\DATA_STORE_GEN[24].WRDATA_REG (temp_bus2ip_data),
        .\FSM_sequential_crnt_state[0]_i_5 (AXI_EMC_NATIVE_INTERFACE_I_n_45),
        .\FSM_sequential_crnt_state[1]_i_5 (AXI_EMC_NATIVE_INTERFACE_I_n_31),
        .\FSM_sequential_crnt_state_reg[0] (EMC_CTRL_I_n_17),
        .\FSM_sequential_crnt_state_reg[0]_0 (EMC_CTRL_I_n_22),
        .\FSM_sequential_crnt_state_reg[0]_1 (AXI_EMC_NATIVE_INTERFACE_I_n_28),
        .\FSM_sequential_crnt_state_reg[1] (EMC_CTRL_I_n_23),
        .\FSM_sequential_crnt_state_reg[1]_0 (EMC_CTRL_I_n_25),
        .\FSM_sequential_crnt_state_reg[1]_1 (EMC_CTRL_I_n_26),
        .\FSM_sequential_crnt_state_reg[1]_2 (EMC_CTRL_I_n_28),
        .\FSM_sequential_crnt_state_reg[1]_3 (AXI_EMC_NATIVE_INTERFACE_I_n_32),
        .\FSM_sequential_crnt_state_reg[2] (EMC_CTRL_I_n_24),
        .\FSM_sequential_crnt_state_reg[2]_0 (EMC_CTRL_I_n_29),
        .\FSM_sequential_crnt_state_reg[2]_1 (EMC_CTRL_I_n_31),
        .\FSM_sequential_crnt_state_reg[3] (AXI_EMC_NATIVE_INTERFACE_I_n_33),
        .\FSM_sequential_crnt_state_reg[4] (EMC_CTRL_I_n_16),
        .\IP2Bus_Data_reg[0] ({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .IP2Bus_RdAck0(\IPIC_IF_I/IP2Bus_RdAck0 ),
        .Mem_addr(mem_a_int),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 (AXI_EMC_NATIVE_INTERFACE_I_n_29),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (AXI_EMC_NATIVE_INTERFACE_I_n_25),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ({bus2ip_burstlength[0],bus2ip_burstlength[1],bus2ip_burstlength[2],bus2ip_burstlength[3],bus2ip_burstlength[4],bus2ip_burstlength[5],bus2ip_burstlength[6],bus2ip_burstlength[7]}),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (AXI_EMC_NATIVE_INTERFACE_I_n_13),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (AXI_EMC_NATIVE_INTERFACE_I_n_30),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 (AXI_EMC_NATIVE_INTERFACE_I_n_36),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 (EMC_CTRL_I_n_18),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 (EMC_CTRL_I_n_12),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 (EMC_CTRL_I_n_13),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 (EMC_CTRL_I_n_19),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 (EMC_CTRL_I_n_20),
        .Q(\MEM_STATE_MACHINE_I/crnt_state ),
        .addr_sm_ps_IDLE_reg_i_3(AXI_EMC_NATIVE_INTERFACE_I_n_24),
        .\burst_addr_cnt_reg[5] (EMC_CTRL_I_n_21),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_rd_req_reg_reg(AXI_EMC_NATIVE_INTERFACE_I_n_23),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .ip2bus_addrack(ip2bus_addrack),
        .ip2bus_rdack(ip2bus_rdack),
        .mem_ben(mem_ben),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .pend_rdreq(\IPIC_IF_I/pend_rdreq ),
        .pend_rdreq_reg(AXI_EMC_NATIVE_INTERFACE_I_n_75),
        .pend_wrreq(\IPIC_IF_I/pend_wrreq ),
        .pend_wrreq_reg(AXI_EMC_NATIVE_INTERFACE_I_n_76),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .rdclk(rdclk),
        .readreq_th_reset(\MEM_STEER_I/readreq_th_reset ),
        .reset_fifo(\IPIC_IF_I/reset_fifo ),
        .rw_flag_reg(rw_flag_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_arvalid_0(EMC_CTRL_I_n_15),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .s_axi_mem_wvalid_0(EMC_CTRL_I_n_27),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .transaction_done_i(transaction_done_i));
  FDRE bus2ip_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_NATIVE_INTERFACE_I_n_0),
        .Q(bus2ip_reset),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[0] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[31]),
        .Q(mem_a[0]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[10] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[21]),
        .Q(mem_a[10]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[11] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[20]),
        .Q(mem_a[11]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[12] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[19]),
        .Q(mem_a[12]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[13] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[18]),
        .Q(mem_a[13]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[14] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[17]),
        .Q(mem_a[14]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[15] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[16]),
        .Q(mem_a[15]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[16] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[15]),
        .Q(mem_a[16]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[17] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[14]),
        .Q(mem_a[17]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[18] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[13]),
        .Q(mem_a[18]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[19] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[12]),
        .Q(mem_a[19]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[1] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[30]),
        .Q(mem_a[1]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[20] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[11]),
        .Q(mem_a[20]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[21] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[10]),
        .Q(mem_a[21]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[22] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[9]),
        .Q(mem_a[22]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[23] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[8]),
        .Q(mem_a[23]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[24] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[7]),
        .Q(mem_a[24]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[25] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[6]),
        .Q(mem_a[25]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[26] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[5]),
        .Q(mem_a[26]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[27] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[4]),
        .Q(mem_a[27]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[28] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[3]),
        .Q(mem_a[28]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[29] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[2]),
        .Q(mem_a[29]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[2] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[29]),
        .Q(mem_a[2]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[30] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[1]),
        .Q(mem_a[30]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[31] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[0]),
        .Q(mem_a[31]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[3] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[28]),
        .Q(mem_a[3]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[4] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[27]),
        .Q(mem_a[4]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[5] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[26]),
        .Q(mem_a[5]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[6] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[25]),
        .Q(mem_a[6]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[7] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[24]),
        .Q(mem_a[7]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[8] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[23]),
        .Q(mem_a[8]),
        .R(EMC_CTRL_I_n_29));
  (* IOB = "TRUE" *) 
  FDRE \mem_a_int_reg[9] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_a_int[22]),
        .Q(mem_a[9]),
        .R(EMC_CTRL_I_n_29));
endmodule

(* ORIG_REF_NAME = "axi_emc_addr_gen" *) 
module soc_bd_axi_emc_0_0_axi_emc_addr_gen
   (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ,
    SR,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ,
    rnw_cmb,
    Q,
    p_0_out,
    last_data_acked_reg,
    s_axi_mem_awvalid_0,
    s_axi_mem_awburst_0_sp_1,
    s_axi_mem_awvalid_1,
    \burst_data_cnt_reg[6] ,
    IP2Bus_RdAck_reg,
    \FSM_sequential_emc_addr_ps_reg[1] ,
    \burst_addr_cnt_reg[7] ,
    \burst_addr_cnt_reg[2] ,
    \burst_addr_cnt_reg[5] ,
    \rd_data_count_reg[5] ,
    Bus2IP_Addr,
    s_axi_aclk,
    s_axi_mem_awaddr,
    s_axi_mem_araddr,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 ,
    rnw_reg_reg,
    bus2ip_rnw,
    s_axi_mem_awburst,
    \bus2ip_addr_i_reg[12]_0 ,
    s_axi_mem_awvalid,
    rnw_reg_reg_0,
    s_axi_mem_arvalid,
    s_axi_mem_arburst,
    \FSM_sequential_emc_addr_ps[0]_i_2 ,
    s_axi_mem_wready_INST_0_i_7,
    ip2bus_rdack,
    s_axi_mem_bvalid_reg_reg,
    s_axi_mem_wready_INST_0_i_2,
    last_data_acked,
    s_axi_mem_rready,
    rnw_reg_reg_1,
    s_axi_aresetn,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ,
    ip2bus_addrack);
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ;
  output [0:0]SR;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ;
  output rnw_cmb;
  output [5:0]Q;
  output p_0_out;
  output last_data_acked_reg;
  output s_axi_mem_awvalid_0;
  output s_axi_mem_awburst_0_sp_1;
  output s_axi_mem_awvalid_1;
  output \burst_data_cnt_reg[6] ;
  output IP2Bus_RdAck_reg;
  output \FSM_sequential_emc_addr_ps_reg[1] ;
  output \burst_addr_cnt_reg[7] ;
  output \burst_addr_cnt_reg[2] ;
  output \burst_addr_cnt_reg[5] ;
  output \rd_data_count_reg[5] ;
  output [19:0]Bus2IP_Addr;
  input s_axi_aclk;
  input [31:0]s_axi_mem_awaddr;
  input [31:0]s_axi_mem_araddr;
  input [1:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 ;
  input [2:0]rnw_reg_reg;
  input bus2ip_rnw;
  input [1:0]s_axi_mem_awburst;
  input \bus2ip_addr_i_reg[12]_0 ;
  input s_axi_mem_awvalid;
  input rnw_reg_reg_0;
  input s_axi_mem_arvalid;
  input [1:0]s_axi_mem_arburst;
  input \FSM_sequential_emc_addr_ps[0]_i_2 ;
  input [5:0]s_axi_mem_wready_INST_0_i_7;
  input ip2bus_rdack;
  input [7:0]s_axi_mem_bvalid_reg_reg;
  input s_axi_mem_wready_INST_0_i_2;
  input last_data_acked;
  input s_axi_mem_rready;
  input [7:0]rnw_reg_reg_1;
  input s_axi_aresetn;
  input [3:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 ;
  input [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ;
  input ip2bus_addrack;

  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_6_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ;
  wire [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ;
  wire [3:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0 ;
  wire [1:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_5_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ;
  wire [19:0]Bus2IP_Addr;
  wire \FSM_sequential_emc_addr_ps[0]_i_2 ;
  wire \FSM_sequential_emc_addr_ps_reg[1] ;
  wire IP2Bus_RdAck_reg;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [5:0]addr_11_6_cmb;
  wire addr_2_cmb;
  wire addr_3_cmb;
  wire addr_4_cmb;
  wire addr_5_cmb;
  wire \burst_addr_cnt_reg[2] ;
  wire \burst_addr_cnt_reg[5] ;
  wire \burst_addr_cnt_reg[7] ;
  wire \burst_data_cnt_reg[6] ;
  wire \bus2ip_addr_i_reg[12]_0 ;
  wire bus2ip_rnw;
  wire ip2bus_addrack;
  wire ip2bus_rdack;
  wire last_data_acked;
  wire last_data_acked_reg;
  wire p_0_out;
  wire [19:0]p_1_in__0;
  wire \rd_data_count_reg[5] ;
  wire rnw_cmb;
  wire [2:0]rnw_reg_reg;
  wire rnw_reg_reg_0;
  wire [7:0]rnw_reg_reg_1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire s_axi_mem_awburst_0_sn_1;
  wire s_axi_mem_awvalid;
  wire s_axi_mem_awvalid_0;
  wire s_axi_mem_awvalid_1;
  wire [7:0]s_axi_mem_bvalid_reg_reg;
  wire s_axi_mem_rready;
  wire s_axi_mem_wready_INST_0_i_2;
  wire [5:0]s_axi_mem_wready_INST_0_i_7;

  assign s_axi_mem_awburst_0_sp_1 = s_axi_mem_awburst_0_sn_1;
  LUT6 #(
    .INIT(64'hE400E4FFE4FFE400)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_1 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[10]),
        .I2(s_axi_mem_araddr[10]),
        .I3(p_0_out),
        .I4(Q[4]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0 ),
        .O(addr_11_6_cmb[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2 
       (.I0(Q[3]),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ),
        .I2(Q[2]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE400E4FFE4FFE400)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_2 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[11]),
        .I2(s_axi_mem_araddr[11]),
        .I3(p_0_out),
        .I4(Q[5]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_6_n_0 ),
        .O(addr_11_6_cmb[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ),
        .I3(Q[3]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1 
       (.I0(addr_2_cmb),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 [0]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F099999999)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_2 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0 ),
        .I2(s_axi_mem_awaddr[2]),
        .I3(s_axi_mem_araddr[2]),
        .I4(rnw_cmb),
        .I5(p_0_out),
        .O(addr_2_cmb));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1113)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [1]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [0]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1 
       (.I0(addr_3_cmb),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 [1]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_2 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[3]),
        .I2(s_axi_mem_araddr[3]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .I5(p_0_out),
        .O(addr_3_cmb));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1 
       (.I0(addr_4_cmb),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 [2]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_2 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[4]),
        .I2(s_axi_mem_araddr[4]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .I5(p_0_out),
        .O(addr_4_cmb));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1 
       (.I0(addr_5_cmb),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 [3]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_2 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[5]),
        .I2(s_axi_mem_araddr[5]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3_n_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .I5(p_0_out),
        .O(addr_5_cmb));
  LUT3 #(
    .INIT(8'h80)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_1 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[6]),
        .I2(s_axi_mem_araddr[6]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(p_0_out),
        .O(addr_11_6_cmb[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE400E4FFE4FFE400)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_1 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[7]),
        .I2(s_axi_mem_araddr[7]),
        .I3(p_0_out),
        .I4(Q[1]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ),
        .O(addr_11_6_cmb[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2 
       (.I0(Q[0]),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE400E4FFE4FFE400)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_1 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[8]),
        .I2(s_axi_mem_araddr[8]),
        .I3(p_0_out),
        .I4(Q[2]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ),
        .O(addr_11_6_cmb[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2 
       (.I0(Q[1]),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .I5(Q[0]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAA8AA00)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [0]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [1]),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE400E4FFE4FFE400)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_1 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[9]),
        .I2(s_axi_mem_araddr[9]),
        .I3(p_0_out),
        .I4(Q[3]),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0 ),
        .O(addr_11_6_cmb[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .I5(Q[1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A000000000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [1]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [0]),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .D(addr_11_6_cmb[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .D(addr_11_6_cmb[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .D(addr_11_6_cmb[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .D(addr_11_6_cmb[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .D(addr_11_6_cmb[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .D(addr_11_6_cmb[3]),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ),
        .I2(ip2bus_addrack),
        .I3(p_0_out),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E4FF0000FF)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[0]),
        .I2(s_axi_mem_araddr[0]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [0]),
        .I5(p_0_out),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ),
        .I2(ip2bus_addrack),
        .I3(p_0_out),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2 
       (.I0(rnw_cmb),
        .I1(s_axi_mem_awaddr[1]),
        .I2(s_axi_mem_araddr[1]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4_n_0 ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_5_n_0 ),
        .I5(p_0_out),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [1]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_5 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 [0]),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_7 
       (.I0(s_axi_mem_wready_INST_0_i_7[5]),
        .I1(s_axi_mem_wready_INST_0_i_7[4]),
        .I2(s_axi_mem_wready_INST_0_i_7[1]),
        .I3(s_axi_mem_wready_INST_0_i_7[0]),
        .I4(s_axi_mem_wready_INST_0_i_7[2]),
        .I5(s_axi_mem_wready_INST_0_i_7[3]),
        .O(\burst_data_cnt_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_8 
       (.I0(rnw_reg_reg[1]),
        .I1(rnw_reg_reg[0]),
        .I2(rnw_reg_reg[2]),
        .O(\FSM_sequential_emc_addr_ps_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[0]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_1_n_0 ),
        .Q(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8F8F8FFFFFFFFFFF)) 
    \FSM_sequential_emc_addr_ps[0]_i_3 
       (.I0(s_axi_mem_awvalid),
        .I1(rnw_reg_reg_0),
        .I2(s_axi_mem_arvalid),
        .I3(s_axi_mem_arburst[1]),
        .I4(s_axi_mem_arburst[0]),
        .I5(\FSM_sequential_emc_addr_ps[0]_i_2 ),
        .O(s_axi_mem_awvalid_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \burst_addr_cnt[4]_i_2 
       (.I0(s_axi_mem_bvalid_reg_reg[2]),
        .I1(s_axi_mem_bvalid_reg_reg[0]),
        .I2(s_axi_mem_bvalid_reg_reg[1]),
        .I3(s_axi_mem_bvalid_reg_reg[3]),
        .O(\burst_addr_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[12]_i_1 
       (.I0(s_axi_mem_araddr[12]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[12]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[13]_i_1 
       (.I0(s_axi_mem_araddr[13]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[13]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[14]_i_1 
       (.I0(s_axi_mem_araddr[14]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[14]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[15]_i_1 
       (.I0(s_axi_mem_araddr[15]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[15]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[16]_i_1 
       (.I0(s_axi_mem_araddr[16]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[16]),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[17]_i_1 
       (.I0(s_axi_mem_araddr[17]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[17]),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[18]_i_1 
       (.I0(s_axi_mem_araddr[18]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[18]),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[19]_i_1 
       (.I0(s_axi_mem_araddr[19]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[19]),
        .O(p_1_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[20]_i_1 
       (.I0(s_axi_mem_araddr[20]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[20]),
        .O(p_1_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[21]_i_1 
       (.I0(s_axi_mem_araddr[21]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[21]),
        .O(p_1_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[22]_i_1 
       (.I0(s_axi_mem_araddr[22]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[22]),
        .O(p_1_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[23]_i_1 
       (.I0(s_axi_mem_araddr[23]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[23]),
        .O(p_1_in__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[24]_i_1 
       (.I0(s_axi_mem_araddr[24]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[24]),
        .O(p_1_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[25]_i_1 
       (.I0(s_axi_mem_araddr[25]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[25]),
        .O(p_1_in__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[26]_i_1 
       (.I0(s_axi_mem_araddr[26]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[26]),
        .O(p_1_in__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[27]_i_1 
       (.I0(s_axi_mem_araddr[27]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[27]),
        .O(p_1_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[28]_i_1 
       (.I0(s_axi_mem_araddr[28]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[28]),
        .O(p_1_in__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[29]_i_1 
       (.I0(s_axi_mem_araddr[29]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[29]),
        .O(p_1_in__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[30]_i_1 
       (.I0(s_axi_mem_araddr[30]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[30]),
        .O(p_1_in__0[18]));
  LUT2 #(
    .INIT(4'h1)) 
    \bus2ip_addr_i[31]_i_1 
       (.I0(s_axi_mem_awburst_0_sn_1),
        .I1(rnw_reg_reg[2]),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[31]_i_2 
       (.I0(s_axi_mem_araddr[31]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awaddr[31]),
        .O(p_1_in__0[19]));
  LUT6 #(
    .INIT(64'hFFFFFF02FFFFFFAA)) 
    \bus2ip_addr_i[31]_i_3 
       (.I0(s_axi_mem_awvalid_1),
        .I1(s_axi_mem_awburst[0]),
        .I2(s_axi_mem_awburst[1]),
        .I3(rnw_reg_reg[1]),
        .I4(rnw_reg_reg[0]),
        .I5(\bus2ip_addr_i_reg[12]_0 ),
        .O(s_axi_mem_awburst_0_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[0]),
        .Q(Bus2IP_Addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[1]),
        .Q(Bus2IP_Addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[2]),
        .Q(Bus2IP_Addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[3]),
        .Q(Bus2IP_Addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[4]),
        .Q(Bus2IP_Addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[5]),
        .Q(Bus2IP_Addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[6]),
        .Q(Bus2IP_Addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[7]),
        .Q(Bus2IP_Addr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[8]),
        .Q(Bus2IP_Addr[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[9]),
        .Q(Bus2IP_Addr[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[10]),
        .Q(Bus2IP_Addr[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[11]),
        .Q(Bus2IP_Addr[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[12]),
        .Q(Bus2IP_Addr[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[13]),
        .Q(Bus2IP_Addr[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[14]),
        .Q(Bus2IP_Addr[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[15]),
        .Q(Bus2IP_Addr[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[16]),
        .Q(Bus2IP_Addr[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[17]),
        .Q(Bus2IP_Addr[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[18]),
        .Q(Bus2IP_Addr[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(p_1_in__0[19]),
        .Q(Bus2IP_Addr[19]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0FF5FF5C0000000C)) 
    rnw_reg_i_1
       (.I0(last_data_acked_reg),
        .I1(s_axi_mem_awvalid_0),
        .I2(rnw_reg_reg[0]),
        .I3(rnw_reg_reg[2]),
        .I4(rnw_reg_reg[1]),
        .I5(bus2ip_rnw),
        .O(rnw_cmb));
  LUT5 #(
    .INIT(32'h00000008)) 
    rnw_reg_i_2
       (.I0(last_data_acked),
        .I1(s_axi_mem_rready),
        .I2(\rd_data_count_reg[5] ),
        .I3(rnw_reg_reg_1[6]),
        .I4(rnw_reg_reg_1[7]),
        .O(last_data_acked_reg));
  LUT3 #(
    .INIT(8'h70)) 
    rnw_reg_i_3
       (.I0(s_axi_mem_awvalid),
        .I1(rnw_reg_reg_0),
        .I2(s_axi_mem_arvalid),
        .O(s_axi_mem_awvalid_0));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axi_mem_bid_reg[15]_i_1 
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    s_axi_mem_bvalid_reg_i_2
       (.I0(\burst_addr_cnt_reg[2] ),
        .I1(s_axi_mem_bvalid_reg_reg[5]),
        .I2(s_axi_mem_bvalid_reg_reg[6]),
        .I3(s_axi_mem_bvalid_reg_reg[4]),
        .I4(s_axi_mem_bvalid_reg_reg[7]),
        .O(\burst_addr_cnt_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi_mem_rlast_INST_0_i_1
       (.I0(rnw_reg_reg_1[5]),
        .I1(rnw_reg_reg_1[3]),
        .I2(rnw_reg_reg_1[2]),
        .I3(rnw_reg_reg_1[1]),
        .I4(rnw_reg_reg_1[0]),
        .I5(rnw_reg_reg_1[4]),
        .O(\rd_data_count_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    s_axi_mem_wready_INST_0_i_13
       (.I0(ip2bus_rdack),
        .I1(rnw_reg_reg[2]),
        .I2(rnw_reg_reg[0]),
        .I3(rnw_reg_reg[1]),
        .O(IP2Bus_RdAck_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_mem_wready_INST_0_i_8
       (.I0(s_axi_mem_bvalid_reg_reg[7]),
        .I1(s_axi_mem_bvalid_reg_reg[4]),
        .I2(s_axi_mem_bvalid_reg_reg[6]),
        .I3(s_axi_mem_bvalid_reg_reg[5]),
        .I4(\burst_addr_cnt_reg[2] ),
        .I5(s_axi_mem_wready_INST_0_i_2),
        .O(\burst_addr_cnt_reg[7] ));
endmodule

(* ORIG_REF_NAME = "axi_emc_address_decode" *) 
module soc_bd_axi_emc_0_0_axi_emc_address_decode
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    rdce_out_i,
    IP2Bus_RdAck0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    pend_rdreq_reg,
    readreq_th_reset,
    S,
    addr_sm_ps_idle_cmb,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ,
    \bus2ip_BE_reg_reg[1] ,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ,
    \FSM_sequential_crnt_state_reg[2] ,
    pend_rdreq_reg_0,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2 ,
    \burst_data_cnt_reg[5] ,
    \burst_data_cnt_reg[3] ,
    bus2ip_wr_req_reg_reg,
    in,
    reset_fifo,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ,
    \s_axi_mem_bresp_reg_reg[1] ,
    s_axi_aclk,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    bus2ip_reset,
    ip2bus_rdack,
    Q,
    p_0_out,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ,
    \MEM_DECODE_GEN[0].cs_reg_reg[0]_0 ,
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_0 ,
    \FSM_sequential_crnt_state[0]_i_2 ,
    \DATA_STORE_GEN[0].WRDATA_REG ,
    \FSM_sequential_crnt_state[0]_i_2_0 ,
    \FSM_sequential_crnt_state[0]_i_2_1 ,
    pend_rdreq,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \s_axi_mem_bresp_reg_reg[1]_0 ,
    \FSM_sequential_crnt_state[1]_i_9 ,
    \FSM_sequential_crnt_state[2]_i_3 ,
    \DATA_STORE_GEN[0].WRDATA_REG_0 ,
    \DATA_STORE_GEN[0].WRDATA_REG_1 ,
    \DATA_STORE_GEN[0].WRDATA_REG_2 ,
    \FSM_sequential_emc_addr_ps[1]_i_9 ,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ,
    s_axi_aresetn,
    transaction_done_i,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 ,
    last_data_acked_reg,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_1 ,
    pend_wrreq_reg,
    pend_wrreq,
    \FSM_sequential_crnt_state[0]_i_9 ,
    Type_of_xfer,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4 ,
    pend_rdreq_reg_1,
    pend_rdreq_reg_2,
    bus2ip_burst,
    s_axi_mem_bresp);
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output rdce_out_i;
  output IP2Bus_RdAck0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  output pend_rdreq_reg;
  output readreq_th_reset;
  output [0:0]S;
  output addr_sm_ps_idle_cmb;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  output \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  output \bus2ip_BE_reg_reg[1] ;
  output \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ;
  output \FSM_sequential_crnt_state_reg[2] ;
  output pend_rdreq_reg_0;
  output \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2 ;
  output \burst_data_cnt_reg[5] ;
  output \burst_data_cnt_reg[3] ;
  output bus2ip_wr_req_reg_reg;
  output [0:0]in;
  output reset_fifo;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ;
  output \s_axi_mem_bresp_reg_reg[1] ;
  input s_axi_aclk;
  input \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  input bus2ip_reset;
  input ip2bus_rdack;
  input [1:0]Q;
  input p_0_out;
  input \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ;
  input [2:0]\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 ;
  input \MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_0 ;
  input \FSM_sequential_crnt_state[0]_i_2 ;
  input \DATA_STORE_GEN[0].WRDATA_REG ;
  input \FSM_sequential_crnt_state[0]_i_2_0 ;
  input \FSM_sequential_crnt_state[0]_i_2_1 ;
  input pend_rdreq;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  input \s_axi_mem_bresp_reg_reg[1]_0 ;
  input \FSM_sequential_crnt_state[1]_i_9 ;
  input [3:0]\FSM_sequential_crnt_state[2]_i_3 ;
  input \DATA_STORE_GEN[0].WRDATA_REG_0 ;
  input [0:0]\DATA_STORE_GEN[0].WRDATA_REG_1 ;
  input \DATA_STORE_GEN[0].WRDATA_REG_2 ;
  input \FSM_sequential_emc_addr_ps[1]_i_9 ;
  input \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ;
  input [1:0]\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ;
  input s_axi_aresetn;
  input transaction_done_i;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 ;
  input [7:0]last_data_acked_reg;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_0 ;
  input \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_1 ;
  input pend_wrreq_reg;
  input pend_wrreq;
  input \FSM_sequential_crnt_state[0]_i_9 ;
  input Type_of_xfer;
  input \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4 ;
  input pend_rdreq_reg_1;
  input pend_rdreq_reg_2;
  input bus2ip_burst;
  input [0:0]s_axi_mem_bresp;

  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ;
  wire [1:0]\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 ;
  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire \DATA_STORE_GEN[0].WRDATA_REG ;
  wire \DATA_STORE_GEN[0].WRDATA_REG_0 ;
  wire [0:0]\DATA_STORE_GEN[0].WRDATA_REG_1 ;
  wire \DATA_STORE_GEN[0].WRDATA_REG_2 ;
  wire \EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq ;
  wire \FSM_sequential_crnt_state[0]_i_2 ;
  wire \FSM_sequential_crnt_state[0]_i_2_0 ;
  wire \FSM_sequential_crnt_state[0]_i_2_1 ;
  wire \FSM_sequential_crnt_state[0]_i_9 ;
  wire \FSM_sequential_crnt_state[1]_i_9 ;
  wire [3:0]\FSM_sequential_crnt_state[2]_i_3 ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \FSM_sequential_emc_addr_ps[1]_i_9 ;
  wire IP2Bus_RdAck0;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ;
  wire \MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0 ;
  wire [2:0]\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_n_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_1 ;
  wire [1:0]Q;
  wire [0:0]S;
  wire Type_of_xfer;
  wire addr_sm_ps_idle_cmb;
  wire \burst_data_cnt_reg[3] ;
  wire \burst_data_cnt_reg[5] ;
  wire \bus2ip_BE_reg_reg[1] ;
  wire bus2ip_burst;
  wire bus2ip_reset;
  wire bus2ip_wr_req_reg_reg;
  wire cs_reg;
  wire [0:0]in;
  wire ip2bus_rdack;
  wire [7:0]last_data_acked_reg;
  wire p_0_out;
  wire pend_rdreq;
  wire pend_rdreq_reg;
  wire pend_rdreq_reg_0;
  wire pend_rdreq_reg_1;
  wire pend_rdreq_reg_2;
  wire pend_wrreq;
  wire pend_wrreq_reg;
  wire rdce_out_i;
  wire readreq_th_reset;
  wire reset_fifo;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_mem_bresp;
  wire \s_axi_mem_bresp_reg_reg[1] ;
  wire \s_axi_mem_bresp_reg_reg[1]_0 ;
  wire transaction_done_i;

  LUT6 #(
    .INIT(64'h2222222220222222)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 
       (.I0(\DATA_STORE_GEN[0].WRDATA_REG_1 ),
        .I1(\DATA_STORE_GEN[0].WRDATA_REG_2 ),
        .I2(\DATA_STORE_GEN[0].WRDATA_REG ),
        .I3(\DATA_STORE_GEN[0].WRDATA_REG_0 ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(pend_rdreq_reg),
        .O(\FSM_sequential_crnt_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I1(pend_rdreq_reg),
        .I2(bus2ip_reset),
        .O(readreq_th_reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    Bus2IP_RdReq_d1_i_1
       (.I0(pend_rdreq),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I2(rdce_out_i),
        .I3(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ),
        .O(pend_rdreq_reg));
  LUT3 #(
    .INIT(8'h78)) 
    Cnt_p10_carry_i_5
       (.I0(ip2bus_rdack),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(Q[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \FSM_sequential_crnt_state[0]_i_5 
       (.I0(\FSM_sequential_crnt_state[0]_i_2 ),
        .I1(pend_rdreq_reg),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\DATA_STORE_GEN[0].WRDATA_REG ),
        .I4(\FSM_sequential_crnt_state[0]_i_2_0 ),
        .I5(\FSM_sequential_crnt_state[0]_i_2_1 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0800080008000000)) 
    \FSM_sequential_crnt_state[1]_i_11 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\FSM_sequential_crnt_state[1]_i_9 ),
        .I2(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ),
        .I3(rdce_out_i),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I5(pend_rdreq),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_crnt_state[1]_i_13 
       (.I0(pend_wrreq_reg),
        .I1(pend_wrreq),
        .I2(\FSM_sequential_crnt_state[0]_i_9 ),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_wr_req_reg_reg));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \FSM_sequential_crnt_state[2]_i_8 
       (.I0(\FSM_sequential_crnt_state[2]_i_3 [1]),
        .I1(\FSM_sequential_crnt_state[2]_i_3 [2]),
        .I2(\FSM_sequential_crnt_state[2]_i_3 [3]),
        .I3(\FSM_sequential_crnt_state[2]_i_3 [0]),
        .I4(\DATA_STORE_GEN[0].WRDATA_REG_0 ),
        .I5(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ),
        .O(\bus2ip_BE_reg_reg[1] ));
  LUT5 #(
    .INIT(32'h4440FFFF)) 
    \FSM_sequential_crnt_state[3]_i_7 
       (.I0(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ),
        .I1(rdce_out_i),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(pend_rdreq),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \INFERRED_GEN.data_reg[255][0]_srl32_i_2 
       (.I0(ip2bus_rdack),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(Type_of_xfer),
        .O(in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    IP2Bus_RdAck_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I1(pend_rdreq_reg),
        .I2(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .O(IP2Bus_RdAck0));
  LUT5 #(
    .INIT(32'h00004540)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ),
        .I1(addr_sm_ps_idle_cmb),
        .I2(p_0_out),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33337733BFBB3333)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_2 
       (.I0(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [2]),
        .I1(s_axi_aresetn),
        .I2(\burst_data_cnt_reg[5] ),
        .I3(ip2bus_rdack),
        .I4(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [1]),
        .I5(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [0]),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_3 
       (.I0(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [2]),
        .I3(\s_axi_mem_bresp_reg_reg[1]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \MEM_DECODE_GEN[0].cs_reg[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [1]),
        .I3(cs_reg),
        .O(\MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_DECODE_GEN[0].cs_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_reg[0]_i_1_n_0 ),
        .Q(cs_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i[0]_i_2_n_0 ),
        .I1(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_n_0 ),
        .I2(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ),
        .I3(\MEM_DECODE_GEN[0].cs_out_i[0]_i_3_n_0 ),
        .O(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFF0080)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_2 
       (.I0(cs_reg),
        .I1(\burst_data_cnt_reg[5] ),
        .I2(Q[1]),
        .I3(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4 ),
        .I4(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0 ),
        .I5(rdce_out_i),
        .O(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \MEM_DECODE_GEN[0].rdce_out_i[0]_i_3 
       (.I0(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_0 ),
        .I3(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [2]),
        .O(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_3_n_0 ));
  FDRE \MEM_DECODE_GEN[0].rdce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].rdce_out_i[0]_i_1_n_0 ),
        .Q(rdce_out_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44400000)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5 
       (.I0(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ),
        .I1(rdce_out_i),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(pend_rdreq),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .O(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(bus2ip_reset),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(reset_fifo));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \burst_data_cnt[4]_i_2 
       (.I0(last_data_acked_reg[3]),
        .I1(last_data_acked_reg[2]),
        .I2(last_data_acked_reg[0]),
        .I3(last_data_acked_reg[1]),
        .O(\burst_data_cnt_reg[3] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \burst_data_cnt[7]_i_3 
       (.I0(\burst_data_cnt_reg[3] ),
        .I1(last_data_acked_reg[5]),
        .I2(last_data_acked_reg[6]),
        .I3(last_data_acked_reg[7]),
        .I4(last_data_acked_reg[4]),
        .O(\burst_data_cnt_reg[5] ));
  LUT6 #(
    .INIT(64'hEEEECEEECCCCCCCC)) 
    pend_rdreq_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq ),
        .I2(pend_rdreq_reg_1),
        .I3(pend_rdreq_reg_2),
        .I4(bus2ip_burst),
        .I5(pend_rdreq),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    pend_rdreq_i_2
       (.I0(transaction_done_i),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(pend_rdreq),
        .I3(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 ),
        .I4(rdce_out_i),
        .O(\EMC_CTRL_I/IPIC_IF_I/set_pend_rdreq ));
  LUT6 #(
    .INIT(64'hAA80AA80AA800080)) 
    pend_wrreq_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(pend_wrreq_reg),
        .I2(transaction_done_i),
        .I3(pend_wrreq),
        .I4(bus2ip_burst),
        .I5(\s_axi_mem_bresp_reg_reg[1]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    s_axi_mem_arready_INST_0_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 [0]),
        .O(addr_sm_ps_idle_cmb));
  LUT5 #(
    .INIT(32'h0000AABA)) 
    \s_axi_mem_bresp_reg[1]_i_1 
       (.I0(s_axi_mem_bresp),
        .I1(Type_of_xfer),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\s_axi_mem_bresp_reg_reg[1]_0 ),
        .I4(addr_sm_ps_idle_cmb),
        .O(\s_axi_mem_bresp_reg_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF57000000)) 
    s_axi_mem_wready_INST_0_i_2
       (.I0(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2 ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I2(pend_rdreq),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\FSM_sequential_emc_addr_ps[1]_i_9 ),
        .I5(\DATA_STORE_GEN[0].WRDATA_REG_2 ),
        .O(pend_rdreq_reg_0));
  LUT4 #(
    .INIT(16'h0008)) 
    s_axi_mem_wready_INST_0_i_5
       (.I0(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 [0]),
        .I3(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 [1]),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA2)) 
    s_axi_mem_wready_INST_0_i_7
       (.I0(rdce_out_i),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 ),
        .I2(last_data_acked_reg[4]),
        .I3(last_data_acked_reg[7]),
        .I4(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_0 ),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_1 ),
        .O(\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2 ));
endmodule

(* ORIG_REF_NAME = "axi_emc_native_interface" *) 
module soc_bd_axi_emc_0_0_axi_emc_native_interface
   (SR,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ,
    temp_bus2ip_cs,
    s_axi_mem_bvalid_reg_reg_0,
    Bus2IP_RdReq_emc,
    rw_flag_reg,
    s_axi_mem_bresp,
    bus2ip_wrreq_i,
    s_axi_mem_wready,
    IP2Bus_RdAck0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    bus2Mem_RdReq,
    readreq_th_reset,
    s_axi_mem_rresp,
    Q,
    \burst_addr_cnt_reg[5]_0 ,
    \burst_addr_cnt_reg[2]_0 ,
    bus2ip_wr_req_reg_reg_0,
    E,
    s_axi_aresetn_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    bus2ip_wr_req_reg_reg_1,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \bus2ip_BE_reg_reg[1]_0 ,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ,
    \FSM_sequential_crnt_state_reg[2] ,
    pend_rdreq_reg,
    \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ,
    \burstlength_reg_reg[7]_0 ,
    bus2ip_wr_req_reg_reg_2,
    s_axi_mem_rlast,
    s_axi_mem_rvalid,
    reset_fifo,
    Bus2IP_BE,
    Bus2IP_Addr,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ,
    s_axi_mem_rdata,
    s_axi_mem_bid,
    s_axi_mem_rid,
    \bus2ip_data_reg_reg[31]_0 ,
    bus2ip_reset,
    s_axi_aclk,
    \s_axi_mem_bid_reg_reg[0]_0 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ,
    s_axi_mem_wvalid,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    ip2bus_rdack,
    s_axi_aresetn,
    s_axi_mem_wstrb,
    ip2bus_addrack,
    s_axi_mem_awaddr,
    s_axi_mem_araddr,
    s_axi_mem_awlen,
    s_axi_mem_arlen,
    s_axi_mem_awsize,
    s_axi_mem_arsize,
    s_axi_mem_awburst,
    s_axi_mem_arburst,
    bus2ip_rd_req_reg_reg_0,
    addr_sm_ps_IDLE_reg_reg_0,
    addr_sm_ps_IDLE_reg_reg_1,
    s_axi_mem_rready,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ,
    \burst_addr_cnt_reg[7]_0 ,
    s_axi_mem_arvalid,
    s_axi_mem_awvalid,
    rw_flag_reg_reg_0,
    \FSM_sequential_crnt_state[0]_i_2 ,
    \FSM_sequential_crnt_state[0]_i_2_0 ,
    addr_sm_ps_IDLE_reg_reg_2,
    addr_sm_ps_IDLE_reg_reg_3,
    pend_rdreq,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \FSM_sequential_crnt_state[1]_i_9 ,
    \DATA_STORE_GEN[0].WRDATA_REG ,
    \DATA_STORE_GEN[0].WRDATA_REG_0 ,
    transaction_done_i,
    pend_wrreq,
    \FSM_sequential_crnt_state[0]_i_9 ,
    s_axi_mem_bready,
    pend_rdreq_reg_0,
    rd_fifo_wr_en,
    \INFERRED_GEN.data_reg[255][8]_srl32__0 ,
    s_axi_mem_awid,
    s_axi_mem_arid,
    s_axi_mem_wdata);
  output [0:0]SR;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] ;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ;
  output \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ;
  output temp_bus2ip_cs;
  output s_axi_mem_bvalid_reg_reg_0;
  output Bus2IP_RdReq_emc;
  output rw_flag_reg;
  output [0:0]s_axi_mem_bresp;
  output bus2ip_wrreq_i;
  output s_axi_mem_wready;
  output IP2Bus_RdAck0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output bus2Mem_RdReq;
  output readreq_th_reset;
  output [0:0]s_axi_mem_rresp;
  output [5:0]Q;
  output \burst_addr_cnt_reg[5]_0 ;
  output \burst_addr_cnt_reg[2]_0 ;
  output bus2ip_wr_req_reg_reg_0;
  output [0:0]E;
  output [0:0]s_axi_aresetn_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output bus2ip_wr_req_reg_reg_1;
  output \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  output \bus2ip_BE_reg_reg[1]_0 ;
  output \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ;
  output \FSM_sequential_crnt_state_reg[2] ;
  output pend_rdreq_reg;
  output \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ;
  output [7:0]\burstlength_reg_reg[7]_0 ;
  output bus2ip_wr_req_reg_reg_2;
  output s_axi_mem_rlast;
  output s_axi_mem_rvalid;
  output reset_fifo;
  output [0:3]Bus2IP_BE;
  output [21:0]Bus2IP_Addr;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  output [31:0]s_axi_mem_rdata;
  output [15:0]s_axi_mem_bid;
  output [15:0]s_axi_mem_rid;
  output [31:0]\bus2ip_data_reg_reg[31]_0 ;
  input bus2ip_reset;
  input s_axi_aclk;
  input \s_axi_mem_bid_reg_reg[0]_0 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  input s_axi_mem_wvalid;
  input \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input [3:0]s_axi_mem_wstrb;
  input ip2bus_addrack;
  input [31:0]s_axi_mem_awaddr;
  input [31:0]s_axi_mem_araddr;
  input [7:0]s_axi_mem_awlen;
  input [7:0]s_axi_mem_arlen;
  input [1:0]s_axi_mem_awsize;
  input [1:0]s_axi_mem_arsize;
  input [1:0]s_axi_mem_awburst;
  input [1:0]s_axi_mem_arburst;
  input bus2ip_rd_req_reg_reg_0;
  input addr_sm_ps_IDLE_reg_reg_0;
  input addr_sm_ps_IDLE_reg_reg_1;
  input s_axi_mem_rready;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  input \burst_addr_cnt_reg[7]_0 ;
  input s_axi_mem_arvalid;
  input s_axi_mem_awvalid;
  input rw_flag_reg_reg_0;
  input \FSM_sequential_crnt_state[0]_i_2 ;
  input \FSM_sequential_crnt_state[0]_i_2_0 ;
  input addr_sm_ps_IDLE_reg_reg_2;
  input addr_sm_ps_IDLE_reg_reg_3;
  input pend_rdreq;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  input \FSM_sequential_crnt_state[1]_i_9 ;
  input [0:0]\DATA_STORE_GEN[0].WRDATA_REG ;
  input \DATA_STORE_GEN[0].WRDATA_REG_0 ;
  input transaction_done_i;
  input pend_wrreq;
  input \FSM_sequential_crnt_state[0]_i_9 ;
  input s_axi_mem_bready;
  input pend_rdreq_reg_0;
  input rd_fifo_wr_en;
  input [31:0]\INFERRED_GEN.data_reg[255][8]_srl32__0 ;
  input [15:0]s_axi_mem_awid;
  input [15:0]s_axi_mem_arid;
  input [31:0]s_axi_mem_wdata;

  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_16;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_17;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_23;
  wire AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_6;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_13;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_14;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_15;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_16;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_17;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_18;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_19;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_20;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_21;
  wire AXI_EMC_ADDR_GEN_INSTANCE_I_n_23;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  wire [21:0]Bus2IP_Addr;
  wire [0:3]Bus2IP_BE;
  wire Bus2IP_RdReq_emc;
  wire [0:0]\DATA_STORE_GEN[0].WRDATA_REG ;
  wire \DATA_STORE_GEN[0].WRDATA_REG_0 ;
  wire [0:0]E;
  wire \FSM_sequential_crnt_state[0]_i_11_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_2 ;
  wire \FSM_sequential_crnt_state[0]_i_2_0 ;
  wire \FSM_sequential_crnt_state[0]_i_9 ;
  wire \FSM_sequential_crnt_state[1]_i_9 ;
  wire \FSM_sequential_crnt_state_reg[2] ;
  wire \FSM_sequential_emc_addr_ps[0]_i_2_n_0 ;
  wire \FSM_sequential_emc_addr_ps[0]_i_4_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_11_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_2_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_3_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_4_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_5_n_0 ;
  wire \FSM_sequential_emc_addr_ps[1]_i_6_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_2_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_3_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_5_n_0 ;
  wire \FSM_sequential_emc_addr_ps[2]_i_6_n_0 ;
  wire [31:0]\INFERRED_GEN.data_reg[255][8]_srl32__0 ;
  wire IP2Bus_RdAck0;
  wire \LEN_GEN_32.derived_len_reg[0]_i_1_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[0]_i_2_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[1]_i_1_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[1]_i_2_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[2]_i_1_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[2]_i_2_n_0 ;
  wire \LEN_GEN_32.derived_len_reg[3]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire [5:0]Q;
  wire RDATA_FIFO_I_n_1;
  wire RDATA_FIFO_I_n_2;
  wire RDATA_FIFO_I_n_4;
  wire RDATA_FIFO_I_n_6;
  wire RDATA_FIFO_I_n_7;
  wire RDATA_FIFO_I_n_8;
  wire RDATA_FIFO_I_n_9;
  wire [0:0]SR;
  wire Type_of_xfer;
  wire Type_of_xfer_cmb;
  wire addr_sm_ps_IDLE_reg;
  wire addr_sm_ps_IDLE_reg_i_3_n_0;
  wire addr_sm_ps_IDLE_reg_i_4_n_0;
  wire addr_sm_ps_IDLE_reg_i_5_n_0;
  wire addr_sm_ps_IDLE_reg_i_7_n_0;
  wire addr_sm_ps_IDLE_reg_i_8_n_0;
  wire addr_sm_ps_IDLE_reg_i_9_n_0;
  wire addr_sm_ps_IDLE_reg_reg_0;
  wire addr_sm_ps_IDLE_reg_reg_1;
  wire addr_sm_ps_IDLE_reg_reg_2;
  wire addr_sm_ps_IDLE_reg_reg_3;
  wire addr_sm_ps_idle_cmb;
  wire \burst_addr_cnt[2]_i_2_n_0 ;
  wire \burst_addr_cnt[3]_i_2_n_0 ;
  wire \burst_addr_cnt[6]_i_2_n_0 ;
  wire \burst_addr_cnt[6]_i_3_n_0 ;
  wire \burst_addr_cnt[7]_i_1_n_0 ;
  wire \burst_addr_cnt[7]_i_4_n_0 ;
  wire \burst_addr_cnt_reg[2]_0 ;
  wire \burst_addr_cnt_reg[5]_0 ;
  wire \burst_addr_cnt_reg[7]_0 ;
  wire [7:1]burst_addr_cnt_reg__0;
  wire [0:0]burst_addr_cnt_reg__1;
  wire [7:0]burst_data_cnt;
  wire \burst_data_cnt[2]_i_2_n_0 ;
  wire \burst_data_cnt[3]_i_2_n_0 ;
  wire \burst_data_cnt[5]_i_2_n_0 ;
  wire \burst_data_cnt[6]_i_2_n_0 ;
  wire \burst_data_cnt[7]_i_1_n_0 ;
  wire \burst_data_cnt[7]_i_4_n_0 ;
  wire [3:0]burst_length_cmb;
  wire \burstlength_reg[7]_i_2_n_0 ;
  wire \burstlength_reg[7]_i_3_n_0 ;
  wire \burstlength_reg[7]_i_4_n_0 ;
  wire [7:0]\burstlength_reg_reg[7]_0 ;
  wire bus2Mem_RdReq;
  wire \bus2ip_BE_reg[0]_i_1_n_0 ;
  wire \bus2ip_BE_reg[0]_i_2_n_0 ;
  wire \bus2ip_BE_reg[1]_i_1_n_0 ;
  wire \bus2ip_BE_reg[1]_i_2_n_0 ;
  wire \bus2ip_BE_reg[1]_i_3_n_0 ;
  wire \bus2ip_BE_reg[2]_i_1_n_0 ;
  wire \bus2ip_BE_reg[2]_i_2_n_0 ;
  wire \bus2ip_BE_reg[2]_i_3_n_0 ;
  wire \bus2ip_BE_reg[3]_i_1_n_0 ;
  wire \bus2ip_BE_reg[3]_i_2_n_0 ;
  wire \bus2ip_BE_reg[3]_i_3_n_0 ;
  wire \bus2ip_BE_reg[3]_i_4_n_0 ;
  wire \bus2ip_BE_reg[3]_i_5_n_0 ;
  wire \bus2ip_BE_reg[3]_i_6_n_0 ;
  wire \bus2ip_BE_reg[3]_i_7_n_0 ;
  wire \bus2ip_BE_reg_reg[1]_0 ;
  wire bus2ip_burst;
  wire bus2ip_burst_reg_i_1_n_0;
  wire bus2ip_burst_reg_i_3_n_0;
  wire bus2ip_burst_reg_i_4_n_0;
  wire bus2ip_burst_reg_i_5_n_0;
  wire bus2ip_burst_reg_i_6_n_0;
  wire bus2ip_data_reg0;
  wire [31:0]\bus2ip_data_reg_reg[31]_0 ;
  wire bus2ip_rd_req_reg_i_1_n_0;
  wire bus2ip_rd_req_reg_reg_0;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_wr_req_reg_i_1_n_0;
  wire bus2ip_wr_req_reg_i_2_n_0;
  wire bus2ip_wr_req_reg_reg_0;
  wire bus2ip_wr_req_reg_reg_1;
  wire bus2ip_wr_req_reg_reg_2;
  wire bus2ip_wrreq_i;
  wire [7:4]data;
  wire [1:0]derived_burst_reg;
  wire \derived_burst_reg[0]_i_1_n_0 ;
  wire \derived_burst_reg[1]_i_1_n_0 ;
  wire [3:0]derived_len_reg;
  wire derived_size_reg;
  wire \derived_size_reg[0]_i_1_n_0 ;
  wire \derived_size_reg_reg_n_0_[0] ;
  wire \derived_size_reg_reg_n_0_[1] ;
  wire [2:0]emc_addr_ns__0;
  wire [2:0]emc_addr_ps;
  wire fifo_empty;
  wire ip2bus_addrack;
  wire ip2bus_rdack;
  wire last_data_acked;
  wire last_data_acked_i_1_n_0;
  wire last_data_acked_i_2_n_0;
  wire last_len_cmb;
  wire [7:0]p_0_in;
  wire p_0_in1_in;
  wire [7:0]p_0_in__0;
  wire p_0_out;
  wire [7:0]p_2_in;
  wire pend_rdreq;
  wire pend_rdreq_reg;
  wire pend_rdreq_reg_0;
  wire pend_wrreq;
  wire \rd_data_count[4]_i_2_n_0 ;
  wire \rd_data_count[5]_i_2_n_0 ;
  wire [7:0]rd_data_count_reg__0;
  wire [0:0]rd_fifo_data_in;
  wire rd_fifo_wr_en;
  wire rdce_out_i;
  wire readreq_th_reset;
  wire reset_fifo;
  wire rnw_cmb;
  wire rw_flag_reg;
  wire rw_flag_reg_i_1_n_0;
  wire rw_flag_reg_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_aresetn_0;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [15:0]s_axi_mem_arid;
  wire [7:0]s_axi_mem_arlen;
  wire [1:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [15:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire [1:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [15:0]s_axi_mem_bid;
  wire \s_axi_mem_bid_reg_reg[0]_0 ;
  wire s_axi_mem_bready;
  wire [0:0]s_axi_mem_bresp;
  wire s_axi_mem_bvalid_reg_i_1_n_0;
  wire s_axi_mem_bvalid_reg_reg_0;
  wire [31:0]s_axi_mem_rdata;
  wire [15:0]s_axi_mem_rid;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [0:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wready;
  wire s_axi_mem_wready_INST_0_i_12_n_0;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;
  wire [3:0]temp_bus2ip_be;
  wire temp_bus2ip_cs;
  wire transaction_done_i;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    \ADDRESS_STORE_GEN[30].ADDRESS_REG_i_1 
       (.I0(temp_bus2ip_be[0]),
        .I1(Type_of_xfer),
        .I2(temp_bus2ip_be[1]),
        .I3(temp_bus2ip_be[3]),
        .I4(temp_bus2ip_be[2]),
        .O(Bus2IP_Addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h008800A8)) 
    \ADDRESS_STORE_GEN[31].ADDRESS_REG_i_1 
       (.I0(Type_of_xfer),
        .I1(temp_bus2ip_be[1]),
        .I2(temp_bus2ip_be[3]),
        .I3(temp_bus2ip_be[0]),
        .I4(temp_bus2ip_be[2]),
        .O(Bus2IP_Addr[0]));
  soc_bd_axi_emc_0_0_axi_emc_address_decode AXI_EMC_ADDRESS_DECODE_INSTANCE_I
       (.\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC (s_axi_mem_wready_INST_0_i_12_n_0),
        .\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC_0 (\burstlength_reg_reg[7]_0 [1:0]),
        .\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 (\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .\DATA_STORE_GEN[0].WRDATA_REG (bus2ip_wr_req_reg_reg_1),
        .\DATA_STORE_GEN[0].WRDATA_REG_0 (\burst_addr_cnt_reg[5]_0 ),
        .\DATA_STORE_GEN[0].WRDATA_REG_1 (\DATA_STORE_GEN[0].WRDATA_REG ),
        .\DATA_STORE_GEN[0].WRDATA_REG_2 (\DATA_STORE_GEN[0].WRDATA_REG_0 ),
        .\FSM_sequential_crnt_state[0]_i_2 (\FSM_sequential_crnt_state[0]_i_2 ),
        .\FSM_sequential_crnt_state[0]_i_2_0 (\FSM_sequential_crnt_state[0]_i_2_0 ),
        .\FSM_sequential_crnt_state[0]_i_2_1 (\FSM_sequential_crnt_state[0]_i_11_n_0 ),
        .\FSM_sequential_crnt_state[0]_i_9 (\FSM_sequential_crnt_state[0]_i_9 ),
        .\FSM_sequential_crnt_state[1]_i_9 (\FSM_sequential_crnt_state[1]_i_9 ),
        .\FSM_sequential_crnt_state[2]_i_3 (temp_bus2ip_be),
        .\FSM_sequential_crnt_state_reg[2] (\FSM_sequential_crnt_state_reg[2] ),
        .\FSM_sequential_emc_addr_ps[1]_i_9 (AXI_EMC_ADDR_GEN_INSTANCE_I_n_20),
        .IP2Bus_RdAck0(IP2Bus_RdAck0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (temp_bus2ip_cs),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_4 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_5 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ),
        .\MEM_DECODE_GEN[0].cs_reg_reg[0]_0 (emc_addr_ps),
        .\MEM_DECODE_GEN[0].rdce_out_i[0]_i_2_0 (AXI_EMC_ADDR_GEN_INSTANCE_I_n_16),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].rdce_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_0 ),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_2 (\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_1 ),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_3 (RDATA_FIFO_I_n_7),
        .\MEM_DECODE_GEN[0].rdce_out_i_reg[0]_4 (AXI_EMC_ADDR_GEN_INSTANCE_I_n_19),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 (AXI_EMC_ADDR_GEN_INSTANCE_I_n_18),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_0 (AXI_EMC_ADDR_GEN_INSTANCE_I_n_17),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_1 (RDATA_FIFO_I_n_9),
        .Q({fifo_empty,RDATA_FIFO_I_n_1}),
        .S(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_6),
        .Type_of_xfer(Type_of_xfer),
        .addr_sm_ps_idle_cmb(addr_sm_ps_idle_cmb),
        .\burst_data_cnt_reg[3] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_17),
        .\burst_data_cnt_reg[5] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_16),
        .\bus2ip_BE_reg_reg[1] (\bus2ip_BE_reg_reg[1]_0 ),
        .bus2ip_burst(bus2ip_burst),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wr_req_reg_reg(bus2ip_wr_req_reg_reg_2),
        .in(rd_fifo_data_in),
        .ip2bus_rdack(ip2bus_rdack),
        .last_data_acked_reg(burst_data_cnt),
        .p_0_out(p_0_out),
        .pend_rdreq(pend_rdreq),
        .pend_rdreq_reg(bus2Mem_RdReq),
        .pend_rdreq_reg_0(pend_rdreq_reg),
        .pend_rdreq_reg_1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .pend_rdreq_reg_2(pend_rdreq_reg_0),
        .pend_wrreq(pend_wrreq),
        .pend_wrreq_reg(bus2ip_wrreq_i),
        .rdce_out_i(rdce_out_i),
        .readreq_th_reset(readreq_th_reset),
        .reset_fifo(reset_fifo),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_bresp(s_axi_mem_bresp),
        .\s_axi_mem_bresp_reg_reg[1] (AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_23),
        .\s_axi_mem_bresp_reg_reg[1]_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .transaction_done_i(transaction_done_i));
  soc_bd_axi_emc_0_0_axi_emc_addr_gen AXI_EMC_ADDR_GEN_INSTANCE_I
       (.\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2] ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_1 (derived_burst_reg[1]),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[2]_2 (RDATA_FIFO_I_n_6),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[3]_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4]_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[4] ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5] ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[5]_1 (derived_len_reg),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 (RDATA_FIFO_I_n_4),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_2_0 ({\derived_size_reg_reg_n_0_[1] ,\derived_size_reg_reg_n_0_[0] }),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 (RDATA_FIFO_I_n_7),
        .Bus2IP_Addr(Bus2IP_Addr[21:2]),
        .\FSM_sequential_emc_addr_ps[0]_i_2 (rw_flag_reg_reg_0),
        .\FSM_sequential_emc_addr_ps_reg[1] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_19),
        .IP2Bus_RdAck_reg(AXI_EMC_ADDR_GEN_INSTANCE_I_n_18),
        .Q(Q),
        .SR(SR),
        .\burst_addr_cnt_reg[2] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_21),
        .\burst_addr_cnt_reg[5] (\burst_addr_cnt_reg[5]_0 ),
        .\burst_addr_cnt_reg[7] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_20),
        .\burst_data_cnt_reg[6] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_17),
        .\bus2ip_addr_i_reg[12]_0 (\s_axi_mem_bid_reg_reg[0]_0 ),
        .bus2ip_rnw(bus2ip_rnw),
        .ip2bus_addrack(ip2bus_addrack),
        .ip2bus_rdack(ip2bus_rdack),
        .last_data_acked(last_data_acked),
        .last_data_acked_reg(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .p_0_out(p_0_out),
        .\rd_data_count_reg[5] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_23),
        .rnw_cmb(rnw_cmb),
        .rnw_reg_reg(emc_addr_ps),
        .rnw_reg_reg_0(rw_flag_reg),
        .rnw_reg_reg_1(rd_data_count_reg__0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awburst_0_sp_1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_15),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_awvalid_0(AXI_EMC_ADDR_GEN_INSTANCE_I_n_14),
        .s_axi_mem_awvalid_1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_16),
        .s_axi_mem_bvalid_reg_reg({burst_addr_cnt_reg__0,burst_addr_cnt_reg__1}),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_wready_INST_0_i_2(bus2ip_wr_req_reg_reg_1),
        .s_axi_mem_wready_INST_0_i_7({burst_data_cnt[6:5],burst_data_cnt[3:0]}));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[0].BEN_REG_i_1 
       (.I0(temp_bus2ip_be[0]),
        .I1(Type_of_xfer),
        .O(Bus2IP_BE[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[1].BEN_REG_i_1 
       (.I0(temp_bus2ip_be[1]),
        .I1(Type_of_xfer),
        .O(Bus2IP_BE[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[2].BEN_REG_i_1 
       (.I0(temp_bus2ip_be[2]),
        .I1(Type_of_xfer),
        .O(Bus2IP_BE[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BEN_STORE_GEN[3].BEN_REG_i_1 
       (.I0(temp_bus2ip_be[3]),
        .I1(Type_of_xfer),
        .O(Bus2IP_BE[3]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_sequential_crnt_state[0]_i_11 
       (.I0(\burst_addr_cnt_reg[5]_0 ),
        .I1(temp_bus2ip_be[0]),
        .I2(temp_bus2ip_be[3]),
        .I3(temp_bus2ip_be[2]),
        .I4(temp_bus2ip_be[1]),
        .O(\FSM_sequential_crnt_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h053505F505350505)) 
    \FSM_sequential_emc_addr_ps[0]_i_1 
       (.I0(\FSM_sequential_emc_addr_ps[0]_i_2_n_0 ),
        .I1(bus2ip_rd_req_reg_reg_0),
        .I2(emc_addr_ps[2]),
        .I3(emc_addr_ps[1]),
        .I4(emc_addr_ps[0]),
        .I5(s_axi_mem_wvalid),
        .O(emc_addr_ns__0[0]));
  LUT6 #(
    .INIT(64'h000F0F0F00020202)) 
    \FSM_sequential_emc_addr_ps[0]_i_2 
       (.I0(last_len_cmb),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_16),
        .I2(\FSM_sequential_emc_addr_ps[0]_i_4_n_0 ),
        .I3(\FSM_sequential_emc_addr_ps[2]_i_3_n_0 ),
        .I4(addr_sm_ps_IDLE_reg_reg_0),
        .I5(AXI_EMC_ADDR_GEN_INSTANCE_I_n_15),
        .O(\FSM_sequential_emc_addr_ps[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_emc_addr_ps[0]_i_4 
       (.I0(emc_addr_ps[1]),
        .I1(emc_addr_ps[0]),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .O(\FSM_sequential_emc_addr_ps[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAEABABABAA)) 
    \FSM_sequential_emc_addr_ps[1]_i_1 
       (.I0(\FSM_sequential_emc_addr_ps[1]_i_2_n_0 ),
        .I1(\FSM_sequential_emc_addr_ps[1]_i_3_n_0 ),
        .I2(\FSM_sequential_emc_addr_ps[1]_i_4_n_0 ),
        .I3(\FSM_sequential_emc_addr_ps[1]_i_5_n_0 ),
        .I4(\FSM_sequential_emc_addr_ps[1]_i_6_n_0 ),
        .I5(bus2ip_rd_req_reg_reg_0),
        .O(emc_addr_ns__0[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_emc_addr_ps[1]_i_11 
       (.I0(burst_addr_cnt_reg__0[7]),
        .I1(burst_addr_cnt_reg__0[4]),
        .I2(burst_addr_cnt_reg__0[6]),
        .I3(burst_addr_cnt_reg__0[5]),
        .O(\FSM_sequential_emc_addr_ps[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h400040F040F040F0)) 
    \FSM_sequential_emc_addr_ps[1]_i_2 
       (.I0(\burst_addr_cnt_reg[5]_0 ),
        .I1(s_axi_mem_wvalid),
        .I2(\FSM_sequential_emc_addr_ps[1]_i_4_n_0 ),
        .I3(\FSM_sequential_emc_addr_ps[1]_i_3_n_0 ),
        .I4(s_axi_mem_bvalid_reg_reg_0),
        .I5(s_axi_mem_bready),
        .O(\FSM_sequential_emc_addr_ps[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_emc_addr_ps[1]_i_3 
       (.I0(emc_addr_ps[2]),
        .I1(emc_addr_ps[1]),
        .O(\FSM_sequential_emc_addr_ps[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_emc_addr_ps[1]_i_4 
       (.I0(emc_addr_ps[2]),
        .I1(emc_addr_ps[1]),
        .I2(emc_addr_ps[0]),
        .O(\FSM_sequential_emc_addr_ps[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_emc_addr_ps[1]_i_5 
       (.I0(emc_addr_ps[1]),
        .I1(emc_addr_ps[0]),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .O(\FSM_sequential_emc_addr_ps[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4F4444444444)) 
    \FSM_sequential_emc_addr_ps[1]_i_6 
       (.I0(AXI_EMC_ADDR_GEN_INSTANCE_I_n_15),
        .I1(last_len_cmb),
        .I2(\burst_addr_cnt_reg[2]_0 ),
        .I3(s_axi_mem_wvalid),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I5(\FSM_sequential_emc_addr_ps[2]_i_3_n_0 ),
        .O(\FSM_sequential_emc_addr_ps[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_emc_addr_ps[1]_i_8 
       (.I0(burst_addr_cnt_reg__0[2]),
        .I1(burst_addr_cnt_reg__0[3]),
        .I2(burst_addr_cnt_reg__1),
        .I3(burst_addr_cnt_reg__0[1]),
        .I4(\FSM_sequential_emc_addr_ps[1]_i_11_n_0 ),
        .O(\burst_addr_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAAAA)) 
    \FSM_sequential_emc_addr_ps[2]_i_1 
       (.I0(\FSM_sequential_emc_addr_ps[2]_i_2_n_0 ),
        .I1(\burst_addr_cnt_reg[5]_0 ),
        .I2(s_axi_mem_wvalid),
        .I3(emc_addr_ps[0]),
        .I4(emc_addr_ps[1]),
        .I5(emc_addr_ps[2]),
        .O(emc_addr_ns__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40405540)) 
    \FSM_sequential_emc_addr_ps[2]_i_2 
       (.I0(\FSM_sequential_emc_addr_ps[1]_i_4_n_0 ),
        .I1(\FSM_sequential_emc_addr_ps[2]_i_3_n_0 ),
        .I2(addr_sm_ps_IDLE_reg_reg_1),
        .I3(\FSM_sequential_emc_addr_ps[2]_i_5_n_0 ),
        .I4(last_len_cmb),
        .I5(\FSM_sequential_emc_addr_ps[2]_i_6_n_0 ),
        .O(\FSM_sequential_emc_addr_ps[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_emc_addr_ps[2]_i_3 
       (.I0(emc_addr_ps[0]),
        .I1(emc_addr_ps[1]),
        .O(\FSM_sequential_emc_addr_ps[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h02020200)) 
    \FSM_sequential_emc_addr_ps[2]_i_5 
       (.I0(\s_axi_mem_bid_reg_reg[0]_0 ),
        .I1(emc_addr_ps[0]),
        .I2(emc_addr_ps[1]),
        .I3(s_axi_mem_awburst[1]),
        .I4(s_axi_mem_awburst[0]),
        .O(\FSM_sequential_emc_addr_ps[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \FSM_sequential_emc_addr_ps[2]_i_6 
       (.I0(s_axi_mem_bready),
        .I1(s_axi_mem_bvalid_reg_reg_0),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[2]),
        .O(\FSM_sequential_emc_addr_ps[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "rd:010,rd_last:001,wr_wait:100,wr:011,wr_last:101,resp:110,idle:000" *) 
  FDRE \FSM_sequential_emc_addr_ps_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emc_addr_ns__0[0]),
        .Q(emc_addr_ps[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "rd:010,rd_last:001,wr_wait:100,wr:011,wr_last:101,resp:110,idle:000" *) 
  FDRE \FSM_sequential_emc_addr_ps_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emc_addr_ns__0[1]),
        .Q(emc_addr_ps[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "rd:010,rd_last:001,wr_wait:100,wr:011,wr_last:101,resp:110,idle:000" *) 
  FDRE \FSM_sequential_emc_addr_ps_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emc_addr_ns__0[2]),
        .Q(emc_addr_ps[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFEAAFAAEAEAAAAA)) 
    \LEN_GEN_32.derived_len_reg[0]_i_1 
       (.I0(\LEN_GEN_32.derived_len_reg[0]_i_2_n_0 ),
        .I1(s_axi_mem_arsize[1]),
        .I2(rnw_cmb),
        .I3(s_axi_mem_awsize[1]),
        .I4(s_axi_mem_arlen[0]),
        .I5(s_axi_mem_awlen[0]),
        .O(\LEN_GEN_32.derived_len_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E2FF0000E200)) 
    \LEN_GEN_32.derived_len_reg[0]_i_2 
       (.I0(s_axi_mem_awlen[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_arlen[1]),
        .I3(\derived_size_reg[0]_i_1_n_0 ),
        .I4(p_0_in1_in),
        .I5(burst_length_cmb[2]),
        .O(\LEN_GEN_32.derived_len_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAFAAEAEAAAAA)) 
    \LEN_GEN_32.derived_len_reg[1]_i_1 
       (.I0(\LEN_GEN_32.derived_len_reg[1]_i_2_n_0 ),
        .I1(s_axi_mem_arsize[1]),
        .I2(rnw_cmb),
        .I3(s_axi_mem_awsize[1]),
        .I4(s_axi_mem_arlen[1]),
        .I5(s_axi_mem_awlen[1]),
        .O(\LEN_GEN_32.derived_len_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E2FF0000E200)) 
    \LEN_GEN_32.derived_len_reg[1]_i_2 
       (.I0(s_axi_mem_awlen[2]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_arlen[2]),
        .I3(\derived_size_reg[0]_i_1_n_0 ),
        .I4(p_0_in1_in),
        .I5(burst_length_cmb[3]),
        .O(\LEN_GEN_32.derived_len_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE200E200FF000000)) 
    \LEN_GEN_32.derived_len_reg[2]_i_1 
       (.I0(s_axi_mem_awlen[2]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_arlen[2]),
        .I3(\LEN_GEN_32.derived_len_reg[2]_i_2_n_0 ),
        .I4(burst_length_cmb[3]),
        .I5(p_0_in1_in),
        .O(\LEN_GEN_32.derived_len_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \LEN_GEN_32.derived_len_reg[2]_i_2 
       (.I0(s_axi_mem_awsize[0]),
        .I1(s_axi_mem_arsize[0]),
        .I2(s_axi_mem_awsize[1]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arsize[1]),
        .O(\LEN_GEN_32.derived_len_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \LEN_GEN_32.derived_len_reg[3]_i_1 
       (.I0(s_axi_mem_awlen[3]),
        .I1(s_axi_mem_arlen[3]),
        .I2(s_axi_mem_awsize[1]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arsize[1]),
        .O(\LEN_GEN_32.derived_len_reg[3]_i_1_n_0 ));
  FDRE \LEN_GEN_32.derived_len_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(\LEN_GEN_32.derived_len_reg[0]_i_1_n_0 ),
        .Q(derived_len_reg[0]),
        .R(1'b0));
  FDRE \LEN_GEN_32.derived_len_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(\LEN_GEN_32.derived_len_reg[1]_i_1_n_0 ),
        .Q(derived_len_reg[1]),
        .R(1'b0));
  FDRE \LEN_GEN_32.derived_len_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(\LEN_GEN_32.derived_len_reg[2]_i_1_n_0 ),
        .Q(derived_len_reg[2]),
        .R(1'b0));
  FDRE \LEN_GEN_32.derived_len_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(\LEN_GEN_32.derived_len_reg[3]_i_1_n_0 ),
        .Q(derived_len_reg[3]),
        .R(1'b0));
  soc_bd_axi_emc_0_0_srl_fifo_rbu_f RDATA_FIFO_I
       (.\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] (derived_burst_reg[0]),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 (\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 (\burst_addr_cnt_reg[5]_0 ),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_3 (bus2ip_wrreq_i),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] (AXI_EMC_ADDR_GEN_INSTANCE_I_n_17),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ({burst_data_cnt[7],burst_data_cnt[4]}),
        .\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1 (AXI_EMC_ADDR_GEN_INSTANCE_I_n_19),
        .E(RDATA_FIFO_I_n_8),
        .FIFO_Full_reg_0(RDATA_FIFO_I_n_9),
        .\FSM_sequential_crnt_state_reg[1] (RDATA_FIFO_I_n_6),
        .\FSM_sequential_emc_addr_ps_reg[2] (RDATA_FIFO_I_n_2),
        .Q({fifo_empty,RDATA_FIFO_I_n_1}),
        .S(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_6),
        .addr_sm_ps_IDLE_reg_reg(emc_addr_ps),
        .addr_sm_ps_IDLE_reg_reg_0(addr_sm_ps_IDLE_reg_i_3_n_0),
        .addr_sm_ps_IDLE_reg_reg_1(\FSM_sequential_emc_addr_ps[1]_i_2_n_0 ),
        .addr_sm_ps_IDLE_reg_reg_2(\FSM_sequential_emc_addr_ps[0]_i_2_n_0 ),
        .addr_sm_ps_IDLE_reg_reg_3(addr_sm_ps_IDLE_reg_i_4_n_0),
        .addr_sm_ps_IDLE_reg_reg_4(addr_sm_ps_IDLE_reg_i_5_n_0),
        .addr_sm_ps_IDLE_reg_reg_5(addr_sm_ps_IDLE_reg_reg_2),
        .addr_sm_ps_IDLE_reg_reg_6(addr_sm_ps_IDLE_reg_reg_3),
        .\burst_data_cnt_reg[7] (RDATA_FIFO_I_n_7),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_wr_req_reg_reg(bus2ip_wr_req_reg_reg_0),
        .\derived_burst_reg_reg[0] (RDATA_FIFO_I_n_4),
        .in({\INFERRED_GEN.data_reg[255][8]_srl32__0 [7],\INFERRED_GEN.data_reg[255][8]_srl32__0 [6],\INFERRED_GEN.data_reg[255][8]_srl32__0 [5],\INFERRED_GEN.data_reg[255][8]_srl32__0 [4],\INFERRED_GEN.data_reg[255][8]_srl32__0 [3],\INFERRED_GEN.data_reg[255][8]_srl32__0 [2],\INFERRED_GEN.data_reg[255][8]_srl32__0 [1],\INFERRED_GEN.data_reg[255][8]_srl32__0 [0],\INFERRED_GEN.data_reg[255][8]_srl32__0 [15],\INFERRED_GEN.data_reg[255][8]_srl32__0 [14],\INFERRED_GEN.data_reg[255][8]_srl32__0 [13],\INFERRED_GEN.data_reg[255][8]_srl32__0 [12],\INFERRED_GEN.data_reg[255][8]_srl32__0 [11],\INFERRED_GEN.data_reg[255][8]_srl32__0 [10],\INFERRED_GEN.data_reg[255][8]_srl32__0 [9],\INFERRED_GEN.data_reg[255][8]_srl32__0 [8],\INFERRED_GEN.data_reg[255][8]_srl32__0 [23],\INFERRED_GEN.data_reg[255][8]_srl32__0 [22],\INFERRED_GEN.data_reg[255][8]_srl32__0 [21],\INFERRED_GEN.data_reg[255][8]_srl32__0 [20],\INFERRED_GEN.data_reg[255][8]_srl32__0 [19],\INFERRED_GEN.data_reg[255][8]_srl32__0 [18],\INFERRED_GEN.data_reg[255][8]_srl32__0 [17],\INFERRED_GEN.data_reg[255][8]_srl32__0 [16],\INFERRED_GEN.data_reg[255][8]_srl32__0 [31],\INFERRED_GEN.data_reg[255][8]_srl32__0 [30],\INFERRED_GEN.data_reg[255][8]_srl32__0 [29],\INFERRED_GEN.data_reg[255][8]_srl32__0 [28],\INFERRED_GEN.data_reg[255][8]_srl32__0 [27],\INFERRED_GEN.data_reg[255][8]_srl32__0 [26],\INFERRED_GEN.data_reg[255][8]_srl32__0 [25],\INFERRED_GEN.data_reg[255][8]_srl32__0 [24],rd_fifo_data_in}),
        .ip2bus_rdack(ip2bus_rdack),
        .p_0_out(p_0_out),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .rdce_out_i(rdce_out_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(s_axi_mem_rresp),
        .s_axi_mem_rvalid(s_axi_mem_rvalid));
  LUT6 #(
    .INIT(64'h5D5D0CFF0C0C0C0C)) 
    addr_sm_ps_IDLE_reg_i_3
       (.I0(addr_sm_ps_IDLE_reg_reg_1),
        .I1(last_len_cmb),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_15),
        .I3(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I4(emc_addr_ps[0]),
        .I5(emc_addr_ps[1]),
        .O(addr_sm_ps_IDLE_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFEEEFEEEFEE)) 
    addr_sm_ps_IDLE_reg_i_4
       (.I0(addr_sm_ps_IDLE_reg_i_7_n_0),
        .I1(\FSM_sequential_emc_addr_ps[2]_i_6_n_0 ),
        .I2(last_len_cmb),
        .I3(addr_sm_ps_IDLE_reg_i_8_n_0),
        .I4(addr_sm_ps_IDLE_reg_reg_1),
        .I5(addr_sm_ps_IDLE_reg_i_9_n_0),
        .O(addr_sm_ps_IDLE_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h20)) 
    addr_sm_ps_IDLE_reg_i_5
       (.I0(emc_addr_ps[0]),
        .I1(emc_addr_ps[1]),
        .I2(emc_addr_ps[2]),
        .O(addr_sm_ps_IDLE_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    addr_sm_ps_IDLE_reg_i_7
       (.I0(s_axi_mem_bready),
        .I1(s_axi_mem_bvalid_reg_reg_0),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[2]),
        .O(addr_sm_ps_IDLE_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    addr_sm_ps_IDLE_reg_i_8
       (.I0(s_axi_mem_awburst[0]),
        .I1(s_axi_mem_awburst[1]),
        .I2(\s_axi_mem_bid_reg_reg[0]_0 ),
        .I3(emc_addr_ps[0]),
        .I4(emc_addr_ps[1]),
        .I5(emc_addr_ps[2]),
        .O(addr_sm_ps_IDLE_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    addr_sm_ps_IDLE_reg_i_9
       (.I0(emc_addr_ps[0]),
        .I1(emc_addr_ps[1]),
        .I2(emc_addr_ps[2]),
        .O(addr_sm_ps_IDLE_reg_i_9_n_0));
  FDSE addr_sm_ps_IDLE_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(RDATA_FIFO_I_n_2),
        .Q(addr_sm_ps_IDLE_reg),
        .S(SR));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \burst_addr_cnt[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[0]),
        .I3(p_0_out),
        .I4(burst_addr_cnt_reg__1),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_addr_cnt[1]_i_1 
       (.I0(burst_addr_cnt_reg__0[1]),
        .I1(burst_addr_cnt_reg__1),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[1]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_addr_cnt[2]_i_1 
       (.I0(burst_addr_cnt_reg__0[2]),
        .I1(\burst_addr_cnt[2]_i_2_n_0 ),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[2]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \burst_addr_cnt[2]_i_2 
       (.I0(burst_addr_cnt_reg__1),
        .I1(burst_addr_cnt_reg__0[1]),
        .O(\burst_addr_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \burst_addr_cnt[3]_i_1 
       (.I0(s_axi_mem_arlen[3]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[3]),
        .I3(p_0_out),
        .I4(burst_addr_cnt_reg__0[3]),
        .I5(\burst_addr_cnt[3]_i_2_n_0 ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \burst_addr_cnt[3]_i_2 
       (.I0(burst_addr_cnt_reg__0[1]),
        .I1(burst_addr_cnt_reg__1),
        .I2(burst_addr_cnt_reg__0[2]),
        .O(\burst_addr_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_addr_cnt[4]_i_1 
       (.I0(AXI_EMC_ADDR_GEN_INSTANCE_I_n_21),
        .I1(burst_addr_cnt_reg__0[4]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[4]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_addr_cnt[5]_i_1 
       (.I0(\burst_addr_cnt[6]_i_2_n_0 ),
        .I1(burst_addr_cnt_reg__0[5]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[5]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFF00E1)) 
    \burst_addr_cnt[6]_i_1 
       (.I0(\burst_addr_cnt[6]_i_2_n_0 ),
        .I1(burst_addr_cnt_reg__0[5]),
        .I2(burst_addr_cnt_reg__0[6]),
        .I3(p_0_out),
        .I4(\burst_addr_cnt[6]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \burst_addr_cnt[6]_i_2 
       (.I0(burst_addr_cnt_reg__0[4]),
        .I1(burst_addr_cnt_reg__0[3]),
        .I2(burst_addr_cnt_reg__0[1]),
        .I3(burst_addr_cnt_reg__1),
        .I4(burst_addr_cnt_reg__0[2]),
        .O(\burst_addr_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \burst_addr_cnt[6]_i_3 
       (.I0(s_axi_mem_awlen[6]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_arlen[6]),
        .I3(p_0_out),
        .O(\burst_addr_cnt[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \burst_addr_cnt[7]_i_1 
       (.I0(\burst_addr_cnt_reg[7]_0 ),
        .I1(\burst_addr_cnt_reg[5]_0 ),
        .I2(p_0_out),
        .O(\burst_addr_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF606F6F6F6060606)) 
    \burst_addr_cnt[7]_i_2 
       (.I0(\burst_addr_cnt[7]_i_4_n_0 ),
        .I1(burst_addr_cnt_reg__0[7]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[7]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \burst_addr_cnt[7]_i_4 
       (.I0(burst_addr_cnt_reg__0[6]),
        .I1(burst_addr_cnt_reg__0[5]),
        .I2(\burst_addr_cnt[6]_i_2_n_0 ),
        .O(\burst_addr_cnt[7]_i_4_n_0 ));
  FDRE \burst_addr_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(burst_addr_cnt_reg__1),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(burst_addr_cnt_reg__0[1]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(burst_addr_cnt_reg__0[2]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(burst_addr_cnt_reg__0[3]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(burst_addr_cnt_reg__0[4]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(burst_addr_cnt_reg__0[5]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(burst_addr_cnt_reg__0[6]),
        .R(1'b0));
  FDRE \burst_addr_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\burst_addr_cnt[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(burst_addr_cnt_reg__0[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \burst_data_cnt[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awlen[0]),
        .I3(p_0_out),
        .I4(burst_data_cnt[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_data_cnt[1]_i_1 
       (.I0(burst_data_cnt[0]),
        .I1(burst_data_cnt[1]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[1]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_data_cnt[2]_i_1 
       (.I0(\burst_data_cnt[2]_i_2_n_0 ),
        .I1(burst_data_cnt[2]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[2]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[2]),
        .O(p_2_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \burst_data_cnt[2]_i_2 
       (.I0(burst_data_cnt[1]),
        .I1(burst_data_cnt[0]),
        .O(\burst_data_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF606F6F6F6060606)) 
    \burst_data_cnt[3]_i_1 
       (.I0(\burst_data_cnt[3]_i_2_n_0 ),
        .I1(burst_data_cnt[3]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[3]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \burst_data_cnt[3]_i_2 
       (.I0(burst_data_cnt[2]),
        .I1(burst_data_cnt[0]),
        .I2(burst_data_cnt[1]),
        .O(\burst_data_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF909F9F9F9090909)) 
    \burst_data_cnt[4]_i_1 
       (.I0(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_17),
        .I1(burst_data_cnt[4]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[4]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hF606F6F6F6060606)) 
    \burst_data_cnt[5]_i_1 
       (.I0(\burst_data_cnt[5]_i_2_n_0 ),
        .I1(burst_data_cnt[5]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[5]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \burst_data_cnt[5]_i_2 
       (.I0(burst_data_cnt[4]),
        .I1(burst_data_cnt[1]),
        .I2(burst_data_cnt[0]),
        .I3(burst_data_cnt[2]),
        .I4(burst_data_cnt[3]),
        .O(\burst_data_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF606F6F6F6060606)) 
    \burst_data_cnt[6]_i_1 
       (.I0(\burst_data_cnt[6]_i_2_n_0 ),
        .I1(burst_data_cnt[6]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[6]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \burst_data_cnt[6]_i_2 
       (.I0(burst_data_cnt[3]),
        .I1(burst_data_cnt[2]),
        .I2(burst_data_cnt[0]),
        .I3(burst_data_cnt[1]),
        .I4(burst_data_cnt[4]),
        .I5(burst_data_cnt[5]),
        .O(\burst_data_cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \burst_data_cnt[7]_i_1 
       (.I0(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_16),
        .I1(ip2bus_rdack),
        .I2(p_0_out),
        .O(\burst_data_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF606F6F6F6060606)) 
    \burst_data_cnt[7]_i_2 
       (.I0(\burst_data_cnt[7]_i_4_n_0 ),
        .I1(burst_data_cnt[7]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[7]),
        .I4(rnw_cmb),
        .I5(s_axi_mem_awlen[7]),
        .O(p_2_in[7]));
  LUT3 #(
    .INIT(8'h02)) 
    \burst_data_cnt[7]_i_4 
       (.I0(\burst_data_cnt[5]_i_2_n_0 ),
        .I1(burst_data_cnt[6]),
        .I2(burst_data_cnt[5]),
        .O(\burst_data_cnt[7]_i_4_n_0 ));
  FDRE \burst_data_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(burst_data_cnt[0]),
        .R(SR));
  FDRE \burst_data_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(burst_data_cnt[1]),
        .R(SR));
  FDRE \burst_data_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(burst_data_cnt[2]),
        .R(SR));
  FDRE \burst_data_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(burst_data_cnt[3]),
        .R(SR));
  FDRE \burst_data_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(burst_data_cnt[4]),
        .R(SR));
  FDRE \burst_data_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(burst_data_cnt[5]),
        .R(SR));
  FDRE \burst_data_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(burst_data_cnt[6]),
        .R(SR));
  FDRE \burst_data_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\burst_data_cnt[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(burst_data_cnt[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[0]),
        .O(burst_length_cmb[0]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[1]_i_1 
       (.I0(s_axi_mem_arlen[1]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[1]),
        .O(burst_length_cmb[1]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[2]_i_1 
       (.I0(s_axi_mem_arlen[2]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[2]),
        .O(burst_length_cmb[2]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[3]_i_1 
       (.I0(s_axi_mem_arlen[3]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[3]),
        .O(burst_length_cmb[3]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[4]_i_1 
       (.I0(s_axi_mem_arlen[4]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[4]),
        .O(data[4]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[5]_i_1 
       (.I0(s_axi_mem_arlen[5]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[5]),
        .O(data[5]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[6]_i_1 
       (.I0(s_axi_mem_arlen[6]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[6]),
        .O(data[6]));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \burstlength_reg[7]_i_1 
       (.I0(s_axi_mem_arlen[7]),
        .I1(\burstlength_reg[7]_i_2_n_0 ),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_13),
        .I3(\burstlength_reg[7]_i_3_n_0 ),
        .I4(\burstlength_reg[7]_i_4_n_0 ),
        .I5(s_axi_mem_awlen[7]),
        .O(data[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \burstlength_reg[7]_i_2 
       (.I0(bus2ip_rnw),
        .I1(emc_addr_ps[0]),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[2]),
        .O(\burstlength_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \burstlength_reg[7]_i_3 
       (.I0(emc_addr_ps[2]),
        .I1(bus2ip_rnw),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[0]),
        .O(\burstlength_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h20A320A0)) 
    \burstlength_reg[7]_i_4 
       (.I0(bus2ip_rnw),
        .I1(emc_addr_ps[1]),
        .I2(emc_addr_ps[2]),
        .I3(emc_addr_ps[0]),
        .I4(AXI_EMC_ADDR_GEN_INSTANCE_I_n_14),
        .O(\burstlength_reg[7]_i_4_n_0 ));
  FDRE \burstlength_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(burst_length_cmb[0]),
        .Q(\burstlength_reg_reg[7]_0 [0]),
        .R(SR));
  FDRE \burstlength_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(burst_length_cmb[1]),
        .Q(\burstlength_reg_reg[7]_0 [1]),
        .R(SR));
  FDRE \burstlength_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(burst_length_cmb[2]),
        .Q(\burstlength_reg_reg[7]_0 [2]),
        .R(SR));
  FDRE \burstlength_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(burst_length_cmb[3]),
        .Q(\burstlength_reg_reg[7]_0 [3]),
        .R(SR));
  FDRE \burstlength_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(data[4]),
        .Q(\burstlength_reg_reg[7]_0 [4]),
        .R(SR));
  FDRE \burstlength_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(data[5]),
        .Q(\burstlength_reg_reg[7]_0 [5]),
        .R(SR));
  FDRE \burstlength_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(data[6]),
        .Q(\burstlength_reg_reg[7]_0 [6]),
        .R(SR));
  FDRE \burstlength_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(data[7]),
        .Q(\burstlength_reg_reg[7]_0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF11F1000011F1)) 
    \bus2ip_BE_reg[0]_i_1 
       (.I0(\bus2ip_BE_reg[1]_i_2_n_0 ),
        .I1(\bus2ip_BE_reg[2]_i_2_n_0 ),
        .I2(\bus2ip_BE_reg[0]_i_2_n_0 ),
        .I3(p_0_out),
        .I4(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I5(s_axi_mem_wstrb[0]),
        .O(\bus2ip_BE_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \bus2ip_BE_reg[0]_i_2 
       (.I0(\derived_size_reg_reg_n_0_[1] ),
        .I1(temp_bus2ip_be[3]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(temp_bus2ip_be[2]),
        .O(\bus2ip_BE_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F4000044F4)) 
    \bus2ip_BE_reg[1]_i_1 
       (.I0(\bus2ip_BE_reg[1]_i_2_n_0 ),
        .I1(\bus2ip_BE_reg[3]_i_5_n_0 ),
        .I2(\bus2ip_BE_reg[1]_i_3_n_0 ),
        .I3(p_0_out),
        .I4(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I5(s_axi_mem_wstrb[1]),
        .O(\bus2ip_BE_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h4700FFFF)) 
    \bus2ip_BE_reg[1]_i_2 
       (.I0(s_axi_mem_arsize[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[1]),
        .I3(s_axi_mem_araddr[1]),
        .I4(p_0_out),
        .O(\bus2ip_BE_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \bus2ip_BE_reg[1]_i_3 
       (.I0(\derived_size_reg_reg_n_0_[1] ),
        .I1(temp_bus2ip_be[0]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(temp_bus2ip_be[3]),
        .O(\bus2ip_BE_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F4000044F4)) 
    \bus2ip_BE_reg[2]_i_1 
       (.I0(\bus2ip_BE_reg[2]_i_2_n_0 ),
        .I1(\bus2ip_BE_reg[3]_i_4_n_0 ),
        .I2(\bus2ip_BE_reg[2]_i_3_n_0 ),
        .I3(p_0_out),
        .I4(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I5(s_axi_mem_wstrb[2]),
        .O(\bus2ip_BE_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \bus2ip_BE_reg[2]_i_2 
       (.I0(s_axi_mem_araddr[0]),
        .I1(s_axi_mem_arsize[1]),
        .I2(rnw_cmb),
        .I3(s_axi_mem_awsize[1]),
        .I4(s_axi_mem_arsize[0]),
        .I5(s_axi_mem_awsize[0]),
        .O(\bus2ip_BE_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \bus2ip_BE_reg[2]_i_3 
       (.I0(\derived_size_reg_reg_n_0_[1] ),
        .I1(temp_bus2ip_be[1]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(temp_bus2ip_be[0]),
        .O(\bus2ip_BE_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bus2ip_BE_reg[3]_i_1 
       (.I0(ip2bus_addrack),
        .I1(rnw_cmb),
        .I2(p_0_out),
        .I3(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .O(\bus2ip_BE_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F8000088F8)) 
    \bus2ip_BE_reg[3]_i_2 
       (.I0(\bus2ip_BE_reg[3]_i_4_n_0 ),
        .I1(\bus2ip_BE_reg[3]_i_5_n_0 ),
        .I2(\bus2ip_BE_reg[3]_i_6_n_0 ),
        .I3(p_0_out),
        .I4(\bus2ip_BE_reg[3]_i_3_n_0 ),
        .I5(s_axi_mem_wstrb[3]),
        .O(\bus2ip_BE_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h020000AA020000A0)) 
    \bus2ip_BE_reg[3]_i_3 
       (.I0(\bus2ip_BE_reg[3]_i_7_n_0 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I2(emc_addr_ps[2]),
        .I3(emc_addr_ps[1]),
        .I4(emc_addr_ps[0]),
        .I5(\s_axi_mem_bid_reg_reg[0]_0 ),
        .O(\bus2ip_BE_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hEFEA0000)) 
    \bus2ip_BE_reg[3]_i_4 
       (.I0(s_axi_mem_araddr[1]),
        .I1(s_axi_mem_arsize[1]),
        .I2(rnw_cmb),
        .I3(s_axi_mem_awsize[1]),
        .I4(p_0_out),
        .O(\bus2ip_BE_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    \bus2ip_BE_reg[3]_i_5 
       (.I0(s_axi_mem_araddr[0]),
        .I1(s_axi_mem_arsize[1]),
        .I2(rnw_cmb),
        .I3(s_axi_mem_awsize[1]),
        .I4(s_axi_mem_arsize[0]),
        .I5(s_axi_mem_awsize[0]),
        .O(\bus2ip_BE_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \bus2ip_BE_reg[3]_i_6 
       (.I0(\derived_size_reg_reg_n_0_[1] ),
        .I1(temp_bus2ip_be[2]),
        .I2(\derived_size_reg_reg_n_0_[0] ),
        .I3(temp_bus2ip_be[1]),
        .O(\bus2ip_BE_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bus2ip_BE_reg[3]_i_7 
       (.I0(s_axi_mem_wvalid),
        .I1(rnw_cmb),
        .O(\bus2ip_BE_reg[3]_i_7_n_0 ));
  FDRE \bus2ip_BE_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_BE_reg[3]_i_1_n_0 ),
        .D(\bus2ip_BE_reg[0]_i_1_n_0 ),
        .Q(temp_bus2ip_be[0]),
        .R(SR));
  FDRE \bus2ip_BE_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_BE_reg[3]_i_1_n_0 ),
        .D(\bus2ip_BE_reg[1]_i_1_n_0 ),
        .Q(temp_bus2ip_be[1]),
        .R(SR));
  FDRE \bus2ip_BE_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_BE_reg[3]_i_1_n_0 ),
        .D(\bus2ip_BE_reg[2]_i_1_n_0 ),
        .Q(temp_bus2ip_be[2]),
        .R(SR));
  FDRE \bus2ip_BE_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_BE_reg[3]_i_1_n_0 ),
        .D(\bus2ip_BE_reg[3]_i_2_n_0 ),
        .Q(temp_bus2ip_be[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h8888A000)) 
    bus2ip_burst_reg_i_1
       (.I0(s_axi_aresetn),
        .I1(last_len_cmb),
        .I2(bus2ip_burst),
        .I3(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_16),
        .I4(p_0_out),
        .O(bus2ip_burst_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    bus2ip_burst_reg_i_2
       (.I0(bus2ip_burst_reg_i_3_n_0),
        .I1(bus2ip_burst_reg_i_4_n_0),
        .I2(burst_length_cmb[2]),
        .I3(burst_length_cmb[3]),
        .I4(burst_length_cmb[1]),
        .I5(burst_length_cmb[0]),
        .O(last_len_cmb));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    bus2ip_burst_reg_i_3
       (.I0(s_axi_mem_awlen[6]),
        .I1(s_axi_mem_arlen[6]),
        .I2(s_axi_mem_awlen[7]),
        .I3(\burstlength_reg[7]_i_4_n_0 ),
        .I4(bus2ip_burst_reg_i_5_n_0),
        .I5(s_axi_mem_arlen[7]),
        .O(bus2ip_burst_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFACCCCCCFA)) 
    bus2ip_burst_reg_i_4
       (.I0(s_axi_mem_awlen[5]),
        .I1(s_axi_mem_arlen[5]),
        .I2(s_axi_mem_awlen[4]),
        .I3(\burstlength_reg[7]_i_4_n_0 ),
        .I4(bus2ip_burst_reg_i_5_n_0),
        .I5(s_axi_mem_arlen[4]),
        .O(bus2ip_burst_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    bus2ip_burst_reg_i_5
       (.I0(\burstlength_reg[7]_i_3_n_0 ),
        .I1(last_data_acked),
        .I2(s_axi_mem_rready),
        .I3(AXI_EMC_ADDR_GEN_INSTANCE_I_n_23),
        .I4(bus2ip_burst_reg_i_6_n_0),
        .I5(\burstlength_reg[7]_i_2_n_0 ),
        .O(bus2ip_burst_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    bus2ip_burst_reg_i_6
       (.I0(rd_data_count_reg__0[6]),
        .I1(rd_data_count_reg__0[7]),
        .O(bus2ip_burst_reg_i_6_n_0));
  FDRE bus2ip_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_burst_reg_i_1_n_0),
        .Q(bus2ip_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h030203C200000000)) 
    \bus2ip_data_reg[31]_i_1 
       (.I0(\s_axi_mem_bid_reg_reg[0]_0 ),
        .I1(emc_addr_ps[0]),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[2]),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I5(s_axi_mem_wvalid),
        .O(bus2ip_data_reg0));
  FDRE \bus2ip_data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[0]),
        .Q(\bus2ip_data_reg_reg[31]_0 [0]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[10]),
        .Q(\bus2ip_data_reg_reg[31]_0 [10]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[11]),
        .Q(\bus2ip_data_reg_reg[31]_0 [11]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[12]),
        .Q(\bus2ip_data_reg_reg[31]_0 [12]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[13]),
        .Q(\bus2ip_data_reg_reg[31]_0 [13]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[14]),
        .Q(\bus2ip_data_reg_reg[31]_0 [14]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[15]),
        .Q(\bus2ip_data_reg_reg[31]_0 [15]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[16]),
        .Q(\bus2ip_data_reg_reg[31]_0 [16]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[17]),
        .Q(\bus2ip_data_reg_reg[31]_0 [17]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[18]),
        .Q(\bus2ip_data_reg_reg[31]_0 [18]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[19]),
        .Q(\bus2ip_data_reg_reg[31]_0 [19]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[1]),
        .Q(\bus2ip_data_reg_reg[31]_0 [1]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[20]),
        .Q(\bus2ip_data_reg_reg[31]_0 [20]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[21]),
        .Q(\bus2ip_data_reg_reg[31]_0 [21]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[22]),
        .Q(\bus2ip_data_reg_reg[31]_0 [22]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[23]),
        .Q(\bus2ip_data_reg_reg[31]_0 [23]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[24]),
        .Q(\bus2ip_data_reg_reg[31]_0 [24]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[25]),
        .Q(\bus2ip_data_reg_reg[31]_0 [25]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[26]),
        .Q(\bus2ip_data_reg_reg[31]_0 [26]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[27]),
        .Q(\bus2ip_data_reg_reg[31]_0 [27]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[28]),
        .Q(\bus2ip_data_reg_reg[31]_0 [28]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[29]),
        .Q(\bus2ip_data_reg_reg[31]_0 [29]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[2]),
        .Q(\bus2ip_data_reg_reg[31]_0 [2]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[30]),
        .Q(\bus2ip_data_reg_reg[31]_0 [30]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[31]),
        .Q(\bus2ip_data_reg_reg[31]_0 [31]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[3]),
        .Q(\bus2ip_data_reg_reg[31]_0 [3]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[4]),
        .Q(\bus2ip_data_reg_reg[31]_0 [4]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[5]),
        .Q(\bus2ip_data_reg_reg[31]_0 [5]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[6]),
        .Q(\bus2ip_data_reg_reg[31]_0 [6]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[7]),
        .Q(\bus2ip_data_reg_reg[31]_0 [7]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[8]),
        .Q(\bus2ip_data_reg_reg[31]_0 [8]),
        .R(SR));
  FDRE \bus2ip_data_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_data_reg0),
        .D(s_axi_mem_wdata[9]),
        .Q(\bus2ip_data_reg_reg[31]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFF5C0000000C)) 
    bus2ip_rd_req_reg_i_1
       (.I0(bus2ip_rd_req_reg_reg_0),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_14),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[0]),
        .I4(emc_addr_ps[2]),
        .I5(Bus2IP_RdReq_emc),
        .O(bus2ip_rd_req_reg_i_1_n_0));
  FDRE bus2ip_rd_req_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rd_req_reg_i_1_n_0),
        .Q(Bus2IP_RdReq_emc),
        .R(SR));
  LUT6 #(
    .INIT(64'hFAFFFFF30AF00F03)) 
    bus2ip_wr_req_reg_i_1
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I1(bus2ip_wr_req_reg_i_2_n_0),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[2]),
        .I4(emc_addr_ps[0]),
        .I5(bus2ip_wrreq_i),
        .O(bus2ip_wr_req_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h7F77)) 
    bus2ip_wr_req_reg_i_2
       (.I0(s_axi_mem_awvalid),
        .I1(s_axi_mem_wvalid),
        .I2(rw_flag_reg),
        .I3(s_axi_mem_arvalid),
        .O(bus2ip_wr_req_reg_i_2_n_0));
  FDRE bus2ip_wr_req_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wr_req_reg_i_1_n_0),
        .Q(bus2ip_wrreq_i),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_burst_reg[0]_i_1 
       (.I0(s_axi_mem_arburst[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awburst[0]),
        .O(\derived_burst_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_burst_reg[1]_i_1 
       (.I0(s_axi_mem_arburst[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awburst[1]),
        .O(\derived_burst_reg[1]_i_1_n_0 ));
  FDRE \derived_burst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(\derived_burst_reg[0]_i_1_n_0 ),
        .Q(derived_burst_reg[0]),
        .R(1'b0));
  FDRE \derived_burst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(\derived_burst_reg[1]_i_1_n_0 ),
        .Q(derived_burst_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_size_reg[0]_i_1 
       (.I0(s_axi_mem_arsize[0]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[0]),
        .O(\derived_size_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \derived_size_reg[1]_i_1 
       (.I0(p_0_out),
        .I1(s_axi_aresetn),
        .O(derived_size_reg));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \derived_size_reg[1]_i_2 
       (.I0(s_axi_mem_arsize[1]),
        .I1(rnw_cmb),
        .I2(s_axi_mem_awsize[1]),
        .O(p_0_in1_in));
  FDRE \derived_size_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(\derived_size_reg[0]_i_1_n_0 ),
        .Q(\derived_size_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \derived_size_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(derived_size_reg),
        .D(p_0_in1_in),
        .Q(\derived_size_reg_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000BFAA)) 
    last_data_acked_i_1
       (.I0(last_data_acked),
        .I1(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_16),
        .I2(last_data_acked_i_2_n_0),
        .I3(ip2bus_rdack),
        .I4(addr_sm_ps_idle_cmb),
        .O(last_data_acked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    last_data_acked_i_2
       (.I0(rd_data_count_reg__0[7]),
        .I1(rd_data_count_reg__0[6]),
        .I2(AXI_EMC_ADDR_GEN_INSTANCE_I_n_23),
        .O(last_data_acked_i_2_n_0));
  FDRE last_data_acked_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_data_acked_i_1_n_0),
        .Q(last_data_acked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \rd_data_count[0]_i_1 
       (.I0(s_axi_mem_arlen[0]),
        .I1(p_0_out),
        .I2(rd_data_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \rd_data_count[1]_i_1 
       (.I0(rd_data_count_reg__0[1]),
        .I1(rd_data_count_reg__0[0]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \rd_data_count[2]_i_1 
       (.I0(rd_data_count_reg__0[0]),
        .I1(rd_data_count_reg__0[1]),
        .I2(rd_data_count_reg__0[2]),
        .I3(p_0_out),
        .I4(s_axi_mem_arlen[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \rd_data_count[3]_i_1 
       (.I0(rd_data_count_reg__0[2]),
        .I1(rd_data_count_reg__0[1]),
        .I2(rd_data_count_reg__0[0]),
        .I3(rd_data_count_reg__0[3]),
        .I4(p_0_out),
        .I5(s_axi_mem_arlen[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFE010000FE01)) 
    \rd_data_count[4]_i_1 
       (.I0(rd_data_count_reg__0[3]),
        .I1(rd_data_count_reg__0[2]),
        .I2(\rd_data_count[4]_i_2_n_0 ),
        .I3(rd_data_count_reg__0[4]),
        .I4(p_0_out),
        .I5(s_axi_mem_arlen[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rd_data_count[4]_i_2 
       (.I0(rd_data_count_reg__0[0]),
        .I1(rd_data_count_reg__0[1]),
        .O(\rd_data_count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \rd_data_count[5]_i_1 
       (.I0(\rd_data_count[5]_i_2_n_0 ),
        .I1(rd_data_count_reg__0[5]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rd_data_count[5]_i_2 
       (.I0(rd_data_count_reg__0[4]),
        .I1(rd_data_count_reg__0[0]),
        .I2(rd_data_count_reg__0[1]),
        .I3(rd_data_count_reg__0[2]),
        .I4(rd_data_count_reg__0[3]),
        .O(\rd_data_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \rd_data_count[6]_i_1 
       (.I0(AXI_EMC_ADDR_GEN_INSTANCE_I_n_23),
        .I1(rd_data_count_reg__0[6]),
        .I2(p_0_out),
        .I3(s_axi_mem_arlen[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \rd_data_count[7]_i_2 
       (.I0(rd_data_count_reg__0[6]),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_23),
        .I2(rd_data_count_reg__0[7]),
        .I3(p_0_out),
        .I4(s_axi_mem_arlen[7]),
        .O(p_0_in[7]));
  FDRE \rd_data_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[0]),
        .Q(rd_data_count_reg__0[0]),
        .R(SR));
  FDRE \rd_data_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[1]),
        .Q(rd_data_count_reg__0[1]),
        .R(SR));
  FDRE \rd_data_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[2]),
        .Q(rd_data_count_reg__0[2]),
        .R(SR));
  FDRE \rd_data_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[3]),
        .Q(rd_data_count_reg__0[3]),
        .R(SR));
  FDRE \rd_data_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[4]),
        .Q(rd_data_count_reg__0[4]),
        .R(SR));
  FDRE \rd_data_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[5]),
        .Q(rd_data_count_reg__0[5]),
        .R(SR));
  FDRE \rd_data_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[6]),
        .Q(rd_data_count_reg__0[6]),
        .R(SR));
  FDRE \rd_data_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(RDATA_FIFO_I_n_8),
        .D(p_0_in[7]),
        .Q(rd_data_count_reg__0[7]),
        .R(SR));
  FDRE rnw_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rnw_cmb),
        .Q(bus2ip_rnw),
        .R(SR));
  LUT5 #(
    .INIT(32'h5FFFC000)) 
    rw_flag_reg_i_1
       (.I0(s_axi_mem_awvalid),
        .I1(s_axi_mem_arvalid),
        .I2(addr_sm_ps_IDLE_reg),
        .I3(rw_flag_reg_reg_0),
        .I4(rw_flag_reg),
        .O(rw_flag_reg_i_1_n_0));
  FDRE rw_flag_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rw_flag_reg_i_1_n_0),
        .Q(rw_flag_reg),
        .R(SR));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    s_axi_mem_arready_INST_0
       (.I0(addr_sm_ps_idle_cmb),
        .I1(s_axi_mem_arvalid),
        .I2(rw_flag_reg),
        .I3(s_axi_mem_awvalid),
        .I4(s_axi_aresetn),
        .I5(rw_flag_reg_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'h00020000)) 
    s_axi_mem_awready_INST_0
       (.I0(s_axi_aresetn),
        .I1(emc_addr_ps[1]),
        .I2(emc_addr_ps[2]),
        .I3(emc_addr_ps[0]),
        .I4(\s_axi_mem_bid_reg_reg[0]_0 ),
        .O(s_axi_aresetn_0));
  FDRE \s_axi_mem_bid_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[0]),
        .Q(s_axi_mem_bid[0]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[10]),
        .Q(s_axi_mem_bid[10]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[11]),
        .Q(s_axi_mem_bid[11]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[12]),
        .Q(s_axi_mem_bid[12]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[13]),
        .Q(s_axi_mem_bid[13]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[14]),
        .Q(s_axi_mem_bid[14]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[15]),
        .Q(s_axi_mem_bid[15]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[1]),
        .Q(s_axi_mem_bid[1]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[2]),
        .Q(s_axi_mem_bid[2]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[3]),
        .Q(s_axi_mem_bid[3]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[4]),
        .Q(s_axi_mem_bid[4]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[5]),
        .Q(s_axi_mem_bid[5]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[6]),
        .Q(s_axi_mem_bid[6]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[7]),
        .Q(s_axi_mem_bid[7]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[8]),
        .Q(s_axi_mem_bid[8]),
        .R(SR));
  FDRE \s_axi_mem_bid_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn_0),
        .D(s_axi_mem_awid[9]),
        .Q(s_axi_mem_bid[9]),
        .R(SR));
  FDRE \s_axi_mem_bresp_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_EMC_ADDRESS_DECODE_INSTANCE_I_n_23),
        .Q(s_axi_mem_bresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000022F2)) 
    s_axi_mem_bvalid_reg_i_1
       (.I0(s_axi_mem_bvalid_reg_reg_0),
        .I1(s_axi_mem_bready),
        .I2(\burst_addr_cnt_reg[5]_0 ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I4(addr_sm_ps_idle_cmb),
        .O(s_axi_mem_bvalid_reg_i_1_n_0));
  FDRE s_axi_mem_bvalid_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_mem_bvalid_reg_i_1_n_0),
        .Q(s_axi_mem_bvalid_reg_reg_0),
        .R(1'b0));
  FDRE \s_axi_mem_rid_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[0]),
        .Q(s_axi_mem_rid[0]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[10]),
        .Q(s_axi_mem_rid[10]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[11]),
        .Q(s_axi_mem_rid[11]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[12]),
        .Q(s_axi_mem_rid[12]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[13]),
        .Q(s_axi_mem_rid[13]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[14]),
        .Q(s_axi_mem_rid[14]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[15]),
        .Q(s_axi_mem_rid[15]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[1]),
        .Q(s_axi_mem_rid[1]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[2]),
        .Q(s_axi_mem_rid[2]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[3]),
        .Q(s_axi_mem_rid[3]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[4]),
        .Q(s_axi_mem_rid[4]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[5]),
        .Q(s_axi_mem_rid[5]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[6]),
        .Q(s_axi_mem_rid[6]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[7]),
        .Q(s_axi_mem_rid[7]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[8]),
        .Q(s_axi_mem_rid[8]),
        .R(SR));
  FDRE \s_axi_mem_rid_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_mem_arid[9]),
        .Q(s_axi_mem_rid[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0002)) 
    s_axi_mem_rlast_INST_0
       (.I0(last_data_acked),
        .I1(AXI_EMC_ADDR_GEN_INSTANCE_I_n_23),
        .I2(rd_data_count_reg__0[6]),
        .I3(rd_data_count_reg__0[7]),
        .O(s_axi_mem_rlast));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h030203C2)) 
    s_axi_mem_wready_INST_0
       (.I0(\s_axi_mem_bid_reg_reg[0]_0 ),
        .I1(emc_addr_ps[0]),
        .I2(emc_addr_ps[1]),
        .I3(emc_addr_ps[2]),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .O(s_axi_mem_wready));
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_mem_wready_INST_0_i_10
       (.I0(bus2ip_wrreq_i),
        .I1(pend_wrreq),
        .O(bus2ip_wr_req_reg_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_mem_wready_INST_0_i_12
       (.I0(\burstlength_reg_reg[7]_0 [2]),
        .I1(\burstlength_reg_reg[7]_0 [3]),
        .I2(\burstlength_reg_reg[7]_0 [4]),
        .I3(\burstlength_reg_reg[7]_0 [5]),
        .I4(\burstlength_reg_reg[7]_0 [7]),
        .I5(\burstlength_reg_reg[7]_0 [6]),
        .O(s_axi_mem_wready_INST_0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    type_of_xfer_reg_i_1
       (.I0(s_axi_mem_awburst[1]),
        .I1(s_axi_mem_arburst[1]),
        .I2(s_axi_mem_awburst[0]),
        .I3(rnw_cmb),
        .I4(s_axi_mem_arburst[0]),
        .O(Type_of_xfer_cmb));
  FDRE type_of_xfer_reg_reg
       (.C(s_axi_aclk),
        .CE(p_0_out),
        .D(Type_of_xfer_cmb),
        .Q(Type_of_xfer),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module soc_bd_axi_emc_0_0_cntr_incr_decr_addn_f
   (Q,
    E,
    s_axi_mem_rvalid,
    fifo_full_p1,
    A,
    addr,
    \INFERRED_GEN.cnt_i_reg[2]_rep_0 ,
    S,
    s_axi_mem_rready,
    p_0_out,
    bus2ip_reset,
    s_axi_aclk);
  output [8:0]Q;
  output [0:0]E;
  output s_axi_mem_rvalid;
  output fifo_full_p1;
  output [1:0]A;
  output [1:0]addr;
  output [2:0]\INFERRED_GEN.cnt_i_reg[2]_rep_0 ;
  input [0:0]S;
  input s_axi_mem_rready;
  input p_0_out;
  input bus2ip_reset;
  input s_axi_aclk;

  wire [1:0]A;
  wire Cnt_p10_carry__0_i_1_n_0;
  wire Cnt_p10_carry__0_i_2_n_0;
  wire Cnt_p10_carry__0_i_3_n_0;
  wire Cnt_p10_carry__0_i_4_n_0;
  wire Cnt_p10_carry__0_n_0;
  wire Cnt_p10_carry__0_n_1;
  wire Cnt_p10_carry__0_n_2;
  wire Cnt_p10_carry__0_n_3;
  wire Cnt_p10_carry__1_i_1_n_0;
  wire Cnt_p10_carry_i_1_n_0;
  wire Cnt_p10_carry_i_2_n_0;
  wire Cnt_p10_carry_i_3_n_0;
  wire Cnt_p10_carry_i_4_n_0;
  wire Cnt_p10_carry_n_0;
  wire Cnt_p10_carry_n_1;
  wire Cnt_p10_carry_n_2;
  wire Cnt_p10_carry_n_3;
  wire [0:0]E;
  wire FIFO_Full_i_2_n_0;
  wire [2:0]\INFERRED_GEN.cnt_i_reg[2]_rep_0 ;
  wire [8:0]Q;
  wire [0:0]S;
  wire [1:0]addr;
  wire [8:0]addr_i_p1;
  wire bus2ip_reset;
  wire fifo_full_p1;
  wire p_0_out;
  wire s_axi_aclk;
  wire s_axi_mem_rready;
  wire s_axi_mem_rvalid;
  wire [3:0]NLW_Cnt_p10_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_Cnt_p10_carry__1_O_UNCONNECTED;

  CARRY4 Cnt_p10_carry
       (.CI(1'b0),
        .CO({Cnt_p10_carry_n_0,Cnt_p10_carry_n_1,Cnt_p10_carry_n_2,Cnt_p10_carry_n_3}),
        .CYINIT(Cnt_p10_carry_i_1_n_0),
        .DI(Q[3:0]),
        .O(addr_i_p1[3:0]),
        .S({Cnt_p10_carry_i_2_n_0,Cnt_p10_carry_i_3_n_0,Cnt_p10_carry_i_4_n_0,S}));
  CARRY4 Cnt_p10_carry__0
       (.CI(Cnt_p10_carry_n_0),
        .CO({Cnt_p10_carry__0_n_0,Cnt_p10_carry__0_n_1,Cnt_p10_carry__0_n_2,Cnt_p10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(addr_i_p1[7:4]),
        .S({Cnt_p10_carry__0_i_1_n_0,Cnt_p10_carry__0_i_2_n_0,Cnt_p10_carry__0_i_3_n_0,Cnt_p10_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_1
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry__0_i_4_n_0));
  CARRY4 Cnt_p10_carry__1
       (.CI(Cnt_p10_carry__0_n_0),
        .CO(NLW_Cnt_p10_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Cnt_p10_carry__1_O_UNCONNECTED[3:1],addr_i_p1[8]}),
        .S({1'b0,1'b0,1'b0,Cnt_p10_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    Cnt_p10_carry__1_i_1
       (.I0(s_axi_mem_rready),
        .I1(Q[8]),
        .O(Cnt_p10_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Cnt_p10_carry_i_1
       (.I0(s_axi_mem_rready),
        .I1(Q[8]),
        .O(Cnt_p10_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry_i_2
       (.I0(Q[3]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry_i_3
       (.I0(Q[2]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    Cnt_p10_carry_i_4
       (.I0(Q[1]),
        .I1(Q[8]),
        .I2(s_axi_mem_rready),
        .O(Cnt_p10_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    FIFO_Full_i_1
       (.I0(FIFO_Full_i_2_n_0),
        .I1(addr_i_p1[0]),
        .I2(addr_i_p1[1]),
        .I3(addr_i_p1[2]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    FIFO_Full_i_2
       (.I0(addr_i_p1[3]),
        .I1(addr_i_p1[4]),
        .I2(addr_i_p1[5]),
        .I3(addr_i_p1[6]),
        .I4(addr_i_p1[8]),
        .I5(addr_i_p1[7]),
        .O(FIFO_Full_i_2_n_0));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[0]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[0]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[0]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(\INFERRED_GEN.cnt_i_reg[2]_rep_0 [0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[1]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[1]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[1]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(\INFERRED_GEN.cnt_i_reg[2]_rep_0 [1]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[2]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[2]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[2]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(\INFERRED_GEN.cnt_i_reg[2]_rep_0 [2]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[3]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[3]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[3]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(A[0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[3]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[3]_rep__0 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(addr[0]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[4]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[4]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[4]_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(A[1]),
        .S(bus2ip_reset));
  (* ORIG_CELL_NAME = "INFERRED_GEN.cnt_i_reg[4]" *) 
  FDSE \INFERRED_GEN.cnt_i_reg[4]_rep__0 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(addr[1]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[5]),
        .Q(Q[5]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[6]),
        .Q(Q[6]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[7]),
        .Q(Q[7]),
        .S(bus2ip_reset));
  FDSE \INFERRED_GEN.cnt_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[8]),
        .Q(Q[8]),
        .S(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \rd_data_count[7]_i_1 
       (.I0(Q[8]),
        .I1(s_axi_mem_rready),
        .I2(p_0_out),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_mem_rvalid_INST_0
       (.I0(Q[8]),
        .O(s_axi_mem_rvalid));
endmodule

(* ORIG_REF_NAME = "counters" *) 
module soc_bd_axi_emc_0_0_counters
   (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    twph_cnt,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ,
    \FSM_sequential_crnt_state_reg[1] ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,
    transaction_done_cmb,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ,
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ,
    twr_cnt_en,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    bus2ip_reset,
    CE,
    s_axi_aclk,
    twph_cnt_en,
    S,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ,
    CE_4,
    CE_5,
    trd_cnt_en,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ,
    CE_9,
    tpacc_cnt_en,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ,
    CE_13,
    twr_rec_cnt_en_int,
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ,
    CE_18,
    \FSM_sequential_crnt_state_reg[1]_0 ,
    \FSM_sequential_crnt_state_reg[1]_1 ,
    \FSM_sequential_crnt_state_reg[1]_2 ,
    \FSM_sequential_crnt_state[1]_i_3 ,
    Q,
    bus2Mem_RdReq,
    temp_bus2ip_cs,
    transaction_done_reg_reg,
    transaction_done_reg_reg_0,
    transaction_done_reg_reg_1,
    \FSM_sequential_crnt_state[1]_i_3_0 );
  output [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  output [0:4]twph_cnt;
  output [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  output [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ;
  output \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  output transaction_done_cmb;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ;
  output \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  input twr_cnt_en;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input bus2ip_reset;
  input CE;
  input s_axi_aclk;
  input twph_cnt_en;
  input S;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  input CE_4;
  input CE_5;
  input trd_cnt_en;
  input \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  input CE_9;
  input tpacc_cnt_en;
  input \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  input CE_13;
  input twr_rec_cnt_en_int;
  input \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ;
  input CE_18;
  input \FSM_sequential_crnt_state_reg[1]_0 ;
  input \FSM_sequential_crnt_state_reg[1]_1 ;
  input \FSM_sequential_crnt_state_reg[1]_2 ;
  input \FSM_sequential_crnt_state[1]_i_3 ;
  input [1:0]Q;
  input bus2Mem_RdReq;
  input temp_bus2ip_cs;
  input transaction_done_reg_reg;
  input transaction_done_reg_reg_0;
  input transaction_done_reg_reg_1;
  input \FSM_sequential_crnt_state[1]_i_3_0 ;

  wire CE;
  wire CE_13;
  wire CE_18;
  wire CE_4;
  wire CE_5;
  wire CE_9;
  wire \FSM_sequential_crnt_state[1]_i_3 ;
  wire \FSM_sequential_crnt_state[1]_i_3_0 ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_crnt_state_reg[1]_0 ;
  wire \FSM_sequential_crnt_state_reg[1]_1 ;
  wire \FSM_sequential_crnt_state_reg[1]_2 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [1:0]Q;
  wire S;
  wire TPACCCNT_I_n_4;
  wire bus2Mem_RdReq;
  wire bus2ip_reset;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire tpacc_cnt_en;
  wire transaction_done_cmb;
  wire transaction_done_reg_reg;
  wire transaction_done_reg_reg_0;
  wire transaction_done_reg_reg_1;
  wire trd_cnt_en;
  wire [0:4]twph_cnt;
  wire twph_cnt_en;
  wire twr_cnt_en;
  wire twr_rec_cnt_en_int;

  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized1 THZCNT_I
       (.CE_18(CE_18),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .transaction_done_reg_reg(transaction_done_reg_reg_1));
  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized1_0 TLZCNT_I
       (.CE_5(CE_5),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .temp_bus2ip_cs(temp_bus2ip_cs),
        .transaction_done_cmb(transaction_done_cmb),
        .transaction_done_reg_reg(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 ),
        .transaction_done_reg_reg_0(transaction_done_reg_reg),
        .transaction_done_reg_reg_1(transaction_done_reg_reg_0));
  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized0 TPACCCNT_I
       (.CE_13(CE_13),
        .\FSM_sequential_crnt_state[1]_i_3 (\FSM_sequential_crnt_state[1]_i_3 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [3]),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [2]),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 (TPACCCNT_I_n_4),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [1]),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 (\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [0]),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .tpacc_cnt_en(tpacc_cnt_en));
  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized0_1 TRDCNT_I
       (.CE_9(CE_9),
        .\FSM_sequential_crnt_state[1]_i_3_0 (\FSM_sequential_crnt_state[1]_i_3_0 ),
        .\FSM_sequential_crnt_state_reg[1] (\FSM_sequential_crnt_state_reg[1] ),
        .\FSM_sequential_crnt_state_reg[1]_0 (TPACCCNT_I_n_4),
        .\FSM_sequential_crnt_state_reg[1]_1 (\FSM_sequential_crnt_state_reg[1]_0 ),
        .\FSM_sequential_crnt_state_reg[1]_2 (\FSM_sequential_crnt_state_reg[1]_1 ),
        .\FSM_sequential_crnt_state_reg[1]_3 (\FSM_sequential_crnt_state_reg[1]_2 ),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 (\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 (\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ),
        .\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 ),
        .Q(Q),
        .\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ),
        .bus2Mem_RdReq(bus2Mem_RdReq),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .trd_cnt_en(trd_cnt_en));
  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized1_2 TWPHCNT_I
       (.\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 (transaction_done_reg_reg_1),
        .CE_4(CE_4),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[1]),
        .\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[2]),
        .\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 (\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 (twph_cnt[4]),
        .\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ),
        .S(S),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .twph_cnt({twph_cnt[0],twph_cnt[3]}),
        .twph_cnt_en(twph_cnt_en));
  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized0_3 TWRCNT_I
       (.CE(CE),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_1 ),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .twr_cnt_en(twr_cnt_en));
  soc_bd_axi_emc_0_0_ld_arith_reg__parameterized2 T_WRREC_CNT_I
       (.\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ),
        .\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 (\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ),
        .\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ),
        .bus2ip_reset(bus2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .twr_rec_cnt_en_int(twr_rec_cnt_en_int));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module soc_bd_axi_emc_0_0_dynshreg_f
   (s_axi_mem_rresp,
    s_axi_mem_rdata,
    bus2ip_rnw,
    Q,
    rd_fifo_wr_en,
    in,
    \INFERRED_GEN.data_reg[255][15]_mux__2_0 ,
    s_axi_aclk,
    A,
    addr);
  output [0:0]s_axi_mem_rresp;
  output [31:0]s_axi_mem_rdata;
  input bus2ip_rnw;
  input [7:0]Q;
  input rd_fifo_wr_en;
  input [0:32]in;
  input [2:0]\INFERRED_GEN.data_reg[255][15]_mux__2_0 ;
  input s_axi_aclk;
  input [1:0]A;
  input [1:0]addr;

  wire [1:0]A;
  wire \INFERRED_GEN.data_reg[255][0]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][0]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][10]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][11]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][12]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][13]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][14]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__1_n_0 ;
  wire [2:0]\INFERRED_GEN.data_reg[255][15]_mux__2_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][15]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][16]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][17]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][18]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][19]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][1]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][20]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][21]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][22]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][23]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][24]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][25]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][26]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][27]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][28]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][29]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][2]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][30]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][31]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][32]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][3]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][4]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][5]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][6]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][7]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][8]_srl32_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_mux_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__0_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__0_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__1_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__1_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__2_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__2_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__3_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__3_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__4_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__4_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__5_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__5_n_1 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32__6_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32_n_0 ;
  wire \INFERRED_GEN.data_reg[255][9]_srl32_n_1 ;
  wire [7:0]Q;
  wire [1:0]addr;
  wire bus2ip_rnw;
  wire [0:32]in;
  wire rd_fifo_wr_en;
  wire s_axi_aclk;
  wire [31:0]s_axi_mem_rdata;
  wire [0:0]s_axi_mem_rresp;
  wire \NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED ;
  wire \NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED ;

  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][0]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][0]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][0]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][0]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][0]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][0]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][0]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[32]),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][0]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][0]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][0]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][0]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][0]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][10]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][10]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][10]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][10]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][10]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][10]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][10]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[22]),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][10]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][10]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][10]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][10]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][10]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][11]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][11]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][11]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][11]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][11]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][11]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][11]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[21]),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][11]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][11]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][11]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][11]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][11]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][12]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][12]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][12]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][12]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][12]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][12]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][12]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[20]),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][12]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][12]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][12]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][12]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][12]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][13]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][13]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][13]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][13]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][13]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][13]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][13]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[19]),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][13]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][13]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][13]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][13]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][13]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][14]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][14]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][14]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][14]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][14]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][14]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][14]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[18]),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][14]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][14]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][14]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][14]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][14]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][15]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][15]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][15]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][15]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][15]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][15]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][15]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[17]),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][15]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][15]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][15]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][15]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][15]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][16]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][16]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][16]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][16]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][16]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][16]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][16]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[16]),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][16]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][16]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][16]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][16]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][16]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][17]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][17]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][17]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][17]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][17]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][17]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][17]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[15]),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][17]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][17]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][17]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][17]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][17]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][18]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][18]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][18]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][18]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][18]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][18]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][18]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[14]),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][18]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][18]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][18]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][18]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][18]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][19]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][19]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][19]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][19]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][19]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][19]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][19]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[13]),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][19]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][19]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][19]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][19]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][19]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][1]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][1]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][1]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][1]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][1]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][1]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][1]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[31]),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][1]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][1]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][1]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][1]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][1]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][20]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][20]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][20]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][20]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][20]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][20]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][20]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[12]),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][20]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][20]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][20]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][20]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][20]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][21]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][21]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][21]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][21]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][21]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][21]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][21]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[11]),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][21]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][21]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][21]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][21]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][21]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][22]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][22]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][22]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][22]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][22]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][22]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][22]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[10]),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][22]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][22]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][22]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][22]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][22]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][23]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][23]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][23]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][23]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][23]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][23]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][23]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[9]),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][23]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][23]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][23]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][23]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][23]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][24]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][24]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][24]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][24]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][24]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][24]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][24]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[8]),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][24]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][24]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][24]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][24]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][24]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][25]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][25]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][25]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][25]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][25]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][25]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][25]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[7]),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][25]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][25]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][25]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][25]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][25]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][26]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][26]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][26]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][26]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][26]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][26]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][26]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[6]),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][26]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][26]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][26]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][26]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][26]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][27]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][27]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][27]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][27]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][27]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][27]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][27]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[5]),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][27]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][27]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][27]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][27]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][27]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][28]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][28]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][28]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][28]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][28]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][28]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][28]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[4]),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][28]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][28]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][28]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][28]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][28]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][29]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][29]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][29]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][29]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][29]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][29]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][29]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[3]),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][29]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][29]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][29]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][29]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][29]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][2]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][2]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][2]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][2]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][2]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][2]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][2]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[30]),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][2]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][2]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][2]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][2]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][2]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][30]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][30]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][30]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][30]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][30]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][30]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][30]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[2]),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][30]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][30]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][30]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][30]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][30]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][31]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][31]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][31]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][31]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][31]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][31]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][31]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[1]),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__0 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__1 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__2 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__3 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__4 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__5 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][31]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][31]_srl32__6 
       (.A({A,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][31]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][31]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][31]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][32]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][32]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][32]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][32]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][32]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][32]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][32]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[0]),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__0 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__1 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__2 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__3 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__4 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__5 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][32]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][32]_srl32__6 
       (.A({addr,Q[2:0]}),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][32]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][32]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][32]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][3]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][3]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][3]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][3]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][3]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][3]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][3]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[29]),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][3]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][3]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][3]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][3]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][3]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][4]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][4]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][4]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][4]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][4]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][4]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][4]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[28]),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][4]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][4]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][4]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][4]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][4]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][5]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][5]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][5]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][5]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][5]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][5]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][5]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[27]),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][5]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][5]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][5]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][5]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][5]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][6]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][6]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][6]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][6]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][6]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][6]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][6]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[26]),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][6]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][6]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][6]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][6]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][6]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][7]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][7]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][7]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][7]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][7]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][7]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][7]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[25]),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][7]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][7]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][7]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][7]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][7]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][8]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][8]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][8]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][8]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][8]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][8]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][8]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[24]),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][8]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][8]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][8]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][8]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][8]_srl32__6_Q31_UNCONNECTED ));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux__0 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__0_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux__1 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__1_n_0 ),
        .S(Q[5]));
  MUXF7 \INFERRED_GEN.data_reg[255][9]_mux__2 
       (.I0(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_srl32__6_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__2_n_0 ),
        .S(Q[5]));
  MUXF8 \INFERRED_GEN.data_reg[255][9]_mux__3 
       (.I0(\INFERRED_GEN.data_reg[255][9]_mux_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_mux__0_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__3_n_0 ),
        .S(Q[6]));
  MUXF8 \INFERRED_GEN.data_reg[255][9]_mux__4 
       (.I0(\INFERRED_GEN.data_reg[255][9]_mux__1_n_0 ),
        .I1(\INFERRED_GEN.data_reg[255][9]_mux__2_n_0 ),
        .O(\INFERRED_GEN.data_reg[255][9]_mux__4_n_0 ),
        .S(Q[6]));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(in[23]),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__0 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__1 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__0_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__2 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__1_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__3 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__2_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__4 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__3_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__5 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__4_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_0 ),
        .Q31(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_1 ));
  (* srl_bus_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255] " *) 
  (* srl_name = "\U0/AXI_EMC_NATIVE_INTERFACE_I/RDATA_FIFO_I/DYNSHREG_F_I/INFERRED_GEN.data_reg[255][9]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \INFERRED_GEN.data_reg[255][9]_srl32__6 
       (.A({Q[4:3],\INFERRED_GEN.data_reg[255][15]_mux__2_0 }),
        .CE(rd_fifo_wr_en),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg[255][9]_srl32__5_n_1 ),
        .Q(\INFERRED_GEN.data_reg[255][9]_srl32__6_n_0 ),
        .Q31(\NLW_INFERRED_GEN.data_reg[255][9]_srl32__6_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[0]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][1]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][1]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[10]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][11]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][11]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[11]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][12]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][12]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[12]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][13]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][13]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[13]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][14]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][14]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[14]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][15]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][15]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[15]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][16]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][16]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[16]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][17]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][17]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[17]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][18]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][18]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[18]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][19]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][19]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[19]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][20]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][20]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[1]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][2]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][2]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[20]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][21]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][21]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[21]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][22]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][22]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[22]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][23]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][23]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[23]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][24]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][24]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[24]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][25]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][25]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[25]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][26]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][26]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[26]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][27]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][27]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[27]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][28]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][28]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[28]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][29]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][29]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[29]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][30]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][30]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[2]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][3]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][3]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[30]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][31]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][31]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[31]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][32]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][32]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[3]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][4]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][4]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[4]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][5]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][5]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[5]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][6]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][6]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[6]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][7]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][7]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[7]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][8]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][8]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[8]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][9]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][9]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_mem_rdata[9]_INST_0 
       (.I0(\INFERRED_GEN.data_reg[255][10]_mux__4_n_0 ),
        .I1(Q[7]),
        .I2(\INFERRED_GEN.data_reg[255][10]_mux__3_n_0 ),
        .O(s_axi_mem_rdata[9]));
  LUT4 #(
    .INIT(16'hA808)) 
    \s_axi_mem_rresp[1]_INST_0 
       (.I0(bus2ip_rnw),
        .I1(\INFERRED_GEN.data_reg[255][0]_mux__3_n_0 ),
        .I2(Q[7]),
        .I3(\INFERRED_GEN.data_reg[255][0]_mux__4_n_0 ),
        .O(s_axi_mem_rresp));
endmodule

(* ORIG_REF_NAME = "io_registers" *) 
module soc_bd_axi_emc_0_0_io_registers
   (mem_wen,
    mem_cen,
    mem_oen,
    mem_rpn,
    mem_ce,
    mem_rnw,
    Q,
    mem_dq_o,
    mem_dq_t,
    mem_qwen,
    mem_ben,
    bus2ip_reset,
    mem_CEN_cmb,
    s_axi_aclk,
    mem_OEN_cmb,
    mem_WEN_cmb,
    Mem_CE_int,
    mem_RNW_cmb,
    mem_dq_i,
    rdclk,
    D,
    \mem_dq_t_reg_reg[0]_0 ,
    \mem_qwen_reg_reg[0]_0 ,
    \mem_ben_reg_reg[0]_0 );
  output mem_wen;
  output [0:0]mem_cen;
  output [0:0]mem_oen;
  output mem_rpn;
  output [0:0]mem_ce;
  output mem_rnw;
  output [31:0]Q;
  output [31:0]mem_dq_o;
  output [31:0]mem_dq_t;
  output [3:0]mem_qwen;
  output [3:0]mem_ben;
  input bus2ip_reset;
  input mem_CEN_cmb;
  input s_axi_aclk;
  input mem_OEN_cmb;
  input mem_WEN_cmb;
  input Mem_CE_int;
  input mem_RNW_cmb;
  input [31:0]mem_dq_i;
  input rdclk;
  input [31:0]D;
  input [0:0]\mem_dq_t_reg_reg[0]_0 ;
  input [3:0]\mem_qwen_reg_reg[0]_0 ;
  input [3:0]\mem_ben_reg_reg[0]_0 ;

  wire [31:0]D;
  wire Mem_CE_int;
  wire [31:0]Q;
  wire bus2ip_reset;
  wire mem_CEN_cmb;
  wire mem_OEN_cmb;
  wire mem_RNW_cmb;
  wire mem_WEN_cmb;
  wire [3:0]mem_ben;
  wire [3:0]\mem_ben_reg_reg[0]_0 ;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire [31:0]mem_dq_i;
  wire [31:0]mem_dq_o;
  wire [31:0]mem_dq_t;
  wire [0:0]\mem_dq_t_reg_reg[0]_0 ;
  wire [0:0]mem_oen;
  wire [3:0]mem_qwen;
  wire [3:0]\mem_qwen_reg_reg[0]_0 ;
  wire mem_rnw;
  wire mem_rpn;
  (* RTL_KEEP = "true" *) wire mem_wen_reg;
  wire rdclk;
  wire s_axi_aclk;

  assign mem_wen = mem_wen_reg;
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[0] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[7]),
        .Q(Q[31]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[10] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[13]),
        .Q(Q[21]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[11] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[12]),
        .Q(Q[20]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[12] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[11]),
        .Q(Q[19]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[13] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[10]),
        .Q(Q[18]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[14] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[9]),
        .Q(Q[17]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[15] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[8]),
        .Q(Q[16]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[16] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[23]),
        .Q(Q[15]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[17] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[22]),
        .Q(Q[14]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[18] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[21]),
        .Q(Q[13]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[19] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[20]),
        .Q(Q[12]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[1] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[6]),
        .Q(Q[30]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[20] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[19]),
        .Q(Q[11]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[21] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[18]),
        .Q(Q[10]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[22] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[17]),
        .Q(Q[9]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[23] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[16]),
        .Q(Q[8]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[24] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[31]),
        .Q(Q[7]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[25] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[30]),
        .Q(Q[6]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[26] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[29]),
        .Q(Q[5]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[27] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[28]),
        .Q(Q[4]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[28] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[27]),
        .Q(Q[3]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[29] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[26]),
        .Q(Q[2]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[2] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[5]),
        .Q(Q[29]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[30] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[25]),
        .Q(Q[1]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[31] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[24]),
        .Q(Q[0]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[3] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[4]),
        .Q(Q[28]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[4] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[3]),
        .Q(Q[27]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[5] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[2]),
        .Q(Q[26]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[6] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[1]),
        .Q(Q[25]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[7] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[0]),
        .Q(Q[24]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[8] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[15]),
        .Q(Q[23]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \Mem_DQ_I_v_reg[9] 
       (.C(rdclk),
        .CE(1'b1),
        .D(mem_dq_i[14]),
        .Q(Q[22]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_ben_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_ben_reg_reg[0]_0 [3]),
        .Q(mem_ben[0]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_ben_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_ben_reg_reg[0]_0 [2]),
        .Q(mem_ben[1]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_ben_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_ben_reg_reg[0]_0 [1]),
        .Q(mem_ben[2]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_ben_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_ben_reg_reg[0]_0 [0]),
        .Q(mem_ben[3]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_ce_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Mem_CE_int),
        .Q(mem_ce),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_cen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_CEN_cmb),
        .Q(mem_cen),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(mem_dq_o[7]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(mem_dq_o[13]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(mem_dq_o[12]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(mem_dq_o[11]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(mem_dq_o[10]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(mem_dq_o[9]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(mem_dq_o[8]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(mem_dq_o[23]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(mem_dq_o[22]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(mem_dq_o[21]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(mem_dq_o[20]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(mem_dq_o[6]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(mem_dq_o[19]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(mem_dq_o[18]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(mem_dq_o[17]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(mem_dq_o[16]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(mem_dq_o[31]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(mem_dq_o[30]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(mem_dq_o[29]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(mem_dq_o[28]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(mem_dq_o[27]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(mem_dq_o[26]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(mem_dq_o[5]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(mem_dq_o[25]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(mem_dq_o[24]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(mem_dq_o[4]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(mem_dq_o[3]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(mem_dq_o[2]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(mem_dq_o[1]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(mem_dq_o[0]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(mem_dq_o[15]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE \mem_dq_o_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(mem_dq_o[14]),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[7]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[13]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[12]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[11]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[10]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[9]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[8]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[23]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[22]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[21]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[20]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[6]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[19]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[18]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[17]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[16]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[31]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[30]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[29]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[28]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[27]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[26]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[5]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[25]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[24]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[4]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[3]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[2]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[1]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[0]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[15]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_dq_t_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_dq_t_reg_reg[0]_0 ),
        .Q(mem_dq_t[14]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_oen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_OEN_cmb),
        .Q(mem_oen),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_qwen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_qwen_reg_reg[0]_0 [3]),
        .Q(mem_qwen[0]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_qwen_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_qwen_reg_reg[0]_0 [2]),
        .Q(mem_qwen[1]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_qwen_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_qwen_reg_reg[0]_0 [1]),
        .Q(mem_qwen[2]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDSE \mem_qwen_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mem_qwen_reg_reg[0]_0 [0]),
        .Q(mem_qwen[3]),
        .S(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE mem_rnw_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_RNW_cmb),
        .Q(mem_rnw),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  FDRE mem_rpn_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(mem_rpn),
        .R(bus2ip_reset));
  (* IOB = "TRUE" *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE mem_wen_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_WEN_cmb),
        .Q(mem_wen_reg),
        .S(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "ipic_if" *) 
module soc_bd_axi_emc_0_0_ipic_if
   (ip2bus_rdack,
    pend_rdreq,
    pend_wrreq,
    pend_wrreq_reg_0,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ,
    \FSM_sequential_crnt_state_reg[1] ,
    rd_fifo_wr_en,
    \IP2Bus_Data_reg[0]_0 ,
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ,
    reset_fifo,
    CE,
    s_axi_aclk,
    bus2ip_reset,
    IP2Bus_RdAck0,
    pend_rdreq_reg_0,
    pend_wrreq_reg_1,
    \FSM_sequential_emc_addr_ps[0]_i_5 ,
    \FSM_sequential_emc_addr_ps[0]_i_5_0 ,
    bus2ip_wrreq_i,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    \burst_addr_cnt[7]_i_3 ,
    Q,
    \burst_addr_cnt[7]_i_3_0 ,
    temp_bus2ip_cs,
    D);
  output ip2bus_rdack;
  output pend_rdreq;
  output pend_wrreq;
  output pend_wrreq_reg_0;
  output \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output rd_fifo_wr_en;
  output [31:0]\IP2Bus_Data_reg[0]_0 ;
  input \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ;
  input reset_fifo;
  input CE;
  input s_axi_aclk;
  input bus2ip_reset;
  input IP2Bus_RdAck0;
  input pend_rdreq_reg_0;
  input pend_wrreq_reg_1;
  input \FSM_sequential_emc_addr_ps[0]_i_5 ;
  input \FSM_sequential_emc_addr_ps[0]_i_5_0 ;
  input bus2ip_wrreq_i;
  input [7:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  input \burst_addr_cnt[7]_i_3 ;
  input [0:0]Q;
  input \burst_addr_cnt[7]_i_3_0 ;
  input temp_bus2ip_cs;
  input [31:0]D;

  wire CE;
  wire [31:0]D;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_emc_addr_ps[0]_i_5 ;
  wire \FSM_sequential_emc_addr_ps[0]_i_5_0 ;
  wire [31:0]\IP2Bus_Data_reg[0]_0 ;
  wire IP2Bus_RdAck0;
  wire [7:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ;
  wire [0:0]Q;
  wire \burst_addr_cnt[7]_i_3 ;
  wire \burst_addr_cnt[7]_i_3_0 ;
  wire bus2ip_reset;
  wire bus2ip_wrreq_i;
  wire ip2bus_rdack;
  wire pend_rdreq;
  wire pend_rdreq_reg_0;
  wire pend_wrreq;
  wire pend_wrreq_reg_0;
  wire pend_wrreq_reg_1;
  wire rd_fifo_wr_en;
  wire reset_fifo;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;

  soc_bd_axi_emc_0_0_ld_arith_reg BURST_CNT
       (.CE(CE),
        .\FSM_sequential_crnt_state_reg[1] (\FSM_sequential_crnt_state_reg[1] ),
        .\FSM_sequential_emc_addr_ps[0]_i_5 (\FSM_sequential_emc_addr_ps[0]_i_5 ),
        .\FSM_sequential_emc_addr_ps[0]_i_5_0 (\FSM_sequential_emc_addr_ps[0]_i_5_0 ),
        .\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 ),
        .\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 (\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 ),
        .Q(Q),
        .\burst_addr_cnt[7]_i_3 (\burst_addr_cnt[7]_i_3 ),
        .\burst_addr_cnt[7]_i_3_0 (\burst_addr_cnt[7]_i_3_0 ),
        .bus2ip_wrreq_i(bus2ip_wrreq_i),
        .pend_wrreq(pend_wrreq),
        .pend_wrreq_reg(pend_wrreq_reg_0),
        .reset_fifo(reset_fifo),
        .s_axi_aclk(s_axi_aclk));
  LUT2 #(
    .INIT(4'h8)) 
    \INFERRED_GEN.data_reg[255][0]_srl32_i_1 
       (.I0(ip2bus_rdack),
        .I1(temp_bus2ip_cs),
        .O(rd_fifo_wr_en));
  FDRE \IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\IP2Bus_Data_reg[0]_0 [31]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\IP2Bus_Data_reg[0]_0 [21]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\IP2Bus_Data_reg[0]_0 [20]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\IP2Bus_Data_reg[0]_0 [19]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\IP2Bus_Data_reg[0]_0 [18]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\IP2Bus_Data_reg[0]_0 [17]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\IP2Bus_Data_reg[0]_0 [16]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\IP2Bus_Data_reg[0]_0 [15]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\IP2Bus_Data_reg[0]_0 [14]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\IP2Bus_Data_reg[0]_0 [13]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\IP2Bus_Data_reg[0]_0 [12]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\IP2Bus_Data_reg[0]_0 [30]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\IP2Bus_Data_reg[0]_0 [11]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\IP2Bus_Data_reg[0]_0 [10]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\IP2Bus_Data_reg[0]_0 [9]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\IP2Bus_Data_reg[0]_0 [8]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\IP2Bus_Data_reg[0]_0 [7]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\IP2Bus_Data_reg[0]_0 [6]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\IP2Bus_Data_reg[0]_0 [5]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\IP2Bus_Data_reg[0]_0 [4]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\IP2Bus_Data_reg[0]_0 [3]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\IP2Bus_Data_reg[0]_0 [2]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\IP2Bus_Data_reg[0]_0 [29]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\IP2Bus_Data_reg[0]_0 [1]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\IP2Bus_Data_reg[0]_0 [0]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\IP2Bus_Data_reg[0]_0 [28]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\IP2Bus_Data_reg[0]_0 [27]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\IP2Bus_Data_reg[0]_0 [26]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\IP2Bus_Data_reg[0]_0 [25]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\IP2Bus_Data_reg[0]_0 [24]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\IP2Bus_Data_reg[0]_0 [23]),
        .R(bus2ip_reset));
  FDRE \IP2Bus_Data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\IP2Bus_Data_reg[0]_0 [22]),
        .R(bus2ip_reset));
  FDRE IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck0),
        .Q(ip2bus_rdack),
        .R(bus2ip_reset));
  FDRE pend_rdreq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pend_rdreq_reg_0),
        .Q(pend_rdreq),
        .R(bus2ip_reset));
  FDRE pend_wrreq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pend_wrreq_reg_1),
        .Q(pend_wrreq),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg
   (pend_wrreq_reg,
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ,
    \FSM_sequential_crnt_state_reg[1] ,
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ,
    reset_fifo,
    CE,
    s_axi_aclk,
    \FSM_sequential_emc_addr_ps[0]_i_5 ,
    \FSM_sequential_emc_addr_ps[0]_i_5_0 ,
    pend_wrreq,
    bus2ip_wrreq_i,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    \burst_addr_cnt[7]_i_3 ,
    Q,
    \burst_addr_cnt[7]_i_3_0 );
  output pend_wrreq_reg;
  output \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ;
  output \FSM_sequential_crnt_state_reg[1] ;
  input \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ;
  input reset_fifo;
  input CE;
  input s_axi_aclk;
  input \FSM_sequential_emc_addr_ps[0]_i_5 ;
  input \FSM_sequential_emc_addr_ps[0]_i_5_0 ;
  input pend_wrreq;
  input bus2ip_wrreq_i;
  input [7:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  input \burst_addr_cnt[7]_i_3 ;
  input [0:0]Q;
  input \burst_addr_cnt[7]_i_3_0 ;

  wire CE;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_emc_addr_ps[0]_i_5 ;
  wire \FSM_sequential_emc_addr_ps[0]_i_5_0 ;
  wire [7:0]\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ;
  wire [0:0]Q;
  wire S;
  wire \burst_addr_cnt[7]_i_3 ;
  wire \burst_addr_cnt[7]_i_3_0 ;
  wire [0:7]burst_cnt_i;
  wire bus2ip_wrreq_i;
  wire [7:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire gen_cry_kill_n_4;
  wire gen_cry_kill_n_5;
  wire gen_cry_kill_n_6;
  wire pend_wrreq;
  wire pend_wrreq_reg;
  wire reset_fifo;
  wire s_axi_aclk;
  wire s_axi_mem_wready_INST_0_i_11_n_0;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire xorcy_out_5;
  wire xorcy_out_6;
  wire xorcy_out_7;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hEF00EFFF)) 
    \FSM_sequential_emc_addr_ps[1]_i_9 
       (.I0(\FSM_sequential_emc_addr_ps[0]_i_5 ),
        .I1(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\burst_addr_cnt[7]_i_3 ),
        .I3(Q),
        .I4(\burst_addr_cnt[7]_i_3_0 ),
        .O(\FSM_sequential_crnt_state_reg[1] ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \FSM_sequential_emc_addr_ps[2]_i_7 
       (.I0(\FSM_sequential_emc_addr_ps[0]_i_5 ),
        .I1(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\FSM_sequential_emc_addr_ps[0]_i_5_0 ),
        .I3(pend_wrreq),
        .I4(bus2ip_wrreq_i),
        .O(pend_wrreq_reg));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_7),
        .Q(burst_cnt_i[0]),
        .R(reset_fifo));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__1 
       (.I0(burst_cnt_i[0]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [7]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_6),
        .Q(burst_cnt_i[1]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(burst_cnt_i[1]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_6));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__1 
       (.I0(burst_cnt_i[1]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [6]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_5),
        .Q(burst_cnt_i[2]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(burst_cnt_i[2]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_5));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__1 
       (.I0(burst_cnt_i[2]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [5]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_4),
        .Q(burst_cnt_i[3]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(burst_cnt_i[3]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry[7:5]}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_6,gen_cry_kill_n_5,gen_cry_kill_n_4}),
        .O({xorcy_out_7,xorcy_out_6,xorcy_out_5,xorcy_out_4}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__1 
       (.I0(burst_cnt_i[3]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [4]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
        .Q(burst_cnt_i[4]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(burst_cnt_i[4]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_3));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__1 
       (.I0(burst_cnt_i[4]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [3]),
        .O(\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(burst_cnt_i[5]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[5].MULT_AND_i1 
       (.I0(burst_cnt_i[5]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_2));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1 
       (.I0(burst_cnt_i[5]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [2]),
        .O(\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(burst_cnt_i[6]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[6].MULT_AND_i1 
       (.I0(burst_cnt_i[6]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_1));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1 
       (.I0(burst_cnt_i[6]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [1]),
        .O(\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(burst_cnt_i[7]),
        .R(reset_fifo));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[7].MULT_AND_i1 
       (.I0(burst_cnt_i[7]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .O(gen_cry_kill_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry[4:1]),
        .CYINIT(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT3 #(
    .INIT(8'hB8)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1 
       (.I0(burst_cnt_i[7]),
        .I1(\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 [0]),
        .O(S));
  LUT4 #(
    .INIT(16'h0001)) 
    s_axi_mem_wready_INST_0_i_11
       (.I0(burst_cnt_i[6]),
        .I1(burst_cnt_i[7]),
        .I2(burst_cnt_i[4]),
        .I3(burst_cnt_i[5]),
        .O(s_axi_mem_wready_INST_0_i_11_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    s_axi_mem_wready_INST_0_i_4
       (.I0(burst_cnt_i[3]),
        .I1(burst_cnt_i[2]),
        .I2(burst_cnt_i[1]),
        .I3(burst_cnt_i[0]),
        .I4(s_axi_mem_wready_INST_0_i_11_n_0),
        .O(\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_0 ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized0
   (\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,
    tpacc_cnt_en,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ,
    bus2ip_reset,
    CE_13,
    s_axi_aclk,
    \FSM_sequential_crnt_state[1]_i_3 );
  output \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  output [0:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  input tpacc_cnt_en;
  input \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  input bus2ip_reset;
  input CE_13;
  input s_axi_aclk;
  input \FSM_sequential_crnt_state[1]_i_3 ;

  wire CE_13;
  wire \FSM_sequential_crnt_state[1]_i_3 ;
  wire [0:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  wire S;
  wire bus2ip_reset;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire s_axi_aclk;
  wire [4:4]tpacc_cnt;
  wire tpacc_cnt_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_crnt_state[1]_i_6 
       (.I0(\FSM_sequential_crnt_state[1]_i_3 ),
        .I1(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I3(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I5(tpacc_cnt),
        .O(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_crnt_state[4]_i_3 
       (.I0(tpacc_cnt),
        .I1(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_12 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(tpacc_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(tpacc_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__0 
       (.I0(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(tpacc_cnt_en),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_13),
        .D(xorcy_out_0),
        .Q(tpacc_cnt),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(tpacc_cnt),
        .I1(tpacc_cnt_en),
        .O(gen_cry_kill_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(tpacc_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_11 ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_10 ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__0 
       (.I0(tpacc_cnt),
        .I1(tpacc_cnt_en),
        .O(S));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized0_1
   (\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ,
    \FSM_sequential_crnt_state_reg[1] ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,
    trd_cnt_en,
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ,
    bus2ip_reset,
    CE_9,
    s_axi_aclk,
    \FSM_sequential_crnt_state_reg[1]_0 ,
    \FSM_sequential_crnt_state_reg[1]_1 ,
    \FSM_sequential_crnt_state_reg[1]_2 ,
    \FSM_sequential_crnt_state_reg[1]_3 ,
    Q,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 ,
    bus2Mem_RdReq,
    \FSM_sequential_crnt_state[1]_i_3_0 );
  output \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  output [0:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  input trd_cnt_en;
  input \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  input bus2ip_reset;
  input CE_9;
  input s_axi_aclk;
  input \FSM_sequential_crnt_state_reg[1]_0 ;
  input \FSM_sequential_crnt_state_reg[1]_1 ;
  input \FSM_sequential_crnt_state_reg[1]_2 ;
  input \FSM_sequential_crnt_state_reg[1]_3 ;
  input [1:0]Q;
  input \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 ;
  input bus2Mem_RdReq;
  input \FSM_sequential_crnt_state[1]_i_3_0 ;

  wire CE_9;
  wire \FSM_sequential_crnt_state[1]_i_3_0 ;
  wire \FSM_sequential_crnt_state[1]_i_8_n_0 ;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_crnt_state_reg[1]_0 ;
  wire \FSM_sequential_crnt_state_reg[1]_1 ;
  wire \FSM_sequential_crnt_state_reg[1]_2 ;
  wire \FSM_sequential_crnt_state_reg[1]_3 ;
  wire [0:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  wire [1:0]Q;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 ;
  wire S;
  wire bus2Mem_RdReq;
  wire bus2ip_reset;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire s_axi_aclk;
  wire [4:4]trd_cnt;
  wire trd_cnt_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000BBBBBBB0)) 
    \FSM_sequential_crnt_state[1]_i_3 
       (.I0(\FSM_sequential_crnt_state_reg[1]_0 ),
        .I1(\FSM_sequential_crnt_state_reg[1]_1 ),
        .I2(\FSM_sequential_crnt_state_reg[1]_2 ),
        .I3(\FSM_sequential_crnt_state_reg[1]_3 ),
        .I4(\FSM_sequential_crnt_state[1]_i_8_n_0 ),
        .I5(\FSM_sequential_crnt_state_reg[1] ),
        .O(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_1 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_sequential_crnt_state[1]_i_8 
       (.I0(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .I3(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(trd_cnt),
        .I5(\FSM_sequential_crnt_state[1]_i_3_0 ),
        .O(\FSM_sequential_crnt_state[1]_i_8_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_9),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_9),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(trd_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_9),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(trd_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_9),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .S(bus2ip_reset));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1 
       (.I0(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(trd_cnt_en),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE_9),
        .D(xorcy_out_0),
        .Q(trd_cnt),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(trd_cnt),
        .I1(trd_cnt_en),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_3__0 
       (.I0(trd_cnt),
        .I1(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ),
        .I2(\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_0 ),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(\PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1_0 ),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(trd_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1_1 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1 
       (.I0(trd_cnt),
        .I1(trd_cnt_en),
        .O(S));
  LUT5 #(
    .INIT(32'h00002F23)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_5 
       (.I0(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 ),
        .I4(bus2Mem_RdReq),
        .O(\FSM_sequential_crnt_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized0_3
   (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ,
    twr_cnt_en,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    bus2ip_reset,
    CE,
    s_axi_aclk);
  output [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  input twr_cnt_en;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input bus2ip_reset;
  input CE;
  input s_axi_aclk;

  wire CE;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ;
  wire S;
  wire bus2ip_reset;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire [4:4]p_0_in;
  wire s_axi_aclk;
  wire twr_cnt_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(p_0_in),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(p_0_in),
        .I1(twr_cnt_en),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_2__1 
       (.I0(p_0_in),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(twr_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__5 
       (.I0(p_0_in),
        .I1(twr_cnt_en),
        .O(S));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized1
   (\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ,
    bus2ip_reset,
    CE_18,
    s_axi_aclk,
    transaction_done_reg_reg);
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  input bus2ip_reset;
  input CE_18;
  input s_axi_aclk;
  input transaction_done_reg_reg;

  wire CE_18;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ;
  wire S;
  wire bus2ip_reset;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire s_axi_aclk;
  wire [0:4]thz_cnt;
  wire transaction_done_reg_reg;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_18),
        .D(xorcy_out_4),
        .Q(thz_cnt[0]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT5 #(
    .INIT(32'h33333332)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__3 
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_18),
        .D(xorcy_out_3),
        .Q(thz_cnt[1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(thz_cnt[1]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_3));
  LUT5 #(
    .INIT(32'h55555554)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__3 
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_18),
        .D(xorcy_out_2),
        .Q(thz_cnt[2]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(thz_cnt[2]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_2));
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__3 
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_18),
        .D(xorcy_out_1),
        .Q(thz_cnt[3]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(thz_cnt[3]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_1));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__3 
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_18),
        .D(xorcy_out_0),
        .Q(thz_cnt[4]),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_3 
       (.I0(thz_cnt[4]),
        .I1(thz_cnt[3]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[0]),
        .I4(thz_cnt[1]),
        .O(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(thz_cnt[4]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__2 
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(\PERBIT_GEN[4].MULT_AND_i1_i_1__2_n_0 ),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__3 
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .O(S));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    s_axi_mem_wready_INST_0_i_3
       (.I0(thz_cnt[1]),
        .I1(thz_cnt[0]),
        .I2(thz_cnt[2]),
        .I3(thz_cnt[3]),
        .I4(thz_cnt[4]),
        .I5(transaction_done_reg_reg),
        .O(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized1_0
   (transaction_done_cmb,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ,
    bus2ip_reset,
    CE_5,
    s_axi_aclk,
    temp_bus2ip_cs,
    bus2Mem_RdReq,
    transaction_done_reg_reg,
    transaction_done_reg_reg_0,
    transaction_done_reg_reg_1);
  output transaction_done_cmb;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  input bus2ip_reset;
  input CE_5;
  input s_axi_aclk;
  input temp_bus2ip_cs;
  input bus2Mem_RdReq;
  input transaction_done_reg_reg;
  input transaction_done_reg_reg_0;
  input transaction_done_reg_reg_1;

  wire CE_5;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ;
  wire S;
  wire bus2Mem_RdReq;
  wire bus2ip_reset;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire s_axi_aclk;
  wire temp_bus2ip_cs;
  wire [0:4]tlz_cnt;
  wire transaction_done_cmb;
  wire transaction_done_reg_reg;
  wire transaction_done_reg_reg_0;
  wire transaction_done_reg_reg_1;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_4),
        .Q(tlz_cnt[0]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT5 #(
    .INIT(32'h33333332)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__4 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_3),
        .Q(tlz_cnt[1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(tlz_cnt[1]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_3));
  LUT5 #(
    .INIT(32'h55555554)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__4 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_2),
        .Q(tlz_cnt[2]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(tlz_cnt[2]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_2));
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__4 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_1),
        .Q(tlz_cnt[3]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(tlz_cnt[3]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_1));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__4 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_5),
        .D(xorcy_out_0),
        .Q(tlz_cnt[4]),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2__0 
       (.I0(tlz_cnt[4]),
        .I1(tlz_cnt[3]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[0]),
        .I4(tlz_cnt[1]),
        .O(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_5__0 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .I5(temp_bus2ip_cs),
        .O(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(tlz_cnt[4]),
        .I1(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__3 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(\PERBIT_GEN[4].MULT_AND_i1_i_1__3_n_0 ),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__4 
       (.I0(tlz_cnt[1]),
        .I1(tlz_cnt[0]),
        .I2(tlz_cnt[2]),
        .I3(tlz_cnt[3]),
        .I4(tlz_cnt[4]),
        .O(S));
  LUT6 #(
    .INIT(64'h0000FFFF0000557F)) 
    transaction_done_reg_i_1
       (.I0(temp_bus2ip_cs),
        .I1(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I2(bus2Mem_RdReq),
        .I3(transaction_done_reg_reg),
        .I4(transaction_done_reg_reg_0),
        .I5(transaction_done_reg_reg_1),
        .O(transaction_done_cmb));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized1_2
   (\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ,
    twph_cnt,
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ,
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ,
    twph_cnt_en,
    S,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ,
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ,
    bus2ip_reset,
    CE_4,
    s_axi_aclk,
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 );
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  output [1:0]twph_cnt;
  output \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ;
  output \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ;
  input twph_cnt_en;
  input S;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  input \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  input bus2ip_reset;
  input CE_4;
  input s_axi_aclk;
  input \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 ;

  wire \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 ;
  wire CE_4;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ;
  wire S;
  wire bus2ip_reset;
  wire [4:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire s_axi_aclk;
  wire [1:0]twph_cnt;
  wire twph_cnt_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_4),
        .Q(twph_cnt[1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[0].XORCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_O_UNCONNECTED [3:1],xorcy_out_4}),
        .S({\NLW_PERBIT_GEN[0].XORCY_i1_CARRY4_S_UNCONNECTED [3:1],\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_3 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_1),
        .Q(twph_cnt[0]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE_4),
        .D(xorcy_out_0),
        .Q(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt_en),
        .O(gen_cry_kill_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_2__0 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt[0]),
        .I2(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(twph_cnt[1]),
        .I4(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .O(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_1 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[4].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry),
        .CYINIT(twph_cnt_en),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_1 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_2 ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_1 ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_0 ,S}));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    s_axi_mem_wready_INST_0_i_9
       (.I0(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(twph_cnt[1]),
        .I2(\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(twph_cnt[0]),
        .I4(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_0 ),
        .I5(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_2 ),
        .O(\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1_1 ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module soc_bd_axi_emc_0_0_ld_arith_reg__parameterized2
   (\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ,
    twr_rec_cnt_en_int,
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ,
    bus2ip_reset,
    s_axi_aclk);
  output [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ;
  input twr_rec_cnt_en_int;
  input \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ;
  input \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ;
  input bus2ip_reset;
  input s_axi_aclk;

  wire [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_3_n_0 ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_4_n_0 ;
  wire \PERBIT_GEN[15].MULT_AND_i1_i_5_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire S;
  wire bus2ip_reset;
  wire [15:1]cry;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_10;
  wire gen_cry_kill_n_11;
  wire gen_cry_kill_n_12;
  wire gen_cry_kill_n_13;
  wire gen_cry_kill_n_14;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire gen_cry_kill_n_4;
  wire gen_cry_kill_n_5;
  wire gen_cry_kill_n_6;
  wire gen_cry_kill_n_7;
  wire gen_cry_kill_n_8;
  wire gen_cry_kill_n_9;
  wire s_axi_aclk;
  wire [15:15]twr_rec_cnt;
  wire twr_rec_cnt_en_int;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_10;
  wire xorcy_out_11;
  wire xorcy_out_12;
  wire xorcy_out_13;
  wire xorcy_out_14;
  wire xorcy_out_15;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire xorcy_out_5;
  wire xorcy_out_6;
  wire xorcy_out_7;
  wire xorcy_out_8;
  wire xorcy_out_9;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_15),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [14]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[10].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_5),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[10].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_4),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(cry[4]),
        .CO(cry[8:5]),
        .CYINIT(1'b0),
        .DI({gen_cry_kill_n_7,gen_cry_kill_n_6,gen_cry_kill_n_5,gen_cry_kill_n_4}),
        .O({xorcy_out_7,xorcy_out_6,xorcy_out_5,xorcy_out_4}),
        .S({\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[12].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_3),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[12].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_2),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[13].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_1),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .S(bus2ip_reset));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[14].MUXCY_i1_i_1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I1(twr_rec_cnt_en_int),
        .O(\PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_0),
        .Q(twr_rec_cnt),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[15].MULT_AND_i1 
       (.I0(twr_rec_cnt),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_2 
       (.I0(\PERBIT_GEN[15].MULT_AND_i1_i_3_n_0 ),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [0]),
        .I2(twr_rec_cnt),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [2]),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [1]),
        .I5(\PERBIT_GEN[15].MULT_AND_i1_i_4_n_0 ),
        .O(\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_3 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [4]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [3]),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_4 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [14]),
        .I4(\PERBIT_GEN[15].MULT_AND_i1_i_5_n_0 ),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_5 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .O(\PERBIT_GEN[15].MULT_AND_i1_i_5_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[15].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO(cry[4:1]),
        .CYINIT(twr_rec_cnt_en_int),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,\PERBIT_GEN[13].FF_RST1_GEN.FDSE_i1_0 ,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[14].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT2 #(
    .INIT(4'hB)) 
    \PERBIT_GEN[15].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt),
        .I1(twr_rec_cnt_en_int),
        .O(S));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_14),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [13]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_14));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_13),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [12]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_13));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_12),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [11]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_12));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(cry[12]),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry[15:13]}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_14,gen_cry_kill_n_13,gen_cry_kill_n_12}),
        .O({xorcy_out_15,xorcy_out_14,xorcy_out_13,xorcy_out_12}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_17 ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_16 ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_15 ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_14 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_11),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [10]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[5].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_10),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[5].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [9]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[6].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_9),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[6].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [8]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[7].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_8),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[7].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [7]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_8));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(cry[8]),
        .CO(cry[12:9]),
        .CYINIT(1'b0),
        .DI({gen_cry_kill_n_11,gen_cry_kill_n_10,gen_cry_kill_n_9,gen_cry_kill_n_8}),
        .O({xorcy_out_11,xorcy_out_10,xorcy_out_9,xorcy_out_8}),
        .S({\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_7),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[8].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [6]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[9].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(twr_rec_cnt_en_int),
        .D(xorcy_out_6),
        .Q(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .S(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[9].MULT_AND_i1 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 [5]),
        .I1(twr_rec_cnt_en_int),
        .O(gen_cry_kill_n_6));
endmodule

(* ORIG_REF_NAME = "mem_state_machine" *) 
module soc_bd_axi_emc_0_0_mem_state_machine
   (transaction_done_i,
    read_ack,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    Q,
    \FSM_sequential_crnt_state_reg[0]_0 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    S,
    CE,
    s_axi_mem_arvalid_0,
    \FSM_sequential_crnt_state_reg[4]_0 ,
    \FSM_sequential_crnt_state_reg[4]_1 ,
    twr_cnt_en,
    \FSM_sequential_crnt_state_reg[0]_1 ,
    mem_OEN_cmb,
    \FSM_sequential_crnt_state_reg[1]_0 ,
    mem_CEN_cmb,
    Mem_CE_int,
    mem_dqt_t_d_reg,
    \FSM_sequential_crnt_state_reg[4]_2 ,
    mem_WEN_cmb,
    CE_0,
    \FSM_sequential_crnt_state_reg[4]_3 ,
    \FSM_sequential_crnt_state_reg[0]_2 ,
    CE_1,
    tpacc_cnt_en,
    new_page_d1_reg_0,
    CE_2,
    trd_cnt_en,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ,
    data_strobe_c,
    \burst_addr_cnt_reg[5] ,
    \FSM_sequential_crnt_state_reg[0]_3 ,
    \FSM_sequential_crnt_state_reg[1]_1 ,
    \FSM_sequential_crnt_state_reg[2]_0 ,
    CE_9,
    ip2bus_addrack,
    \FSM_sequential_crnt_state_reg[1]_2 ,
    \FSM_sequential_crnt_state_reg[1]_3 ,
    s_axi_mem_wvalid_0,
    \FSM_sequential_crnt_state_reg[1]_4 ,
    read_break_reg_d1_reg_0,
    CE_10,
    \FSM_sequential_crnt_state_reg[2]_1 ,
    mem_RNW_cmb,
    \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ,
    twr_rec_cnt_en_int,
    \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_11 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14 ,
    twph_cnt_en,
    CE_15,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17 ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18 ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19 ,
    \FSM_sequential_crnt_state_reg[2]_2 ,
    \FSM_sequential_crnt_state_reg[2]_3 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ,
    \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ,
    bus2ip_reset,
    s_axi_aclk,
    temp_bus2ip_cs,
    transaction_done_cmb,
    bus2Mem_RdReq,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ,
    twph_cnt,
    s_axi_mem_arvalid,
    rw_flag_reg,
    s_axi_mem_wvalid,
    s_axi_mem_awvalid,
    \FSM_sequential_crnt_state_reg[0]_4 ,
    \FSM_sequential_crnt_state[0]_i_5 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ,
    Bus2IP_RdReq_emc,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ,
    \mem_a_int_reg[0] ,
    mem_dqt_t_d,
    Mem_Ben,
    \FSM_sequential_crnt_state_reg[1]_5 ,
    read_ack_reg_reg_0,
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ,
    read_ack_reg_reg_1,
    \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    s_axi_mem_wlast,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ,
    \FSM_sequential_crnt_state_reg[2]_4 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ,
    \DATA_STORE_GEN[0].WRDATA_REG ,
    bus2ip_rd_req_reg_reg,
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 ,
    bus2ip_rd_req_reg_reg_0,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ,
    addr_sm_ps_IDLE_reg_i_3,
    \FSM_sequential_emc_addr_ps[0]_i_2 ,
    \FSM_sequential_crnt_state_reg[1]_6 ,
    \FSM_sequential_crnt_state_reg[3]_0 ,
    \FSM_sequential_crnt_state[1]_i_5_0 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3 ,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4 ,
    pend_rdreq,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 ,
    pend_wrreq,
    bus2ip_wrreq_i,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 );
  output transaction_done_i;
  output read_ack;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  output [2:0]Q;
  output \FSM_sequential_crnt_state_reg[0]_0 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output S;
  output CE;
  output s_axi_mem_arvalid_0;
  output \FSM_sequential_crnt_state_reg[4]_0 ;
  output \FSM_sequential_crnt_state_reg[4]_1 ;
  output twr_cnt_en;
  output \FSM_sequential_crnt_state_reg[0]_1 ;
  output mem_OEN_cmb;
  output \FSM_sequential_crnt_state_reg[1]_0 ;
  output mem_CEN_cmb;
  output Mem_CE_int;
  output [0:0]mem_dqt_t_d_reg;
  output [3:0]\FSM_sequential_crnt_state_reg[4]_2 ;
  output mem_WEN_cmb;
  output CE_0;
  output \FSM_sequential_crnt_state_reg[4]_3 ;
  output \FSM_sequential_crnt_state_reg[0]_2 ;
  output CE_1;
  output tpacc_cnt_en;
  output new_page_d1_reg_0;
  output CE_2;
  output trd_cnt_en;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5 ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  output data_strobe_c;
  output \burst_addr_cnt_reg[5] ;
  output \FSM_sequential_crnt_state_reg[0]_3 ;
  output \FSM_sequential_crnt_state_reg[1]_1 ;
  output \FSM_sequential_crnt_state_reg[2]_0 ;
  output CE_9;
  output ip2bus_addrack;
  output \FSM_sequential_crnt_state_reg[1]_2 ;
  output \FSM_sequential_crnt_state_reg[1]_3 ;
  output s_axi_mem_wvalid_0;
  output \FSM_sequential_crnt_state_reg[1]_4 ;
  output read_break_reg_d1_reg_0;
  output CE_10;
  output \FSM_sequential_crnt_state_reg[2]_1 ;
  output mem_RNW_cmb;
  output \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  output twr_rec_cnt_en_int;
  output \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_11 ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  output twph_cnt_en;
  output CE_15;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17 ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18 ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19 ;
  output \FSM_sequential_crnt_state_reg[2]_2 ;
  output \FSM_sequential_crnt_state_reg[2]_3 ;
  output \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  output \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  output \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  input bus2ip_reset;
  input s_axi_aclk;
  input temp_bus2ip_cs;
  input transaction_done_cmb;
  input bus2Mem_RdReq;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  input [0:4]twph_cnt;
  input s_axi_mem_arvalid;
  input rw_flag_reg;
  input s_axi_mem_wvalid;
  input s_axi_mem_awvalid;
  input \FSM_sequential_crnt_state_reg[0]_4 ;
  input \FSM_sequential_crnt_state[0]_i_5 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  input Bus2IP_RdReq_emc;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ;
  input \mem_a_int_reg[0] ;
  input mem_dqt_t_d;
  input [0:3]Mem_Ben;
  input \FSM_sequential_crnt_state_reg[1]_5 ;
  input read_ack_reg_reg_0;
  input \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  input read_ack_reg_reg_1;
  input \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  input s_axi_mem_wlast;
  input [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  input \FSM_sequential_crnt_state_reg[2]_4 ;
  input [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ;
  input \DATA_STORE_GEN[0].WRDATA_REG ;
  input bus2ip_rd_req_reg_reg;
  input \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 ;
  input bus2ip_rd_req_reg_reg_0;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  input addr_sm_ps_IDLE_reg_i_3;
  input \FSM_sequential_emc_addr_ps[0]_i_2 ;
  input \FSM_sequential_crnt_state_reg[1]_6 ;
  input \FSM_sequential_crnt_state_reg[3]_0 ;
  input \FSM_sequential_crnt_state[1]_i_5_0 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3 ;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4 ;
  input pend_rdreq;
  input [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 ;
  input pend_wrreq;
  input bus2ip_wrreq_i;
  input [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 ;

  wire \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_3_n_0 ;
  wire \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_4_n_0 ;
  wire \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_5_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_7_n_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  wire Bus2IP_RdReq_d1;
  wire Bus2IP_RdReq_emc;
  wire CE;
  wire CE_0;
  wire CE_1;
  wire CE_10;
  wire CE_15;
  wire CE_2;
  wire CE_9;
  wire \DATA_STORE_GEN[0].WRDATA_REG ;
  wire \FSM_sequential_crnt_state[0]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_5 ;
  wire \FSM_sequential_crnt_state[0]_i_6_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_7_n_0 ;
  wire \FSM_sequential_crnt_state[0]_i_8_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_10_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_12_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_5_0 ;
  wire \FSM_sequential_crnt_state[1]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[1]_i_9_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_10_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_11_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_6_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_7_n_0 ;
  wire \FSM_sequential_crnt_state[2]_i_9_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_3_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_4_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_5_n_0 ;
  wire \FSM_sequential_crnt_state[3]_i_6_n_0 ;
  wire \FSM_sequential_crnt_state[4]_i_1_n_0 ;
  wire \FSM_sequential_crnt_state[4]_i_2_n_0 ;
  wire \FSM_sequential_crnt_state_reg[0]_0 ;
  wire \FSM_sequential_crnt_state_reg[0]_1 ;
  wire \FSM_sequential_crnt_state_reg[0]_2 ;
  wire \FSM_sequential_crnt_state_reg[0]_3 ;
  wire \FSM_sequential_crnt_state_reg[0]_4 ;
  wire \FSM_sequential_crnt_state_reg[1]_0 ;
  wire \FSM_sequential_crnt_state_reg[1]_1 ;
  wire \FSM_sequential_crnt_state_reg[1]_2 ;
  wire \FSM_sequential_crnt_state_reg[1]_3 ;
  wire \FSM_sequential_crnt_state_reg[1]_4 ;
  wire \FSM_sequential_crnt_state_reg[1]_5 ;
  wire \FSM_sequential_crnt_state_reg[1]_6 ;
  wire \FSM_sequential_crnt_state_reg[2]_0 ;
  wire \FSM_sequential_crnt_state_reg[2]_1 ;
  wire \FSM_sequential_crnt_state_reg[2]_2 ;
  wire \FSM_sequential_crnt_state_reg[2]_3 ;
  wire \FSM_sequential_crnt_state_reg[2]_4 ;
  wire \FSM_sequential_crnt_state_reg[3]_0 ;
  wire \FSM_sequential_crnt_state_reg[4]_0 ;
  wire \FSM_sequential_crnt_state_reg[4]_1 ;
  wire [3:0]\FSM_sequential_crnt_state_reg[4]_2 ;
  wire \FSM_sequential_crnt_state_reg[4]_3 ;
  wire \FSM_sequential_emc_addr_ps[0]_i_2 ;
  wire [0:3]Mem_Ben;
  wire Mem_CE_int;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ;
  wire \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3 ;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4 ;
  wire [14:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 ;
  wire [3:0]\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ;
  wire \PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_11 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ;
  wire \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_n_0 ;
  wire \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_6_n_0 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [2:0]Q;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ;
  wire \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2_n_0 ;
  wire S;
  wire addr_sm_ps_IDLE_reg_i_3;
  wire \burst_addr_cnt_reg[5] ;
  wire bus2Mem_RdReq;
  wire bus2ip_rd_req_reg_reg;
  wire bus2ip_rd_req_reg_reg_0;
  wire bus2ip_reset;
  wire bus2ip_wrreq_i;
  wire [4:3]crnt_state;
  wire data_strobe_c;
  wire ip2bus_addrack;
  wire mem_CEN_cmb;
  wire mem_OEN_cmb;
  wire mem_RNW_cmb;
  wire mem_WEN_cmb;
  wire \mem_a_int_reg[0] ;
  wire \mem_ce_reg[0]_i_2_n_0 ;
  wire \mem_ce_reg[0]_i_3_n_0 ;
  wire \mem_ce_reg[0]_i_4_n_0 ;
  wire \mem_ce_reg[0]_i_5_n_0 ;
  wire \mem_ce_reg[0]_i_6_n_0 ;
  wire mem_dqt_t_d;
  wire [0:0]mem_dqt_t_d_reg;
  wire \mem_oen_reg[0]_i_2_n_0 ;
  wire \mem_oen_reg[0]_i_3_n_0 ;
  wire new_page;
  wire new_page_d1;
  wire new_page_d1_i_2_n_0;
  wire new_page_d1_reg_0;
  wire [1:0]p_0_in;
  wire pend_rdreq;
  wire pend_wrreq;
  wire read_ack;
  wire read_ack_reg_reg_0;
  wire read_ack_reg_reg_1;
  wire read_break_reg;
  wire read_break_reg_d1;
  wire read_break_reg_d1_reg_0;
  wire read_complete_cmb;
  wire read_complete_d_4;
  wire read_complete_d_5;
  wire read_complete_d_6;
  wire read_data_en_cmb;
  wire rw_flag_reg;
  wire s_axi_aclk;
  wire s_axi_mem_arvalid;
  wire s_axi_mem_arvalid_0;
  wire s_axi_mem_awvalid;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready_INST_0_i_6_n_0;
  wire s_axi_mem_wvalid;
  wire s_axi_mem_wvalid_0;
  wire temp_bus2ip_cs;
  wire tpacc_cnt_en;
  wire transaction_complete;
  wire transaction_complete_reg;
  wire transaction_complete_reg_i_2_n_0;
  wire transaction_complete_reg_i_3_n_0;
  wire transaction_complete_reg_i_4_n_0;
  wire transaction_done_cmb;
  wire transaction_done_i;
  wire trd_cnt_en;
  wire [0:4]twph_cnt;
  wire twph_cnt_en;
  wire twr_cnt_en;
  wire twr_rec_cnt_en_int;
  wire wlast;
  wire wlast_reg;
  wire wlast_reg_i_2_n_0;
  wire wlast_reg_i_3_n_0;
  wire wlast_reg_i_4_n_0;
  wire wlast_reg_i_5_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFFCCCD0000)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_1 
       (.I0(\DATA_STORE_GEN[0].WRDATA_REG ),
        .I1(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_3_n_0 ),
        .I2(Q[1]),
        .I3(crnt_state[3]),
        .I4(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_4_n_0 ),
        .I5(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_5_n_0 ),
        .O(data_strobe_c));
  LUT6 #(
    .INIT(64'h8880008000800080)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\mem_a_int_reg[0] ),
        .I3(crnt_state[3]),
        .I4(read_ack_reg_reg_1),
        .I5(bus2Mem_RdReq),
        .O(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_4 
       (.I0(crnt_state[4]),
        .I1(Q[0]),
        .O(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ADDRESS_STORE_GEN[0].ADDRESS_REG_i_5 
       (.I0(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0 ),
        .I1(bus2Mem_RdReq),
        .I2(read_ack_reg_reg_0),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F222F2F00000000)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_4 
       (.I0(\mem_oen_reg[0]_i_3_n_0 ),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0 ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_7_n_0 ),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I4(Q[1]),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_n_0 ),
        .O(\FSM_sequential_crnt_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hDFFE)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_7 
       (.I0(crnt_state[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_7_n_0 ));
  FDRE Bus2IP_Mem_CS_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(temp_bus2ip_cs),
        .Q(p_0_in[0]),
        .R(bus2ip_reset));
  FDRE Bus2IP_Mem_CS_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(bus2ip_reset));
  FDRE Bus2IP_RdReq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2Mem_RdReq),
        .Q(Bus2IP_RdReq_d1),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hAAABEEEF)) 
    \FSM_sequential_crnt_state[0]_i_1 
       (.I0(\FSM_sequential_crnt_state[0]_i_2_n_0 ),
        .I1(crnt_state[3]),
        .I2(crnt_state[4]),
        .I3(\FSM_sequential_crnt_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_crnt_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_crnt_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_crnt_state[0]_i_10 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\FSM_sequential_crnt_state_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFF22)) 
    \FSM_sequential_crnt_state[0]_i_2 
       (.I0(\FSM_sequential_crnt_state_reg[0]_4 ),
        .I1(\FSM_sequential_crnt_state_reg[4]_1 ),
        .I2(\FSM_sequential_crnt_state[3]_i_5_n_0 ),
        .I3(twr_cnt_en),
        .I4(\FSM_sequential_crnt_state[0]_i_6_n_0 ),
        .I5(Q[0]),
        .O(\FSM_sequential_crnt_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555DDD5FFF5DDD5)) 
    \FSM_sequential_crnt_state[0]_i_3 
       (.I0(\FSM_sequential_crnt_state_reg[1]_0 ),
        .I1(temp_bus2ip_cs),
        .I2(transaction_complete_reg_i_2_n_0),
        .I3(\FSM_sequential_crnt_state[0]_i_7_n_0 ),
        .I4(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I5(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ),
        .O(\FSM_sequential_crnt_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000B0BF)) 
    \FSM_sequential_crnt_state[0]_i_4 
       (.I0(Q[0]),
        .I1(read_ack_reg_reg_1),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_sequential_crnt_state[0]_i_8_n_0 ),
        .I5(bus2Mem_RdReq),
        .O(\FSM_sequential_crnt_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_crnt_state[0]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\FSM_sequential_crnt_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \FSM_sequential_crnt_state[0]_i_7 
       (.I0(transaction_complete_reg_i_3_n_0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(transaction_complete_reg),
        .O(\FSM_sequential_crnt_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF0F2200FF00)) 
    \FSM_sequential_crnt_state[0]_i_8 
       (.I0(read_ack_reg_reg_1),
        .I1(new_page_d1_i_2_n_0),
        .I2(\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_crnt_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000AFAA44444444)) 
    \FSM_sequential_crnt_state[0]_i_9 
       (.I0(Q[0]),
        .I1(\FSM_sequential_crnt_state[0]_i_5 ),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_crnt_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1F11)) 
    \FSM_sequential_crnt_state[1]_i_1 
       (.I0(read_complete_d_4),
        .I1(\FSM_sequential_crnt_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_crnt_state_reg[1]_5 ),
        .I3(\mem_oen_reg[0]_i_3_n_0 ),
        .I4(\FSM_sequential_crnt_state[1]_i_4_n_0 ),
        .I5(\FSM_sequential_crnt_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_crnt_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_crnt_state[1]_i_10 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_crnt_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_crnt_state[1]_i_12 
       (.I0(crnt_state[4]),
        .I1(Q[2]),
        .O(\FSM_sequential_crnt_state[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_crnt_state[1]_i_2 
       (.I0(Q[1]),
        .I1(crnt_state[4]),
        .O(\FSM_sequential_crnt_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h01000F00)) 
    \FSM_sequential_crnt_state[1]_i_4 
       (.I0(\mem_a_int_reg[0] ),
        .I1(crnt_state[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\FSM_sequential_crnt_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002000FFFF)) 
    \FSM_sequential_crnt_state[1]_i_5 
       (.I0(\FSM_sequential_crnt_state_reg[1]_6 ),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_crnt_state[2]_i_11_n_0 ),
        .I4(\FSM_sequential_crnt_state[1]_i_9_n_0 ),
        .I5(crnt_state[3]),
        .O(\FSM_sequential_crnt_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554555555)) 
    \FSM_sequential_crnt_state[1]_i_7 
       (.I0(read_break_reg_d1),
        .I1(bus2Mem_RdReq),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I3(Bus2IP_RdReq_d1),
        .I4(crnt_state[3]),
        .I5(\FSM_sequential_crnt_state[1]_i_10_n_0 ),
        .O(read_break_reg_d1_reg_0));
  LUT6 #(
    .INIT(64'hA0FFA0FFFFFFB1FF)) 
    \FSM_sequential_crnt_state[1]_i_9 
       (.I0(Q[1]),
        .I1(\FSM_sequential_crnt_state[1]_i_5_0 ),
        .I2(\FSM_sequential_crnt_state_reg[2]_4 ),
        .I3(\FSM_sequential_crnt_state[1]_i_12_n_0 ),
        .I4(\FSM_sequential_crnt_state[0]_i_5 ),
        .I5(Q[0]),
        .O(\FSM_sequential_crnt_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFAA2F22)) 
    \FSM_sequential_crnt_state[2]_i_1 
       (.I0(\FSM_sequential_crnt_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_crnt_state[2]_i_3_n_0 ),
        .I2(read_complete_d_4),
        .I3(\FSM_sequential_crnt_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_crnt_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_crnt_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_crnt_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_crnt_state[2]_i_10 
       (.I0(crnt_state[3]),
        .I1(Q[2]),
        .O(\FSM_sequential_crnt_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_crnt_state[2]_i_11 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_crnt_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFEAA)) 
    \FSM_sequential_crnt_state[2]_i_2 
       (.I0(\FSM_sequential_crnt_state[2]_i_7_n_0 ),
        .I1(\FSM_sequential_crnt_state_reg[2]_4 ),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(crnt_state[4]),
        .I5(Q[2]),
        .O(\FSM_sequential_crnt_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFBBBFBBBFFFF)) 
    \FSM_sequential_crnt_state[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I4(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I5(\FSM_sequential_crnt_state_reg[1]_6 ),
        .O(\FSM_sequential_crnt_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_crnt_state[2]_i_4 
       (.I0(crnt_state[4]),
        .I1(Q[2]),
        .O(\FSM_sequential_crnt_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88C8C8C8)) 
    \FSM_sequential_crnt_state[2]_i_5 
       (.I0(crnt_state[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(s_axi_mem_wvalid),
        .I4(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I5(\FSM_sequential_crnt_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_crnt_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \FSM_sequential_crnt_state[2]_i_6 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(\FSM_sequential_crnt_state[2]_i_10_n_0 ),
        .I2(\FSM_sequential_crnt_state[2]_i_11_n_0 ),
        .I3(\FSM_sequential_crnt_state[3]_i_5_n_0 ),
        .I4(wlast),
        .I5(s_axi_mem_wvalid),
        .O(\FSM_sequential_crnt_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000100000FFFF)) 
    \FSM_sequential_crnt_state[2]_i_7 
       (.I0(\mem_a_int_reg[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(crnt_state[3]),
        .I4(crnt_state[4]),
        .I5(\FSM_sequential_crnt_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_crnt_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFF1F0000)) 
    \FSM_sequential_crnt_state[2]_i_9 
       (.I0(read_ack_reg_reg_1),
        .I1(Q[2]),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_sequential_crnt_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAABAAABAA)) 
    \FSM_sequential_crnt_state[3]_i_1 
       (.I0(\FSM_sequential_crnt_state[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_crnt_state[3]_i_3_n_0 ),
        .I3(\FSM_sequential_crnt_state[3]_i_4_n_0 ),
        .I4(crnt_state[3]),
        .I5(\FSM_sequential_crnt_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_crnt_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h5BA0FA00)) 
    \FSM_sequential_crnt_state[3]_i_2 
       (.I0(Q[1]),
        .I1(\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 ),
        .I2(Q[2]),
        .I3(crnt_state[3]),
        .I4(Q[0]),
        .O(\FSM_sequential_crnt_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_crnt_state[3]_i_3 
       (.I0(Q[1]),
        .I1(crnt_state[3]),
        .I2(crnt_state[4]),
        .O(\FSM_sequential_crnt_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBABABAAAAAAAAA)) 
    \FSM_sequential_crnt_state[3]_i_4 
       (.I0(\FSM_sequential_crnt_state[3]_i_6_n_0 ),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I2(\FSM_sequential_crnt_state_reg[3]_0 ),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I4(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I5(Q[2]),
        .O(\FSM_sequential_crnt_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_crnt_state[3]_i_5 
       (.I0(crnt_state[4]),
        .I1(read_complete_d_4),
        .O(\FSM_sequential_crnt_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1515151510000000)) 
    \FSM_sequential_crnt_state[3]_i_6 
       (.I0(Q[2]),
        .I1(\mem_a_int_reg[0] ),
        .I2(temp_bus2ip_cs),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ),
        .I4(bus2Mem_RdReq),
        .I5(crnt_state[3]),
        .O(\FSM_sequential_crnt_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h45FF4545)) 
    \FSM_sequential_crnt_state[4]_i_1 
       (.I0(\FSM_sequential_crnt_state[4]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(read_ack_reg_reg_1),
        .I3(read_complete_d_4),
        .I4(crnt_state[4]),
        .O(\FSM_sequential_crnt_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FFB3FFF3FFFFFFF)) 
    \FSM_sequential_crnt_state[4]_i_2 
       (.I0(\FSM_sequential_crnt_state_reg[2]_4 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(crnt_state[3]),
        .I4(crnt_state[4]),
        .I5(Q[0]),
        .O(\FSM_sequential_crnt_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_crnt_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_crnt_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_crnt_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_crnt_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[3]_i_1_n_0 ),
        .Q(crnt_state[3]),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "page_read:01110,linear_flash_sync_rd:01100,read:01101,deassert_cen:00010,address_set:00001,wait_rddata_ack:10000,write:00011,assert_cen:00111,idle:00000,wr_rec_period:01001,wait_write_ack:01000,dassert_wen:00100,wait_temp:00110,write_wait:00101,deassert_rcen:01011,address_rset:01010,deassert_oen:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_crnt_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_crnt_state[4]_i_1_n_0 ),
        .Q(crnt_state[4]),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFFFFD5DF)) 
    \FSM_sequential_emc_addr_ps[0]_i_5 
       (.I0(s_axi_mem_wready_INST_0_i_6_n_0),
        .I1(\FSM_sequential_emc_addr_ps[0]_i_2 ),
        .I2(Q[1]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I4(s_axi_mem_wvalid),
        .O(\FSM_sequential_crnt_state_reg[1]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_emc_addr_ps[1]_i_10 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\FSM_sequential_crnt_state_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h2222222200000002)) 
    \FSM_sequential_emc_addr_ps[1]_i_7 
       (.I0(bus2ip_rd_req_reg_reg),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 ),
        .I2(\FSM_sequential_crnt_state_reg[4]_1 ),
        .I3(bus2ip_rd_req_reg_reg_0),
        .I4(\FSM_sequential_crnt_state_reg[0]_3 ),
        .I5(\FSM_sequential_crnt_state_reg[1]_1 ),
        .O(\burst_addr_cnt_reg[5] ));
  LUT6 #(
    .INIT(64'h00B0BBB000000000)) 
    \FSM_sequential_emc_addr_ps[2]_i_4 
       (.I0(addr_sm_ps_IDLE_reg_i_3),
        .I1(s_axi_mem_wvalid),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I3(Q[1]),
        .I4(\FSM_sequential_emc_addr_ps[0]_i_2 ),
        .I5(s_axi_mem_wready_INST_0_i_6_n_0),
        .O(s_axi_mem_wvalid_0));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [3]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_5 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__0 
       (.I0(tpacc_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 [3]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__2 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [14]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_14 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__5 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 [3]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg_19 ));
  LUT6 #(
    .INIT(64'h0000000001010F00)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__6 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(twph_cnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [4]),
        .O(\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [3]),
        .O(\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[12].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [2]),
        .O(\PERBIT_GEN[12].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[13].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [1]),
        .O(\PERBIT_GEN[13].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[14].MUXCY_i1_i_2 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [0]),
        .O(\PERBIT_GEN[14].FF_RST1_GEN.FDSE_i1 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \PERBIT_GEN[15].MULT_AND_i1_i_1 
       (.I0(Q[0]),
        .I1(crnt_state[4]),
        .I2(crnt_state[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\PERBIT_GEN[15].FF_RST1_GEN.FDSE_i1 ),
        .O(twr_rec_cnt_en_int));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [2]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__0 
       (.I0(tpacc_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 [2]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_7 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__2 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [13]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_13 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__5 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 [2]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg_18 ));
  LUT6 #(
    .INIT(64'h0000000001010F00)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__6 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(twph_cnt[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1 
       (.I0(trd_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [1]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__0 
       (.I0(tpacc_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 [1]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_6 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__2 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [12]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_12 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__5 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 [1]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg_17 ));
  LUT6 #(
    .INIT(64'h0000000001010F00)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__6 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(twph_cnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__2 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [11]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_11 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__5 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_6 [0]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg_16 ));
  LUT6 #(
    .INIT(64'hFEFEF0FFFFFFFFFF)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__6 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(twph_cnt[3]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_2 
       (.I0(trd_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_1 [0]),
        .O(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_2__0 
       (.I0(tpacc_cnt_en),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_2 [0]),
        .O(\PERBIT_GEN[3].FF_RST1_GEN.FDSE_i1_0 ));
  LUT6 #(
    .INIT(64'h01010F0000000000)) 
    \PERBIT_GEN[3].MUXCY_i1_i_2__1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(twph_cnt[3]),
        .O(\FSM_sequential_crnt_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .I1(read_complete_d_4),
        .I2(crnt_state[4]),
        .I3(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ),
        .O(CE_0));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(crnt_state[4]),
        .I4(crnt_state[3]),
        .I5(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ),
        .O(CE_15));
  LUT6 #(
    .INIT(64'hFFFFFFFF01010F00)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_1__1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0 ),
        .O(CE));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(crnt_state[3]),
        .I3(Q[1]),
        .O(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAAAAAAA)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1 
       (.I0(tpacc_cnt_en),
        .I1(new_page_d1_reg_0),
        .I2(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0 ),
        .I3(\FSM_sequential_crnt_state_reg[1]_0 ),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .I5(\ADDRESS_STORE_GEN[0].ADDRESS_REG_i_5_n_0 ),
        .O(CE_1));
  LUT6 #(
    .INIT(64'hBAAAFFFFAAAAAAAA)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__0 
       (.I0(trd_cnt_en),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0 ),
        .I2(crnt_state[3]),
        .I3(Q[2]),
        .I4(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3_n_0 ),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_n_0 ),
        .O(CE_2));
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_1__1 
       (.I0(twr_cnt_en),
        .I1(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0 ),
        .O(CE_10));
  LUT6 #(
    .INIT(64'h0000AAAA00002A28)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2 
       (.I0(new_page_d1),
        .I1(crnt_state[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(crnt_state[4]),
        .I5(Q[1]),
        .O(new_page_d1_reg_0));
  LUT6 #(
    .INIT(64'hDFFFDFFFDFFFFFFF)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(read_ack_reg_reg_0),
        .I3(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4 ),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I5(pend_rdreq),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA00F00000008800)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1 
       (.I0(\mem_a_int_reg[0] ),
        .I1(temp_bus2ip_cs),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0_n_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFEEFFFFFFEE)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3 
       (.I0(crnt_state[3]),
        .I1(Q[0]),
        .I2(new_page_d1),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0 
       (.I0(Q[0]),
        .I1(crnt_state[4]),
        .I2(crnt_state[3]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1 
       (.I0(crnt_state[4]),
        .I1(crnt_state[3]),
        .I2(Q[2]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8880)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4 
       (.I0(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_3 ),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_4 ),
        .I2(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I3(pend_rdreq),
        .I4(crnt_state[3]),
        .I5(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_6_n_0 ),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_4__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_crnt_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_6 
       (.I0(crnt_state[3]),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_2 ),
        .I2(pend_wrreq),
        .I3(bus2ip_wrreq_i),
        .I4(crnt_state[4]),
        .O(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0080808000008000)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1 
       (.I0(\PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ),
        .I1(crnt_state[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(read_ack_reg_reg_0),
        .I5(bus2Mem_RdReq),
        .O(trd_cnt_en));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(crnt_state[4]),
        .I3(crnt_state[3]),
        .I4(Q[1]),
        .I5(read_ack_reg_reg_1),
        .O(tpacc_cnt_en));
  LUT5 #(
    .INIT(32'h01010F00)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__1 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(twph_cnt_en));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(crnt_state[4]),
        .I4(Q[2]),
        .I5(\FSM_sequential_crnt_state_reg[2]_4 ),
        .O(twr_cnt_en));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_2 
       (.I0(Q[1]),
        .I1(crnt_state[4]),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF1D)) 
    \PERBIT_GEN[4].MULT_AND_i1_i_3 
       (.I0(\FSM_sequential_crnt_state_reg[2]_4 ),
        .I1(Q[2]),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .I3(\FSM_sequential_crnt_state_reg[1]_0 ),
        .I4(crnt_state[4]),
        .I5(crnt_state[3]),
        .O(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__2 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [10]),
        .O(\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT6 #(
    .INIT(64'h01010F0000000000)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1__6 
       (.I0(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 ),
        .I1(Q[0]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(twph_cnt[4]),
        .O(S));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1__0 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [9]),
        .O(\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1__0 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [8]),
        .O(\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT3 #(
    .INIT(8'hF4)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(p_0_in[0]),
        .I1(temp_bus2ip_cs),
        .I2(ip2bus_addrack),
        .O(CE_9));
  LUT3 #(
    .INIT(8'h31)) 
    \PERBIT_GEN[7].MULT_AND_i1_i_1 
       (.I0(\FSM_sequential_crnt_state_reg[1]_2 ),
        .I1(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 ),
        .I2(\FSM_sequential_crnt_state_reg[1]_1 ),
        .O(ip2bus_addrack));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1__0 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [7]),
        .O(\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[8].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [6]),
        .O(\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1 
       (.I0(twr_rec_cnt_en_int),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_5 [5]),
        .O(\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_complete_cmb),
        .Q(read_complete_d_6),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_1 
       (.I0(Q[2]),
        .I1(crnt_state[3]),
        .I2(crnt_state[4]),
        .I3(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2_n_0 ),
        .O(read_complete_cmb));
  LUT6 #(
    .INIT(64'h00000000FFABFFFF)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2 
       (.I0(\FSM_sequential_crnt_state_reg[4]_3 ),
        .I1(\mem_ce_reg[0]_i_4_n_0 ),
        .I2(read_break_reg_d1),
        .I3(read_ack_reg_reg_0),
        .I4(\FSM_sequential_crnt_state_reg[0]_2 ),
        .I5(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_0 ),
        .O(\READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBBBBBF)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_3 
       (.I0(crnt_state[4]),
        .I1(read_break_reg_d1),
        .I2(Q[1]),
        .I3(crnt_state[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\FSM_sequential_crnt_state_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \READ_COMPLETE_PIPE_GEN[0].READ_COMPLETE_PIPE_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_crnt_state_reg[0]_2 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \READ_COMPLETE_PIPE_GEN[1].READ_COMPLETE_PIPE 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_complete_d_6),
        .Q(read_complete_d_5),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \READ_COMPLETE_PIPE_GEN[2].READ_COMPLETE_PIPE 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_complete_d_5),
        .Q(read_complete_d_4),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBABFB)) 
    addr_sm_ps_IDLE_reg_i_6
       (.I0(\FSM_sequential_crnt_state_reg[4]_1 ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I2(Q[1]),
        .I3(\mem_a_int_reg[0] ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I5(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .O(\FSM_sequential_crnt_state_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555551)) 
    \burst_addr_cnt[7]_i_3 
       (.I0(\FSM_sequential_crnt_state_reg[1]_1 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(bus2ip_rd_req_reg_reg_0),
        .I4(\FSM_sequential_crnt_state_reg[4]_1 ),
        .I5(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_4 ),
        .O(\FSM_sequential_crnt_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000091)) 
    \mem_a_int[31]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\mem_a_int_reg[0] ),
        .I3(Q[0]),
        .I4(crnt_state[4]),
        .I5(crnt_state[3]),
        .O(\FSM_sequential_crnt_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB399)) 
    \mem_ce_reg[0]_i_1 
       (.I0(crnt_state[3]),
        .I1(Q[2]),
        .I2(\mem_ce_reg[0]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(crnt_state[4]),
        .I5(\mem_ce_reg[0]_i_3_n_0 ),
        .O(Mem_CE_int));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFAFAFBFF)) 
    \mem_ce_reg[0]_i_2 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .I1(Q[2]),
        .I2(crnt_state[4]),
        .I3(\mem_ce_reg[0]_i_4_n_0 ),
        .I4(read_break_reg_d1),
        .O(\mem_ce_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11011111)) 
    \mem_ce_reg[0]_i_3 
       (.I0(crnt_state[4]),
        .I1(\mem_ce_reg[0]_i_5_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\mem_ce_reg[0]_i_6_n_0 ),
        .I5(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .O(\mem_ce_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007000)) 
    \mem_ce_reg[0]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(Bus2IP_RdReq_d1),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I5(bus2Mem_RdReq),
        .O(\mem_ce_reg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0FE0)) 
    \mem_ce_reg[0]_i_5 
       (.I0(Bus2IP_RdReq_emc),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\mem_ce_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \mem_ce_reg[0]_i_6 
       (.I0(Bus2IP_RdReq_d1),
        .I1(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I2(bus2Mem_RdReq),
        .I3(read_break_reg_d1),
        .O(\mem_ce_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAABAABABBBBBAAAA)) 
    \mem_cen_reg[0]_i_1 
       (.I0(\mem_ce_reg[0]_i_3_n_0 ),
        .I1(crnt_state[4]),
        .I2(Q[0]),
        .I3(\mem_ce_reg[0]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(crnt_state[3]),
        .O(mem_CEN_cmb));
  LUT6 #(
    .INIT(64'h220222202202222A)) 
    \mem_dq_t_reg[24]_i_1 
       (.I0(mem_dqt_t_d),
        .I1(crnt_state[4]),
        .I2(Q[1]),
        .I3(crnt_state[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(mem_dqt_t_d_reg));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h0001F3FD)) 
    mem_dqt_t_d_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(crnt_state[3]),
        .I3(Q[1]),
        .I4(crnt_state[4]),
        .O(mem_WEN_cmb));
  LUT6 #(
    .INIT(64'hAAABAAAABBBBBBBB)) 
    \mem_oen_reg[0]_i_1 
       (.I0(\mem_oen_reg[0]_i_2_n_0 ),
        .I1(crnt_state[4]),
        .I2(Q[1]),
        .I3(\mem_ce_reg[0]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(\mem_oen_reg[0]_i_3_n_0 ),
        .O(mem_OEN_cmb));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAFAABB)) 
    \mem_oen_reg[0]_i_2 
       (.I0(\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1_i_2_n_0 ),
        .I1(Bus2IP_RdReq_emc),
        .I2(\mem_ce_reg[0]_i_6_n_0 ),
        .I3(crnt_state[4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\mem_oen_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_oen_reg[0]_i_3 
       (.I0(crnt_state[3]),
        .I1(Q[2]),
        .O(\mem_oen_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h51545157FFFFFFFF)) 
    \mem_qwen_reg[0]_i_1 
       (.I0(crnt_state[4]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Mem_Ben[0]),
        .O(\FSM_sequential_crnt_state_reg[4]_2 [3]));
  LUT6 #(
    .INIT(64'h51545157FFFFFFFF)) 
    \mem_qwen_reg[1]_i_1 
       (.I0(crnt_state[4]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Mem_Ben[1]),
        .O(\FSM_sequential_crnt_state_reg[4]_2 [2]));
  LUT6 #(
    .INIT(64'h51545157FFFFFFFF)) 
    \mem_qwen_reg[2]_i_1 
       (.I0(crnt_state[4]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Mem_Ben[2]),
        .O(\FSM_sequential_crnt_state_reg[4]_2 [1]));
  LUT6 #(
    .INIT(64'h51545157FFFFFFFF)) 
    \mem_qwen_reg[3]_i_1 
       (.I0(crnt_state[4]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Mem_Ben[3]),
        .O(\FSM_sequential_crnt_state_reg[4]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h0001F9F9)) 
    mem_rnw_reg_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(crnt_state[3]),
        .I3(Q[0]),
        .I4(crnt_state[4]),
        .O(mem_RNW_cmb));
  LUT1 #(
    .INIT(2'h1)) 
    new_page_d1_i_1
       (.I0(new_page_d1_i_2_n_0),
        .O(new_page));
  LUT2 #(
    .INIT(4'h1)) 
    new_page_d1_i_2
       (.I0(new_page_d1_reg_0),
        .I1(tpacc_cnt_en),
        .O(new_page_d1_i_2_n_0));
  FDRE new_page_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(new_page),
        .Q(new_page_d1),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h0000C000AA000000)) 
    read_ack_reg_i_1
       (.I0(read_ack_reg_reg_0),
        .I1(bus2Mem_RdReq),
        .I2(read_ack_reg_reg_1),
        .I3(\PERBIT_GEN[4].FF_RST1_GEN.FDSE_i1_i_3__1_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(read_data_en_cmb));
  FDRE read_ack_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_data_en_cmb),
        .Q(read_ack),
        .R(bus2ip_reset));
  LUT1 #(
    .INIT(2'h1)) 
    read_break_reg_d1_i_1
       (.I0(\mem_ce_reg[0]_i_2_n_0 ),
        .O(read_break_reg));
  FDRE read_break_reg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_break_reg),
        .Q(read_break_reg_d1),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    s_axi_mem_arready_INST_0_i_2
       (.I0(crnt_state[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(crnt_state[3]),
        .O(\FSM_sequential_crnt_state_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hA2000000)) 
    s_axi_mem_awready_INST_0_i_1
       (.I0(\FSM_sequential_crnt_state_reg[4]_0 ),
        .I1(s_axi_mem_arvalid),
        .I2(rw_flag_reg),
        .I3(s_axi_mem_wvalid),
        .I4(s_axi_mem_awvalid),
        .O(s_axi_mem_arvalid_0));
  LUT6 #(
    .INIT(64'hDDDDDD1DFFFFFFFF)) 
    s_axi_mem_wready_INST_0_i_1
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I1(Q[1]),
        .I2(\mem_a_int_reg[0] ),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I4(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 ),
        .I5(s_axi_mem_wready_INST_0_i_6_n_0),
        .O(\FSM_sequential_crnt_state_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    s_axi_mem_wready_INST_0_i_6
       (.I0(Q[0]),
        .I1(crnt_state[4]),
        .I2(Q[2]),
        .I3(crnt_state[3]),
        .O(s_axi_mem_wready_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h44444454)) 
    transaction_complete_reg_i_1
       (.I0(transaction_complete_reg_i_2_n_0),
        .I1(transaction_complete_reg),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(transaction_complete_reg_i_3_n_0),
        .O(transaction_complete));
  LUT6 #(
    .INIT(64'h8888AAAA8000AAAA)) 
    transaction_complete_reg_i_2
       (.I0(transaction_complete_reg_i_4_n_0),
        .I1(temp_bus2ip_cs),
        .I2(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_3 ),
        .I3(bus2Mem_RdReq),
        .I4(\FSM_sequential_crnt_state_reg[4]_0 ),
        .I5(\mem_a_int_reg[0] ),
        .O(transaction_complete_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFEF3DF)) 
    transaction_complete_reg_i_3
       (.I0(Q[1]),
        .I1(crnt_state[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(crnt_state[4]),
        .O(transaction_complete_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hF0F0F0E1)) 
    transaction_complete_reg_i_4
       (.I0(crnt_state[3]),
        .I1(Q[1]),
        .I2(crnt_state[4]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(transaction_complete_reg_i_4_n_0));
  FDRE transaction_complete_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transaction_complete),
        .Q(transaction_complete_reg),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFEFFFAFFFFFFFA)) 
    transaction_done_reg_i_2
       (.I0(Q[2]),
        .I1(crnt_state[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(crnt_state[4]),
        .I5(read_complete_d_4),
        .O(\FSM_sequential_crnt_state_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    transaction_done_reg_i_3
       (.I0(crnt_state[4]),
        .I1(crnt_state[3]),
        .O(\FSM_sequential_crnt_state_reg[4]_1 ));
  FDRE transaction_done_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transaction_done_cmb),
        .Q(transaction_done_i),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h11111111330F0000)) 
    wlast_reg_i_2
       (.I0(wlast_reg_i_4_n_0),
        .I1(crnt_state[4]),
        .I2(crnt_state[3]),
        .I3(Q[1]),
        .I4(wlast_reg),
        .I5(Q[2]),
        .O(wlast_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF02022232)) 
    wlast_reg_i_3
       (.I0(wlast_reg),
        .I1(crnt_state[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(wlast_reg_i_4_n_0),
        .I5(wlast_reg_i_5_n_0),
        .O(wlast_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    wlast_reg_i_4
       (.I0(crnt_state[3]),
        .I1(s_axi_mem_wvalid),
        .I2(s_axi_mem_wlast),
        .I3(wlast_reg),
        .O(wlast_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    wlast_reg_i_5
       (.I0(crnt_state[3]),
        .I1(Q[2]),
        .I2(\PERBIT_GEN[4].MULT_AND_i1_i_2_n_0 ),
        .I3(s_axi_mem_wvalid),
        .I4(s_axi_mem_wlast),
        .I5(\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1_1 ),
        .O(wlast_reg_i_5_n_0));
  FDRE wlast_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wlast),
        .Q(wlast_reg),
        .R(bus2ip_reset));
  MUXF7 wlast_reg_reg_i_1
       (.I0(wlast_reg_i_2_n_0),
        .I1(wlast_reg_i_3_n_0),
        .O(wlast),
        .S(Q[0]));
endmodule

(* ORIG_REF_NAME = "mem_steer" *) 
module soc_bd_axi_emc_0_0_mem_steer
   (D,
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ,
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 ,
    mem_dqt_t_d,
    bus2ip_reset,
    data_strobe_c,
    \DATA_STORE_GEN[24].WRDATA_REG_0 ,
    s_axi_aclk,
    readreq_th_reset,
    read_ack,
    Q,
    mem_WEN_cmb);
  output [31:0]D;
  output \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  output [31:0]\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 ;
  output mem_dqt_t_d;
  input bus2ip_reset;
  input data_strobe_c;
  input [31:0]\DATA_STORE_GEN[24].WRDATA_REG_0 ;
  input s_axi_aclk;
  input readreq_th_reset;
  input read_ack;
  input [31:0]Q;
  input mem_WEN_cmb;

  wire \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ;
  wire [31:0]D;
  wire [31:0]\DATA_STORE_GEN[24].WRDATA_REG_0 ;
  wire [31:0]Q;
  wire [31:0]\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 ;
  wire bus2ip_reset;
  wire data_strobe_c;
  wire mem_WEN_cmb;
  wire mem_dqt_t_d;
  wire read_ack;
  wire read_ack_d_4;
  wire readreq_th_reset;
  wire s_axi_aclk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[0].RDACK_PIPE_ASYNC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack),
        .Q(read_ack_d_4),
        .R(readreq_th_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack_d_4),
        .Q(\ASYNC_MEM_RDACK_GEN.RDACK_PIPE_GEN_ASYNC[1].RDACK_PIPE_ASYNC__0 ),
        .R(readreq_th_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[0].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [7]),
        .Q(D[31]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[10].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [13]),
        .Q(D[21]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[11].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [12]),
        .Q(D[20]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[12].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [11]),
        .Q(D[19]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[13].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [10]),
        .Q(D[18]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[14].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [9]),
        .Q(D[17]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[15].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [8]),
        .Q(D[16]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[16].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [23]),
        .Q(D[15]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[17].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [22]),
        .Q(D[14]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[18].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [21]),
        .Q(D[13]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[19].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [20]),
        .Q(D[12]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[1].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [6]),
        .Q(D[30]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[20].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [19]),
        .Q(D[11]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[21].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [18]),
        .Q(D[10]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[22].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [17]),
        .Q(D[9]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[23].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [16]),
        .Q(D[8]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[24].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [31]),
        .Q(D[7]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[25].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [30]),
        .Q(D[6]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[26].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [29]),
        .Q(D[5]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[27].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [28]),
        .Q(D[4]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[28].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [27]),
        .Q(D[3]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[29].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [26]),
        .Q(D[2]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[2].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [5]),
        .Q(D[29]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[30].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [25]),
        .Q(D[1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[31].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [24]),
        .Q(D[0]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[3].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [4]),
        .Q(D[28]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[4].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [3]),
        .Q(D[27]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[5].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [2]),
        .Q(D[26]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[6].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [1]),
        .Q(D[25]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[7].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [0]),
        .Q(D[24]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[8].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [15]),
        .Q(D[23]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \DATA_STORE_GEN[9].WRDATA_REG 
       (.C(s_axi_aclk),
        .CE(data_strobe_c),
        .D(\DATA_STORE_GEN[24].WRDATA_REG_0 [14]),
        .Q(D[22]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [31]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [30]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [29]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [28]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [27]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [26]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [25]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[0].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [24]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [23]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [22]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [21]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [20]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [19]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [18]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [17]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[1].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [16]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [15]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [14]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [13]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [12]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [11]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [10]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [9]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[2].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [8]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[0].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [7]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[1].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [6]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[2].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [5]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[3].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [4]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[4].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [3]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[5].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [2]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[6].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [1]),
        .R(bus2ip_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RDDATA_GEN[3].RDDATA_BYTE_GEN[7].RDDATA_REG 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\RDDATA_GEN[0].RDDATA_BYTE_GEN[0].RDDATA_REG_0 [0]),
        .R(bus2ip_reset));
  FDSE mem_dqt_t_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mem_WEN_cmb),
        .Q(mem_dqt_t_d),
        .S(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module soc_bd_axi_emc_0_0_srl_fifo_rbu_f
   (Q,
    \FSM_sequential_emc_addr_ps_reg[2] ,
    s_axi_mem_rresp,
    \derived_burst_reg_reg[0] ,
    bus2ip_wr_req_reg_reg,
    \FSM_sequential_crnt_state_reg[1] ,
    \burst_data_cnt_reg[7] ,
    E,
    FIFO_Full_reg_0,
    s_axi_mem_rvalid,
    s_axi_mem_rdata,
    bus2ip_reset,
    s_axi_aclk,
    S,
    addr_sm_ps_IDLE_reg_reg,
    addr_sm_ps_IDLE_reg_reg_0,
    addr_sm_ps_IDLE_reg_reg_1,
    addr_sm_ps_IDLE_reg_reg_2,
    addr_sm_ps_IDLE_reg_reg_3,
    bus2ip_rnw,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ,
    p_0_out,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 ,
    s_axi_mem_rready,
    addr_sm_ps_IDLE_reg_reg_4,
    addr_sm_ps_IDLE_reg_reg_5,
    addr_sm_ps_IDLE_reg_reg_6,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_3 ,
    rdce_out_i,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ,
    ip2bus_rdack,
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1 ,
    rd_fifo_wr_en,
    in);
  output [1:0]Q;
  output \FSM_sequential_emc_addr_ps_reg[2] ;
  output [0:0]s_axi_mem_rresp;
  output \derived_burst_reg_reg[0] ;
  output bus2ip_wr_req_reg_reg;
  output \FSM_sequential_crnt_state_reg[1] ;
  output \burst_data_cnt_reg[7] ;
  output [0:0]E;
  output FIFO_Full_reg_0;
  output s_axi_mem_rvalid;
  output [31:0]s_axi_mem_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input [0:0]S;
  input [2:0]addr_sm_ps_IDLE_reg_reg;
  input addr_sm_ps_IDLE_reg_reg_0;
  input addr_sm_ps_IDLE_reg_reg_1;
  input addr_sm_ps_IDLE_reg_reg_2;
  input addr_sm_ps_IDLE_reg_reg_3;
  input bus2ip_rnw;
  input [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  input p_0_out;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 ;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 ;
  input s_axi_mem_rready;
  input addr_sm_ps_IDLE_reg_reg_4;
  input addr_sm_ps_IDLE_reg_reg_5;
  input addr_sm_ps_IDLE_reg_reg_6;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_3 ;
  input rdce_out_i;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ;
  input [1:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ;
  input ip2bus_rdack;
  input \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1 ;
  input rd_fifo_wr_en;
  input [0:32]in;

  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_5_n_0 ;
  wire [0:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_3 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ;
  wire [1:0]\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 ;
  wire \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1 ;
  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_12;
  wire CNTR_INCR_DECR_ADDN_F_I_n_13;
  wire CNTR_INCR_DECR_ADDN_F_I_n_14;
  wire CNTR_INCR_DECR_ADDN_F_I_n_15;
  wire CNTR_INCR_DECR_ADDN_F_I_n_16;
  wire CNTR_INCR_DECR_ADDN_F_I_n_17;
  wire CNTR_INCR_DECR_ADDN_F_I_n_18;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire CNTR_INCR_DECR_ADDN_F_I_n_6;
  wire CNTR_INCR_DECR_ADDN_F_I_n_7;
  wire [0:0]E;
  wire FIFO_Full_reg_0;
  wire \FSM_sequential_crnt_state_reg[1] ;
  wire \FSM_sequential_emc_addr_ps_reg[2] ;
  wire [1:0]Q;
  wire [0:0]S;
  wire addr_sm_ps_IDLE_reg_i_2_n_0;
  wire [2:0]addr_sm_ps_IDLE_reg_reg;
  wire addr_sm_ps_IDLE_reg_reg_0;
  wire addr_sm_ps_IDLE_reg_reg_1;
  wire addr_sm_ps_IDLE_reg_reg_2;
  wire addr_sm_ps_IDLE_reg_reg_3;
  wire addr_sm_ps_IDLE_reg_reg_4;
  wire addr_sm_ps_IDLE_reg_reg_5;
  wire addr_sm_ps_IDLE_reg_reg_6;
  wire \burst_data_cnt_reg[7] ;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_wr_req_reg_reg;
  wire \derived_burst_reg_reg[0] ;
  wire fifo_full_p1;
  wire [0:32]in;
  wire ip2bus_rdack;
  wire p_0_out;
  wire rd_fifo_full;
  wire rd_fifo_wr_en;
  wire rdce_out_i;
  wire s_axi_aclk;
  wire [31:0]s_axi_mem_rdata;
  wire s_axi_mem_rready;
  wire [0:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;

  LUT6 #(
    .INIT(64'hCCEECCCECCCCCCCC)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_1 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6] ),
        .I1(p_0_out),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I3(bus2ip_wr_req_reg_reg),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 ),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_5_n_0 ),
        .O(\derived_burst_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_3 ),
        .I1(\burst_data_cnt_reg[7] ),
        .I2(rdce_out_i),
        .O(bus2ip_wr_req_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_5 
       (.I0(\burst_data_cnt_reg[7] ),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 ),
        .O(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000031)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i[2]_i_3 
       (.I0(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_0 ),
        .I1(bus2ip_wr_req_reg_reg),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 ),
        .I3(\burst_data_cnt_reg[7] ),
        .I4(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 ),
        .I5(p_0_out),
        .O(\FSM_sequential_crnt_state_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_3 
       (.I0(FIFO_Full_reg_0),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1] ),
        .I2(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 [1]),
        .I3(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_0 [0]),
        .I4(ip2bus_rdack),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count_reg[1]_1 ),
        .O(\burst_data_cnt_reg[7] ));
  LUT5 #(
    .INIT(32'h03002020)) 
    \BUS2IP_ADDR_GEN_DATA_WDTH_32.internal_count[1]_i_6 
       (.I0(rd_fifo_full),
        .I1(addr_sm_ps_IDLE_reg_reg[2]),
        .I2(addr_sm_ps_IDLE_reg_reg[1]),
        .I3(ip2bus_rdack),
        .I4(addr_sm_ps_IDLE_reg_reg[0]),
        .O(FIFO_Full_reg_0));
  soc_bd_axi_emc_0_0_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.A({CNTR_INCR_DECR_ADDN_F_I_n_12,CNTR_INCR_DECR_ADDN_F_I_n_13}),
        .E(E),
        .\INFERRED_GEN.cnt_i_reg[2]_rep_0 ({CNTR_INCR_DECR_ADDN_F_I_n_16,CNTR_INCR_DECR_ADDN_F_I_n_17,CNTR_INCR_DECR_ADDN_F_I_n_18}),
        .Q({Q[1],CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5,CNTR_INCR_DECR_ADDN_F_I_n_6,CNTR_INCR_DECR_ADDN_F_I_n_7,Q[0]}),
        .S(S),
        .addr({CNTR_INCR_DECR_ADDN_F_I_n_14,CNTR_INCR_DECR_ADDN_F_I_n_15}),
        .bus2ip_reset(bus2ip_reset),
        .fifo_full_p1(fifo_full_p1),
        .p_0_out(p_0_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rvalid(s_axi_mem_rvalid));
  soc_bd_axi_emc_0_0_dynshreg_f DYNSHREG_F_I
       (.A({CNTR_INCR_DECR_ADDN_F_I_n_12,CNTR_INCR_DECR_ADDN_F_I_n_13}),
        .\INFERRED_GEN.data_reg[255][15]_mux__2_0 ({CNTR_INCR_DECR_ADDN_F_I_n_16,CNTR_INCR_DECR_ADDN_F_I_n_17,CNTR_INCR_DECR_ADDN_F_I_n_18}),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5,CNTR_INCR_DECR_ADDN_F_I_n_6,CNTR_INCR_DECR_ADDN_F_I_n_7,Q[0]}),
        .addr({CNTR_INCR_DECR_ADDN_F_I_n_14,CNTR_INCR_DECR_ADDN_F_I_n_15}),
        .bus2ip_rnw(bus2ip_rnw),
        .in(in),
        .rd_fifo_wr_en(rd_fifo_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rresp(s_axi_mem_rresp));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(rd_fifo_full),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h0000000000230022)) 
    addr_sm_ps_IDLE_reg_i_1
       (.I0(addr_sm_ps_IDLE_reg_reg[2]),
        .I1(addr_sm_ps_IDLE_reg_i_2_n_0),
        .I2(addr_sm_ps_IDLE_reg_reg_0),
        .I3(addr_sm_ps_IDLE_reg_reg_1),
        .I4(addr_sm_ps_IDLE_reg_reg_2),
        .I5(addr_sm_ps_IDLE_reg_reg_3),
        .O(\FSM_sequential_emc_addr_ps_reg[2] ));
  LUT6 #(
    .INIT(64'h0000888A00000000)) 
    addr_sm_ps_IDLE_reg_i_2
       (.I0(addr_sm_ps_IDLE_reg_reg_4),
        .I1(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_1 ),
        .I2(addr_sm_ps_IDLE_reg_reg_5),
        .I3(addr_sm_ps_IDLE_reg_reg_6),
        .I4(bus2ip_wr_req_reg_reg),
        .I5(\BUS2IP_ADDR_GEN_DATA_WDTH_32.bus2ip_addr_i_reg[6]_2 ),
        .O(addr_sm_ps_IDLE_reg_i_2_n_0));
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
