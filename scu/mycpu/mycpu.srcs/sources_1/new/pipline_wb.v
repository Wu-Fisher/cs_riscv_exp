module pipline_wb(

    input clk,
    input rst_n,

    input [31:0] pc_add_i,
    input [31:0] alu_result_i,
    input [31:0] dmem_data_i,
    input [4:0] addr_i,
    input[1:0] wb_sel_i,
    input regwen_i,

    output [31:0]pc_add_o,
    output [31:0]alu_result_o,
    output [31:0]dmem_data_o,
    output[4:0] addr_o,
    output[1:0] wb_sel_o,
    output wire regwen_o


);

reg[31:0] reg_pc_add;
reg[31:0] reg_alu_result;
reg[31:0] reg_dmem_data;
reg[1:0] reg_wb_sel;
reg[4:0] reg_addr;
reg reg_regwen;

assign pc_add_o = reg_pc_add;
assign alu_result_o = reg_alu_result;
assign dmem_data_o = reg_dmem_data;
assign wb_sel_o = reg_wb_sel;
assign regwen_o = reg_regwen;
assign addr_o = reg_addr;

always @(posedge clk) begin
    if(!rst_n)
    begin
        reg_pc_add <= 0;
        reg_alu_result <= 0;
        reg_dmem_data <= 0;
        reg_wb_sel <= 0;
        reg_regwen <= 0;
        reg_addr <= 0;
    end
    else
    begin
        reg_pc_add <= pc_add_i;
        reg_alu_result <= alu_result_i;
        reg_dmem_data <= dmem_data_i;
        reg_wb_sel <= wb_sel_i;
        reg_regwen <= regwen_i;
        reg_addr <= addr_i;
         
    end


end



endmodule