Thinpad 模板工程
---------------

工程包含示例代码和所有引脚约束，可以直接编译。

代码中包含中文注释，编码为utf-8，在Windows版Vivado下可能出现乱码问题。  
请用别的代码编辑器打开文件，并将编码改为GBK。

---

### Instruction sets do we need to run linux
See [issue](https://github.com/riscv/riscv-linux/issues/150)
- Linux kernel: only requires I and A (check makefiles)
- Linux distributions: RV64GC as described in [here](https://github.com/riscv/riscv-platform-specs/blob/master/riscv-unix.md).

### Milestone

- RV32I: 最简单的CPU
  - 实现没有分支的CPU：整数运算指令和整数存储指令
  - 实现分支和跳转：基本工作流
  - 实现CSR和FENCE指令
  - 实现异常和中断：特殊指令
- 实现总线接口(找个时间做)
- RV32M: 补充乘除法
- RV32A: 存储器原子指令
- 剩余的其他工作

### RISC-V instruction sets

- RV32I
  - 整数运算指令
    - ADDI, SLTI, SLTIU, ANDI, ORI, XORI, SLLI, SRLI, SRAI, LUI, AUIPC
  - 整数存储指令
    - LW, LH, LHU, LB, LBU, SW, SH, SB
  - 分支跳转指令
    - JAL, JALR, BEQ, BNE, BLT, BLTU, BGE, BGEU
  - CSR 寄存器操作指令
    - CSRRW, CSRRS, CSRRC, CSRRWI, CSRRSI, CSRRCI
  - 寄存器屏障指令（FENCE）
    - FENCE, FENCE.I
  - 特殊指令
    - ECALL, EBREAK, MRET, WFI
- RV32M
  - 整数乘法指令
    - MUL, MULH, MULHU, MULHSU
  - 整数除法指令
    - DIV, DIVU, REM, REMU
- RV32A
  - 原子存储指令(AMO) 指令
    - amoswap.w, amoadd.w, amoand.w, amoor.w, amoxor.w, amomax.w, amomaxu.w, amomin.w, amominu.w
  - 互斥读和互斥写指令
    - lr.w, sc.w
