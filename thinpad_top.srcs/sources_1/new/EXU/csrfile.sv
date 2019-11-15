module csrfile(
  input  wire clk,
  input  wire rst,
  input  wire read_enable,
  input  wire write_enable,
  input  wire[4:0]  read_idx,
  input  wire[4:0]  write_idx,
  input  wire[31:0] write_data,

  output wire[31:0] read_data

  //expose some essential csr here
);

  //It's not that easy to read/write csrfile like normal regfile.
  //See chapter 2.2(p.6) of riscv-privileged.pdf for all csrs.
  //See 'e203_exu_csr.v' of e203_opensource repo for more detail.

  ////////reg////////
  //TODO: Lack of pmpcfg, pmpaddr, mhpmcounter, mhpmcounterh, mhpmevent, tselect, tdata csr.
  //      See button of this file for all machine-level csr.
  //TODO: Lack of supervisor-level csr.
  reg [31:0] csr_mvendorid;
  reg [31:0] csr_marchid;
  reg [31:0] csr_mimpid;
  reg [31:0] csr_mhartid;
  reg [31:0] csr_mstatus;
  reg [31:0] csr_misa;
  reg [31:0] csr_medeleg;
  reg [31:0] csr_mideleg;
  reg [31:0] csr_mie;
  reg [31:0] csr_mtvec;
  reg [31:0] csr_mcounteren;
  reg [31:0] csr_mscratch;
  reg [31:0] csr_mepc;
  reg [31:0] csr_mcause;
  reg [31:0] csr_mtval;
  reg [31:0] csr_mip;
  reg [31:0] csr_mcycle;
  reg [31:0] csr_minstret;
  reg [31:0] csr_mcycleh;
  reg [31:0] csr_minstreth;
  reg [31:0] csr_mcountinhibit;
  reg [31:0] csr_dcsr;
  reg [31:0] csr_dpc;
  reg [31:0] csr_dscratch0;
  reg [31:0] csr_dscratch1;


  ////////signal////////
  wire rd_mvendorid     = read_enable & (read_idx == 12'hF11);
  wire rd_marchid       = read_enable & (read_idx == 12'hF12);
  wire rd_mimpid        = read_enable & (read_idx == 12'hF13);
  wire rd_mhartid       = read_enable & (read_idx == 12'hF14);
  wire rd_mstatus       = read_enable & (read_idx == 12'h300);
  wire rd_misa          = read_enable & (read_idx == 12'h301);
  wire rd_medeleg       = read_enable & (read_idx == 12'h302);
  wire rd_mideleg       = read_enable & (read_idx == 12'h303);
  wire rd_mie           = read_enable & (read_idx == 12'h304);
  wire rd_mtvec         = read_enable & (read_idx == 12'h305);
  wire rd_mcounteren    = read_enable & (read_idx == 12'h306);
  wire rd_mscratch      = read_enable & (read_idx == 12'h340);
  wire rd_mepc          = read_enable & (read_idx == 12'h341);
  wire rd_mcause        = read_enable & (read_idx == 12'h342);
  wire rd_mtval         = read_enable & (read_idx == 12'h343);
  wire rd_mip           = read_enable & (read_idx == 12'h344);
  wire rd_mcycle        = read_enable & (read_idx == 12'hB00);
  wire rd_minstret      = read_enable & (read_idx == 12'hB02);
  wire rd_mcycleh       = read_enable & (read_idx == 12'hB80);
  wire rd_minstreth     = read_enable & (read_idx == 12'hB82);
  wire rd_mcountinhibit = read_enable & (read_idx == 12'h320);
  wire rd_dcsr          = read_enable & (read_idx == 12'h7B0);
  wire rd_dpc           = read_enable & (read_idx == 12'h7B1);
  wire rd_dscratch0     = read_enable & (read_idx == 12'h7B2);
  wire rd_dscratch1     = read_enable & (read_idx == 12'h7B3);
  //
  wire wr_mvendorid     = write_enable & (read_idx == 12'hF11);
  wire wr_marchid       = write_enable & (read_idx == 12'hF12);
  wire wr_mimpid        = write_enable & (read_idx == 12'hF13);
  wire wr_mhartid       = write_enable & (read_idx == 12'hF14);
  wire wr_mstatus       = write_enable & (read_idx == 12'h300);
  wire wr_misa          = write_enable & (read_idx == 12'h301);
  wire wr_medeleg       = write_enable & (read_idx == 12'h302);
  wire wr_mideleg       = write_enable & (read_idx == 12'h303);
  wire wr_mie           = write_enable & (read_idx == 12'h304);
  wire wr_mtvec         = write_enable & (read_idx == 12'h305);
  wire wr_mcounteren    = write_enable & (read_idx == 12'h306);
  wire wr_mscratch      = write_enable & (read_idx == 12'h340);
  wire wr_mepc          = write_enable & (read_idx == 12'h341);
  wire wr_mcause        = write_enable & (read_idx == 12'h342);
  wire wr_mtval         = write_enable & (read_idx == 12'h343);
  wire wr_mip           = write_enable & (read_idx == 12'h344);
  wire wr_mcycle        = write_enable & (read_idx == 12'hB00);
  wire wr_minstret      = write_enable & (read_idx == 12'hB02);
  wire wr_mcycleh       = write_enable & (read_idx == 12'hB80);
  wire wr_minstreth     = write_enable & (read_idx == 12'hB82);
  wire wr_mcountinhibit = write_enable & (read_idx == 12'h320);
  wire wr_dcsr          = write_enable & (read_idx == 12'h7B0);
  wire wr_dpc           = write_enable & (read_idx == 12'h7B1);
  wire wr_dscratch0     = write_enable & (read_idx == 12'h7B2);
  wire wr_dscratch1     = write_enable & (read_idx == 12'h7B3);

  ////////bus////////
  //TODO: some csr use non-trival input, specify them here.
  wire in_mvendorid     = write_data;
  wire in_marchid       = write_data;
  wire in_mimpid        = write_data;
  wire in_mhartid       = write_data;
  wire in_mstatus       = write_data;
  wire in_misa          = write_data;
  wire in_medeleg       = write_data;
  wire in_mideleg       = write_data;
  wire in_mie           = write_data;
  wire in_mtvec         = write_data;
  wire in_mcounteren    = write_data;
  wire in_mscratch      = write_data;
  wire in_mepc          = write_data;
  wire in_mcause        = write_data;
  wire in_mtval         = write_data;
  wire in_mip           = write_data;
  wire in_mcycle        = write_data;
  wire in_minstret      = write_data;
  wire in_mcycleh       = write_data;
  wire in_minstreth     = write_data;
  wire in_mcountinhibit = write_data;
  wire in_dcsr          = write_data;
  wire in_dpc           = write_data;
  wire in_dscratch0     = write_data;
  wire in_dscratch1     = write_data;
  //
  //TODO: some csr use non-trival output, specify them here.
  wire out_mvendorid     = csr_mvendorid;
  wire out_marchid       = csr_marchid;
  wire out_mimpid        = csr_mimpid;
  wire out_mhartid       = csr_mhartid;
  wire out_mstatus       = csr_mstatus;
  wire out_misa          = csr_misa;
  wire out_medeleg       = csr_medeleg;
  wire out_mideleg       = csr_mideleg;
  wire out_mie           = csr_mie;
  wire out_mtvec         = csr_mtvec;
  wire out_mcounteren    = csr_mcounteren;
  wire out_mscratch      = csr_mscratch;
  wire out_mepc          = csr_mepc;
  wire out_mcause        = csr_mcause;
  wire out_mtval         = csr_mtval;
  wire out_mip           = csr_mip;
  wire out_mcycle        = csr_mcycle;
  wire out_minstret      = csr_minstret;
  wire out_mcycleh       = csr_mcycleh;
  wire out_minstreth     = csr_minstreth;
  wire out_mcountinhibit = csr_mcountinhibit;
  wire out_dcsr          = csr_dcsr;
  wire out_dpc           = csr_dpc;
  wire out_dscratch0     = csr_dscratch0;
  wire out_dscratch1     = csr_dscratch1;

  ////////read////////
  //Use parallel or-and wire to read data.
  assign read_data = 32'b0
    | ({32{rd_mvendorid     }} & out_mvendorid     )
    | ({32{rd_marchid       }} & out_marchid       )
    | ({32{rd_mimpid        }} & out_mimpid        )
    | ({32{rd_mhartid       }} & out_mhartid       )
    | ({32{rd_mstatus       }} & out_mstatus       )
    | ({32{rd_misa          }} & out_misa          )
    | ({32{rd_medeleg       }} & out_medeleg       )
    | ({32{rd_mideleg       }} & out_mideleg       )
    | ({32{rd_mie           }} & out_mie           )
    | ({32{rd_mtvec         }} & out_mtvec         )
    | ({32{rd_mcounteren    }} & out_mcounteren    )
    | ({32{rd_mscratch      }} & out_mscratch      )
    | ({32{rd_mepc          }} & out_mepc          )
    | ({32{rd_mcause        }} & out_mcause        )
    | ({32{rd_mtval         }} & out_mtval         )
    | ({32{rd_mip           }} & out_mip           )
    | ({32{rd_mcycle        }} & out_mcycle        )
    | ({32{rd_minstret      }} & out_minstret      )
    | ({32{rd_mcycleh       }} & out_mcycleh       )
    | ({32{rd_minstreth     }} & out_minstreth     )
    | ({32{rd_mcountinhibit }} & out_mcountinhibit )
    | ({32{rd_dcsr          }} & out_dcsr          )
    | ({32{rd_dpc           }} & out_dpc           )
    | ({32{rd_dscratch0     }} & out_dscratch0     )
    | ({32{rd_dscratch1     }} & out_dscratch1     )
    ;

  ////////write////////
  always @(posedge clk) begin
    csr_mvendorid     <= rst ? 32'b0 : in_mvendorid;
    csr_marchid       <= rst ? 32'b0 : in_marchid;
    csr_mimpid        <= rst ? 32'b0 : in_mimpid;
    csr_mhartid       <= rst ? 32'b0 : in_mhartid;
    csr_mstatus       <= rst ? 32'b0 : in_mstatus;
    csr_misa          <= rst ? 32'b0 : in_misa;
    csr_medeleg       <= rst ? 32'b0 : in_medeleg;
    csr_mideleg       <= rst ? 32'b0 : in_mideleg;
    csr_mie           <= rst ? 32'b0 : in_mie;
    csr_mtvec         <= rst ? 32'b0 : in_mtvec;
    csr_mcounteren    <= rst ? 32'b0 : in_mcounteren;
    csr_mscratch      <= rst ? 32'b0 : in_mscratch;
    csr_mepc          <= rst ? 32'b0 : in_mepc;
    csr_mcause        <= rst ? 32'b0 : in_mcause;
    csr_mtval         <= rst ? 32'b0 : in_mtval;
    csr_mip           <= rst ? 32'b0 : in_mip;
    csr_mcycle        <= rst ? 32'b0 : in_mcycle;
    csr_minstret      <= rst ? 32'b0 : in_minstret;
    csr_mcycleh       <= rst ? 32'b0 : in_mcycleh;
    csr_minstreth     <= rst ? 32'b0 : in_minstreth;
    csr_mcountinhibit <= rst ? 32'b0 : in_mcountinhibit;
    csr_dcsr          <= rst ? 32'b0 : in_dcsr;
    csr_dpc           <= rst ? 32'b0 : in_dpc;
    csr_dscratch0     <= rst ? 32'b0 : in_dscratch0;
    csr_dscratch1     <= rst ? 32'b0 : in_dscratch1;
  end


endmodule


/*

>From chapter 2.2(p.6) of riscv-privileged.pdf.
>You may also want   RISC-V supervisor-level CSR addresses, please read this chapter for more detail.
>Currently allocated RISC-V machine-level    CSR addresses:
  Index  Name           Privilege Description
  0xF11  mvendorid      MRO       Vendor ID.
  0xF12  marchid        MRO       Architecture ID.
  0xF13  mimpid         MRO       Implementation ID.
  0xF14  mhartid        MRO       Hardware thread ID.
  0x300  mstatus        MRW       Machine status register.
  0x301  misa           MRW       ISA and extensions
  0x302  medeleg        MRW       Machine exception delegation register.
  0x303  mideleg        MRW       Machine interrupt delegation register.
  0x304  mie            MRW       Machine interrupt-enable register.
  0x305  mtvec          MRW       Machine trap-handler base address.
  0x306  mcounteren     MRW       Machine counter enable.
  0x340  mscratch       MRW       Scratch register for machine trap handlers.
  0x341  mepc           MRW       Machine exception program counter.
  0x342  mcause         MRW       Machine trap cause.
  0x343  mtval          MRW       Machine bad address or instruction.
  0x344  mip            MRW       Machine interrupt pending.
  0x3A0  pmpcfg0        MRW       Physical memory protection configuration.
  0x3A1  pmpcfg1        MRW       Physical memory protection configuration, RV32 only.
  0x3A2  pmpcfg2        MRW       Physical memory protection configuration.
  0x3A3  pmpcfg3        MRW       Physical memory protection configuration, RV32 only.
  0x3B0  pmpaddr0       MRW       Physical memory protection address register.
  0x3B1  pmpaddr1       MRW       Physical memory protection address register.
  0x3B2  pmpaddr2       MRW       Physical memory protection address register.
  0x3B3  pmpaddr3       MRW       Physical memory protection address register.
  0x3B4  pmpaddr4       MRW       Physical memory protection address register.
  0x3B5  pmpaddr5       MRW       Physical memory protection address register.
  0x3B6  pmpaddr6       MRW       Physical memory protection address register.
  0x3B7  pmpaddr7       MRW       Physical memory protection address register.
  0x3B8  pmpaddr8       MRW       Physical memory protection address register.
  0x3B9  pmpaddr9       MRW       Physical memory protection address register.
  0x3BA  pmpaddr10      MRW       Physical memory protection address register.
  0x3BB  pmpaddr11      MRW       Physical memory protection address register.
  0x3BC  pmpaddr12      MRW       Physical memory protection address register.
  0x3BD  pmpaddr13      MRW       Physical memory protection address register.
  0x3BE  pmpaddr14      MRW       Physical memory protection address register.
  0x3BF  pmpaddr15      MRW       Physical memory protection address register.
  0xB00  mcycle         MRW       Machine cycle counter.
  0xB02  minstret       MRW       Machine instructions-retired counter.
  0xB03  mhpmcounter3   MRW       Machine performance-monitoring counter.
  0xB04  mhpmcounter4   MRW       Machine performance-monitoring counter.
  0xB05  mhpmcounter5   MRW       Machine performance-monitoring counter.
  0xB06  mhpmcounter6   MRW       Machine performance-monitoring counter.
  0xB07  mhpmcounter7   MRW       Machine performance-monitoring counter.
  0xB08  mhpmcounter8   MRW       Machine performance-monitoring counter.
  0xB09  mhpmcounter9   MRW       Machine performance-monitoring counter.
  0xB0A  mhpmcounter10  MRW       Machine performance-monitoring counter.
  0xB0B  mhpmcounter11  MRW       Machine performance-monitoring counter.
  0xB0C  mhpmcounter12  MRW       Machine performance-monitoring counter.
  0xB0D  mhpmcounter13  MRW       Machine performance-monitoring counter.
  0xB0E  mhpmcounter14  MRW       Machine performance-monitoring counter.
  0xB0F  mhpmcounter15  MRW       Machine performance-monitoring counter.
  0xB10  mhpmcounter16  MRW       Machine performance-monitoring counter.
  0xB11  mhpmcounter17  MRW       Machine performance-monitoring counter.
  0xB12  mhpmcounter18  MRW       Machine performance-monitoring counter.
  0xB13  mhpmcounter19  MRW       Machine performance-monitoring counter.
  0xB14  mhpmcounter20  MRW       Machine performance-monitoring counter.
  0xB15  mhpmcounter21  MRW       Machine performance-monitoring counter.
  0xB16  mhpmcounter22  MRW       Machine performance-monitoring counter.
  0xB17  mhpmcounter23  MRW       Machine performance-monitoring counter.
  0xB18  mhpmcounter24  MRW       Machine performance-monitoring counter.
  0xB19  mhpmcounter25  MRW       Machine performance-monitoring counter.
  0xB1A  mhpmcounter26  MRW       Machine performance-monitoring counter.
  0xB1B  mhpmcounter27  MRW       Machine performance-monitoring counter.
  0xB1C  mhpmcounter28  MRW       Machine performance-monitoring counter.
  0xB1D  mhpmcounter29  MRW       Machine performance-monitoring counter.
  0xB1E  mhpmcounter30  MRW       Machine performance-monitoring counter.
  0xB1F  mhpmcounter31  MRW       Machine performance-monitoring counter.
  0xB80  mcycleh        MRW       Upper 32 bits of mcycle, RV32I only.
  0xB82  minstreth      MRW       Upper 32 bits of minstret, RV32I only.
  0xB83  mhpmcounter3h  MRW       Upper 32 bits of mhpmcounter3, RV32I only.
  0xB84  mhpmcounter4h  MRW       Upper 32 bits of mhpmcounter4, RV32I only.
  0xB85  mhpmcounter5h  MRW       Machine performance-monitoring event selector.
  0xB86  mhpmcounter6h  MRW       Machine performance-monitoring event selector.
  0xB87  mhpmcounter7h  MRW       Machine performance-monitoring event selector.
  0xB88  mhpmcounter8h  MRW       Machine performance-monitoring event selector.
  0xB89  mhpmcounter9h  MRW       Machine performance-monitoring event selector.
  0xB8A  mhpmcounter10h MRW       Machine performance-monitoring event selector.
  0xB8B  mhpmcounter11h MRW       Machine performance-monitoring event selector.
  0xB8C  mhpmcounter12h MRW       Machine performance-monitoring event selector.
  0xB8D  mhpmcounter13h MRW       Machine performance-monitoring event selector.
  0xB8E  mhpmcounter14h MRW       Machine performance-monitoring event selector.
  0xB8F  mhpmcounter15h MRW       Machine performance-monitoring event selector.
  0xB90  mhpmcounter16h MRW       Machine performance-monitoring event selector.
  0xB91  mhpmcounter17h MRW       Machine performance-monitoring event selector.
  0xB92  mhpmcounter18h MRW       Machine performance-monitoring event selector.
  0xB93  mhpmcounter19h MRW       Machine performance-monitoring event selector.
  0xB94  mhpmcounter20h MRW       Machine performance-monitoring event selector.
  0xB95  mhpmcounter21h MRW       Machine performance-monitoring event selector.
  0xB96  mhpmcounter22h MRW       Machine performance-monitoring event selector.
  0xB97  mhpmcounter23h MRW       Machine performance-monitoring event selector.
  0xB98  mhpmcounter24h MRW       Machine performance-monitoring event selector.
  0xB99  mhpmcounter25h MRW       Machine performance-monitoring event selector.
  0xB9A  mhpmcounter26h MRW       Machine performance-monitoring event selector.
  0xB9B  mhpmcounter27h MRW       Machine performance-monitoring event selector.
  0xB9C  mhpmcounter28h MRW       Machine performance-monitoring event selector.
  0xB9D  mhpmcounter29h MRW       Machine performance-monitoring event selector.
  0xB9E  mhpmcounter30h MRW       Machine performance-monitoring event selector.
  0xB9F  mhpmcounter31h MRW       Upper 32 bits of mhpmcounter31, RV32I only.
  0x320  mcountinhibit  MRW       Machine counter-inhibit register.
  0x323  mhpmevent3     MRW       Machine performance-monitoring event selector.
  0x324  mhpmevent4     MRW       Machine performance-monitoring event selector.
  0x325  mhpmevent5     MRW       Machine performance-monitoring event selector.
  0x326  mhpmevent6     MRW       Machine performance-monitoring event selector.
  0x327  mhpmevent7     MRW       Machine performance-monitoring event selector.
  0x328  mhpmevent8     MRW       Machine performance-monitoring event selector.
  0x329  mhpmevent9     MRW       Machine performance-monitoring event selector.
  0x32A  mhpmevent10    MRW       Machine performance-monitoring event selector.
  0x32B  mhpmevent11    MRW       Machine performance-monitoring event selector.
  0x32C  mhpmevent12    MRW       Machine performance-monitoring event selector.
  0x32D  mhpmevent13    MRW       Machine performance-monitoring event selector.
  0x32E  mhpmevent14    MRW       Machine performance-monitoring event selector.
  0x32F  mhpmevent15    MRW       Machine performance-monitoring event selector.
  0x330  mhpmevent16    MRW       Machine performance-monitoring event selector.
  0x331  mhpmevent17    MRW       Machine performance-monitoring event selector.
  0x332  mhpmevent18    MRW       Machine performance-monitoring event selector.
  0x333  mhpmevent19    MRW       Machine performance-monitoring event selector.
  0x334  mhpmevent20    MRW       Machine performance-monitoring event selector.
  0x335  mhpmevent21    MRW       Machine performance-monitoring event selector.
  0x336  mhpmevent22    MRW       Machine performance-monitoring event selector.
  0x337  mhpmevent23    MRW       Machine performance-monitoring event selector.
  0x338  mhpmevent24    MRW       Machine performance-monitoring event selector.
  0x339  mhpmevent25    MRW       Machine performance-monitoring event selector.
  0x33A  mhpmevent26    MRW       Machine performance-monitoring event selector.
  0x33B  mhpmevent27    MRW       Machine performance-monitoring event selector.
  0x33C  mhpmevent28    MRW       Machine performance-monitoring event selector.
  0x33D  mhpmevent29    MRW       Machine performance-monitoring event selector.
  0x33E  mhpmevent30    MRW       Machine performance-monitoring event selector.
  0x33F  mhpmevent31    MRW       Machine performance-monitoring event selector.
  0x7A0  tselect        MRW       Debug/Trace trigger register select.
  0x7A1  tdata1         MRW       First Debug/Trace trigger data register.
  0x7A2  tdata2         MRW       Second Debug/Trace trigger data register.
  0x7A3  tdata3         MRW       Third Debug/Trace trigger data register.
  0x7B0  dcsr           DRW       Debug control and status register.
  0x7B1  dpc            DRW       Debug PC.
  0x7B2  dscratch0      DRW       Debug scratch register 0
  0x7B3  dscratch1      DRW       Debug scratch register 1

*/
