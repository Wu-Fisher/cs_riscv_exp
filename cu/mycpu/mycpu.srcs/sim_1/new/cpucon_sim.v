module cpucon_sim();


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
reg[31:0] ii;


assign inst_i=ii;
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


// FFFFF4B7		lui 
// 00100A93		addi
// 00200B13		addi
// 0704A403		lw x
// 0FF47913		andi
// 01891913		slli
// 41895913		srai
// 40845993		srai
// 0FF9F993		andi
// 01899993		slli
// 4189D993		srai
// 41545A13		srai
// 007A7A13		andi
// 000002B3		add 
// 045A0263		beq 

initial begin
    ii = 32'hFFFFF4B7;
    #50
    ii =  32'h00100A93;
    #50
    ii =  32'h0704A403;// lw
    #30
    ii =  32'h0FF47913;//andi
    #40
    ii =  32'h01891913;//slli
    #50
    ii =  32'h000002B3;//add
    #60
    ii =  32'h045A0263;//beq
    #70 //jal
    ii =  32'h0080006F;
    #80  //ss
    ii = 32'h0664A023;
end
endmodule