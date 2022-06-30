module aline(
    input clk_i,
    input[31:0] addr_cpu_i,
    input wen_cpu_i,
    input[31:0] wdata_cpu_i,

    output [31:0] rdata_cpu_o, 

    output clk_d1_o,
    output wen_d1_o,
    output[31:0] wdata_d1_o,
    output[31:0] addr_d1_o,
    
    input[31:0] rdata_d1_i,

    output clk_d2_o,
    output wen_d2_o,
    output[31:0] wdata_d2_o,
    output[31:0] addr_d2_o,
    
    input[31:0] rdata_d2_i


);

wire check_d1=(addr_cpu_i<32'hffff_f000) ;
wire check_d2=(addr_cpu_i==32'hffff_f000) ;

assign  clk_d1_o=clk_i;
assign  wen_d1_o=(check_d1)?wen_cpu_i:0;
assign  wdata_d1_o=(check_d1)?wdata_cpu_i:0;
assign  addr_d1_o=(check_d1)?addr_cpu_i:0;

assign clk_d2_o=clk_i;
assign wen_d2_o=(check_d2)?wen_cpu_i:0;
assign wdata_d2_o=(check_d2)?wdata_cpu_i:0;
assign addr_d2_o=(check_d2)?addr_cpu_i:0;

assign rdata_cpu_o=(check_d1)?rdata_d1_i:(check_d2)?rdata_d2_i:0;


endmodule