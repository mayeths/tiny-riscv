// MTrap: Machine Mode下与Exception和Interrupt有关的寄存器
// Include: mstatus, misa, medeleg, mideleg, mie, mtvec, mcounteren

`include "../defines.sv";

module MTrap(
  input wire clk,
  input wire rst,
  //Normal CSRs access
  input wire [11:0] write_addr,  // CSRRx instruction write
  input wire [31:0] write_data,  // CSRRx instruction write
  output reg [31:0] mstatus,
  output reg [31:0] misa,
  output reg [31:0] medeleg,
  output reg [31:0] mideleg,
  output reg [31:0] mie,
  output reg [31:0] mtvec,
  output reg [31:0] mcounteren,
  output reg [31:0] mscratch,
  output reg [31:0] mepc,
  output reg [31:0] mcause,
  output reg [31:0] mtval,
  output reg [31:0] mip,
  //Special write to CSRs, like trap setup
  input wire update_mstatus_enable,    input wire [31:0] update_mstatus_data,
  input wire update_misa_enable,       input wire [31:0] update_misa_data,
  input wire update_medeleg_enable,    input wire [31:0] update_medeleg_data,
  input wire update_mideleg_enable,    input wire [31:0] update_mideleg_data,
  input wire update_mie_enable,        input wire [31:0] update_mie_data,
  input wire update_mtvec_enable,      input wire [31:0] update_mtvec_data,
  input wire update_mcounteren_enable, input wire [31:0] update_mcounteren_data,
  input wire update_mscratch_enable,   input wire [31:0] update_mscratch_data,
  input wire update_mepc_enable,       input wire [31:0] update_mepc_data,
  input wire update_mcause_enable,     input wire [31:0] update_mcause_data,
  input wire update_mtval_enable,      input wire [31:0] update_mtval_data,
  input wire update_mip_enable,        input wire [31:0] update_mip_data
);

  //// Initial value of CSRs
  (* dont_touch = "true" *) wire [31:0] initial_mstatus = {
    1'b0,        // 31 SD
    8'b00000000, // 30~23 Reserved
    1'b0,  1'b0,  1'b0,        // 22~20 TSR, TW,  TVM (Virtualization support)
    1'b0,  1'b0,  1'b0,        // 19~17 MXR, SUM, MPRV (Memory privilege, Page-based virtual memory)
    2'b00, 2'b00,              // 16~13 XS, FS (User-Mode extension)
    2'b11, 2'b00, 1'b1,        // 12~8  MPP,  Reserved, SPP (Previous privilege before Trap)
    1'b1,  1'b0,  1'b1, 1'b1,  // 7~4   MPIE, Reserved, SPIE, UPIE (Previous xie before Trap)
    1'b1,  1'b0,  1'b1, 1'b1   // 3~0   MIE,  Reserved, SIE,  UIE (Interrupt enable)
  };
  (* dont_touch = "true" *) wire [31:0] initial_misa = {
    2'b01,   // 31~30 MXL
    4'b0000, // 29~26 WLRL
    1'b0, // 25 Z Reserved
    1'b0, // 24 Y Reserved
    1'b0, // 23 X Non-standard extensions present
    1'b0, // 22 W Reserved
    1'b0, // 21 V Tentatively reserved for Vector extension 20 U User mode implemented
    1'b0, // 20 U User mode implemented
    1'b0, // 19 T Tentatively reserved for Transactional Memory extension
    1'b0, // 18 S Supervisor mode implemented
    1'b0, // 17 R Reserved
    1'b0, // 16 Q Quad-precision floating-point extension
    1'b0, // 15 P Tentatively reserved for Packed-SIMD extension
    1'b0, // 14 O Reserved
    1'b0, // 13 N User-level interrupts supported
    1'b0, // 12 M Integer Multiply/Divide extension
    1'b0, // 11 L Tentatively reserved for Decimal Floating-Point extension
    1'b0, // 10 K Reserved
    1'b0, // 9  J Reserved
    1'b1, // 8  I RV32I/64I/128I base ISA
    1'b0, // 7  H Hypervisor mode implemented
    1'b0, // 6  G Additional standard extensions present
    1'b0, // 5  F Single-precision floating-point extension
    1'b0, // 4  E RV32E base ISA, Read-Only
    1'b0, // 3  D Double-precision floating-point extension
    1'b0, // 2  C Compressed extension
    1'b0, // 1  B Tentatively reserved for Bit operations extension
    1'b1  // 0  A Atomic extension
  };
  (* dont_touch = "true" *) wire [31:0] initial_medeleg = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mideleg = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mie     = {
    20'b0000_0000_0000_0000_0000,  // 31~12 Reserved
    1'b0, 1'b0, 1'b0, 1'b0,        // 11~8  MEIE, Reserved, SEIE, UEIE
    1'b0, 1'b0, 1'b0, 1'b0,        // 7~4   MTIE, Reserved, STIE, UTIE
    1'b0, 1'b0, 1'b0, 1'b0         // 3~0   MSIE, Reserved, SSIE, USIE
  };
  (* dont_touch = "true" *) wire [31:0] initial_mtvec      = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mcounteren = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mscratch   = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mepc       = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mcause     = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mtval      = 32'b0;
  (* dont_touch = "true" *) wire [31:0] initial_mip        = {
    20'b0000_0000_0000_0000_0000,  // 31~12 Reserved
    1'b0, 1'b0, 1'b0, 1'b0,        // 11~8  MEIP, Reserved, SEIP, UEIP
    1'b0, 1'b0, 1'b0, 1'b0,        // 7~4   MTIP, Reserved, STIP, UTIP
    1'b0, 1'b0, 1'b0, 1'b0         // 3~0   MSIP, Reserved, SSIP, USIP
  };

  //// Normal write write_data to CSRs with CSRRx instruction have some constraint. Specify them here.
  (* dont_touch = "true" *) wire [31:0] in_mstatus = {
    mstatus[31], // 31 SD Read-Only
    8'b00000000,     // 30~23 Reserved
    write_data[22], write_data[21], write_data[20],    // 22~20 TSR, TW,  TVM
    write_data[19], write_data[18], write_data[17],    // 19~17 MXR, SUM, MPRV
    write_data[16:15], write_data[14:13],              // 16~13 XS,  FS
    write_data[12:11], 2'b00, write_data[8],           // 12~8  MPP,  Reserved, SPP
    write_data[7], 1'b0, write_data[5], write_data[4], // 7~4   MPIE, Reserved, SPIE, UPIE
    write_data[3], 1'b0, write_data[1], write_data[0]  // 3~0   MIE,  Reserved, SIE, UIE
  };
  (* dont_touch = "true" *) wire [31:0] in_misa = {
    write_data[31:5],
    initial_misa[4],  // 4 E Read-Only
    write_data[3:0]
  };
  (* dont_touch = "true" *) wire [31:0] in_medeleg    = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mideleg    = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mie        = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mtvec      = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mcounteren = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mscratch   = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mepc       = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mcause     = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mtval      = write_data;
  (* dont_touch = "true" *) wire [31:0] in_mip        = write_data;


  //// Normal write CSRs enable.
  (* dont_touch = "true" *) wire [31:0] write_mstatus_enable    = write_addr == 12'h300;
  (* dont_touch = "true" *) wire [31:0] write_misa_enable       = write_addr == 12'h301;
  (* dont_touch = "true" *) wire [31:0] write_medeleg_enable    = write_addr == 12'h302;
  (* dont_touch = "true" *) wire [31:0] write_mideleg_enable    = write_addr == 12'h303;
  (* dont_touch = "true" *) wire [31:0] write_mie_enable        = write_addr == 12'h304;
  (* dont_touch = "true" *) wire [31:0] write_mtvec_enable      = write_addr == 12'h305;
  (* dont_touch = "true" *) wire [31:0] write_mcounteren_enable = write_addr == 12'h306;
  (* dont_touch = "true" *) wire [31:0] write_mscratch_enable   = write_addr == 12'h340;
  (* dont_touch = "true" *) wire [31:0] write_mepc_enable       = write_addr == 12'h341;
  (* dont_touch = "true" *) wire [31:0] write_mcause_enable     = write_addr == 12'h342;
  (* dont_touch = "true" *) wire [31:0] write_mtval_enable      = write_addr == 12'h343;
  (* dont_touch = "true" *) wire [31:0] write_mip_enable        = write_addr == 12'h344;

  always @(posedge clk) begin
    if (rst) begin
      mstatus    <= initial_mstatus;
      misa       <= initial_misa;
      medeleg    <= initial_medeleg;
      mideleg    <= initial_mideleg;
      mie        <= initial_mie;
      mtvec      <= initial_mtvec;
      mcounteren <= initial_mcounteren;
      mscratch   <= initial_mscratch;
      mepc       <= initial_mepc;
      mcause     <= initial_mcause;
      mtval      <= initial_mtval;
      mip        <= initial_mip;
    end else begin
      mstatus <=
        update_mstatus_enable ? update_mstatus_data :
        write_mstatus_enable  ? in_mstatus :
        mstatus;
      misa <=
        update_misa_enable ? update_misa_data :
        write_misa_enable  ? in_misa :
        misa;
      medeleg <=
        update_medeleg_enable ? update_medeleg_data :
        write_medeleg_enable  ? in_medeleg :
        medeleg;
      mideleg <=
        update_mideleg_enable ? update_mideleg_data :
        write_mideleg_enable  ? in_mideleg :
        mideleg;
      mie <=
        update_mie_enable ? update_mie_data :
        write_mie_enable  ? in_mie :
        mie;
      mtvec <=
        update_mtvec_enable ? update_mtvec_data :
        write_mtvec_enable  ? in_mtvec :
        mtvec;
      mcounteren <=
        update_mcounteren_enable ? update_mcounteren_data :
        write_mcounteren_enable  ? in_mcounteren :
        mcounteren;
      mscratch <=
        update_mscratch_enable ? update_mscratch_data :
        write_mscratch_enable  ? in_mscratch :
        mscratch;
      mepc <=
        update_mepc_enable ? update_mepc_data :
        write_mepc_enable  ? in_mepc :
        mepc;
      mcause <=
        update_mcause_enable ? update_mcause_data :
        write_mcause_enable  ? in_mcause :
        mcause;
      mtval <=
        update_mtval_enable ? update_mtval_data :
        write_mtval_enable  ? in_mtval :
        mtval;
      mip <=
        update_mip_enable ? update_mip_data :
        write_mip_enable  ? in_mip :
        mip;
    end
  end

endmodule