module BPRU (
  input  logic is_beq,
  input  logic is_bne,
  input  logic is_blt,
  input  logic is_bge,
  input  logic is_bltu,
  input  logic is_bgeu,
  input  logic [31:0] alu_out,
  output logic bpfail
);

  ////////
  logic alu_out_0 = (alu_out == 32'b0);

  ////////
  // TODO: please test this module.
  assign bpfail =
    (is_beq  &   alu_out_0) ? :  // alu sub
    (is_bne  & ! alu_out_0) ? :  // alu sub
    (is_blt  &   alu_out_0) ? :  // alu slt
    (is_bge  & ! alu_out_0) ? :  // alu slt
    (is_bltu &   alu_out_0) ? :  // alu sltu
    (is_bgeu & ! alu_out_0) ? :  // alu sltu
    1'b0;

endmodule