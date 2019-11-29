// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Nov 30 01:43:26 2019
// Host        : Gyc-Arch-Linux running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/gaoyichuan/workspace/cod/cod19grp73/thinpad_top.srcs/sources_1/bd/soc_bd/ip/soc_bd_core_0_0/soc_bd_core_0_0_stub.v
// Design      : soc_bd_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "core,Vivado 2018.3" *)
module soc_bd_core_0_0(system_clk, system_rst, ibus_awid, ibus_awaddr, 
  ibus_awlen, ibus_awsize, ibus_awburst, ibus_awlock, ibus_awcache, ibus_awprot, ibus_awregion, 
  ibus_awuser, ibus_awqos, ibus_awvalid, ibus_awready, ibus_wdata, ibus_wstrb, ibus_wlast, 
  ibus_wuser, ibus_wvalid, ibus_wready, ibus_bid, ibus_bresp, ibus_bvalid, ibus_buser, 
  ibus_bready, ibus_arid, ibus_araddr, ibus_arlen, ibus_arsize, ibus_arburst, ibus_arlock, 
  ibus_arcache, ibus_arprot, ibus_arregion, ibus_aruser, ibus_arqos, ibus_arvalid, 
  ibus_arready, ibus_rid, ibus_rdata, ibus_rresp, ibus_rlast, ibus_ruser, ibus_rvalid, 
  ibus_rready, dbus_awid, dbus_awaddr, dbus_awlen, dbus_awsize, dbus_awburst, dbus_awlock, 
  dbus_awcache, dbus_awprot, dbus_awregion, dbus_awuser, dbus_awqos, dbus_awvalid, 
  dbus_awready, dbus_wdata, dbus_wstrb, dbus_wlast, dbus_wuser, dbus_wvalid, dbus_wready, 
  dbus_bid, dbus_bresp, dbus_bvalid, dbus_buser, dbus_bready, dbus_arid, dbus_araddr, dbus_arlen, 
  dbus_arsize, dbus_arburst, dbus_arlock, dbus_arcache, dbus_arprot, dbus_arregion, 
  dbus_aruser, dbus_arqos, dbus_arvalid, dbus_arready, dbus_rid, dbus_rdata, dbus_rresp, 
  dbus_rlast, dbus_ruser, dbus_rvalid, dbus_rready)
