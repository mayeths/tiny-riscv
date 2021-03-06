module pipeline2(
  input wire clk,
  input wire rst,
  input wire flush,
  input wire stall,
  input wire [31:0] exu_alu_out,      output wire [31:0] lsu_alu_out,
  input wire        exu_load_enable,  output wire        lsu_load_enable,
  input wire        exu_store_enable, output wire        lsu_store_enable,
  input wire [2:0]  exu_load_type,    output wire [2:0]  lsu_load_type,
  input wire [1:0]  exu_store_type,   output wire [1:0]  lsu_store_type,
  input wire [31:0] exu_store_data,   output wire [31:0] lsu_store_data,
  input wire        exu_dst_enable,   output wire        lsu_dst_enable,
  input wire [4:0]  exu_dst_addr,     output wire [4:0]  lsu_dst_addr
);

  pipeline _pipeline2_(
    .clk(clk), .rst(rst), .flush(flush), .stall(stall),
    .in ({
      exu_alu_out,
      exu_load_enable,
      exu_load_type,
      exu_store_enable,
      exu_store_type,
      exu_store_data,
      exu_dst_enable,
      exu_dst_addr
    }),
    .out({
      lsu_alu_out,
      lsu_load_enable,
      lsu_load_type,
      lsu_store_enable,
      lsu_store_type,
      lsu_store_data,
      lsu_dst_enable,
      lsu_dst_addr
    })
  );

endmodule
