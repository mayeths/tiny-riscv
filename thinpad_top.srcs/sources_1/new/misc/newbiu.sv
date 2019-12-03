// BIU: bus interface unit
module biu (
    input  wire        clk,
    // dbus
    input  wire        dbus_ce,
    input  wire [31:0] dbus_addr,
    input  wire        dbus_we,
    input  wire [3:0]  dbus_be,
    input  wire        dbus_oe,
    output wire [31:0] dbus_rdata,
    input  wire [31:0] dbus_wdata,

    // ibus
    input  wire        ibus_ce,
    input  wire [31:0] ibus_addr,
    output wire [31:0] ibus_rdata,
    output wire        ibus_stallreq,

    // baseram_wrapper
    output wire        base_ce,
    output wire        base_oe,
    output wire        base_we,
    output wire [3:0]  base_be,
    output wire [19:0] base_addr,
    output wire [31:0] base_wdata,
    input  wire [31:0] base_rdata,
    input  wire        base_busy,
    input  wire        base_ok,

    // extram
    inout  wire [31:0] ext_ram_data,
    output wire [19:0] ext_ram_addr,
    output wire [3:0]  ext_ram_be_n,
    output wire        ext_ram_ce_n,
    output wire        ext_ram_oe_n,
    output wire        ext_ram_we_n
);

`define ADDR_BASERAM_MASK  (32'h003F_FFFF)
`define ADDR_BASERAM_START (32'h8000_0000)
`define ADDR_BASERAM_END   (32'h803F_FFFF)

`define ADDR_EXTRAM_MASK   (32'h003F_FFFF)
`define ADDR_EXTRAM_START  (32'h8040_0000)
`define ADDR_EXTRAM_END    (32'h807F_FFFF)

// bus in
(* dont_touch = "true" *) wire [31:0] bus_addr = 
    dbus_ce ? dbus_addr : 
    ibus_ce ? ibus_addr : 
    32'b0;

(* dont_touch = "true" *) wire [31:0] bus_wdata =
    dbus_ce ? dbus_wdata : 
    32'b0;

(* dont_touch = "true" *) wire [31:0] bus_rdata = 
    bus_base_ram_ce ? base_ram_data : 
    bus_ext_ram_ce ? ext_ram_data : 
    32'b0;

(* dont_touch = "true" *) wire bus_we = dbus_ce ? dbus_we : 1'b0;
(* dont_touch = "true" *) wire [3:0] bus_be = dbus_ce ? dbus_be : 4'b1111;

assign ibus_rdata = ibus_ce ? bus_rdata : 32'b0;
assign ibus_stallreq = dbus_ce;

assign dbus_rdata = dbus_ce ? bus_rdata : 32'b0;

// bus out
(* dont_touch = "true" *) wire bus_base_ram_ce = 
    (bus_addr >= `ADDR_BASERAM_START) && (bus_addr <= `ADDR_BASERAM_END);

(* dont_touch = "true" *) wire bus_ext_ram_ce = 
    (bus_addr >= `ADDR_EXTRAM_START) && (bus_addr <= `ADDR_EXTRAM_END);

assign base_ram_addr = (bus_addr & `ADDR_BASERAM_MASK) >> 2;
assign ext_ram_addr = (bus_addr & `ADDR_EXTRAM_MASK) >> 2;

assign base_ram_be_n = ~bus_be;
assign ext_ram_be_n = ~bus_be;

assign base_ram_ce_n = ~bus_base_ram_ce;
assign ext_ram_ce_n = ~bus_ext_ram_ce;

assign base_ram_we_n = ~bus_we;
assign ext_ram_we_n = ~bus_we;

assign base_ram_oe_n = ~base_ram_we_n;
assign ext_ram_oe_n = ~ext_ram_we_n;

assign base_ram_data = 
    ~base_ram_we_n ? bus_wdata : 32'bz;
assign ext_ram_data = 
    ~ext_ram_we_n ? bus_wdata : 32'bz;


endmodule