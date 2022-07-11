module rv_u(
    input clk,
    input rst_n,

    input[31:0] inst_i,
    input[31:0] wbdata_i,

    output[31:0] pc_o,
    output memwb_o,
    output[31:0] memaddr_o,
    output[31:0] memdata_o

);

// npc
wire wr_pp2_npc_pcsel;
wire[31:0] wr_pc_npc_add;
wire[31:0] wr_npc_pc;

// pc

wire[31:0] wr_pc_pp1_pc;
wire[31:0] wr_pc_pp1_pcadd;
assign wr_pc_npc_add = wr_pc_pp1_pcadd;
// pp1

wire[31:0] wr_pp1_pp2_pc;
wire[31:0] wr_pp1_pp2_pcadd;
assign pc_o = wr_pp1_pp2_pc;

// regfile
wire[4:0] wr_regfile_rd_addr;
wire[31:0] wr_regfile_rd_data;
wire[4:0] wr_regfile_addr1;
wire[4:0] wr_regfile_addr2;
wire[31:0] wr_regfile_data1;
wire[31:0] wr_regfile_data2;
wire wr_regfile_we;

assign wr_regfile_addr1 = inst_i[19:15];
assign wr_regfile_addr2 = inst_i[24:20];

// control
wire[31:0] wr_imm_con_inst;
wire wr_con_pp2_pcsel;
wire wr_con_pp2_regwen;
wire [1:0] wr_con_pp2_wbsel;
wire [2:0] wr_con_sext;
wire [3:0] wr_con_pp2_aluop;
wire wr_con_pp2_asel;
wire wr_con_pp2_bsel;
wire wr_con_pp2_memrw;


assign wr_imm_con_inst = inst_i;

// branch
wire wr_breq_con;
wire wr_brlt_con;
wire wr_brgt_con;
// sext
wire[31:0] wr_sext_pp2_out;
// pp2
wire[4:0] wr_pp2_addr_rd_i;
wire[31:0] wr_pp2_amux_rdata1;
wire[31:0] wr_pp2_bmux_rdata2;
wire[31:0] wr_pp2_bmux_sext;
wire[4:0] wr_pp2_pp3_raddr;
wire[31:0] wr_pp2_amux_pc;
wire[31:0] wr_pp2_pp3_pcadd;
wire wr_pp2_pp3_regwen;
wire[1:0] wr_pp2_pp3_wbsel;
wire[3:0] wr_pp2_alu;
wire wr_pp2_amux_asel;
wire wr_pp2_bmux_bsel;
wire wr_pp2_pp3_memrw;

assign wr_pp2_addr_rd_i = wr_imm_con_inst[11:7];
// amux
wire[31:0] wr_amux_alu_out;
// bmux
wire[31:0] wr_bmux_alu_out;
// alu
wire[31:0] wr_alu_out;
wire[31:0] wr_alu_npc_addr;
assign wr_alu_npc_addr=wr_alu_out;

// pp3
wire[31:0] wr_pp3_pp4_pcadd;
wire[31:0] wr_pp3_pp4_alu;
wire[4:0] wr_pp3_pp4_raddr;
wire[1:0] wr_pp3_pp4_wbsel;
wire wr_pp3_pp4_regwen;
wire[31:0] wr_pp3_dmm_data;
wire wr_pp3_dmm_wen;
assign memaddr_o = wr_pp3_pp4_alu;
assign memdata_o = wr_pp3_dmm_data;
assign memwb_o = wr_pp3_dmm_wen;

// pp4
wire[31:0] wr_dmm_pp4_data;
wire[31:0] wr_pp4_wbmux_pcadd;
wire[31:0] wr_pp4_wbmux_alu;
wire[31:0] wr_pp4_wbmux_dmm;
wire[1:0] wr_pp4_wbmux_sel;
assign wr_dmm_pp4_data = wbdata_i;

// wbmux


sext u_sext (
    .inst            (wr_imm_con_inst[31:7]),
    .sext_op    (wr_con_sext),
    .out             (wr_sext_pp2_out)
);

npc u_npc (
    .Pcsel     (wr_pp2_npc_pcsel),
    .Pcnext    (wr_pc_npc_add),
    .Pcjump    (wr_alu_npc_addr),
    .out       (wr_npc_pc)
);

pc u_pc (
    .clk      (clk),
    .rst_n    (rst_n),

    .din      (wr_npc_pc),
    .pc       (wr_pc_pp1_pc),
    .pcadd    (wr_pc_pp1_pcadd)
);

pipline_if_id u_pp1 (
    .clk         (clk),
    .rst_n       (rst_n),

    .pc_i        (wr_pc_pp1_pc),
    .pc_add_i    (wr_pc_pp1_pcadd),
    .pc_o        (wr_pp1_pp2_pc),
    .pc_add_o    (wr_pp1_pp2_pcadd)
);

