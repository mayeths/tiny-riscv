module core (
  input wire system_clk,
  input wire system_rst,

  // IBUS AXI ports
  //AXI write address bus -------------- // USED// -----------
  output wire [AXI4_ID_WIDTH-1:0]      ibus_awid,
  output wire [AXI4_ADDRESS_WIDTH-1:0] ibus_awaddr,
  output wire [ 7:0]                   ibus_awlen,
  output wire [ 2:0]                   ibus_awsize,
  output wire [ 1:0]                   ibus_awburst,
  output wire                          ibus_awlock,
  output wire [ 3:0]                   ibus_awcache,
  output wire [ 2:0]                   ibus_awprot,
  output wire [ 3:0]                   ibus_awregion,
  output wire [AXI4_USER_WIDTH-1:0]    ibus_awuser,
  output wire [ 3:0]                   ibus_awqos,
  output wire                          ibus_awvalid,
  input  wire                          ibus_awready,
  // ---------------------------------------------------------

  //AXI write data bus -------------- // USED// --------------
  output wire [AXI4_WDATA_WIDTH-1:0]   ibus_wdata,
  output wire [AXI4_WDATA_WIDTH/8-1:0] ibus_wstrb,
  output wire                          ibus_wlast,
  output wire [AXI4_USER_WIDTH-1:0]    ibus_wuser,
  output wire                          ibus_wvalid,
  input  wire                          ibus_wready,
  // ---------------------------------------------------------

  //AXI write response bus -------------- // USED// ----------
  input  wire   [AXI4_ID_WIDTH-1:0]    ibus_bid,
  input  wire   [ 1:0]                 ibus_bresp,
  input  wire                          ibus_bvalid,
  input  wire   [AXI4_USER_WIDTH-1:0]  ibus_buser,
  output wire                          ibus_bready,
  // ---------------------------------------------------------

  //AXI read address bus -------------------------------------
  output wire [AXI4_ID_WIDTH-1:0]      ibus_arid,
  output wire [AXI4_ADDRESS_WIDTH-1:0] ibus_araddr,
  output wire [ 7:0]                   ibus_arlen,
  output wire [ 2:0]                   ibus_arsize,
  output wire [ 1:0]                   ibus_arburst,
  output wire                          ibus_arlock,
  output wire [ 3:0]                   ibus_arcache,
  output wire [ 2:0]                   ibus_arprot,
  output wire [ 3:0]                   ibus_arregion,
  output wire [AXI4_USER_WIDTH-1:0]    ibus_aruser,
  output wire [ 3:0]                   ibus_arqos,
  output wire                          ibus_arvalid,
  input  wire                          ibus_arready,
  // ---------------------------------------------------------

  //AXI read data bus ----------------------------------------
  input  wire [AXI4_ID_WIDTH-1:0]     ibus_rid,
  input  wire [AXI4_RDATA_WIDTH-1:0]  ibus_rdata,
  input  wire [ 1:0]                  ibus_rresp,
  input  wire                         ibus_rlast,
  input  wire [AXI4_USER_WIDTH-1:0]   ibus_ruser,
  input  wire                         ibus_rvalid,
  output wire                         ibus_rready,
  // ---------------------------------------------------------

  // DBUS AXI ports
  //AXI write address bus -------------- // USED// -----------
  output wire [AXI4_ID_WIDTH-1:0]      dbus_awid,
  output wire [AXI4_ADDRESS_WIDTH-1:0] dbus_awaddr,
  output wire [ 7:0]                   dbus_awlen,
  output wire [ 2:0]                   dbus_awsize,
  output wire [ 1:0]                   dbus_awburst,
  output wire                          dbus_awlock,
  output wire [ 3:0]                   dbus_awcache,
  output wire [ 2:0]                   dbus_awprot,
  output wire [ 3:0]                   dbus_awregion,
  output wire [AXI4_USER_WIDTH-1:0]    dbus_awuser,
  output wire [ 3:0]                   dbus_awqos,
  output wire                          dbus_awvalid,
  input  wire                          dbus_awready,
  // ---------------------------------------------------------

  //AXI write data bus -------------- // USED// --------------
  output wire [AXI4_WDATA_WIDTH-1:0]   dbus_wdata,
  output wire [AXI4_WDATA_WIDTH/8-1:0] dbus_wstrb,
  output wire                          dbus_wlast,
  output wire [AXI4_USER_WIDTH-1:0]    dbus_wuser,
  output wire                          dbus_wvalid,
  input  wire                          dbus_wready,
  // ---------------------------------------------------------

  //AXI write response bus -------------- // USED// ----------
  input  wire [AXI4_ID_WIDTH-1:0]      dbus_bid,
  input  wire [ 1:0]                   dbus_bresp,
  input  wire                          dbus_bvalid,
  input  wire [AXI4_USER_WIDTH-1:0]    dbus_buser,
  output wire                          dbus_bready,
  // ---------------------------------------------------------

  //AXI read address bus -------------------------------------
  output wire [AXI4_ID_WIDTH-1:0]      dbus_arid,
  output wire [AXI4_ADDRESS_WIDTH-1:0] dbus_araddr,
  output wire [ 7:0]                   dbus_arlen,
  output wire [ 2:0]                   dbus_arsize,
  output wire [ 1:0]                   dbus_arburst,
  output wire                          dbus_arlock,
  output wire [ 3:0]                   dbus_arcache,
  output wire [ 2:0]                   dbus_arprot,
  output wire [ 3:0]                   dbus_arregion,
  output wire [AXI4_USER_WIDTH-1:0]    dbus_aruser,
  output wire [ 3:0]                   dbus_arqos,
  output wire                          dbus_arvalid,
  input  wire                          dbus_arready,
  // ---------------------------------------------------------

  //AXI read data bus ----------------------------------------
  input  wire [AXI4_ID_WIDTH-1:0]     dbus_rid,
  input  wire [AXI4_RDATA_WIDTH-1:0]  dbus_rdata,
  input  wire [ 1:0]                  dbus_rresp,
  input  wire                         dbus_rlast,
  input  wire [AXI4_USER_WIDTH-1:0]   dbus_ruser,
  input  wire                         dbus_rvalid,
  output wire                         dbus_rready
  // ---------------------------------------------------------
);

  parameter AXI4_ADDRESS_WIDTH = 32;
  parameter AXI4_RDATA_WIDTH   = 32;
  parameter AXI4_WDATA_WIDTH   = 32;
  parameter AXI4_ID_WIDTH      = 16;
  parameter AXI4_USER_WIDTH    = 8;
  parameter REGISTERED_GRANT   = "FALSE";

  ////////output of modules////////
  // Then what you need is assign them to next corresponding modules.
  ////        ibus_axi_if
  wire                          ibus_data_req;
  wire                          ibus_data_rvalid;
  wire [AXI4_ADDRESS_WIDTH-1:0] ibus_data_addr;
  wire [AXI4_RDATA_WIDTH-1:0]   ibus_data_rdata;
  ////        dbus_axi_if
  wire                          dbus_data_req;
  wire                          dbus_data_we;
  wire                          dbus_data_rvalid;
  wire                          dbus_data_gnt;
  wire [AXI4_ADDRESS_WIDTH-1:0] dbus_data_addr;
  wire [AXI4_RDATA_WIDTH-1:0]   dbus_data_rdata;
  wire [3:0]                    dbus_data_be;
  wire [AXI4_WDATA_WIDTH-1:0]   dbus_data_wdata;
  ////        ifu
  wire [31:0] ifu_pc;
  wire [31:0] ifu_inst;
  wire [4:0]  ifu_jalr_addr;
  ////        pipeline1
  wire [31:0] pipe1_pc;
  wire [31:0] pipe1_inst;
  ////        decode
  wire        decode_rs1_enable;
  wire        decode_rs2_enable;
  wire [4:0]  decode_rs1_addr;
  wire [4:0]  decode_rs2_addr;
  wire [3:0]  decode_alu_action;
  wire        decode_op1_is_pc;
  wire        decode_op2_is_imm;
  wire [31:0] decode_imm32;
  wire        decode_is_beq;
  wire        decode_is_bne;
  wire        decode_is_blt;
  wire        decode_is_bge;
  wire        decode_is_bltu;
  wire        decode_is_bgeu;
  wire        decode_dst_enable;
  wire [4:0]  decode_dst_addr;
  wire        decode_load_enable;
  wire        decode_store_enable;
  wire [2:0]  decode_load_type;
  wire [1:0]  decode_store_type;
  wire [1:0]  decode_exu_out_src;
  wire [11:0] decode_csr_addr;
  wire        decode_csr_read_enable;
  wire        decode_csr_write_enable;
  wire [2:0]  decode_csru_action;
  wire [31:0] decode_uimm32;
  ////        regfile
  wire [31:0] regfile_rs1_data;
  wire [31:0] regfile_rs2_data;
  wire [31:0] regfile_jalr_data;
  ////        exu
  wire [31:0] exu_exu_out;
  wire [31:0] exu_csr_out;
  ////        bru
  wire        bru_go_branch;
  wire [31:0] bru_go_branch_op1;
  wire [31:0] bru_go_branch_op2;
  ////        pipeline2
  wire [31:0] pipe2_alu_out;
  wire        pipe2_load_enable;
  wire        pipe2_store_enable;
  wire [2:0]  pipe2_load_type;
  wire [1:0]  pipe2_store_type;
  wire [31:0] pipe2_store_data;
  wire        pipe2_dst_enable;
  wire [4:0]  pipe2_dst_addr;
  ////        lsu
  wire [31:0] lsu_load_data;
  ////        wbu
  wire [31:0] wbu_wb_data;
  ////        computed wires


  ifu ifu_(
    //input
    .clk            (system_clk),
    .rst            (system_rst),
    .stall          (),
    //output
    .pc             (ifu_pc),
    .inst           (ifu_inst),
    //assign to axi_if
    .data_req       (ibus_data_req),
    .data_addr      (ibus_data_addr),
    .data_rvalid    (ibus_data_rvalid),
    .data_rdata     (ibus_data_rdata),
    //assign to regfile
    .jalr_data      (regfile_jalr_data),
    .jalr_addr      (ifu_jalr_addr),
    //assign to BRU
    .go_branch      (bru_go_branch),
    .go_branch_op1  (bru_go_branch_op1),
    .go_branch_op2  (bru_go_branch_op2)
  );

  pipeline1 pipeline1_(
    .clk    (system_clk),
    .rst    (system_rst),
    .flush  (go_branch),
    .stall  (),
    .if_pc  (ifu_pc),             .ex_pc  (pipe1_pc),
    .if_inst(ifu_inst),           .ex_inst(pipe1_inst)
  );

  decode decode_(
    //input
    .inst(pipe1_inst),
    //output
    .rs1_enable      (decode_rs1_enable),
    .rs2_enable      (decode_rs2_enable),
    .rs1_addr        (decode_rs1_addr),
    .rs2_addr        (decode_rs2_addr),
    .alu_action      (decode_alu_action),
    .op1_is_pc       (decode_op1_is_pc),
    .op2_is_imm      (decode_op2_is_imm),
    .imm32           (decode_imm32),
    .is_beq          (decode_is_beq),
    .is_bne          (decode_is_bne),
    .is_blt          (decode_is_blt),
    .is_bge          (decode_is_bge),
    .is_bltu         (decode_is_bltu),
    .is_bgeu         (decode_is_bgeu),
    .dst_enable      (decode_dst_enable),
    .dst_addr        (decode_dst_addr),
    .load_enable     (decode_load_enable),
    .store_enable    (decode_store_enable),
    .load_type       (decode_load_type),
    .store_type      (decode_store_type),
    .exu_out_src     (decode_exu_out_src),
    .csr_addr        (decode_csr_addr),
    .csr_read_enable (decode_csr_read_enable),
    .csr_write_enable(decode_csr_write_enable),
    .csru_action     (decode_csru_action),
    .uimm32          (decode_uimm32)
  );

  regfile regfile_(
    //input
    .clk       (system_clk),
    .rst       (system_rst),
    .rs1_addr  (decode_rs1_addr),
    .rs2_addr  (decode_rs2_addr),
    .dst_addr  (pipe2_dst_addr),
    .dst_enable(pipe2_dst_enable),
    .dst_data  (wbu_wb_data),
    .jalr_addr (ifu_jalr_addr),
    //output
    .rs1_data (regfile_rs1_data),
    .rs2_data (regfile_rs2_data),
    .jalr_data(regfile_jalr_data)
  );

  BRU bru_(
    //input
    .pc(pipe1_pc),
    .inst(pipe1_inst),
    .is_beq (decode_is_beq),
    .is_bne (decode_is_bne),
    .is_blt (decode_is_blt),
    .is_bge (decode_is_bge),
    .is_bltu(decode_is_bltu),
    .is_bgeu(decode_is_bgeu),
    .alu_out(exu_exu_out),
    //output
    .go_branch(bru_go_branch),
    .go_branch_op1(bru_go_branch_op1),
    .go_branch_op2(bru_go_branch_op2)
  );

  exu exu_(
    //input
    .rs1        (regfile_rs1_data),
    .rs2        (regfile_rs2_data),
    .pc         (pipe1_pc),
    .imm32      (decode_imm32),
    .op1_is_pc  (decode_op1_is_pc),
    .op2_is_imm (decode_op2_is_imm),
    .alu_action (decode_alu_action),
    .csru_action(decode_csru_action),
    .csr        (),
    .uimm32     (decode_uimm32),
    .exu_out_src(decode_exu_out_src),
    //output
    .exu_out(exu_exu_out),
    .csr_out(exu_csr_out)
  );

  pipeline2 pipepine2_(
    .clk  (system_clk),
    .rst  (system_rst),
    .flush(),
    .stall(),
    .exu_alu_out     (exu_exu_out),            .lsu_alu_out     (pipe2_alu_out),
    .exu_load_enable (decode_load_enable),     .lsu_load_enable (pipe2_load_enable),
    .exu_store_enable(decode_store_enable),    .lsu_store_enable(pipe2_store_enable),
    .exu_load_type   (decode_load_type),       .lsu_load_type   (pipe2_load_type),
    .exu_store_type  (decode_store_type),      .lsu_store_type  (pipe2_store_type),
    .exu_store_data  (regfile_rs2_data),       .lsu_store_data  (pipe2_store_data),
    .exu_dst_enable  (decode_dst_enable),      .lsu_dst_enable  (pipe2_dst_enable),
    .exu_dst_addr    (decode_dst_addr),        .lsu_dst_addr    (pipe2_dst_addr)
  );

  lsu lsu_(
    //input
    .clk             (system_clk),
    .rst             (system_rst),
    .load_enable     (pipe2_load_enable),
    .load_type       (pipe2_store_enable),
    .store_enable    (pipe2_load_type),
    .store_type      (pipe2_store_type),
    .addr            (pipe2_dst_addr),
    .store_data      (pipe2_store_data),
    //output
    .load_data       (load_data       ),
    //assign to axi_if
    .data_req        (dbus_data_req),
    .data_gnt        (dbus_data_be),
    .data_we         (dbus_data_we),
    .data_be         (dbus_data_be),
    .data_addr       (dbus_data_addr),
    .data_rvalid     (dbus_data_rvalid),
    .data_rdata      (dbus_data_rdata),
    .data_wdata      (dbus_data_wdata)
  );

  wbu wbu_(
    //input
  	.load_enable(pipe2_load_enable),
    .load_data  (lsu_load_data),
    .alu_out    (pipe2_alu_out),
    //output
    .wb_data(wbu_wb_data)
  );

  axi_if ibus_axi_if(
    .clk_i         (system_clk      ),
    .rst_ni        (~system_rst     ),
    .data_req_i    (ibus_data_req   ),
    .data_gnt_o    (                ),
    .data_rvalid_o (ibus_data_rvalid),
    .data_addr_i   (ibus_data_addr  ),
    .data_we_i     (1'b0            ),
    .data_be_i     (4'b1111         ),
    .data_rdata_o  (ibus_data_rdata ),
    .data_wdata_i  (32'b0           ),

    .aw_id_o       (ibus_awid       ),
    .aw_addr_o     (ibus_awaddr     ),
    .aw_len_o      (ibus_awlen      ),
    .aw_size_o     (ibus_awsize     ),
    .aw_burst_o    (ibus_awburst    ),
    .aw_lock_o     (ibus_awlock     ),
    .aw_cache_o    (ibus_awcache    ),
    .aw_prot_o     (ibus_awprot     ),
    .aw_region_o   (ibus_awregion   ),
    .aw_user_o     (ibus_awuser     ),
    .aw_qos_o      (ibus_awqos      ),
    .aw_valid_o    (ibus_awvalid    ),
    .aw_ready_i    (ibus_awready    ),
    .w_data_o      (ibus_wdata      ),
    .w_strb_o      (ibus_wstrb      ),
    .w_last_o      (ibus_wlast      ),
    .w_user_o      (ibus_wuser      ),
    .w_valid_o     (ibus_wvalid     ),
    .w_ready_i     (ibus_wready     ),
    .b_id_i        (ibus_bid        ),
    .b_resp_i      (ibus_bresp      ),
    .b_valid_i     (ibus_bvalid     ),
    .b_user_i      (ibus_buser      ),
    .b_ready_o     (ibus_bready     ),
    .ar_id_o       (ibus_arid       ),
    .ar_addr_o     (ibus_araddr     ),
    .ar_len_o      (ibus_arlen      ),
    .ar_size_o     (ibus_arsize     ),
    .ar_burst_o    (ibus_arburst    ),
    .ar_lock_o     (ibus_arlock     ),
    .ar_cache_o    (ibus_arcache    ),
    .ar_prot_o     (ibus_arprot     ),
    .ar_region_o   (ibus_arregion   ),
    .ar_user_o     (ibus_aruser     ),
    .ar_qos_o      (ibus_arqos      ),
    .ar_valid_o    (ibus_arvalid    ),
    .ar_ready_i    (ibus_arready    ),
    .r_id_i        (ibus_rid        ),
    .r_data_i      (ibus_rdata      ),
    .r_resp_i      (ibus_rresp      ),
    .r_last_i      (ibus_rlast      ),
    .r_user_i      (ibus_ruser      ),
    .r_valid_i     (ibus_rvalid     ),
    .r_ready_o     (ibus_rready     )
  );

  axi_if dbus_axi_if(
    .clk_i         (system_clk      ),
    .rst_ni        (~system_rst     ),
    .data_req_i    (dbus_data_req   ),
    .data_gnt_o    (dbus_data_gnt   ),
    .data_rvalid_o (dbus_data_rvalid),
    .data_addr_i   (dbus_data_addr  ),
    .data_we_i     (dbus_data_we    ),
    .data_be_i     (dbus_data_be    ),
    .data_rdata_o  (dbus_data_rdata ),
    .data_wdata_i  (dbus_data_wdata ),

    .aw_id_o       (dbus_awid       ),
    .aw_addr_o     (dbus_awaddr     ),
    .aw_len_o      (dbus_awlen      ),
    .aw_size_o     (dbus_awsize     ),
    .aw_burst_o    (dbus_awburst    ),
    .aw_lock_o     (dbus_awlock     ),
    .aw_cache_o    (dbus_awcache    ),
    .aw_prot_o     (dbus_awprot     ),
    .aw_region_o   (dbus_awregion   ),
    .aw_user_o     (dbus_awuser     ),
    .aw_qos_o      (dbus_awqos      ),
    .aw_valid_o    (dbus_awvalid    ),
    .aw_ready_i    (dbus_awready    ),
    .w_data_o      (dbus_wdata      ),
    .w_strb_o      (dbus_wstrb      ),
    .w_last_o      (dbus_wlast      ),
    .w_user_o      (dbus_wuser      ),
    .w_valid_o     (dbus_wvalid     ),
    .w_ready_i     (dbus_wready     ),
    .b_id_i        (dbus_bid        ),
    .b_resp_i      (dbus_bresp      ),
    .b_valid_i     (dbus_bvalid     ),
    .b_user_i      (dbus_buser      ),
    .b_ready_o     (dbus_bready     ),
    .ar_id_o       (dbus_arid       ),
    .ar_addr_o     (dbus_araddr     ),
    .ar_len_o      (dbus_arlen      ),
    .ar_size_o     (dbus_arsize     ),
    .ar_burst_o    (dbus_arburst    ),
    .ar_lock_o     (dbus_arlock     ),
    .ar_cache_o    (dbus_arcache    ),
    .ar_prot_o     (dbus_arprot     ),
    .ar_region_o   (dbus_arregion   ),
    .ar_user_o     (dbus_aruser     ),
    .ar_qos_o      (dbus_arqos      ),
    .ar_valid_o    (dbus_arvalid    ),
    .ar_ready_i    (dbus_arready    ),
    .r_id_i        (dbus_rid        ),
    .r_data_i      (dbus_rdata      ),
    .r_resp_i      (dbus_rresp      ),
    .r_last_i      (dbus_rlast      ),
    .r_user_i      (dbus_ruser      ),
    .r_valid_i     (dbus_rvalid     ),
    .r_ready_o     (dbus_rready     )
  );

endmodule

