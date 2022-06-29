module top(
    input wire clk_i,
    input  wire rst_i,
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

wire[31:0] wr_imm_rv_inst;
wire[31:0] wr_dmm_rv_data;

wire[31:0] wr_rv_pc;
wire[13:0] wr_imm_pc;
assign wr_imm_pc=wr_rv_pc[15:2];

wire wr_rv_dmm_wb;
wire [31:0]wr_rv_dmm_data;
wire [31:0]wr_rv_dmm_addr;

// dram 和 rom统一编址
wire [31:0] waddr_tmp;

assign waddr_tmp = wr_rv_dmm_addr - 16'h4000;


rv_u u_rv_u(
    .clk       (clk       ),
    .rst_n     (rst_n     ),

    .inst_i    (wr_imm_rv_inst    ),
    .wbdata_i  (wr_dmm_rv_data    ),
    .pc_o      (  wr_rv_pc    ),
    .memwb_o   (wr_rv_dmm_wb),
    .memaddr_o (wr_rv_dmm_addr ),
    .memdata_o (wr_rv_dmm_data )
);




// 下面两个模块，只需要实例化并连线，不需要添加文件
//prgrom u_prgrom(
//    .a (wr_imm_pc),
//    .spo (wr_imm_rv_inst)
//);

//dram u_dram(
//    .clk(clk),
//    .a(waddr_tmp[15:2]),

//    .we(wr_rv_dmm_wb),
//    .d(wr_rv_dmm_data),

//    .spo(wr_dmm_rv_data)
//);
endmodule