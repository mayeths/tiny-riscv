// pcgu: 解码inst生成下一条指令的pc地址
`include "../defines.sv"
module pcgu(
  input  wire [31:0] inst,
  input  wire [31:0] pc,
  input  wire [31:0] jalr_data,

  output wire [31:0] pc_next,
  output wire [31:0] pc_backup
);

  ////// Control signals
  wire [6:0] opcode  = inst[6:0];
  wire belong_branch = opcode == `OP_BRANCH;
  wire imm32_neg     = inst[31] == 1;
  wire do_branch     = belong_branch & imm32_neg;
  wire is_jal        = opcode == `OP_JAL;
  wire is_jalr       = opcode == `OP_JAL;

  ////// Bus
  //imm. See p.18(figure 2.4) of riscv-spec.pdf.
  wire [31:0] immJal  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  wire [31:0] immJalr = {{21{inst[31]}}, inst[30:25], inst[24:21], inst[20]};
  wire [31:0] immBxx  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
  //next pc address: pc4 or jal/jalr/branch target.
  //jalr & bxx instructions reuse the same add module.
  wire [31:0] pc4  = pc + 4;
  wire [31:0] goto = (is_jalr ? immJalr : immBxx) + (is_jalr ? jalr_data : pc);

  ////// Output
  assign pc_next <= pc4
    | ({31{is_jal   }} & immJal)
    | ({31{is_jalr  }} & goto  )
    | ({31{do_branch}} & goto  )
    ;
  assign pc_backup <= do_branch ? pc4 : goto;

endmodule