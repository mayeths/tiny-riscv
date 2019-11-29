// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:core:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module soc_bd_core_0_0 (
  system_clk,
  system_rst,
  ibus_awid,
  ibus_awaddr,
  ibus_awlen,
  ibus_awsize,
  ibus_awburst,
  ibus_awlock,
  ibus_awcache,
  ibus_awprot,
  ibus_awregion,
  ibus_awuser,
  ibus_awqos,
  ibus_awvalid,
  ibus_awready,
  ibus_wdata,
  ibus_wstrb,
  ibus_wlast,
  ibus_wuser,
  ibus_wvalid,
  ibus_wready,
  ibus_bid,
  ibus_bresp,
  ibus_bvalid,
  ibus_buser,
  ibus_bready,
  ibus_arid,
  ibus_araddr,
  ibus_arlen,
  ibus_arsize,
  ibus_arburst,
  ibus_arlock,
  ibus_arcache,
  ibus_arprot,
  ibus_arregion,
  ibus_aruser,
  ibus_arqos,
  ibus_arvalid,
  ibus_arready,
  ibus_rid,
  ibus_rdata,
  ibus_rresp,
  ibus_rlast,
  ibus_ruser,
  ibus_rvalid,
  ibus_rready,
  dbus_awid,
  dbus_awaddr,
  dbus_awlen,
  dbus_awsize,
  dbus_awburst,
  dbus_awlock,
  dbus_awcache,
  dbus_awprot,
  dbus_awregion,
  dbus_awuser,
  dbus_awqos,
  dbus_awvalid,
  dbus_awready,
  dbus_wdata,
  dbus_wstrb,
  dbus_wlast,
  dbus_wuser,
  dbus_wvalid,
  dbus_wready,
  dbus_bid,
  dbus_bresp,
  dbus_bvalid,
  dbus_buser,
  dbus_bready,
  dbus_arid,
  dbus_araddr,
  dbus_arlen,
  dbus_arsize,
  dbus_arburst,
  dbus_arlock,
  dbus_arcache,
  dbus_arprot,
  dbus_arregion,
  dbus_aruser,
  dbus_arqos,
  dbus_arvalid,
  dbus_arready,
  dbus_rid,
  dbus_rdata,
  dbus_rresp,
  dbus_rlast,
  dbus_ruser,
  dbus_rvalid,
  dbus_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME system_clk, ASSOCIATED_RESET system_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN soc_bd_system_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 system_clk CLK" *)
