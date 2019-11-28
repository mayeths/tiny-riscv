// Decode Unit: 译码单元
// 用于对IFU提供的指令进行译码
`include "../defines.sv";

module decode (
  input  wire [31:0] inst,

  //normal instruction
  output wire        rs1_enable,
  output wire        rs2_enable,
  output wire [4:0]  rs1_addr,
  output wire [4:0]  rs2_addr,
  output wire [3:0]  alu_action,
  output wire        op1_is_pc,
  output wire        op2_is_imm,
  output wire [31:0] imm32,
  output wire        dst_enable,
  output wire [4:0]  dst_addr,
  output wire        load_enable,
  output wire        store_enable,
  output wire [2:0]  load_type,
  output wire [1:0]  store_type,
  output wire [1:0]  exu_out_src,
  //csr instruction
  output wire [11:0] csr_addr,
  output wire        csr_read_enable,
  output wire        csr_write_enable,
  output wire [2:0]  csru_action,
  output wire [31:0] uimm32,

  //exception
  input  wire [1:0] mode,
  output wire illegal_inst,
  output wire breakpoint,
  output wire env_call_M,
  output wire env_call_S,
  output wire env_call_U,
  output wire mret,
  output wire sret,
  output wire uret,
  output wire wfi  // we treat WFI as NOP, this is always Z or 0.
);

  // illegal instruction, ECALL等异常发生时：后续控制信号全置为0，
  // 指示IFU去mtvec，从那里开始pc+4，不阻塞流水线。
  // 但是trap_occur一直挂着怎么办啊，会一直挂着吗？

  //TODO: please test these wire. All of them.
  /**********************
   * Info from inst.
   *********************/

  ////////
  //basic
  wire [6:0] opcode = inst[6:0];
  wire [4:0] rd     = inst[11:7];
  wire [2:0] funct3 = inst[14:12];
  wire [4:0] rs1    = inst[19:15];
  wire [4:0] rs2    = inst[24:20];
  wire [6:0] funct7 = inst[31:25];
  wire belong_branch = opcode == `OP_BRANCH;
  wire belong_load   = opcode == `OP_LOAD;
  wire belong_store  = opcode == `OP_STORE;
  wire belong_alui   = opcode == `OP_ALUI;
  wire belong_alur   = opcode == `OP_ALUR;
  wire belong_fence  = opcode == `OP_FENCE;
  wire belong_system = opcode == `OP_SYSTEM;
  wire belong_amo    = opcode == `OP_AMO;
  wire func3_000     = func3  == 3'b000;
  wire func3_001     = func3  == 3'b001;
  wire func3_010     = func3  == 3'b010;
  wire func3_011     = func3  == 3'b011;
  wire func3_100     = func3  == 3'b100;
  wire func3_101     = func3  == 3'b101;
  wire func3_110     = func3  == 3'b110;
  wire func3_111     = func3  == 3'b111;

  ////////
  //misc instruction
  wire is_lui   = opcode == `OP_LUI;
  wire is_auipc = opcode == `OP_AUIPC;
  wire is_jal   = opcode == `OP_JAL;
  wire is_jalr  = opcode == `OP_JALR;
  //branch
  wire is_beq  = belong_branch & func3_000;
  wire is_bne  = belong_branch & func3_001;
  wire is_blt  = belong_branch & func3_100;
  wire is_bge  = belong_branch & func3_101;
  wire is_bltu = belong_branch & func3_110;
  wire is_bgeu = belong_branch & func3_111;
  //load
  wire is_lb  = belong_load & func3_000;
  wire is_lh  = belong_load & func3_001;
  wire is_lw  = belong_load & func3_010;
  wire is_lbu = belong_load & func3_100;
  wire is_lhu = belong_load & func3_101;
  //store
  wire is_sb = belong_store & func3_000;
  wire is_sh = belong_store & func3_001;
  wire is_sw = belong_store & func3_010;
  //alui
  wire is_addi  = belong_alui & func3_000;
  wire is_slti  = belong_alui & func3_010;
  wire is_sltiu = belong_alui & func3_011;
  wire is_xori  = belong_alui & func3_100;
  wire is_ori   = belong_alui & func3_110;
  wire is_andi  = belong_alui & func3_111;
  wire is_slli  = belong_alui & func3_001;
  wire is_srli  = belong_alui & func3_101 & (funct7 == 7'b0000000);
  wire is_srai  = belong_alui & func3_101 & (funct7 == 7'b0100000);
  //alur
  wire is_add  = belong_alur & func3_000 & (funct7 == 7'b0000000);
  wire is_sub  = belong_alur & func3_000 & (funct7 == 7'b0100000);
  wire is_sll  = belong_alur & func3_001;
  wire is_slt  = belong_alur & func3_010;
  wire is_sltu = belong_alur & func3_011;
  wire is_xor  = belong_alur & func3_100;
  wire is_srl  = belong_alur & func3_101 & (funct7 == 7'b0000000);
  wire is_sra  = belong_alur & func3_101 & (funct7 == 7'b0100000);
  wire is_or   = belong_alur & func3_110;
  wire is_and  = belong_alur & func3_111;
  //fence
  wire is_fence  = belong_fence & func3_000;
  wire is_fencei = belong_fence & func3_001;
  //system
  wire is_ecall  = belong_system & func3_000 & (rs2 == 5'b00000);
  wire is_ebreak = belong_system & func3_000 & (rs2 == 5'b00001);
  wire is_mret   = belong_system & func3_000 & (funct7 == 7'b0011000) & (rs2 == 5'b00010);
  wire is_sret   = belong_system & func3_000 & (funct7 == 7'b0001000) & (rs2 == 5'b00010);
  wire is_uret   = belong_system & func3_000 & (funct7 == 7'b0000000) & (rs2 == 5'b00010);
  wire is_wfi    = belong_system & func3_000 & (funct7 == 7'b0001000) & (rs2 == 5'b00101);
  wire is_sfence = belong_system & func3_000 & (funct7 == 7'b0001001);
  wire is_csrrw  = belong_system & func3_001;
  wire is_csrrs  = belong_system & func3_010;
  wire is_csrrc  = belong_system & func3_011;
  wire is_csrrwi = belong_system & func3_101;
  wire is_csrrsi = belong_system & func3_110;
  wire is_csrrci = belong_system & func3_111;
  //amo
  wire is_lrw      = belong_amo & func3_010 & (funct7[6:2] == 5'b00010);
  wire is_scw      = belong_amo & func3_010 & (funct7[6:2] == 5'b00011);
  wire is_amoswapw = belong_amo & func3_010 & (funct7[6:2] == 5'b00001);
  wire is_amoaddw  = belong_amo & func3_010 & (funct7[6:2] == 5'b00000);
  wire is_amoxorw  = belong_amo & func3_010 & (funct7[6:2] == 5'b00100);
  wire is_amoandw  = belong_amo & func3_010 & (funct7[6:2] == 5'b01100);
  wire is_amoorw   = belong_amo & func3_010 & (funct7[6:2] == 5'b01000);
  wire is_amominw  = belong_amo & func3_010 & (funct7[6:2] == 5'b10000);
  wire is_amomaxw  = belong_amo & func3_010 & (funct7[6:2] == 5'b10100);
  wire is_amominuw = belong_amo & func3_010 & (funct7[6:2] == 5'b11000);
  wire is_amomaxuw = belong_amo & func3_010 & (funct7[6:2] == 5'b11100);

  ////////
  //alu action
  wire need_add  = is_lui   | is_auipc | is_jal | is_jalr | belong_load | belong_store | is_addi | is_add;
  wire need_sub  = is_beq   | is_bne   | is_sub;
  wire need_and  = is_andi  | is_and;
  wire need_or   = is_ori   | is_or;
  wire need_xor  = is_xori  | is_xor;
  wire need_sll  = is_slli  | is_sll;
  wire need_srl  = is_srli  | is_srl;
  wire need_sra  = is_srai  | is_sra;
  wire need_slt  = is_blt   | is_bge   | is_slti  | is_slt;
  wire need_sltu = is_bltu  | is_bgeu  | is_sltiu | is_sltu;
  //imm32. See p.18 & figure 2.4 of riscv-spec.pdf.
  wire [31:0] imm32_Itype = {{21{inst[31]}}, inst[30:25], inst[24:21], inst[20]};
  wire [31:0] imm32_Stype = {{21{inst[31]}}, inst[30:25], inst[11:8],  inst[7]};
  wire [31:0] imm32_Utype = {inst[31], inst[30:20], inst[19:12], 12'b0};
  wire [31:0] imm32_Jtype = 32'h4;  // jal, jalr store pc+4 to rd(instead of pc+imm+4).
  //instruction type, to detemine imm32.
  wire Itype = belong_load | belong_alui | is_fencei;  // note that imm32_Itype contains shamt for sll.
  wire Stype = belong_store;
  wire Utype = is_lui | is_auipc;
  wire Jtype = is_jal | is_jalr;  // Though jalr belong to Itype, it use 32'h4 as imm32.

  /**********************
   * Decode results.
   *********************/

  //bus.
  assign rs1_addr = is_lui ? 5'b00000 : rs1;
  assign rs2_addr = rs2;
  assign imm32 = 32'b0
    | ({32{Itype}} & imm32_Itype)
    | ({32{Stype}} & imm32_Stype)
    | ({32{Utype}} & imm32_Utype)
    | ({32{Jtype}} & imm32_Jtype)
    ;
  assign dst_addr = rd;
  assign load_type = 3'b0
    | ({3{is_lb }} & `LB )
    | ({3{is_lh }} & `LH )
    | ({3{is_lw }} & `LW )
    | ({3{is_lbu}} & `LBU)
    | ({3{is_lhu}} & `LHU)
    ;
  assign store_type = 2'b0
    | ({2{is_sb}} & `SB)
    | ({2{is_sh}} & `SH)
    | ({2{is_sw}} & `SW)
    ;
  //control signals.
  assign rs1_enable   = is_lui | belong_branch | belong_load | belong_store | belong_alui | belong_alur;
  assign rs2_enable   = belong_branch | belong_store | belong_alur;
  assign dst_enable   = is_lui | is_auipc | is_jal | is_jalr | belong_load | belong_alui | belong_alur;
  assign load_enable  = belong_load;
  assign store_enable = belong_store;
  assign op1_is_pc    = is_auipc | is_jal   | is_jalr;
  assign op2_is_imm   = is_lui   | is_auipc | is_jal | is_jalr | belong_load | belong_store | belong_alui | is_fencei;
  assign alu_action = 4'b0
    | ({4{need_add }} & `ALU_ADD )
    | ({4{need_sub }} & `ALU_SUB )
    | ({4{need_and }} & `ALU_AND )
    | ({4{need_or  }} & `ALU_OR  )
    | ({4{need_xor }} & `ALU_XOR )
    | ({4{need_sll }} & `ALU_SLL )
    | ({4{need_srl }} & `ALU_SRL )
    | ({4{need_sra }} & `ALU_SRA )
    | ({4{need_slt }} & `ALU_SLT )
    | ({4{need_sltu}} & `ALU_SLTU)
    ;
  //exception signals.
  assign illegal_inst = !(
    is_lui    | is_auipc    | is_jal   | is_jalr   |
    is_beq    | is_bne      | is_blt   | is_bge    | is_bltu   | is_bgeu   |
    is_lb     | is_lh       | is_lw    | is_lbu    | is_lhu    |
    is_sb     | is_sh       | is_sw    |
    is_addi   | is_slti     | is_sltiu | is_xori   | is_ori    | is_andi   | is_slli | is_srli | is_srai |
    is_add    | is_sub      | is_sll   | is_slt    | is_sltu   | is_xor    | is_srl  | is_sra  | is_or   | is_and |
    is_fence  | is_fencei   |
    is_ecall  | is_ebreak   | is_mret  | is_sret   | is_uret   | is_wfi    | is_sfence |
    is_csrrw  | is_csrrs    | is_csrrc | is_csrrwi | is_csrrsi | is_csrrci |
    is_lrw    | is_scw      | is_amoswapw  | is_amoaddw  | is_amoxorw | is_amoandw |
    is_amoorw | is_amominw | is_amomaxw | is_amominuw | is_amomaxuw
  );
  assign breakpoint = is_ebreak;
  assign env_call_M = is_ecall & mode == `MODE_M;
  assign env_call_S = is_ecall & mode == `MODE_S;
  assign env_call_U = is_ecall & mode == `MODE_U;
  assign mret       = is_mret;
  assign sret       = is_sret;
  assign uret       = is_uret;
  assign wfi        = is_wfi;

  //csr bus & constrol signals.
  //See p.54 Table 9.1 of riscv-spec.pdf to check csr_read_enable & csr_write_enable.
  assign csr_addr = inst[31:20];
  assign csr_read_enable  = ((is_csrrw | is_csrrwi) & (rd != 5'b00000)) | is_csrrs | is_csrrsi | is_csrrc | is_csrrci;
  assign csr_write_enable = is_csrrw | is_csrrwi | ((is_csrrs | is_csrrsi | is_csrrc | is_csrrci) & (rs1 != 5'b00000));
  assign csru_action = 3'b0
    | ({3{is_ecall }} & `CSRU_ECALL )
    | ({3{is_ebreak}} & `CSRU_EBREAK)
    | ({3{is_csrrw }} & `CSRU_CSRRW )
    | ({3{is_csrrs }} & `CSRU_CSRRS )
    | ({3{is_csrrc }} & `CSRU_CSRRC )
    | ({3{is_csrrwi}} & `CSRU_CSRRWI)
    | ({3{is_csrrsi}} & `CSRU_CSRRSI)
    | ({3{is_csrrci}} & `CSRU_CSRRCI)
    ;
  assign uimm32 = {27'b0, inst[19:15]};


  assign exu_out_src = belong_system ? `OUTPUT_CSRU : `OUTPUT_ALU;
  //Use the following exu_out_src if we add MDU & FPU
  // assign exu_out_src = `OUTPUT_ALU
  //   | ({2{belong_system}} & `OUTPUT_CSRU)
  //   | ({2{belong_md }} & `OUTPUT_MDU )
  //   | ({2{belong_fp }} & `OUTPUT_FPU )
  //   ;


endmodule