`include "defines.sv"

module CSRHub(
  input wire clk,
  input wire rst,
  ///////Normal access CSR with CSRRx instruction
  input  wire read_enable,
  input  wire write_enable,
  input  wire [31:0] read_addr,
  output wire [31:0] read_data,
  input  wire [31:0] write_addr,
  input  wire [31:0] write_data,

  //mstatus
  output wire sd,
  output wire tsr,
  output wire tw,
  output wire tvm,
  output wire mxr,
  output wire sum,
  output wire mprv,
  output wire [1:0] xs,
  output wire [1:0] fs,
  output wire [1:0] mpp,
  output wire spp,
  output wire mpie,
  output wire spie,
  output wire upie,
  output wire mie,
  output wire sie,
  output wire uie,
  //mie
  output wire meie,
  output wire seie,
  output wire ueie,
  output wire mtie,
  output wire stie,
  output wire utie,
  output wire msie,
  output wire ssie,
  output wire usie,

  ///////Interrupt
  // Software Interrupt
  input wire interrupt_software_M,  // ? in M-mode
  input wire interrupt_software_S,  // ? in S-mode
  input wire interrupt_software_U,  // ? in U-mode
  // Timer Interrupt
  input wire interrupt_timer_M,     // Timer alarm in M-mode
  input wire interrupt_timer_S,     // Timer alarm in S-mode
  input wire interrupt_timer_U,     // Timer alarm in U-mode
  // External Interrupt
  input wire interrupt_external_M,  // External Interrupt comes in M-mode
  input wire interrupt_external_S,  // External Interrupt comes in S-mode
  input wire interrupt_external_U,  // External Interrupt comes in U-mode
  ///////Exception
  // IFU & LSU Exception
  input wire exception_addr_misalign_inst, // Address misalign on fetch inst    (addr[1:0] != 2'b00)
  input wire exception_addr_misalign_load, // Address misalign on load inst     (addr[1:0] != 2'b00)
  input wire exception_addr_misalign_sAMO, // Address misalign on store/AMO inst(addr[1:0] != 2'b00)
  input wire exception_access_fault_inst,  // Access memory fault on fetch inst
  input wire exception_access_fault_load,  // Access memory fault on load inst
  input wire exception_access_fault_sAMO,  // Access memory fault on store/AMO inst
  // IFU & LSU Page Fault
  input wire exception_page_fault_inst,    // Page fault on fetch inst
  input wire exception_page_fault_load,    // Page fault on load inst
  input wire exception_page_fault_sAMO,    // Page fault on store/AMO inst
  // Decode Exception
  input wire exception_illegal_inst,       // Illegal Instruction
  input wire exception_breakpoint,         // Call EBREAK
  input wire exception_ecall_M,         // Call ECALL in M-mode
  input wire exception_ecall_S,         // Call ECALL in S-mode
  input wire exception_ecall_U,         // Call ECALL in U-mode, see section3.2.2 for detail
  ///////Exit Interrupt and Exception
  input wire call_mret,  // Call MRET
  input wire call_sret,  // Call SRET
  input wire call_uret,  // Call URET
  input wire call_wfi,   // Call WFI, we don't implement it since we can treat it as NOP.

  input  wire [31:0] ifu_pc,          // PC where trap occur(e.g., inst misalign)
  input  wire [31:0] exu_pc,          // PC where trap occur(e.g., illegal inst, ecall)
  input  wire [31:0] lsu_pc,          // PC where trap occur(e.g., load misalign)
  input  wire [31:0] ifu_memory_addr, // Memory address which cause fault in inst fetching
  input  wire [31:0] lsu_memory_addr, // Memory address which cause fault in load/sAMO
  input  wire [31:0] exu_instruction, // Instruction    which is illegal  in decoding

  output reg  [1:0]  mode,          // Indicate current mode of CPU
  output reg  is_traping,           // Indicate current status of CPU
  output wire go_trap,              // If trap occur:
  output wire [31:0] go_trap_op1,   // IFU pc = xtvec + offset
  output wire [31:0] go_trap_op2,   // IFU pc = xtvec + offset
  output wire from_trap,            // If xret call:
  output wire [31:0] from_trap_op1, // IFU pc = xepc + 32'b0
  output wire [31:0] from_trap_op2  // IFU pc = xpec + 32'b0
);

  //// MTrap CSRs
  (* dont_touch = "true" *) wire [31:0] csr_mstatus;
  (* dont_touch = "true" *) wire [31:0] csr_misa;
  (* dont_touch = "true" *) wire [31:0] csr_medeleg;
  (* dont_touch = "true" *) wire [31:0] csr_mideleg;
  (* dont_touch = "true" *) wire [31:0] csr_mie;
  (* dont_touch = "true" *) wire [31:0] csr_mtvec;
  (* dont_touch = "true" *) wire [31:0] csr_mcounteren;
  (* dont_touch = "true" *) wire [31:0] csr_mscratch;
  (* dont_touch = "true" *) wire [31:0] csr_mepc;
  (* dont_touch = "true" *) wire [31:0] csr_mcause;
  (* dont_touch = "true" *) wire [31:0] csr_mtval;
  (* dont_touch = "true" *) wire [31:0] csr_mip;
  //Special write to CSRs, like trap setup
  (* dont_touch = "true" *) wire update_mstatus_enable;
  (* dont_touch = "true" *) wire update_misa_enable;
  (* dont_touch = "true" *) wire update_medeleg_enable;
  (* dont_touch = "true" *) wire update_mideleg_enable;
  (* dont_touch = "true" *) wire update_mie_enable;
  (* dont_touch = "true" *) wire update_mtvec_enable;
  (* dont_touch = "true" *) wire update_mcounteren_enable;
  (* dont_touch = "true" *) wire update_mscratch_enable;
  (* dont_touch = "true" *) wire update_mepc_enable;
  (* dont_touch = "true" *) wire update_mcause_enable;
  (* dont_touch = "true" *) wire update_mtval_enable;
  (* dont_touch = "true" *) wire update_mip_enable;
  (* dont_touch = "true" *) wire [31:0] update_mstatus_data;
  (* dont_touch = "true" *) wire [31:0] update_misa_data;
  (* dont_touch = "true" *) wire [31:0] update_medeleg_data;
  (* dont_touch = "true" *) wire [31:0] update_mideleg_data;
  (* dont_touch = "true" *) wire [31:0] update_mie_data;
  (* dont_touch = "true" *) wire [31:0] update_mtvec_data;
  (* dont_touch = "true" *) wire [31:0] update_mcounteren_data;
  (* dont_touch = "true" *) wire [31:0] update_mscratch_data;
  (* dont_touch = "true" *) wire [31:0] update_mepc_data;
  (* dont_touch = "true" *) wire [31:0] update_mcause_data;
  (* dont_touch = "true" *) wire [31:0] update_mtval_data;
  (* dont_touch = "true" *) wire [31:0] update_mip_data;
  MTrap MTrap_(
    .clk(clk), .rst(rst), .write_addr(write_addr), .write_data(write_data),
    .mstatus   (csr_mstatus),
    .misa      (csr_misa),
    .medeleg   (csr_medeleg),
    .mideleg   (csr_mideleg),
    .mie       (csr_mie),
    .mtvec     (csr_mtvec),
    .mcounteren(csr_mcounteren),
    .mscratch  (csr_mscratch),
    .mepc      (csr_mepc),
    .mcause    (csr_mcause),
    .mtval     (csr_mtval),
    .mip       (csr_mip),
    .update_mstatus_enable   (update_mstatus_enable),    .update_mstatus_data   (update_mstatus_data),
    .update_misa_enable      (update_misa_enable),       .update_misa_data      (update_misa_data),
    .update_medeleg_enable   (update_medeleg_enable),    .update_medeleg_data   (update_medeleg_data),
    .update_mideleg_enable   (update_mideleg_enable),    .update_mideleg_data   (update_mideleg_data),
    .update_mie_enable       (update_mie_enable),        .update_mie_data       (update_mie_data),
    .update_mtvec_enable     (update_mtvec_enable),      .update_mtvec_data     (update_mtvec_data),
    .update_mcounteren_enable(update_mcounteren_enable), .update_mcounteren_data(update_mcounteren_data),
    .update_mscratch_enable  (update_mscratch_enable),   .update_mscratch_data  (update_mscratch_data),
    .update_mepc_enable      (update_mepc_enable),       .update_mepc_data      (update_mepc_data),
    .update_mcause_enable    (update_mcause_enable),     .update_mcause_data    (update_mcause_data),
    .update_mtval_enable     (update_mtval_enable),      .update_mtval_data     (update_mtval_data),
    .update_mip_enable       (update_mip_enable),        .update_mip_data       (update_mip_data)
  );
  assign mstatus_sd   = csr_mstatus[31];
  assign mstatus_tsr  = csr_mstatus[22];
  assign mstatus_tw   = csr_mstatus[21];
  assign mstatus_tvm  = csr_mstatus[20];
  assign mstatus_mxr  = csr_mstatus[19];
  assign mstatus_sum  = csr_mstatus[18];
  assign mstatus_mprv = csr_mstatus[17];
  assign mstatus_xs   = csr_mstatus[16:15];
  assign mstatus_fs   = csr_mstatus[14:13];
  assign mstatus_mpp  = csr_mstatus[12:11];
  assign mstatus_spp  = csr_mstatus[8];
  assign mstatus_mpie = csr_mstatus[7];
  assign mstatus_spie = csr_mstatus[5];
  assign mstatus_upie = csr_mstatus[4];
  assign mstatus_mie  = csr_mstatus[3];  // WARNING: mie bit is not csr_mie
  assign mstatus_sie  = csr_mstatus[1];
  assign mstatus_uie  = csr_mstatus[0];
  assign mie_meie = csr_mie[11];
  assign mie_seie = csr_mie[9];
  assign mie_ueie = csr_mie[8];
  assign mie_mtie = csr_mie[7];
  assign mie_stie = csr_mie[5];
  assign mie_utie = csr_mie[4];
  assign mie_msie = csr_mie[3];
  assign mie_ssie = csr_mie[1];
  assign mie_usie = csr_mie[0];



  ////////////////
  // 异常中断处理代码
  ////////////////
  //   异常和中断的相关解释：
  // - Trap会默认进入M-mode(section 3.1.8)。下面提到的spec文档无说明均指riscv-privilege.pdf
  //   M-mode的代码应该绝对可信(section 1.2: Code run in machine-mode ... is ... inherently trusted)，
  //   因而不考虑嵌套异常。
  // - 当M-mode把异常委托给S-mode(section 3.1.8: 设置Table3.6对应的bit于mxdeleg表示该Trap委托给S-mode)，
  //   说明我们也应该相信处理异常的S模式代码不会出异常。
  //   这要是也出异常，算了，我累了，异常就异常吧
  ////////////////
  //   Bellow are control signals & data bus when go_trap or from_trap occur
  ////////////////

  //////////
  // 准备工作
  /////////
  // 发生异常和中断的原因
  (* dont_touch = "true" *) wire [31:0] exception_cause = { // See Table3.6 for detail
    1'b0, 15'b0,  // 最高位置0，用于写入xcause时指示为exception
    exception_page_fault_sAMO, 1'b0, exception_page_fault_load,    exception_page_fault_inst,
    exception_ecall_M,         1'b0, exception_ecall_S,            exception_ecall_U,
    exception_access_fault_sAMO,     exception_addr_misalign_sAMO,
    exception_access_fault_load,     exception_addr_misalign_load,
    exception_breakpoint,            exception_illegal_inst,
    exception_access_fault_inst,     exception_addr_misalign_inst
  };
  (* dont_touch = "true" *) wire [31:0] interrupt_cause = { // See Table3.6 for detail
    1'b1, 15'b0, 4'b0, // 最高位置1，用于写入xcause时指示为exception
    interrupt_external_M, 1'b0, interrupt_external_S, interrupt_external_U,
    interrupt_timer_M,    1'b0, interrupt_timer_S,    interrupt_timer_U,
    interrupt_software_M, 1'b0, interrupt_software_S, interrupt_software_U
  };

  // 当前时刻有可用的异常和中断
  (* dont_touch = "true" *) wire has_exception = exception_cause != 32'b0;  // 有可用的异常
  (* dont_touch = "true" *) wire has_interrupt = 1'b0                       // 有可用的中断
    | ({12{mode == `MODE_M}} & interrupt_cause[11:0] & csr_mie[11:0]) // M-mode下看mie
    | ({12{mode == `MODE_S}} & interrupt_cause[11:0] & csr_sie[11:0]) // S-mode下看sie
    | ({12{mode == `MODE_U}} & interrupt_cause[11:0] & csr_uie[11:0]) // U-mode下看uie
    ;

  // 中断时的跳转地址是否需要加偏移量：x由tvec[1:0]指示
  (* dont_touch = "true" *) wire interrupt_vectored = (mode == `MODE_M && csr_mtvec[1:0] == 2'b01) | (mode == `MODE_S && csr_stvec[1:0] == 2'b01);
  (* dont_touch = "true" *) wire [31:0] interrupt_vectored_to =    //spec并未指定中断的优先级，该实现的interrupt_vectored_to最下面那个中断胜利。
    interrupt_software_U ? 32'h0  << 2 :
    interrupt_software_S ? 32'h1  << 2 :
    interrupt_software_M ? 32'h3  << 2 :
    interrupt_timer_U    ? 32'h4  << 2 :
    interrupt_timer_S    ? 32'h5  << 2 :
    interrupt_timer_M    ? 32'h7  << 2 :
    interrupt_external_M ? 32'h8  << 2 :
    interrupt_external_S ? 32'h9  << 2 :
    interrupt_external_U ? 32'h11 << 2 :
    32'b0;

  // 决定哪个模式下处理该Trap。默认M-mode下处理，当medeleg或mideleg对应bit为1时委托给S-mode
  (* dont_touch = "true" *) wire go_utrap_handle  = 1'b0;  // We don't implement U-mode trap(N extension).
  (* dont_touch = "true" *) wire go_strap_handler = (exception_cause & csr_medeleg | interrupt_cause & csr_mideleg) ? 1'b1 : 1'b0;
  (* dont_touch = "true" *) wire go_mtrap_handler = !go_utrap_handle & !go_strap_handler;  // handle trap in M-mode by default

  // 进入Trap的go_trap信号以及跳转目的地(go_trap_op1 + go_trap_op2)
  assign go_trap     = (has_exception | has_interrupt) & !is_traping;
  assign go_trap_op1 = {(go_strap_handler ? csr_stvec[31:2] : csr_mtvec[31:2]), 2'b00};
  assign go_trap_op2 = (has_exception | has_interrupt & !interrupt_vectored) ? 32'b0 : interrupt_vectored_to;

  // 退出Trap的from_trap信号以及返回目的地(from_trap_op1 + from_trap_op2)
  assign from_trap     = call_mret | call_sret | call_uret;
  assign from_trap_op1 = mode == `MODE_S ? csr_sepc : csr_mepc;
  assign from_trap_op2 = 32'b0;

  //////////
  // go_trap & from_trap：更新mode和is_traping
  /////////
  always @(posedge clk) begin
    if (rst) begin
      mode        <= `MODE_M;
      is_traping  <= 1'b0;
    end else if (go_trap) begin
      mode        <= go_strap_handler ? `MODE_S : `MODE_M;  // 默认进入M-mode处理Traps
      is_traping  <= 1'b1;
    end else if (from_trap) begin
      mode <=
        ({2{call_mret}} & mstatus_mpp        ) | // mpp == 2'b11 is M, 2'b01 is S, 2'b00 is U
        ({2{call_sret}} & {1'b0, mstatus_spp}) | // spp == 1'b1 is S, 1'b0 is U
        ({2{call_uret}} & `MODE_U);
      is_traping <= 1'b0;
    end
  end

  //////////
  // go_trap：更新CSR -- xstatus, xcause, xepc, xtval
  /////////
  // go_mstatus: mode切换到X；使XPP为当前mode；使XPIE为XIE；使XIE为0
  (* dont_touch = "true" *) wire go_update_mstatus_enable      = go_mtrap_handler;
  (* dont_touch = "true" *) wire [31:0] go_update_mstatus_data = {
    csr_mstatus[31:13],  //SD, TSR, TW, TVM, MXR, SUM, MPRV, XS, FS

    // MPP, Reserved, SPP
    {go_mtrap_handler ? mode    : mstatus_mpp },
    csr_mstatus[10:9],
    {go_strap_handler ? mode[0] : mstatus_spp },

    // MPIE, Reserved, SPIE, UPIE
    {go_mtrap_handler ? mstatus_mie : mstatus_mpie},
    csr_mstatus[6],
    {go_strap_handler ? mstatus_sie : mstatus_spie},
    {go_utrap_handler ? mstatus_uie : mstatus_upie},

    // MIE, Reserved, SIE, UIE
    {go_mtrap_handler ? 1'b0        : mstatus_mie },
    csr_mstatus[2],
    {go_strap_handler ? 1'b0        : mstatus_sie},
    {go_utrap_handler ? 1'b0        : mstatus_uie}
  };

  // go_mcause: 记录发生Trap的原因，同时发生时有 exception > interrupt
  // 所有cause都一股脑写入mcause，由程序去判断cause的优先级(见「手把手教你设计CPU——RISC-V处理器」图13-5)
  (* dont_touch = "true" *) wire go_update_mcause_enable      = go_mtrap_handler;
  (* dont_touch = "true" *) wire [31:0] go_update_mcause_data = has_exception ? exception_cause : interrupt_cause;

  // go_mepc: 记录发生Trap的PC地址，优先级见Table3.7。
  (* dont_touch = "true" *) wire go_update_mepc_enable      = go_mtrap_handler;
  (* dont_touch = "true" *) wire [31:0] go_update_mepc_data =
    exception_page_fault_inst     ? ifu_pc :
    exception_access_fault_inst   ? ifu_pc :
    exception_illegal_inst        ? exu_pc :
    exception_addr_misalign_inst  ? ifu_pc :
    exception_ecall_M  | exception_ecall_S | exception_ecall_U ? exu_pc :
    exception_breakpoint          ? exu_pc :
    exception_addr_misalign_sAMO  ? lsu_pc :
    exception_addr_misalign_load  ? lsu_pc :
    exception_page_fault_sAMO     ? lsu_pc :
    exception_page_fault_load     ? lsu_pc :
    exception_access_fault_sAMO   ? lsu_pc :
    exception_access_fault_load   ? lsu_pc :
    ifu_pc;  // 中断优先级低于异常，此时记录还未执行的PC(ifu_pc)。毕竟中断的到来无法预测，晚一会处理也没关系。

  // go_mtval: 记录发生Trap的异常值，协助程序解决Trap。如illegal_inst就是指令编码，访存出错就是(虚拟)存储器地址。
  (* dont_touch = "true" *) wire go_update_mtval_enable      = go_mtrap_handler;
  (* dont_touch = "true" *) wire [31:0] go_update_mtval_data =
    exception_page_fault_inst     ? ifu_memory_addr :
    exception_access_fault_inst   ? ifu_memory_addr :
    exception_illegal_inst        ? exu_instruction :
    exception_addr_misalign_inst  ? ifu_memory_addr :
    exception_ecall_M  | exception_ecall_S | exception_ecall_U ? 32'b0 :
    exception_breakpoint          ? 32'b0  :
    exception_addr_misalign_sAMO  ? lsu_memory_addr :
    exception_addr_misalign_load  ? lsu_memory_addr :
    exception_page_fault_sAMO     ? lsu_memory_addr :
    exception_page_fault_load     ? lsu_memory_addr :
    exception_access_fault_sAMO   ? lsu_memory_addr :
    exception_access_fault_load   ? lsu_memory_addr :
    32'b0;  //和玩具谈什么性能，这12级级联有什么问题吗？没有的。

  //////////
  // from_trap：更新 status CSR
  /////////
  // from_mstatus: mode切换到XPP；使XPP为U-mode；使XIE为XPIE；使XPIE为1
  (* dont_touch = "true" *) wire from_update_mstatus_enable      = mode == `MODE_M & from_trap;
  (* dont_touch = "true" *) wire [31:0] from_update_mstatus_data = {
    csr_mstatus[31:13],  //SD, TSR, TW, TVM, MXR, SUM, MPRV, XS, FS

    //MPP, Reserved, SPP
    {mode == `MODE_M ? `MODE_U : mstatus_mpp},
    csr_mstatus[10:9],
    {mode == `MODE_S ? `MODE_U : mstatus_spp},

    //MPIE, Reserved, SPIE, UPIE
    {mode == `MODE_M ? 1'b1 : mstatus_mpie},
    csr_mstatus[6],
    {mode == `MODE_S ? 1'b1 : mstatus_spie},
    {mode == `MODE_U ? 1'b1 : mstatus_upie},

    //MIE, Reserved, SIE, UIE
    {mode == `MODE_M ? mstatus_mpie : mstatus_mie},
    csr_mstatus[2],
    {mode == `MODE_S ? mstatus_spie : mstatus_sie},
    {mdoe == `MODE_U ? mstatus_upie : mstatus_uie}
  };

  assign update_mstatus_enable = go_update_mstatus_enable | from_update_mstatus_enable;
  assign update_mcause_enable  = go_update_mcause_enable;
  assign update_mepc_enable    = go_update_mepc_enable;
  assign update_mtval_enable   = go_update_mtval_enable;

  assign update_mstatus_data = from_trap ? from_update_mstatus_data : go_update_mstatus_data;
  assign update_mcause_data  = go_update_mcause_data;
  assign update_mepc_data    = go_update_mepc_data;
  assign update_mtval_data   = go_update_mtval_data;

endmodule
