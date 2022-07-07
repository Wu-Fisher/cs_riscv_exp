module pipline_exe_wb(
    input clk,
    input rst_n,

    input[31:0] pc_add_i,
    input [31:0] alu_result_i,
    input [31:0] dmem_data_i,
    input [4:0] raddr_i,

    input regwen_i,
    input[1:0] wbsel_i,
    input memrw_i,

    output [31:0] pc_add_o,
    output [31:0] alu_result_o,
    output [31:0] dmem_data_o,
    output regwen_o,
    output[1:0] wbsel_o,
    output wire memrw_o,
    output[4:0] raddr_o 

);

reg [31:0] reg_alu_result;
reg [31:0] reg_dmem_data;
reg [31:0] reg_pc_add;
reg [1:0] reg_wbsel;
reg [4:0] reg_raddr;
reg reg_regwen;
reg reg_memrw;



assign pc_add_o = reg_pc_add;
assign alu_result_o = reg_alu_result;
assign dmem_data_o = reg_dmem_data;
assign regwen_o = reg_regwen;
assign wbsel_o = reg_wbsel;
assign memrw_o = reg_memrw;
assign raddr_o = reg_raddr;


always @(posedge clk) begin
    if(!rst_n)
    begin
        reg_alu_result <= 0;
        reg_dmem_data <= 0;
        reg_pc_add <= 0;
        reg_wbsel <= 0;
        reg_regwen <= 0;
        reg_memrw <= 0;
        reg_raddr <= 0;
    end
    else
    begin
        reg_alu_result <= alu_result_i;
        reg_dmem_data <= dmem_data_i;
        reg_pc_add <= pc_add_i;
        reg_wbsel <= wbsel_i;
        reg_regwen <= regwen_i;
        reg_memrw <= memrw_i;
        reg_raddr <= raddr_i;
    end
end

endmodule