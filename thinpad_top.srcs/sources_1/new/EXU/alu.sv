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
  input  wire[31:0] in1,
  input  wire[31:0] in2,
  input  wire[3:0]  action,

  output wire[31:0] out
);

  //bus
  (* dont_touch = "true" *) wire [31:0] add_out  = in1 + in2;
  (* dont_touch = "true" *) wire [31:0] sub_out  = in1 - in2;
  (* dont_touch = "true" *) wire [31:0] and_out  = in1 & in2;
  (* dont_touch = "true" *) wire [31:0] or_out   = in1 | in2;
  (* dont_touch = "true" *) wire [31:0] xor_out  = in1 ^ in2;
  // TODO: the sll, srl, sra, slt, sltu may go wrong in this way, check them carefully.
  // For slt_out, check https://stackoverflow.com/a/53419495/11702338
  //   to see why we cann't just use sub_out[31]. (overflow)
  (* dont_touch = "true" *) wire [31:0] sll_out  = (in1 << in2[4:0]);
  (* dont_touch = "true" *) wire [31:0] srl_out  = (in1 >> in2[4:0]);
  (* dont_touch = "true" *) wire [31:0] sra_out  = ({{32{in1[31]}}, in1} >> in2[4:0]);
  (* dont_touch = "true" *) wire [31:0] slt_out  = {31'b0, in1[31] != in2[31] ? in1[31] : sub_out[31]};
  (* dont_touch = "true" *) wire [31:0] sltu_out = {31'b0, sub_out[31]};
  //signal
  (* dont_touch = "true" *) wire need_add  = action == `ALU_ADD;
  (* dont_touch = "true" *) wire need_sub  = action == `ALU_SUB;
  (* dont_touch = "true" *) wire need_and  = action == `ALU_AND;
  (* dont_touch = "true" *) wire need_or   = action == `ALU_OR;
  (* dont_touch = "true" *) wire need_xor  = action == `ALU_XOR;
  (* dont_touch = "true" *) wire need_sll  = action == `ALU_SLL;
  (* dont_touch = "true" *) wire need_srl  = action == `ALU_SRL;
  (* dont_touch = "true" *) wire need_sra  = action == `ALU_SRA;
  (* dont_touch = "true" *) wire need_slt  = action == `ALU_SLT;
  (* dont_touch = "true" *) wire need_sltu = action == `ALU_SLTU;

  ////////
  assign out = 32'b0
    | ({32{need_add}}  & add_out )
    | ({32{need_sub}}  & sub_out )
    | ({32{need_and}}  & and_out )
    | ({32{need_or }}  & or_out  )
    | ({32{need_xor}}  & xor_out )
    | ({32{need_sll}}  & sll_out )
    | ({32{need_srl}}  & srl_out )
    | ({32{need_sra}}  & sra_out )
    | ({32{need_slt}}  & slt_out )
    | ({32{need_sltu}} & sltu_out)
    ;

endmodule