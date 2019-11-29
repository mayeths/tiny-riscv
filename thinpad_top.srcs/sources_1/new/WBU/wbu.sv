module wbu(
  input  wire load_enable,
  input  wire [31:0] load_data,
  input  wire [31:0] alu_out,

  output wire [31:0] wb_data
);

  assign wb_data = load_enable ? load_data : alu_out;

endmodule