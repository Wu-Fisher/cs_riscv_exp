module cpucon_sim();
// module controller(
//     input[31:0] inst_i,
//     input breq_i,
//     input brgt_i,
//     input brlt_i,
//     output wire pcsel_o,
//     output wire regwen_o,
//     output wire[1:0]wbsel_o,
//     output wire[2:0]sext_o,
//     output wire[3:0]aluop_o,
//     output wire asel_o,
//     output wire bsel_o,
//     output wire memrw_o
// );

wire[31:0] inst_i;
wire breq_i;
wire brgt_i;
wire brlt_i;
wire pcsel_o;
wire regwen_o;
wire[1:0] wbsel_o;
wire[2:0] sext_o;
wire[3:0] aluop_o;
wire asel_o;
wire bsel_o;
wire memrw_o;

assign inst_i=0;
assign breq_i=1;
assign brgt_i=0;
assign brlt_i=0;


controller cpucon_sim_controller(
    .inst_i(inst_i),
    .breq_i(breq_i),
    .brgt_i(brgt_i),
    .brlt_i(brlt_i),
    .pcsel_o(pcsel_o),
    .regwen_o(regwen_o),
    .wbsel_o(wbsel_o),
    .sext_o(sext_o),
    .aluop_o(aluop_o),
    .asel_o(asel_o),
    .bsel_o(bsel_o),
    .memrw_o(memrw_o)
);



endmodule