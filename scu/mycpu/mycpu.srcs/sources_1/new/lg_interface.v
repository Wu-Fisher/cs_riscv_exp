module lg_interface(
    input clk_i,
    input[31:0] addr_al_i,
    input wen_al_i,
    input[31:0] wdata_al_i,

    output clk_lgs_o,
    output [31:0] rdata_lgs_o,
    output wire wen_lgs_o

);

assign clk_lgs_o = clk_i;
assign wen_lgs_o = wen_al_i;
assign rdata_lgs_o = wdata_al_i;




endmodule