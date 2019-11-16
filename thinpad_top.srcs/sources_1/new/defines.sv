`ifndef DEFINE_V
`define DEFINE_V

/*******************************************************************************
  Types of instruction.
  31            27 26 25 24   20 19   15 14    12 11          7 6      0
 ----------------------- ------- ------- -------- ------------- --------
  funct7                  rs2     rs1     funct3   rd            opcode   R-type
  imm[11:0]                       rs1     funct3   rd            opcode   I-type
  imm[11:5]               rs2     rs1     funct3   imm[4:0]      opcode   S-type
  imm[12j10:5]            rs2     rs1     funct3   imm[4:1j11]   opcode   B-type
  imm[31:12]                                       rd            opcode   U-type
  imm[20|10:1|11|19:12]                            rd            opcode   J-type
 *******************************************************************************/
/**********************
 * Opcode of RV32I & RV32A
 *********************/
`define OP_LUI    7'b0110111
`define OP_AUIPC  7'b0010111
`define OP_JAL    7'b1101111
`define OP_JALR   7'b1100111
`define OP_BRANCH 7'b1100011
`define OP_LOAD   7'b0000011
`define OP_STORE  7'b0100011
`define OP_ALUI   7'b0010011
`define OP_ALUR   7'b0110011
`define OP_FENCE  7'b0001111
`define OP_CSR    7'b1110011
`define OP_AMO    7'b0101111

/**********************
 * ALU action.
 *********************/
`define ALU_ADD  4'b0000
`define ALU_SUB  4'b0001
`define ALU_AND  4'b0010
`define ALU_OR   4'b0011
`define ALU_XOR  4'b0100
`define ALU_SLL  4'b0101
`define ALU_SRL  4'b0110
`define ALU_SRA  4'b0111
`define ALU_SLT  4'b1000
`define ALU_SLTU 4'b1001

/**********************
 * CSRU action.
 *********************/
`define CSRU_ECALL  3'b000
`define CSRU_EBREAK 3'b001
`define CSRU_CSRRW  3'b010
`define CSRU_CSRRS  3'b011
`define CSRU_CSRRC  3'b100
`define CSRU_CSRRWI 3'b101
`define CSRU_CSRRSI 3'b110
`define CSRU_CSRRCI 3'b111

/**********************
 * EXU OUTPUT.
 *********************/
`define OUTPUT_ALU  2'b00
`define OUTPUT_CSRU 2'b01
`define OUTPUT_MDU  2'b10
`define OUTPUT_FPU  2'b11

/**********************
 * Load/Store type.
 *********************/
`define LB  3'b000
`define LH  3'b001
`define LW  3'b010
`define LBU 3'b011
`define LHU 3'b100
`define SB  2'b00
`define SH  2'b01
`define SW  2'b10

`endif