input wire system_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME system_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 system_rst RST" *)
input wire system_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWID" *)
output wire [15 : 0] ibus_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWADDR" *)
output wire [31 : 0] ibus_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWLEN" *)
output wire [7 : 0] ibus_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWSIZE" *)
output wire [2 : 0] ibus_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWBURST" *)
output wire [1 : 0] ibus_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWLOCK" *)
output wire ibus_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWCACHE" *)
output wire [3 : 0] ibus_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWPROT" *)
output wire [2 : 0] ibus_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWREGION" *)
output wire [3 : 0] ibus_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWUSER" *)
output wire [7 : 0] ibus_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWQOS" *)
output wire [3 : 0] ibus_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWVALID" *)
output wire ibus_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus AWREADY" *)
input wire ibus_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus WDATA" *)
output wire [31 : 0] ibus_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus WSTRB" *)
output wire [3 : 0] ibus_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus WLAST" *)
output wire ibus_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus WUSER" *)
output wire [7 : 0] ibus_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus WVALID" *)
output wire ibus_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus WREADY" *)
input wire ibus_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus BID" *)
input wire [15 : 0] ibus_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus BRESP" *)
input wire [1 : 0] ibus_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus BVALID" *)
input wire ibus_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus BUSER" *)
input wire [7 : 0] ibus_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus BREADY" *)
output wire ibus_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARID" *)
output wire [15 : 0] ibus_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARADDR" *)
output wire [31 : 0] ibus_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARLEN" *)
output wire [7 : 0] ibus_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARSIZE" *)
output wire [2 : 0] ibus_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARBURST" *)
output wire [1 : 0] ibus_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARLOCK" *)
output wire ibus_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARCACHE" *)
output wire [3 : 0] ibus_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARPROT" *)
output wire [2 : 0] ibus_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARREGION" *)
output wire [3 : 0] ibus_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARUSER" *)
output wire [7 : 0] ibus_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARQOS" *)
output wire [3 : 0] ibus_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARVALID" *)
output wire ibus_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus ARREADY" *)
input wire ibus_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RID" *)
input wire [15 : 0] ibus_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RDATA" *)
input wire [31 : 0] ibus_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RRESP" *)
input wire [1 : 0] ibus_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RLAST" *)
input wire ibus_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RUSER" *)
input wire [7 : 0] ibus_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RVALID" *)
input wire ibus_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ibus, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 16, ADDR_WIDTH 32, AWUSER_WIDTH 8, ARUSER_WIDTH 8, WUSER_WIDTH 8, RUSER_WIDTH 8, BUSER_WIDTH 8, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B\
ITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ibus RREADY" *)
output wire ibus_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWID" *)
output wire [15 : 0] dbus_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWADDR" *)
output wire [31 : 0] dbus_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWLEN" *)
output wire [7 : 0] dbus_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWSIZE" *)
output wire [2 : 0] dbus_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWBURST" *)
output wire [1 : 0] dbus_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWLOCK" *)
output wire dbus_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWCACHE" *)
output wire [3 : 0] dbus_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWPROT" *)
output wire [2 : 0] dbus_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWREGION" *)
output wire [3 : 0] dbus_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWUSER" *)
output wire [7 : 0] dbus_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWQOS" *)
output wire [3 : 0] dbus_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWVALID" *)
output wire dbus_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus AWREADY" *)
input wire dbus_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus WDATA" *)
output wire [31 : 0] dbus_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus WSTRB" *)
output wire [3 : 0] dbus_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus WLAST" *)
output wire dbus_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus WUSER" *)
output wire [7 : 0] dbus_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus WVALID" *)
output wire dbus_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus WREADY" *)
input wire dbus_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus BID" *)
input wire [15 : 0] dbus_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus BRESP" *)
input wire [1 : 0] dbus_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus BVALID" *)
input wire dbus_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus BUSER" *)
input wire [7 : 0] dbus_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus BREADY" *)
output wire dbus_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARID" *)
output wire [15 : 0] dbus_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARADDR" *)
output wire [31 : 0] dbus_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARLEN" *)
output wire [7 : 0] dbus_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARSIZE" *)
output wire [2 : 0] dbus_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARBURST" *)
output wire [1 : 0] dbus_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARLOCK" *)
output wire dbus_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARCACHE" *)
output wire [3 : 0] dbus_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARPROT" *)
output wire [2 : 0] dbus_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARREGION" *)
output wire [3 : 0] dbus_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARUSER" *)
output wire [7 : 0] dbus_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARQOS" *)
output wire [3 : 0] dbus_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARVALID" *)
output wire dbus_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus ARREADY" *)
input wire dbus_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RID" *)
input wire [15 : 0] dbus_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RDATA" *)
input wire [31 : 0] dbus_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RRESP" *)
input wire [1 : 0] dbus_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RLAST" *)
input wire dbus_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RUSER" *)
input wire [7 : 0] dbus_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RVALID" *)
input wire dbus_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbus, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 16, ADDR_WIDTH 32, AWUSER_WIDTH 8, ARUSER_WIDTH 8, WUSER_WIDTH 8, RUSER_WIDTH 8, BUSER_WIDTH 8, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B\
ITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dbus RREADY" *)
output wire dbus_rready;

  core #(
    .AXI4_ADDRESS_WIDTH(32),
    .AXI4_RDATA_WIDTH(32),
    .AXI4_WDATA_WIDTH(32),
    .AXI4_ID_WIDTH(16),
    .AXI4_USER_WIDTH(8),
    .REGISTERED_GRANT("FALSE")
  ) inst (
    .system_clk(system_clk),
    .system_rst(system_rst),
    .ibus_awid(ibus_awid),
    .ibus_awaddr(ibus_awaddr),
    .ibus_awlen(ibus_awlen),
    .ibus_awsize(ibus_awsize),
    .ibus_awburst(ibus_awburst),
    .ibus_awlock(ibus_awlock),
    .ibus_awcache(ibus_awcache),
    .ibus_awprot(ibus_awprot),
    .ibus_awregion(ibus_awregion),
    .ibus_awuser(ibus_awuser),
    .ibus_awqos(ibus_awqos),
    .ibus_awvalid(ibus_awvalid),
    .ibus_awready(ibus_awready),
    .ibus_wdata(ibus_wdata),
    .ibus_wstrb(ibus_wstrb),
    .ibus_wlast(ibus_wlast),
    .ibus_wuser(ibus_wuser),
    .ibus_wvalid(ibus_wvalid),
    .ibus_wready(ibus_wready),
    .ibus_bid(ibus_bid),
    .ibus_bresp(ibus_bresp),
    .ibus_bvalid(ibus_bvalid),
    .ibus_buser(ibus_buser),
    .ibus_bready(ibus_bready),
    .ibus_arid(ibus_arid),
    .ibus_araddr(ibus_araddr),
    .ibus_arlen(ibus_arlen),
    .ibus_arsize(ibus_arsize),
    .ibus_arburst(ibus_arburst),
    .ibus_arlock(ibus_arlock),
    .ibus_arcache(ibus_arcache),
    .ibus_arprot(ibus_arprot),
    .ibus_arregion(ibus_arregion),
    .ibus_aruser(ibus_aruser),
    .ibus_arqos(ibus_arqos),
    .ibus_arvalid(ibus_arvalid),
    .ibus_arready(ibus_arready),
    .ibus_rid(ibus_rid),
    .ibus_rdata(ibus_rdata),
    .ibus_rresp(ibus_rresp),
    .ibus_rlast(ibus_rlast),
    .ibus_ruser(ibus_ruser),
    .ibus_rvalid(ibus_rvalid),
    .ibus_rready(ibus_rready),
    .dbus_awid(dbus_awid),
    .dbus_awaddr(dbus_awaddr),
    .dbus_awlen(dbus_awlen),
    .dbus_awsize(dbus_awsize),
    .dbus_awburst(dbus_awburst),
    .dbus_awlock(dbus_awlock),
    .dbus_awcache(dbus_awcache),
    .dbus_awprot(dbus_awprot),
    .dbus_awregion(dbus_awregion),
    .dbus_awuser(dbus_awuser),
    .dbus_awqos(dbus_awqos),
    .dbus_awvalid(dbus_awvalid),
    .dbus_awready(dbus_awready),
    .dbus_wdata(dbus_wdata),
    .dbus_wstrb(dbus_wstrb),
    .dbus_wlast(dbus_wlast),
    .dbus_wuser(dbus_wuser),
    .dbus_wvalid(dbus_wvalid),
    .dbus_wready(dbus_wready),
    .dbus_bid(dbus_bid),
    .dbus_bresp(dbus_bresp),
    .dbus_bvalid(dbus_bvalid),
    .dbus_buser(dbus_buser),
    .dbus_bready(dbus_bready),
    .dbus_arid(dbus_arid),
    .dbus_araddr(dbus_araddr),
    .dbus_arlen(dbus_arlen),
    .dbus_arsize(dbus_arsize),
    .dbus_arburst(dbus_arburst),
    .dbus_arlock(dbus_arlock),
    .dbus_arcache(dbus_arcache),
    .dbus_arprot(dbus_arprot),
    .dbus_arregion(dbus_arregion),
    .dbus_aruser(dbus_aruser),
    .dbus_arqos(dbus_arqos),
    .dbus_arvalid(dbus_arvalid),
    .dbus_arready(dbus_arready),
    .dbus_rid(dbus_rid),
    .dbus_rdata(dbus_rdata),
    .dbus_rresp(dbus_rresp),
    .dbus_rlast(dbus_rlast),
    .dbus_ruser(dbus_ruser),
    .dbus_rvalid(dbus_rvalid),
    .dbus_rready(dbus_rready)
  );
endmodule