/* synthesis syn_black_box black_box_pad_pin="system_clk,system_rst,ibus_awid[15:0],ibus_awaddr[31:0],ibus_awlen[7:0],ibus_awsize[2:0],ibus_awburst[1:0],ibus_awlock,ibus_awcache[3:0],ibus_awprot[2:0],ibus_awregion[3:0],ibus_awuser[7:0],ibus_awqos[3:0],ibus_awvalid,ibus_awready,ibus_wdata[31:0],ibus_wstrb[3:0],ibus_wlast,ibus_wuser[7:0],ibus_wvalid,ibus_wready,ibus_bid[15:0],ibus_bresp[1:0],ibus_bvalid,ibus_buser[7:0],ibus_bready,ibus_arid[15:0],ibus_araddr[31:0],ibus_arlen[7:0],ibus_arsize[2:0],ibus_arburst[1:0],ibus_arlock,ibus_arcache[3:0],ibus_arprot[2:0],ibus_arregion[3:0],ibus_aruser[7:0],ibus_arqos[3:0],ibus_arvalid,ibus_arready,ibus_rid[15:0],ibus_rdata[31:0],ibus_rresp[1:0],ibus_rlast,ibus_ruser[7:0],ibus_rvalid,ibus_rready,dbus_awid[15:0],dbus_awaddr[31:0],dbus_awlen[7:0],dbus_awsize[2:0],dbus_awburst[1:0],dbus_awlock,dbus_awcache[3:0],dbus_awprot[2:0],dbus_awregion[3:0],dbus_awuser[7:0],dbus_awqos[3:0],dbus_awvalid,dbus_awready,dbus_wdata[31:0],dbus_wstrb[3:0],dbus_wlast,dbus_wuser[7:0],dbus_wvalid,dbus_wready,dbus_bid[15:0],dbus_bresp[1:0],dbus_bvalid,dbus_buser[7:0],dbus_bready,dbus_arid[15:0],dbus_araddr[31:0],dbus_arlen[7:0],dbus_arsize[2:0],dbus_arburst[1:0],dbus_arlock,dbus_arcache[3:0],dbus_arprot[2:0],dbus_arregion[3:0],dbus_aruser[7:0],dbus_arqos[3:0],dbus_arvalid,dbus_arready,dbus_rid[15:0],dbus_rdata[31:0],dbus_rresp[1:0],dbus_rlast,dbus_ruser[7:0],dbus_rvalid,dbus_rready" */;
  input system_clk;
  input system_rst;
  output [15:0]ibus_awid;
  output [31:0]ibus_awaddr;
  output [7:0]ibus_awlen;
  output [2:0]ibus_awsize;
  output [1:0]ibus_awburst;
  output ibus_awlock;
  output [3:0]ibus_awcache;
  output [2:0]ibus_awprot;
  output [3:0]ibus_awregion;
  output [7:0]ibus_awuser;
  output [3:0]ibus_awqos;
  output ibus_awvalid;
  input ibus_awready;
  output [31:0]ibus_wdata;
  output [3:0]ibus_wstrb;
  output ibus_wlast;
  output [7:0]ibus_wuser;
  output ibus_wvalid;
  input ibus_wready;
  input [15:0]ibus_bid;
  input [1:0]ibus_bresp;
  input ibus_bvalid;
  input [7:0]ibus_buser;
  output ibus_bready;
  output [15:0]ibus_arid;
  output [31:0]ibus_araddr;
  output [7:0]ibus_arlen;
  output [2:0]ibus_arsize;
  output [1:0]ibus_arburst;
  output ibus_arlock;
  output [3:0]ibus_arcache;
  output [2:0]ibus_arprot;
  output [3:0]ibus_arregion;
  output [7:0]ibus_aruser;
  output [3:0]ibus_arqos;
  output ibus_arvalid;
  input ibus_arready;
  input [15:0]ibus_rid;
  input [31:0]ibus_rdata;
  input [1:0]ibus_rresp;
  input ibus_rlast;
  input [7:0]ibus_ruser;
  input ibus_rvalid;
  output ibus_rready;
  output [15:0]dbus_awid;
  output [31:0]dbus_awaddr;
  output [7:0]dbus_awlen;
  output [2:0]dbus_awsize;
  output [1:0]dbus_awburst;
  output dbus_awlock;
  output [3:0]dbus_awcache;
  output [2:0]dbus_awprot;
  output [3:0]dbus_awregion;
  output [7:0]dbus_awuser;
  output [3:0]dbus_awqos;
  output dbus_awvalid;
  input dbus_awready;
  output [31:0]dbus_wdata;
  output [3:0]dbus_wstrb;
  output dbus_wlast;
  output [7:0]dbus_wuser;
  output dbus_wvalid;
  input dbus_wready;
  input [15:0]dbus_bid;
  input [1:0]dbus_bresp;
  input dbus_bvalid;
  input [7:0]dbus_buser;
  output dbus_bready;
  output [15:0]dbus_arid;
  output [31:0]dbus_araddr;
  output [7:0]dbus_arlen;
  output [2:0]dbus_arsize;
  output [1:0]dbus_arburst;
  output dbus_arlock;
  output [3:0]dbus_arcache;
  output [2:0]dbus_arprot;
  output [3:0]dbus_arregion;
  output [7:0]dbus_aruser;
  output [3:0]dbus_arqos;
  output dbus_arvalid;
  input dbus_arready;
  input [15:0]dbus_rid;
  input [31:0]dbus_rdata;
  input [1:0]dbus_rresp;
  input dbus_rlast;
  input [7:0]dbus_ruser;
  input dbus_rvalid;
  output dbus_rready;
endmodule
