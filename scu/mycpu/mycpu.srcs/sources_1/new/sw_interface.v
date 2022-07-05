module sw_interface(
    input clk_i,
    input[31:0] addr_al_i,
    input wen_al_i,
    input[31:0] wdata_al_i,
    input [31:0] wdata_sw_i,

    output [31:0] rdata_sw_o

);

assign rdata_sw_o =(!wen_al_i) ?wdata_sw_i:0;

endmodule