regfile u_regfile (
    .clk       (clk),
    .raddr1    (wr_regfile_addr1),
    .raddr2    (wr_regfile_addr2),
    .rdata1    (wr_regfile_data1),
    .rdata2    (wr_regfile_data2),
    .we        (wr_regfile_we),
    .waddr     (wr_regfile_rd_addr),
    .wdata     (wr_regfile_rd_data)
);
controller u_controller (
    .inst_i              (wr_imm_con_inst),
    .breq_i              (wr_breq_con),
    .brgt_i              (wr_brgt_con),
    .brlt_i              (wr_brlt_con),
    .pcsel_o             (wr_con_pp2_pcsel),
    .regwen_o            (wr_con_pp2_regwen),
    .wbsel_o    (wr_con_pp2_wbsel),
    .sext_o     (wr_con_sext),
    .aluop_o    (wr_con_pp2_aluop),
    .asel_o              (wr_con_pp2_asel),
    .bsel_o              (wr_con_pp2_bsel),
    .memrw_o             (wr_con_pp2_memrw)
);
branch u_branch (
    .data1    (wr_regfile_data1),
    .data2    (wr_regfile_data2),
    .breq     (wr_breq_con),
    .brlt     (wr_brlt_con),
    .brgt     (wr_brgt_con)
);
pipline_id_exe u_pp2 (
    .clk                 (clk),
    .rst_n               (rst_n),
    .pc_i                (wr_pp1_pp2_pc),
    .pc_add_i            (wr_pp1_pp2_pcadd),

    .rdata1_i            (wr_regfile_data1),
    .rdata2_i            (wr_regfile_data2),
    .sext_i              (wr_sext_pp2_out),
    .raddr_i             (wr_pp2_addr_rd_i),
    .pcsel_i             (wr_con_pp2_pcsel),
    .regwen_i            (wr_con_pp2_regwen),
    .wbsel_i             (wr_con_pp2_wbsel),
    .aluop_i             (wr_con_pp2_aluop),
    .asel_i              (wr_con_pp2_asel),
    .bsel_i              (wr_con_pp2_bsel),
    .memrw_i             (wr_con_pp2_memrw),

    .rdata1_o            (wr_pp2_amux_rdata1),
    .rdata2_o            (wr_pp2_bmux_rdata2),
    .sext_o              (wr_pp2_bmux_sext),
    .raddr_o             (wr_pp2_pp3_raddr),
    .pc_o                (wr_pp2_amux_pc),
    .pc_add_o            (wr_pp2_pp3_pcadd),
    .pcsel_o             (wr_pp2_npc_pcsel),
    .regwen_o            (wr_pp2_pp3_regwen),
    .wbsel_o    (wr_pp2_pp3_wbsel),
    .aluop_o    (wr_pp2_alu),
    .asel_o              (wr_pp2_amux_asel),
    .bsel_o              (wr_pp2_bmux_bsel),
    .memrw_o             (wr_pp2_pp3_memrw)
);
alu_mux u_amux (
    .a        (wr_pp2_amux_rdata1),
    .b        (wr_pp2_amux_pc),
    .sel_i    (wr_pp2_amux_asel),
    .c        (wr_amux_alu_out)
);
alu_mux u_alu_mux (
    .a        (wr_pp2_bmux_rdata2),
    .b        (wr_pp2_bmux_sext),
    .sel_i    (wr_pp2_bmux_bsel),
    .c        (wr_bmux_alu_out)
);
alu u_alu (
    .alu_src_a    (wr_amux_alu_out),
    .alu_src_b    (wr_bmux_alu_out),
    .alu_op       (wr_pp2_alu),
    .alu_out      (wr_alu_out)
);
pipline_exe_wb u_pp3 (
    .clk             (clk),
    .rst_n           (rst_n),

    .pc_add_i        (wr_pp2_pp3_pcadd),
    .alu_result_i    (wr_alu_out),
    .dmem_data_i     (wr_pp2_bmux_rdata2),
    .raddr_i         (wr_pp2_pp3_raddr),
    .regwen_i        (wr_pp2_pp3_regwen),
    .wbsel_i         (wr_pp2_pp3_wbsel),
    .memrw_i         (wr_pp2_pp3_memrw),

    .pc_add_o        (wr_pp3_pp4_pcadd),
    .alu_result_o    (wr_pp3_pp4_alu),
    .dmem_data_o     (wr_pp3_dmm_data),
    .regwen_o        (wr_pp3_pp4_regwen),
    .wbsel_o         (wr_pp3_pp4_wbsel),
    .memrw_o         (wr_pp3_dmm_wen),
    .raddr_o         (wr_pp3_pp4_raddr)
);

pipline_wb u_pp4 (
    .clk                   (clk),
    .rst_n                 (rst_n),
    .pc_add_i              (wr_pp3_pp4_pcadd),
    .alu_result_i          (wr_pp3_pp4_alu),
    .dmem_data_i           (wr_dmm_pp4_data),
    .addr_i                (wr_pp3_pp4_raddr),
    .wb_sel_i              (wr_pp3_pp4_wbsel),
    .regwen_i              (wr_pp3_pp4_regwen),
    .pc_add_o        (wr_pp4_wbmux_pcadd),
    .alu_result_o    (wr_pp4_wbmux_alu),
    .dmem_data_o     (wr_pp4_wbmux_dmm),
    .addr_o                (wr_regfile_rd_addr),
    .wb_sel_o              (wr_pp4_wbmux_sel),
    .regwen_o              (wr_regfile_we)
);

wb_mux u_wb_mux (
    .memdata    (wr_pp4_wbmux_dmm),
    .pcaddr     (wr_pp4_wbmux_pcadd),
    .aludata    (wr_pp4_wbmux_alu),
    .WBsel      (wr_pp4_wbmux_sel),
    .data       (wr_regfile_rd_data)
);



endmodule