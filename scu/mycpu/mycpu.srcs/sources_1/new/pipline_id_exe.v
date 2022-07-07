module pipline_id_exe(
    input clk,
    input rst_n,
    input[31:0] pc_i,
    input[31:0] pc_add_i,

    input[31:0] rdata1_i,
    input[31:0] rdata2_i,
    input[31:0] sext_i,
    input[4:0] raddr_i,

    input pcsel_i,
    input regwen_i,
    input[1:0] wbsel_i,
    input[3:0] aluop_i,
    input asel_i,
    input bsel_i,
    input memrw_i,

    output [31:0] rdata1_o,
    output [31:0] rdata2_o,
    output [31:0] sext_o,
    output [4:0] raddr_o,
    output [31:0] pc_o,
    output [31:0] pc_add_o,


    output wire pcsel_o,
    output wire regwen_o,
    output wire[1:0] wbsel_o,
    output wire[3:0] aluop_o,
    output wire asel_o,
    output wire bsel_o,
    output wire memrw_o

);

reg[31:0] reg_pc;
reg[31:0] reg_pc_add;

reg[31:0] reg_rdata1;
reg[31:0] reg_rdata2;
reg[31:0] reg_sext;
reg[4:0] reg_raddr;

reg reg_pcsel;
reg reg_regwen;
reg[1:0] reg_wbsel;
reg[3:0] reg_aluop;
reg reg_asel;
reg reg_bsel;
reg reg_memrw;

assign pc_o = reg_pc;
assign pc_add_o = reg_pc_add;

assign rdata1_o = reg_rdata1;
assign rdata2_o = reg_rdata2;
assign sext_o = reg_sext;
assign raddr_o = reg_raddr;

assign pcsel_o = reg_pcsel;
assign regwen_o = reg_regwen;
assign wbsel_o = reg_wbsel;
assign aluop_o = reg_aluop;
assign asel_o = reg_asel;
assign bsel_o = reg_bsel;
assign memrw_o = reg_memrw;



always @(posedge clk) begin
    if(!rst_n)
    begin
        reg_pc<=0;
        reg_pc_add<=4;

    end
    else
        begin
            reg_pc<=pc_i;
            reg_pc_add<=pc_add_i;
        end
            
end

always @(posedge clk) begin
    if(!rst_n)
    begin
        reg_rdata1<=0;
        reg_rdata2<=0;
        reg_sext<=0;
        reg_raddr<=0;
    end
    else
        begin
            reg_rdata1<=rdata1_i;
            reg_rdata2<=rdata2_i;
            reg_sext<=sext_i;
            reg_raddr<=raddr_i;
        end

    
end

always @(posedge clk) begin

    if(!rst_n)
    begin
        reg_pcsel<=0;
        reg_regwen<=0;
        reg_wbsel<=0;
        reg_aluop<=0;
        reg_asel<=0;
        reg_bsel<=0;
        reg_memrw<=0;
    end
    else
        begin
            reg_pcsel<=pcsel_i;
            reg_regwen<=regwen_i;
            reg_wbsel<=wbsel_i;
            reg_aluop<=aluop_i;
            reg_asel<=asel_i;
            reg_bsel<=bsel_i;
            reg_memrw<=memrw_i;
        end
end

endmodule