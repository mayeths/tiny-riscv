## ✨ What is this?
This is my homework for class **"Computer Organization"「计算机组成原理」 of Tsinghua University**。I finished it with RISC-V ISA, instead of MIPS ISA. The code here are human friendly, especially in branch `dual-mem`.

## 🤔 How can I run this code?
Unfortunately, `master` and `dev` branches are incomplete. We marked branch `dual-mem` as our final work to submit homework. The board we use is `xc7a100tfgg676-2L`, platform is `vivado 2018.3`.

If you are interested, you may checkout to branch `dual-mem`, put the `main.bin` and `eram.bin` to `BASE_RAM_INIT_FILE` and `EXT_RAM_INIT_FILE` parameter in `thinpad_top.srcs\sim_1\new\tb.sv`, then start behaviour simulation. In the first 3500ns, `tb.sv` will put char to Tcl console, then release `system_rst` signal if correctly. CPU will reads instruction from base_ram and ext_ram after init, but I can't promise it may work well. Be relax to contact me if you need troubleshooting.

## 😎 Milestone

- [ ] RV32I: 
  - [x] Support normal instruction -- e.g., `add`, `addi`
  - [x] Support load/store instruction -- e.g., `lw`, `lb`, `sw`, `sb`
  - [x] Support jump & branch instruction -- e.g., `jal`, `jalr`, `beq`
  - [x] Bus Interface Unit(BIU) -- Control memory and uart
  - [ ] Support CSR -- See priviledged spec for detail
- [ ] RV32M: Multiplication & Division -- e.g., `mul`, `div`
- [ ] RV32A: AMO instruction -- e.g., `amoadd`. We can treat them as `nop + (add)` with one hart CPU.

## 👀 Instruction sets do we need to run linux
See this [issue](https://github.com/riscv/riscv-linux/issues/150).
- Linux kernel: only requires I and A (check makefiles)
- Linux distributions: RV64GC as described in [here](https://github.com/riscv/riscv-platform-specs/blob/master/riscv-unix.md).

Note that linux support risc-v which only implement m-mode and nommu after [commit 2019/11/17](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20191202&id=6bd33e1ece528f67646db33bf97406b747dafda0) (during we make this project). See [nommu changlog list](https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/?h=next-20191202&qt=grep&q=nommu) and [this keynote](https://linuxplumbersconf.org/event/4/contributions/386/attachments/298/502/RISC-V-NOMMU-Linux-Plumbers-2019.pdf) if you are interested.

## 📚 See also
- [riscv-spec](https://riscv.org/specifications/) 官方指令集规范，一定要研读。`docs/` 目录下有一份
- [riscv-privileged](https://riscv.org/specifications/privileged-isa/) 官方特权指令集架构规范，如果要做中断，异常，支持 Supervisor 和 User 模式，页表，那么你一定要仔细研读。`docs/` 目录下有一份
- [riscv-tools](https://github.com/riscv/riscv-tools) 官方的 tools 仓库
- [riscv-gnu-toolchain](https://github.com/riscv/riscv-gnu-toolchain) 生成riscv指令集的gcc，使用 `--with-arch` 参数可以生成支持不同指令子集的汇编指令，例如不想要 c 拓展就不要带 c
- [riscv-tests](https://github.com/riscv/riscv-tests) 官方提供的指令测试集，`isa/rv64ui` 下是普通算术指令。使用 riscv-unknown-elf-gcc 编译一下就可以使用了。相关指令：`riscv32-unknown-elf-objcopy -j .text -j '.text.*' -O binary -v xx.elf xx.bin`
- [riscv-meta](https://github.com/csail-csg/riscv-meta) 别人整理的有关 riscv 的很多东西，包括指令出现频率和寄存器出现频率。看addi指令这么多，估计是li伪指令用的最多

*找时间继续做吧。毕竟看了那么多的特权架构，下个学期还可以选操作系统在自己的CPU上跑系统*