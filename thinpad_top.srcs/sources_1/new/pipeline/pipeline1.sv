module pipeline1(
  input wire clk,
  input wire rst,
  input wire flush,
  input wire stall,
  input wire [31:0] if_pc,   output wire [31:0] ex_pc,
  input wire [31:0] if_inst, output wire [31:0] ex_inst
);

  pipeline _pipeline1_(
    .clk(clk), .rst(rst), .flush(flush), .stall(stall),
    .in ({if_pc, if_inst}),
    .out({ex_pc, ex_inst})
  );

endmodule
