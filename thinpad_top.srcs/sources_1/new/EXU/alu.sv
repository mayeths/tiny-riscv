// ALU就是ALU
// 注意misc instruction的in1和in2:
// lui:   in1 = rs1(reg0), in2 = imm
// auipc: in1 = pc,        in2 = imm
// jal:   in1 = pc,        in2 = imm(32'b4)
// jalr:  in1 = pc,        in2 = imm(32'b4)
// 还有移位的sll, srl, sra, slli, srai, rsli
// sll, srl, sra:    in1 = rs1, in2 = rs2
// slli, srli, srai: in1 = rs1, in2 = imm(shamt)

`include "../defines.sv"

module ALU(
  input  logic[31:0] in1,
  input  logic[31:0] in2,
  input  logic[3:0]  action,

  output logic[31:0] out
);

  //bus
  (* dont_touch = "true" *) logic [31:0] add_out  = in1 + in2;
  (* dont_touch = "true" *) logic [31:0] sub_out  = in1 - in2;
  (* dont_touch = "true" *) logic [31:0] and_out  = in1 & in2;
  (* dont_touch = "true" *) logic [31:0] or_out   = in1 | in2;
  (* dont_touch = "true" *) logic [31:0] xor_out  = in1 ^ in2;
  // TODO: the sll, srl, sra, slt, sltu may go wrong in this way, check them carefully.
  // For slt_out, check https://stackoverflow.com/a/53419495/11702338
  //   to see why we cann't just use sub_out[31]. (overflow)
  (* dont_touch = "true" *) logic [31:0] sll_out  = (in1 << in2[4:0]);
  (* dont_touch = "true" *) logic [31:0] srl_out  = (in1 >> in2[4:0]);
  (* dont_touch = "true" *) logic [31:0] sra_out  = ({{32{in1[31]}}, in1} >> in2[4:0]);
  (* dont_touch = "true" *) logic [31:0] slt_out  = {31'b0, in1[31] != in2[31] ? in1[31] : sub_out[31]};
  (* dont_touch = "true" *) logic [31:0] sltu_out = {31'b0, sub_out[31]};
  //signal
  (* dont_touch = "true" *) logic need_add  = action == `ALU_ADD;
  (* dont_touch = "true" *) logic need_sub  = action == `ALU_SUB;
  (* dont_touch = "true" *) logic need_and  = action == `ALU_AND;
  (* dont_touch = "true" *) logic need_or   = action == `ALU_OR;
  (* dont_touch = "true" *) logic need_xor  = action == `ALU_XOR;
  (* dont_touch = "true" *) logic need_sll  = action == `ALU_SLL;
  (* dont_touch = "true" *) logic need_srl  = action == `ALU_SRL;
  (* dont_touch = "true" *) logic need_sra  = action == `ALU_SRA;
  (* dont_touch = "true" *) logic need_slt  = action == `ALU_SLT;
  (* dont_touch = "true" *) logic need_sltu = action == `ALU_SLTU;

  ////////
  assign out = 32'b0
    | ({32{need_add}}  & add_out)
    | ({32{need_sub}}  & add_out)
    | ({32{need_and}}  & add_out)
    | ({32{need_or }}  & add_out)
    | ({32{need_xor}}  & add_out)
    | ({32{need_sll}}  & add_out)
    | ({32{need_srl}}  & add_out)
    | ({32{need_sra}}  & add_out)
    | ({32{need_slt}}  & add_out)
    | ({32{need_sltu}} & add_out)
    ;

endmodule