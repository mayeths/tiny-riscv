`default_nettype none

module thinpad_top(
    input wire clk_50M,           //50MHz 时钟输入
    input wire clk_11M0592,       //11.0592MHz 时钟输入

    input wire clock_btn,         //BTN5手动时钟按钮开关，带消抖电路，按下时为1
    input wire reset_btn,         //BTN6手动复位按钮开关，带消抖电路，按下时为1

    input  wire[3:0]  touch_btn,  //BTN1~BTN4，按钮开关，按下时为1
    input  wire[31:0] dip_sw,     //32位拨码开关，拨到“ON”时为1
    output wire[15:0] leds,       //16位LED，输出时1点亮
    output wire[7:0]  dpy0,       //数码管低位信号，包括小数点，输出1点亮
    output wire[7:0]  dpy1,       //数码管高位信号，包括小数点，输出1点亮

    //CPLD串口控制器信号
    output reg uart_rdn,         //读串口信号，低有效
    output reg uart_wrn,         //写串口信号，低有效
    input wire uart_dataready,    //串口数据准备好
    input wire uart_tbre,         //发送数据标志
    input wire uart_tsre,         //数据发送完毕标志

    //BaseRAM信号
    inout wire[31:0] base_ram_data,  //BaseRAM数据，低8位与CPLD串口控制器共享
    output reg[19:0] base_ram_addr, //BaseRAM地址
    output wire[3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output reg base_ram_ce_n,       //BaseRAM片选，低有效
    output reg base_ram_oe_n,       //BaseRAM读使能，低有效
    output reg base_ram_we_n,       //BaseRAM写使能，低有效

    //ExtRAM信号
    inout wire[31:0] ext_ram_data,  //ExtRAM数据
    output wire[19:0] ext_ram_addr, //ExtRAM地址
    output wire[3:0] ext_ram_be_n,  //ExtRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire ext_ram_ce_n,       //ExtRAM片选，低有效
    output wire ext_ram_oe_n,       //ExtRAM读使能，低有效
    output wire ext_ram_we_n,       //ExtRAM写使能，低有效

    //直连串口信号
    output wire txd,  //直连串口发送端
    input  wire rxd,  //直连串口接收端

    //Flash存储器信号，参考 JS28F640 芯片手册
    output wire [22:0]flash_a,      //Flash地址，a0仅在8bit模式有效，16bit模式无意义
    inout  wire [15:0]flash_d,      //Flash数据
    output wire flash_rp_n,         //Flash复位信号，低有效
    output wire flash_vpen,         //Flash写保护信号，低电平时不能擦除、烧写
    output wire flash_ce_n,         //Flash片选信号，低有效
    output wire flash_oe_n,         //Flash读使能信号，低有效
    output wire flash_we_n,         //Flash写使能信号，低有效
    output wire flash_byte_n,       //Flash 8bit模式选择，低有效。在使用flash的16位模式时请设为1

    //USB 控制器信号，参考 SL811 芯片手册
    output wire sl811_a0,
    //inout  wire[7:0] sl811_d,     //USB数据线与网络控制器的dm9k_sd[7:0]共享
    output wire sl811_wr_n,
    output wire sl811_rd_n,
    output wire sl811_cs_n,
    output wire sl811_rst_n,
    output wire sl811_dack_n,
    input  wire sl811_intrq,
    input  wire sl811_drq_n,

    //网络控制器信号，参考 DM9000A 芯片手册
    output wire dm9k_cmd,
    inout  wire[15:0] dm9k_sd,
    output wire dm9k_iow_n,
    output wire dm9k_ior_n,
    output wire dm9k_cs_n,
    output wire dm9k_pwrst_n,
    input  wire dm9k_int,

    //图像输出信号
    output wire[2:0] video_red,    //红色像素，3位
    output wire[2:0] video_green,  //绿色像素，3位
    output wire[1:0] video_blue,   //蓝色像素，2位
    output wire video_hsync,       //行同步（水平同步）信号
    output wire video_vsync,       //场同步（垂直同步）信号
    output wire video_clk,         //像素时钟输出
    output wire video_de           //行数据有效信号，用于区分消隐区
);

reg [3: 0] state;

`define STATE_RESET     4'b0000
`define UART_TX_INIT    4'b0001
`define UART_TX_DATA    4'b0010
`define UART_TX_WAIT    4'b0011
`define UART_RX_INIT    4'b0101
`define UART_RX_DATA    4'b0110
`define SRAM_READ       4'b1000
`define SRAM_WRITE      4'b1010
`define SRAM_W_DONE     4'b1011
`define SRAM_R_DONE     4'b1100

reg [3: 0] byte_count;
reg [19: 0] address;
reg [19: 0] base_address;
reg [7: 0] data;

reg [31: 0] base_ram_data_reg;
assign base_ram_data = base_ram_data_reg;

always@(posedge clk_10M or posedge reset_of_clk10M) begin
    if(reset_of_clk10M) begin
        base_ram_ce_n <= 1'b1;
        base_ram_oe_n <= 1'b1;
        base_ram_we_n <= 1'b1;
        uart_rdn <= 1'b1;
        uart_wrn <= 1'b1;
        state <= `STATE_RESET;
    end else begin
        case (state)
            `STATE_RESET: begin
                byte_count <= 4'b0;
                base_address <= dip_sw[19: 0];
                address <= dip_sw[19: 0];

                base_ram_ce_n <= 1'b1;
                base_ram_oe_n <= 1'b1;
                base_ram_we_n <= 1'b1;
                uart_rdn <= 1'b1;
                uart_wrn <= 1'b1;

                state <= `UART_RX_INIT;
            end

            `UART_RX_INIT: begin
                base_ram_data_reg <= 32'bz;
                uart_rdn <= 1'b1;
                if(uart_dataready) begin
                    uart_rdn <= 1'b0;
                    state <= `UART_RX_DATA;
                end
            end

            `UART_RX_DATA: begin
                data <= base_ram_data_reg[7: 0];
                uart_rdn <= 1'b1;
                state <= `SRAM_WRITE;
            end

            `SRAM_WRITE: begin
                base_ram_addr <= address;
                base_ram_ce_n <= 1'b0;
                base_ram_we_n <= 1'b0;
                base_ram_data_reg <= data;
                
                state <= `SRAM_W_DONE;
            end

            `SRAM_W_DONE: begin
                base_ram_ce_n <= 1'b1;
                base_ram_we_n <= 1'b1;

                if(byte_count == 4'd9) begin
                    byte_count <= 4'd0;
                    address <= base_address;
                    state <= `SRAM_READ;
                end else begin
                    byte_count <= byte_count + 4'b1;
                    address <= address + 20'b1;
                    state <= `UART_RX_INIT;
                end
            end

            `SRAM_READ: begin
                base_ram_addr <= address;
                base_ram_ce_n <= 1'b0;
                base_ram_oe_n <= 1'b0;
                base_ram_data_reg <= 32'bz;
                
                state <= `SRAM_R_DONE;
            end

            `SRAM_R_DONE: begin
                data <= base_ram_data_reg[7: 0];
                base_ram_ce_n <= 1'b1;
                base_ram_oe_n <= 1'b1;

                state <= `UART_TX_INIT;
            end

            `UART_TX_INIT: begin
                base_ram_data_reg <= {24'b0, data};
                uart_wrn <= 1'b0;

                state <= `UART_TX_DATA;
            end

            `UART_TX_DATA: begin
                uart_wrn <= 1'b1;

                if(uart_tbre)
                    state = `UART_TX_WAIT;
            end

            `UART_TX_WAIT: begin
                if(uart_tsre) begin
                    if(byte_count == 4'd9) begin
                        state <= `STATE_RESET;
                    end else begin
                        byte_count <= byte_count + 4'b1;
                        address <= address + 20'b1;
                        state <= `SRAM_READ;
                    end
                end
            end

            default: begin
                state <= `STATE_RESET;
            end
        endcase
     end
end

assign leds = {address[7: 0], data};


/* =========== Demo code begin =========== */

// PLL分频示例
wire locked, clk_10M, clk_20M;
pll_example clock_gen 
 (
  // Clock out ports
  .clk_out1(clk_10M), // 时钟输出1，频率在IP配置界面中设置
  .clk_out2(clk_20M), // 时钟输出2，频率在IP配置界面中设置
  // Status and control signals
  .reset(reset_btn), // PLL复位输入
  .locked(locked), // 锁定输出，"1"表示时钟稳定，可作为后级电路复位
 // Clock in ports
  .clk_in1(clk_50M) // 外部时钟输入
 );

reg reset_of_clk10M;
// 异步复位，同步释放
always@(posedge clk_10M or negedge locked) begin
    if(~locked) reset_of_clk10M <= 1'b1;
    else        reset_of_clk10M <= 1'b0;
end

// 不使用内存、串口时，禁用其使能信号
// assign base_ram_ce_n = 1'b1;
// assign base_ram_oe_n = 1'b1;
// assign base_ram_we_n = 1'b1;

assign base_ram_be_n = 4'b0;

assign ext_ram_ce_n = 1'b1;
assign ext_ram_oe_n = 1'b1;
assign ext_ram_we_n = 1'b1;

// assign uart_rdn = 1'b1;
// assign uart_wrn = 1'b1;

// 7段数码管译码器演示，将number用16进制显示在数码管上面
reg[7:0] number;
SEG7_LUT segL(.oSEG1(dpy0), .iDIG(number[3:0])); //dpy0是低位数码管
SEG7_LUT segH(.oSEG1(dpy1), .iDIG(number[7:4])); //dpy1是高位数码管

//直连串口接收发送演示，从直连串口收到的数据再发送出去
// wire [7:0] ext_uart_rx;
// reg  [7:0] ext_uart_buffer, ext_uart_tx;
// wire ext_uart_ready, ext_uart_busy;
// reg ext_uart_start, ext_uart_avai;

// async_receiver #(.ClkFrequency(10000000),.Baud(9600)) //接收模块，9600无检验位
//     ext_uart_r(
//         .clk(clk_10M),                       //外部时钟信号
//         .RxD(rxd),                           //外部串行信号输入
//         .RxD_data_ready(ext_uart_ready),  //数据接收到标志
//         .RxD_clear(ext_uart_ready),       //清除接收标志
//         .RxD_data(ext_uart_rx)             //接收到的一字节数据
//     );
    
// always @(posedge clk_50M) begin //接收到缓冲区ext_uart_buffer
//     if(ext_uart_ready)begin
//         ext_uart_buffer <= ext_uart_rx;
//         ext_uart_avai <= 1;
//     end else if(!ext_uart_busy && ext_uart_avai)begin 
//         ext_uart_avai <= 0;
//     end
// end
// always @(posedge clk_50M) begin //将缓冲区ext_uart_buffer发送出去
//     if(!ext_uart_busy && ext_uart_avai)begin 
//         ext_uart_tx <= ext_uart_buffer;
//         ext_uart_start <= 1;
//     end else begin 
//         ext_uart_start <= 0;
//     end
// end

// async_transmitter #(.ClkFrequency(10000000),.Baud(9600)) //发送模块，9600无检验位
//     ext_uart_t(
//         .clk(clk_10M),                  //外部时钟信号
//         .TxD(txd),                      //串行信号输出
//         .TxD_busy(ext_uart_busy),       //发送器忙状态指示
//         .TxD_start(ext_uart_start),    //开始发送信号
//         .TxD_data(ext_uart_tx)        //待发送的数据
//     );

endmodule
