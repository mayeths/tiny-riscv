// ALU就是ALU
// 注意misc instruction的in1和in2:
// lui:   in1 = rs1(reg0), in2 = imm
// auipc: in1 = pc,        in2 = imm
// jal:   in1 = pc,        in2 = imm(32'b4)
// jalr:  in1 = pc,        in2 = imm(32'b4)
// 还有移位的sll, srl, sra, slli, srai, rsli
// sll, srl, sra:    in1 = rs1, in2 = rs2
// slli, srli, srai: in1 = rs1, in2 = imm(shamt)


module ALU(
  input  logic[31:0] in1,
  input  logic[31:0] in2,
  input  logic[3:0]  action,

  output logic[31:0] out
);

  ////////
  logic [31:0] add_out  = in1 + in2;
  logic [31:0] sub_out  = in1 - in2;
  logic [31:0] and_out  = in1 & in2;
  logic [31:0] or_out   = in1 | in2;
  logic [31:0] xor_out  = in1 ^ in2;
  // TODO: the sll, srl, sra, slt, sltu may go wrong in this way, check them carefully.
  // For slt_out, check https://stackoverflow.com/a/53419495/11702338
  //   to see why we cann't just use sub_out[31]. (overflow)
  logic [31:0] sll_out  = (in1 << in2[4:0]);
  logic [31:0] srl_out  = (in1 >> in2[4:0]);
  logic [31:0] sra_out  = ({{32{in1[31]}}, in1} >> in2[4:0]);
  logic [31:0] slt_out  = {31'b0, in1[31] != in2[31] ? in1[31] : sub_out[31]};
  logic [31:0] sltu_out = {31'b0, sub_out[31]};

  ////////
  assign out =
    (action == `ALU_ADD)  ? add_out :
    (action == `ALU_SUB)  ? sub_out :
    (action == `ALU_AND)  ? and_out :
    (action == `ALU_OR)   ? or_out  :
    (action == `ALU_XOR)  ? xor_out :
    (action == `ALU_SLL)  ? sll_out :
    (action == `ALU_SRL)  ? srl_out :
    (action == `ALU_SRA)  ? sra_out :
    (action == `ALU_SLT)  ? slt_out :
    (action == `ALU_SLTU) ? sltu_out :
    32'b0;

endmodule