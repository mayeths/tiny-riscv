module pipeline1(
  input wire clk,
  input wire rst,
  input wire flush,
  input wire stall,
  input wire if_pc,   output wire ex_pc,
  input wire if_inst, output wire ex_inst
);

  pipeline _pipeline1_(
    .clk(clk), .rst(rst), .flush(flush), .stall(stall),
    .in ({if_pc, if_inst}),
    .out({ex_pc, ex_inst})
  );

endmodule
