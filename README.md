
### Instruction sets do we need to run linux
See [issue](https://github.com/riscv/riscv-linux/issues/150)
- Linux kernel: only requires I and A (check makefiles)
- Linux distributions: RV64GC as described in [here](https://github.com/riscv/riscv-platform-specs/blob/master/riscv-unix.md).

### Milestone

- [ ] RV32I: 最简单的CPU
  - [x] 实现没有分支的CPU：整数运算指令和整数存储指令
  - [x] 实现分支和跳转：基本工作流
  - [x] 实现总线接口（只做了很简单的逻辑控制，根本没有总线）
  - [ ] 实现CSR和FENCE指令
  - [ ] 实现异常和中断：特殊指令
- [ ] RV32M: 补充乘除法
- [ ] RV32A: 存储器原子指令(在单CPU下直接NOP就可以)

### See also
- [riscv-meta](https://github.com/csail-csg/riscv-meta): 有关 riscv 的很多有用东西，包括指令出现频率和寄存器出现频率
- [riscv-tools](https://github.com/riscv/riscv-tools): 当然是官方的 tools 了
- [riscv-gnu-toolchain](https://github.com/riscv/riscv-gnu-toolchain): 生成riscv指令集的gcc，使用 `--with-arch` 参数可以生成支持不同指令子集的汇编指令，例如不想要 c 拓展就不要带 c
- [riscv-tests](https://github.com/riscv/riscv-tests): 官方提供的指令测试集，`isa/rv64ui` 下是普通算术指令。使用 riscv-unknown-elf-gcc 编译一下就可以使用了。相关指令：`riscv32-unknown-elf-objcopy -j .text -j '.text.*' -O binary -v xx.elf xx.bin`

*找时间继续做吧。毕竟看了那么多的特权架构，下个学期还可以选操作系统在自己的CPU上跑系统*