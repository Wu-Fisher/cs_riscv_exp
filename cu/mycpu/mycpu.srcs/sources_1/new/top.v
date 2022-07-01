module top(
    input wire clk_i,
    input  wire rst_i,

    input wire [23:0] switch_i,

    output wire led0_en_o,
    output wire led1_en_o,
    output wire led2_en_o,
    output wire led3_en_o,
    output wire led4_en_o,
    output wire led5_en_o,
    output wire led6_en_o,
    output wire led7_en_o,
    output wire led_ca_o,
    output wire led_cb_o,
    output wire led_cc_o,
    output wire led_cd_o,
    output wire led_ce_o,
    output wire led_cf_o,
    output wire led_cg_o,
    output wire led_dp_o

);
    wire clk_lock;
    wire pll_clk;
    wire clk;


    cpuclk UCLK (
        .clk_in1    (clk_i),
        .locked     (clk_lock),
        .clk_out1   (pll_clk)
    );

    assign clk = pll_clk & clk_lock;

wire rst_n;
assign rst_n = !rst_i;

wire[31:0] wr_imm_rv_inst;
wire[31:0] wr_al_rv_data;

wire[31:0] wr_rv_pc;
wire[13:0] wr_imm_pc;
assign wr_imm_pc=wr_rv_pc[15:2];

wire wr_rv_al_wb;
wire [31:0]wr_rv_al_data;
wire [31:0]wr_rv_al_addr;



wire clk_al_d1;
wire wr_al_d1_wb;
wire [31:0] wr_al_d1_data;
wire [31:0] wr_al_d1_addr;
wire [31:0] wr_d1_al_data;

wire clk_al_d2;
wire wr_al_d2_wb;
wire [31:0] wr_al_d2_data;
wire [31:0] wr_al_d2_addr;
wire [31:0] wr_d2_al_data;
assign wr_d2_al_data =0;

wire clk_al_d3;
wire wr_al_d3_wb;
wire [31:0] wr_al_d3_data;
wire [31:0] wr_al_d3_addr;
wire [31:0] wr_d3_al_data;


wire clk_d2_led;
wire[31:0] wr_d2_led_data;
wire wr_d2_led_wb;

wire[31:0] wr_sw_d3_data;

// dram 和 rom统一编址
wire [31:0] waddr_tmp;

assign waddr_tmp = wr_al_d1_addr - 16'h4000;

rv_u u_rv_u(
    .clk       (clk       ),
    .rst_n     (rst_n     ),

    .inst_i    (wr_imm_rv_inst    ),
    .wbdata_i  (wr_al_rv_data    ),
    .pc_o      (  wr_rv_pc    ),
    .memwb_o   (wr_rv_al_wb),
    .memaddr_o (wr_rv_al_addr ),
    .memdata_o (wr_rv_al_data )
);


aline u_aline(
    .clk_i       (clk       ),
    .addr_cpu_i  (wr_rv_al_addr  ),
    .wen_cpu_i   (wr_rv_al_wb   ),
    .wdata_cpu_i (wr_rv_al_data ),
    .rdata_cpu_o (wr_al_rv_data ),
    
    
    .clk_d1_o    (clk_al_d1    ),
    .wen_d1_o    (wr_al_d1_wb   ),
    .wdata_d1_o  (wr_al_d1_data  ),
    .addr_d1_o   (wr_al_d1_addr   ),
    .rdata_d1_i  (wr_d1_al_data  ),


    .clk_d2_o    (clk_al_d2     ),
    .wen_d2_o    (wr_al_d2_wb   ),
    .wdata_d2_o  (wr_al_d2_data ),
    .addr_d2_o   (wr_al_d2_addr ),
    .rdata_d2_i  (wr_d2_al_data ),

    .clk_d3_o    (clk_al_d3    ),
    .wen_d3_o    (wr_al_d3_wb),
    .wdata_d3_o  (wr_al_d3_data),
    .addr_d3_o   (wr_al_d3_addr),
    .rdata_d3_i  (wr_d3_al_data)



);

al_interface u_al_interface(
    .clk_i       (clk_al_d2 ),
    .addr_al_i   (wr_al_d2_addr   ),
    .wen_al_i    (wr_al_d2_wb    ),
    .wdata_al_i  (wr_al_d2_data  ),
    .clk_led_o   (clk_d2_led   ),
    .wen_led_o(wr_d2_led_wb),
    .rdata_led_o (wr_d2_led_data )
);

sw_interface u_sw_interface(
    .clk_i      (clk_al_d3      ),
    .addr_al_i  (wr_al_d3_addr  ),
    .wen_al_i   (wr_al_d3_wb   ),
    .wdata_al_i (wr_al_d3_data ),
    .wdata_sw_i (wr_sw_d3_data ),
    .rdata_sw_o (wr_d3_al_data )
);

switch u_switch(
    .sw_data_i (switch_i),
    .sw_data_o (wr_sw_d3_data )
);



led_display 
#(
    .TIMES (32'd2 )
)
u_led_display(
    .led_data_i (wr_d2_led_data ),
    .clk        (clk_d2_led  ),
    .rst_n      (rst_n      ),
    .en(wr_d2_led_wb),
    .led0_en_o  (led0_en_o  ),
    .led1_en_o  (led1_en_o  ),
    .led2_en_o  (led2_en_o  ),
    .led3_en_o  (led3_en_o  ),
    .led4_en_o  (led4_en_o  ),
    .led5_en_o  (led5_en_o  ),
    .led6_en_o  (led6_en_o  ),
    .led7_en_o  (led7_en_o  ),
    .led_ca_o   (led_ca_o   ),
    .led_cb_o   (led_cb_o   ),
    .led_cc_o   (led_cc_o   ),
    .led_cd_o   (led_cd_o   ),
    .led_ce_o   (led_ce_o   ),
    .led_cf_o   (led_cf_o   ),
    .led_cg_o   (led_cg_o   ),
    .led_dp_o   (led_dp_o   )
);







// 下面两个模块，只需要实例化并连线，不需要添加文件
prgrom u_prgrom(
   .a (wr_imm_pc),
   .spo (wr_imm_rv_inst)
);

dram u_dram(
   .clk(clk_al_d1),
   .a(waddr_tmp[15:2]),

   .we(wr_al_d1_wb),
   .d(wr_al_d1_data),

   .spo(wr_d1_al_data)
);
endmodule