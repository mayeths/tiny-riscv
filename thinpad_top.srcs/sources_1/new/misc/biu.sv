`include "../defines.sv"

module biu (
    input [31:0] ibus_addr,
    output [31:0] ibus_data_o,
    input ibus_rd,
    // input ibus_wr,
    output ibus_valid,

    input dbus_rd,
    input dbus_wr,
    input [31:0] dbus_addr,
    input [31:0] dbus_data_i,
    output [31:0] dbus_data_o,
    input [3:0] dbus_be,
    output dbus_valid,

    // BaseRAM
    inout wire [31:0] base_ram_data,  //BaseRAM数据，低8位与CPLD串口控制器共享
    output wire [19:0] base_ram_addr,  //BaseRAM地址
    output wire [3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire base_ram_ce_n,       //BaseRAM片选，低有效
    output wire base_ram_oe_n,       //BaseRAM读使能，低有效
    output wire base_ram_we_n,       //BaseRAM写使能，低有效

    // ExtRAM
    inout wire [31:0] ext_ram_data,  //ExtRAM数据
    output wire [19:0] ext_ram_addr, //ExtRAM地址
    output wire [3:0] ext_ram_be_n,  //ExtRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire ext_ram_ce_n,       //ExtRAM片选，低有效
    output wire ext_ram_oe_n,       //ExtRAM读使能，低有效
    output wire ext_ram_we_n        //ExtRAM写使能，低有效

    // output wire [31:0] bus_data_o,
    // input wire [31:0] bus_data_i,
    // output reg [19:0] bus_addr,
    // output reg bus_en,
    // output reg bus_rd,
    // output reg bus_wr
);

logic [31:0] bus_data_o;
logic [31:0] bus_data_i;
logic [19:0] bus_addr;
// logic bus_en;
logic bus_rd;
logic bus_wr;
logic [3:0] bus_be;
logic bus_valid;    // Slave -> Master

// ====== ibus/dbus -> system bus ====== //
assign bus_data_o = 
    dbus_wr ? dbus_data_i :
    // ibus_wr ? ibus_data_i :      // ibus is readonly
    32'b0;

assign bus_addr = 
    (dbus_rd | dbus_wr) ? dbus_addr :
    ibus_rd ? ibus_addr :
    32'b0;

// assign bus_en = dbus_en | ibus_en;
assign bus_rd = dbus_rd | ibus_rd;
assign bus_wr = dbus_wr; // | ibus_wr;
assign bus_be = dbus_be;

assign ibus_valid = bus_valid & ~(dbus_rd | dbus_wr) & ibus_rd;
assign dbus_valid = bus_valid & (dbus_rd | dbus_wr);

// ====== end system bus ====== //

logic baseram_en;
logic extram_en;

// ====== system bus to peripherals ====== //

`define ADDR_BASERAM_MASK (32'h003F_FFFF)
`define ADDR_BASERAM_START (32'h8000_0000)
`define ADDR_BASERAM_END (32'h803F_FFFF)

`define ADDR_EXTRAM_MASK (32'h003F_FFFF)
`define ADDR_EXTRAM_START (32'h8040_0000)
`define ADDR_EXTRAM_END (32'h807F_FFFF)

// BaseRAM
assign baseram_en = 
    (bus_addr >= `ADDR_BASERAM_START) &
    (bus_addr <= `ADDR_BASERAM_END);

assign base_ram_ce_n = ~baseram_en;
assign base_ram_addr = bus_addr & `ADDR_BASERAM_MASK;
assign base_ram_be_n = ~bus_be;
assign base_ram_oe_n = ~bus_rd;
assign base_ram_we_n = ~bus_wr;

// ExtRAM
assign extram_en = 
    (bus_addr >= `ADDR_EXTRAM_START) &
    (bus_addr <= `ADDR_EXTRAM_END);

assign base_ram_ce_n = ~extram_en;
assign ext_ram_addr = bus_addr & `ADDR_EXTRAM_MASK;
assign ext_ram_be_n = ~bus_be;
assign ext_ram_oe_n = ~bus_rd;
assign ext_ram_we_n = ~bus_wr;


// ====== end peripherals ====== //

endmodule