// CSRU: CSR类指令执行单元
// 所有CSR开头的和ecall, ebreak等指令（即所有与CSR打交道的）均由此模块处理
`include "../defines.sv"

module CSRU(
  input  wire [31:0] csr,
  input  wire [31:0] rs1,
  input  wire [31:0] uimm32,
  input  wire [2:0]  csru_action,

  output wire [31:0] rd_out,
  output wire [31:0] csr_out
);

  //bus.
  wire[31:0] csr_out_csrrw  =  rs1;
  wire[31:0] csr_out_csrrs  =  rs1 | csr;
  wire[31:0] csr_out_csrrc  = !rs1 & csr;
  wire[31:0] csr_out_csrrwi =  uimm32;
  wire[31:0] csr_out_csrrsi =  uimm32 | csr;
  wire[31:0] csr_out_csrrci = !uimm32 & csr;

  //control signals.
  //TODO: what are the ecall & ebreak do?
  (* dont_touch = "true" *) wire is_ecall  = csru_action == `CSRU_ECALL;
  (* dont_touch = "true" *) wire is_ebreak = csru_action == `CSRU_EBREAK;
  (* dont_touch = "true" *) wire is_csrrw  = csru_action == `CSRU_CSRRW;   // CSR read & write
  (* dont_touch = "true" *) wire is_csrrs  = csru_action == `CSRU_CSRRS;   // CSR read & set
  (* dont_touch = "true" *) wire is_csrrc  = csru_action == `CSRU_CSRRC;   // CSR read & clean
  (* dont_touch = "true" *) wire is_csrrwi = csru_action == `CSRU_CSRRWI;  // CSR read & writei
  (* dont_touch = "true" *) wire is_csrrsi = csru_action == `CSRU_CSRRSI;  // CSR read & seti
  (* dont_touch = "true" *) wire is_csrrci = csru_action == `CSRU_CSRRCI;  // CSR read & cleani

  assign rd_out  = csr;
  assign csr_out = 32'b0
    | ({32{is_csrrw  }} & csr_out_csrrw )
    | ({32{is_csrrs  }} & csr_out_csrrs )
    | ({32{is_csrrc  }} & csr_out_csrrc )
    | ({32{is_csrrwi }} & csr_out_csrrwi)
    | ({32{is_csrrsi }} & csr_out_csrrsi)
    | ({32{is_csrrci }} & csr_out_csrrci)
    ;


endmodule