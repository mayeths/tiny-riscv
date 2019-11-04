`ifndef DEFINE_V
`define DEFINE_V

typedef logic [31:0]  uint32_t;

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
`define OP_ENV    7'b1110011
`define OP_AMO    7'b0101111

/**********************
 * Funct3.
 *********************/
`define F3_ADD  000
`define F3_SUB  000  // ...应该是多余的
`define F3_SLL  001
`define F3_SLT  010
`define F3_SLTU 011
`define F3_XOR  100
`define F3_SRL  101
`define F3_SRA  101
`define F3_OR   110
`define F3_AND  111

`endif