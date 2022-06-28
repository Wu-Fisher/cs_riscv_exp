module top(
    input clk,
    input rst_n,
    output        debug_wb_have_inst,   // WB阶段是否有指令 (对单周期CPU，此flag恒为1)
    output [31:0] debug_wb_pc,          // WB阶段的PC (若wb_have_inst=0，此项可为任意值)
    output        debug_wb_ena,         // WB阶段的寄存器写使能 (若wb_have_inst=0，此项可为任意值)
    output [4:0]  debug_wb_reg,         // WB阶段写入的寄存器号 (若wb_ena或wb_have_inst=0，此项可为任意值)
    output [31:0] debug_wb_value        // WB阶段写入寄存器的值 (若wb_ena或wb_have_inst=0，此项可为任意值)
);

wire[31:0] wr_imm_rv_inst;
wire[31:0] wr_dmm_rv_data;

wire[31:0] wr_rv_pc;
wire[13:0] wr_imm_pc;
assign wr_imm_pc=wr_rv_pc[15:2];

wire wr_rv_dmm_wb;
wire [31:0]wr_rv_dmm_data;
wire [31:0]wr_rv_dmm_addr;

assign debug_wb_have_inst=1;
assign debug_wb_pc=wr_rv_pc;
//assign debug_wb_ena = wr_rv_dmm_wb;
assign debug_wb_reg = wr_imm_rv_inst[11:7];
// assign debug_wb_value = wr_rv_dmm_addr;


rv_u u_rv_u(
    .clk       (clk       ),
    .rst_n     (rst_n     ),

    .inst_i    (wr_imm_rv_inst    ),
    .wbdata_i  (wr_dmm_rv_data    ),
    .regwb_o(debug_wb_ena),
    .pc_o      (  wr_rv_pc    ),
    .memwb_o   (wr_rv_dmm_wb),
    .memaddr_o (wr_rv_dmm_addr ),
    .memdata_o (wr_rv_dmm_data ),
    .wbdata_o  (debug_wb_value )
);




// 下面两个模块，只需要实例化并连线，不需要添加文件
inst_mem imem(
    .a (wr_imm_pc),
    .spo (wr_imm_rv_inst)
);

data_mem dmem(
    .clk(clk),
    .a(wr_rv_dmm_addr[15:2]),

    .we(wr_rv_dmm_wb),
    .d(wr_rv_dmm_data),

    .spo(wr_dmm_rv_data)
);
endmodule