`include "../defines.sv"

module lsu(
  //input
  input wire clk,
  input wire rst,
  input wire load_enable,
  input wire [2:0] load_type,
  input wire store_enable,
  input wire [1:0] store_type,
  input wire [31:0] addr,
  input wire [31:0] store_data,
  //output
  output wire [31:0] load_data,

  //Assign to BIU
  output wire dbus_rd,
  output wire dbus_wr,
  output wire [31:0] dbus_addr,
  output wire [31:0] dbus_data_i,
  input  wire [31:0] dbus_data_o,
  output wire [3:0] dbus_be,
  input  wire dbus_valid
);

  // Load Byte
  wire load_byte_a = addr[1:0] == 2'b00;
  wire load_byte_b = addr[1:0] == 2'b01;
  wire load_byte_c = addr[1:0] == 2'b10;
  wire load_byte_d = addr[1:0] == 2'b11;
  wire lb_extend =
    load_byte_a & dbus_data_o[7]  |
    load_byte_b & dbus_data_o[15] |
    load_byte_c & dbus_data_o[23] |
    load_byte_d & dbus_data_o[31] ;
  wire [31:0] load_byte_out = {load_type == `LB ? {24{lb_extend}} : 24'b0,
    {8{load_byte_a}} & dbus_data_o[7:0]   |
    {8{load_byte_b}} & dbus_data_o[15:8]  |
    {8{load_byte_c}} & dbus_data_o[23:16] |
    {8{load_byte_d}} & dbus_data_o[31:24]
  };
  // Load Half
  wire load_half_ab = addr[1:0] == 2'b00;
  wire load_half_bc = addr[1:0] == 2'b01;
  wire load_half_cd = addr[1:0] == 2'b10;
  wire lh_extend =
    load_half_ab & dbus_data_o[15] |
    load_half_bc & dbus_data_o[23] |
    load_half_cd & dbus_data_o[31] ;
  wire [31:0] load_half_out = {load_type == `LH ? {16{lh_extend}} : 16'b0,
    {16{load_half_ab}} & dbus_data_o[15:0] |
    {16{load_half_bc}} & dbus_data_o[23:8] |
    {16{load_half_cd}} & dbus_data_o[31:16]
  };
  // Load Word
  wire load_word_out = dbus_data_o;

  // Store Byte
  wire store_byte_a = store_type == `SB & addr[1:0] == 2'b00;
  wire store_byte_b = store_type == `SB & addr[1:0] == 2'b01;
  wire store_byte_c = store_type == `SB & addr[1:0] == 2'b10;
  wire store_byte_d = store_type == `SB & addr[1:0] == 2'b11;

  // Store Half
  wire store_half_ab = store_type == `SH & addr[1:0] == 2'b00;
  wire store_half_bc = store_type == `SH & addr[1:0] == 2'b01;
  wire store_half_cd = store_type == `SH & addr[1:0] == 2'b10;

  // Store Word
  wire store_word = store_type == `SW;

  wire [3:0] store_abcd = {
    store_word | store_byte_d | store_half_cd,
    store_word | store_byte_c | store_half_cd | store_half_bc,
    store_word | store_byte_b | store_half_bc | store_half_ab,
    store_word | store_byte_a | store_half_ab
  };

  assign dbus_rd = load_enable;
  assign dbus_wr = store_enable;
  assign dbus_addr = { addr[31:2], 2'b00};
  assign dbus_data_i = store_data;
  assign load_data =
    {32{load_type == `LB || load_type == `LBU}} & load_byte_out |
    {32{load_type == `LH || load_type == `LHU}} & load_half_out |
    {32{load_type == `LW                     }} & load_word_out ;
  assign dbus_be = store_abcd;

endmodule