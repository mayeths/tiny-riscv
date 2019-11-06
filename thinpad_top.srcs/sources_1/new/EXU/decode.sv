// Decode Unit: 译码单元
// 用于对IFU提供的指令进行译码
`include "../defines.sv"

module decode (
  input  logic[31:0] inst,
  output logic rs1_enable,
  output logic rs2_enable,
  output logic[4:0] rs1_addr,
  output logic[4:0] rs2_addr,
  output logic[3:0] alu_action,
  output logic op1_is_pc4,
  output logic op2_is_imm,
  output logic[31:0] imm32,
  output logic dst_enable,
  output logic[4:0] dst_addr,
  output logic load_enable,
  output logic store_enable,
  output logic[3:0] ls_type
);

  //TODO: please test these logic. All of them.
  /**********************
   * Info from inst.
   *********************/

  ////////
  //basic
  logic opcode = inst[6:0];
  logic rd     = inst[11:7];
  logic funct3 = inst[14:12];
  logic rs1    = inst[19:15];
  logic rs2    = inst[24:20];
  logic funct7 = inst[31:25];
  logic belong_branch = opcode == `OP_BRANCH;
  logic belong_load   = opcode == `OP_LOAD;
  logic belong_store  = opcode == `OP_STORE;
  logic belong_alui   = opcode == `OP_ALUI;
  logic belong_alur   = opcode == `OP_ALUR;
  logic belong_fence  = opcode == `OP_FENCE;
  logic belong_env    = opcode == `OP_ENV;
  logic belong_amo    = opcode == `OP_AMO;
  logic func3_000     = func3  == 3'b000;
  logic func3_001     = func3  == 3'b001;
  logic func3_010     = func3  == 3'b010;
  logic func3_011     = func3  == 3'b011;
  logic func3_100     = func3  == 3'b100;
  logic func3_101     = func3  == 3'b101;
  logic func3_110     = func3  == 3'b110;
  logic func3_111     = func3  == 3'b111;

  ////////
  //misc
  logic is_lui   = opcode == `OP_LUI;
  logic is_auipc = opcode == `OP_AUIPC;
  logic is_jal   = opcode == `OP_JAL;
  logic is_jalr  = opcode == `OP_JALR;
  //branch
  logic is_beq  = belong_branch & func3_000;
  logic is_bne  = belong_branch & func3_001;
  logic is_blt  = belong_branch & func3_100;
  logic is_bge  = belong_branch & func3_101;
  logic is_bltu = belong_branch & func3_110;
  logic is_bgeu = belong_branch & func3_111;
  //load
  logic is_lb  = belong_load & func3_000;
  logic is_lh  = belong_load & func3_001;
  logic is_lw  = belong_load & func3_010;
  logic is_lbu = belong_load & func3_100;
  logic is_lhu = belong_load & func3_101;
  //store
  logic is_sb = belong_store & func3_000;
  logic is_sh = belong_store & func3_001;
  logic is_sw = belong_store & func3_010;
  //alui
  logic is_addi  = belong_alui & func3_000;
  logic is_slti  = belong_alui & func3_010;
  logic is_sltiu = belong_alui & func3_011;
  logic is_xori  = belong_alui & func3_100;
  logic is_ori   = belong_alui & func3_110;
  logic is_andi  = belong_alui & func3_111;
  logic is_slli  = belong_alui & func3_001;
  logic is_srli  = belong_alui & func3_101 & (funct7 == 7'b0000000);
  logic is_srai  = belong_alui & func3_101 & (funct7 == 7'b0100000);
  //alur
  logic is_add  = belong_alui & func3_000 & (funct7 == 7'b0000000);
  logic is_sub  = belong_alui & func3_000 & (funct7 == 7'b0100000);
  logic is_sll  = belong_alui & func3_001;
  logic is_slt  = belong_alui & func3_010;
  logic is_sltu = belong_alui & func3_011;
  logic is_xor  = belong_alui & func3_100;
  logic is_srl  = belong_alui & func3_101 & (funct7 == 7'b0000000);
  logic is_sra  = belong_alui & func3_101 & (funct7 == 7'b0100000);
  logic is_or   = belong_alui & func3_110;
  logic is_and  = belong_alui & func3_111;
  //fence
  logic is_fence  = belong_fence & func3_000;
  logic is_fencei = belong_fence & func3_001
  //env
  logic is_ecall  = belong_env & func3_000 & (rs2 == 5'b00000);
  logic is_ebreak = belong_env & func3_000 & (rs2 == 5'b00001);
  logic is_csrrw  = belong_env & func3_001;
  logic is_csrrs  = belong_env & func3_010;
  logic is_csrrc  = belong_env & func3_011;
  logic is_csrrwi = belong_env & func3_101;
  logic is_csrrsi = belong_env & func3_110;
  logic is_csrrci = belong_env & func3_111;
  //amo
  logic is_lrw      = belong_amo & func3_010 & (funct7[6:2] == 5'b00010);
  logic is_scw      = belong_amo & func3_010 & (funct7[6:2] == 5'b00011);
  logic is_amoswapw = belong_amo & func3_010 & (funct7[6:2] == 5'b00001);
  logic is_amoaddw  = belong_amo & func3_010 & (funct7[6:2] == 5'b00000);
  logic is_amoxorw  = belong_amo & func3_010 & (funct7[6:2] == 5'b00100);
  logic is_amoandw  = belong_amo & func3_010 & (funct7[6:2] == 5'b01100);
  logic is_amoorw   = belong_amo & func3_010 & (funct7[6:2] == 5'b01000);
  logic is_amominw  = belong_amo & func3_010 & (funct7[6:2] == 5'b10000);
  logic is_amomaxw  = belong_amo & func3_010 & (funct7[6:2] == 5'b10100);
  logic is_amominuw = belong_amo & func3_010 & (funct7[6:2] == 5'b11000);
  logic is_amomaxuw = belong_amo & func3_010 & (funct7[6:2] == 5'b11100);

  ////////
  //alu action
  logic need_add  = is_lui   | is_auipc | is_jal | is_jalr | belong_load | belong_store | is_addi | is_add;
  logic need_sub  = is_beq   | is_bne   | is_sub;
  logic need_and  = is_andi  | is_and;
  logic need_or   = is_ori   | is_or;
  logic need_xor  = is_xori  | is_xor;
  logic need_sll  = is_slli  | is_sll;
  logic need_srl  = is_srli  | is_srl;
  logic need_sra  = is_srai  | is_sra;
  logic need_slt  = is_slti  | is_slt;
  logic need_sltu = is_sltiu | is_sltu;
  //imm32. See p.17 & figure 2.3 of riscv-spec.pdf.
  logic imm32_Itype = {{21{inst[31]}}, inst[30:25], inst[24:21], inst[20]};
  logic imm32_Stype = {{21{inst[31]}}, inst[30:25], inst[11:8],  inst[7]};
  logic imm32_Btype = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0}; //Useless. IFU has calc this for branch.
  logic imm32_Utype = {inst[31], inst[30:20], inst[19:12], 12'b0};
  logic imm32_Jtype = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
  //instruction type, to detemine imm32.
  logic Itype = is_jalr | belong_load | belong_alui;
  logic Stype = belong_store;
  logic Btype = belong_branch;
  logic Utype = is_lui | is_auipc;
  logic Jtype = is_jal;

  /**********************
   * Decode results.
   *********************/

  //control signals.
  assign rs1_enable   = belong_branch | belong_load  | belong_store | belong_alui | belong_alur;
  assign rs2_enable   = belong_branch | belong_store | belong_alur;
  assign dst_enable   = is_lui | is_auipc | is_jal | is_jalr | belong_load | belong_alui | belong_alur;
  assign load_enable  = belong_load;
  assign store_enable = belong_store;
  assign op1_is_pc4   = is_auipc | is_jal   | is_jalr;
  assign op2_is_imm   = is_lui   | is_auipc | is_jal | is_jalr | belong_load | belong_store | belong_alui;
  //bus.
  assign rs1_addr = is_lui           ? 5'b00000 : rs1;
  assign rs2_addr = is_jal | is_jalr ? 5'b00000 : rs2;
  assign alu_action =
    need_add  ? `ALU_ADD  :
    need_sub  ? `ALU_SUB  :
    need_and  ? `ALU_AND  :
    need_or   ? `ALU_OR   :
    need_xor  ? `ALU_XOR  :
    need_sll  ? `ALU_SLL  :
    need_srl  ? `ALU_SRL  :
    need_sra  ? `ALU_SRA  :
    need_slt  ? `ALU_SLT  :
    need_sltu ? `ALU_SLTU :
    4'b0;
  assign imm32 =
    Itype ? imm32_Itype :
    Stype ? imm32_Stype :
    Btype ? imm32_Btype :
    Utype ? imm32_Utype :
    Jtype ? imm32_Jtype :
    32'b0;
  assign dst_addr = rd;
  assign ls_type =
    is_lb  ? `LB  :
    is_lh  ? `LH  :
    is_lw  ? `LW  :
    is_lbu ? `LBU :
    is_lhu ? `LHU :
    is_sb  ? `SB  :
    is_sh  ? `SH  :
    is_sw  ? `SW  :
    3'b0;

endmodule