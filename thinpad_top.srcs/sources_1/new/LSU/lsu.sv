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
  output  wire        data_req,
  input   wire        data_gnt,
  input   wire        data_rvalid,
  output  wire [31:0] data_addr,
  output  wire        data_we,
  output  wire [3:0]  data_be,
  input   wire [31:0] data_rdata,
  output  wire [31:0] data_wdata

);

  // Load Byte
  (* dont_touch = "true" *) wire load_byte_a = addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire load_byte_b = addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire load_byte_c = addr[1:0] == 2'b10;
  (* dont_touch = "true" *) wire load_byte_d = addr[1:0] == 2'b11;
  (* dont_touch = "true" *) wire lb_extend =
    load_byte_a & data_rdata[7]  |
    load_byte_b & data_rdata[15] |
    load_byte_c & data_rdata[23] |
    load_byte_d & data_rdata[31] ;
  (* dont_touch = "true" *) wire [31:0] load_byte_out = {load_type == `LB ? {24{lb_extend}} : 24'b0,
    {8{load_byte_a}} & data_rdata[7:0]   |
    {8{load_byte_b}} & data_rdata[15:8]  |
    {8{load_byte_c}} & data_rdata[23:16] |
    {8{load_byte_d}} & data_rdata[31:24]
  };
  // Load Half
  (* dont_touch = "true" *) wire load_half_ab = addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire load_half_bc = addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire load_half_cd = addr[1:0] == 2'b10;
  (* dont_touch = "true" *) wire lh_extend =
    load_half_ab & data_rdata[15] |
    load_half_bc & data_rdata[23] |
    load_half_cd & data_rdata[31] ;
  (* dont_touch = "true" *) wire [31:0] load_half_out = {load_type == `LH ? {16{lh_extend}} : 16'b0,
    {16{load_half_ab}} & data_rdata[15:0] |
    {16{load_half_bc}} & data_rdata[23:8] |
    {16{load_half_cd}} & data_rdata[31:16]
  };
  // Load Word
  (* dont_touch = "true" *) wire load_word_out = data_rdata;

  // Store Byte
  (* dont_touch = "true" *) wire store_byte_a = store_type == `SB & addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire store_byte_b = store_type == `SB & addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire store_byte_c = store_type == `SB & addr[1:0] == 2'b10;
  (* dont_touch = "true" *) wire store_byte_d = store_type == `SB & addr[1:0] == 2'b11;

  // Store Half
  (* dont_touch = "true" *) wire store_half_ab = store_type == `SH & addr[1:0] == 2'b00;
  (* dont_touch = "true" *) wire store_half_bc = store_type == `SH & addr[1:0] == 2'b01;
  (* dont_touch = "true" *) wire store_half_cd = store_type == `SH & addr[1:0] == 2'b10;

  // Store Word
  (* dont_touch = "true" *) wire store_word = store_type == `SW;
  (* dont_touch = "true" *) wire [3:0] store_abcd = {
    store_word | store_byte_d | store_half_cd,
    store_word | store_byte_c | store_half_cd | store_half_bc,
    store_word | store_byte_b | store_half_bc | store_half_ab,
    store_word | store_byte_a | store_half_ab
  };

  assign data_req  = load_enable | store_enable;
  assign data_addr = addr;
  assign data_we   = store_enable;
  assign data_be = store_abcd;
  assign data_wdata = store_data;
  assign load_data =
    {32{load_type == `LB || load_type == `LBU}} & load_byte_out |
    {32{load_type == `LH || load_type == `LHU}} & load_half_out |
    {32{load_type == `LW                     }} & load_word_out ;

endmodule