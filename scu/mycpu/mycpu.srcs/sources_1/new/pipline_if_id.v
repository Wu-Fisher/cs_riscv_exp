module pipline_if_id(
    input clk,
    input rst_n,
    input [31:0] pc_i,
    input [31:0] pc_add_i,

    output [31:0] pc_o,
    output [31:0] pc_add_o

);

reg[31:0] reg_pip_pc;
reg[31:0] reg_pip_pc_add;

assign pc_o = reg_pip_pc;
assign pc_add_o = reg_pip_pc_add;

always @(posedge clk) begin
    if(!rst_n)
    begin
        reg_pip_pc <= 0;  
    end
    else begin
        reg_pip_pc <= pc_i;
    end   
end

always @(posedge clk) begin

    if(!rst_n)
    begin
        reg_pip_pc_add <= 4;  
    end
    else begin
        reg_pip_pc_add <= pc_add_i;
    end   
end
    
endmodule