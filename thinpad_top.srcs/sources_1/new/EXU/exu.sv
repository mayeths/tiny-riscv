// EXU: 执行单元
// 所有执行有关的子单元均置在该模块下。
// 当前只有ALU，以后可能还有MDU(Mul-Div Unit)，FPU(Floating Point Unit)以支持M和F指令拓展
// 届时，还需要一个Dispatch Unit.

module exu(
  input  wire [31:0] rs1,
  input  wire [31:0] rs2,
  input  wire [31:0] pc,
  input  wire [31:0] imm32,
  input  wire        op1_is_pc,
  input  wire        op2_is_imm,
  input  wire [3:0]  alu_action,
  input  wire [2:0]  csru_action,
  input  wire [31:0] csr,
  input  wire [31:0] uimm32,
  input  wire [1:0]  exu_out_src,

  output wire [31:0] exu_out,
  output wire [31:0] csr_out
);
  (* dont_touch = "true" *) wire [31:0] in1 = op1_is_pc  ? pc    : rs1;
  (* dont_touch = "true" *) wire [31:0] in2 = op2_is_imm ? imm32 : rs2;
  (* dont_touch = "true" *) wire [31:0] alu_out;
  (* dont_touch = "true" *) wire [31:0] csru_out;
  (* dont_touch = "true" *) wire [31:0] mdu_out;
  (* dont_touch = "true" *) wire [31:0] fpu_out;

  wire [31:0] test = in1;

  ALU alu_(
    //input
    .in1(in1),
    .in2(in2),
    .action(alu_action),
    //output
    .out(alu_out)
  );

  CSRU csru_(
    //input
    .csr(csr),
    .rs1(rs1),
    .uimm32(uimm32),
    .csru_action(csru_action),
    //output
    .rd_out(csru_out),
    .csr_out(csr_out)
  );
  (* dont_touch = "true" *) wire exu_out_alu  = exu_out_src == `OUTPUT_ALU;
  (* dont_touch = "true" *) wire exu_out_csru = exu_out_src == `OUTPUT_CSRU;
  (* dont_touch = "true" *) wire exu_out_mdu  = exu_out_src == `OUTPUT_MDU;
  (* dont_touch = "true" *) wire exu_out_fpu  = exu_out_src == `OUTPUT_FPU;
  assign exu_out = 32'b0
    | ({32{exu_out_alu }} & alu_out )
    | ({32{exu_out_csru}} & csru_out)
    | ({32{exu_out_mdu }} & mdu_out )
    | ({32{exu_out_fpu }} & fpu_out )
    ;

endmodule
