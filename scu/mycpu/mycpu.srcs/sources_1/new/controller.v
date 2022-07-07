module controller(
    input[31:0] inst_i,
    input breq_i,
    input brgt_i,
    input brlt_i,


    output wire pcsel_o,
    output wire regwen_o,
    output wire[1:0] wbsel_o,
    output wire[2:0] sext_o,
    output wire[3:0] aluop_o,
    output wire asel_o,
    output wire bsel_o,
    output wire memrw_o
);


wire[8:0] instm;
assign instm = {inst_i[30],inst_i[14:12],inst_i[6:2]}; 

wire inst_add;
wire inst_sub;
wire inst_and;
wire inst_or;
wire inst_xor;
wire inst_sll;
wire inst_srl;
wire inst_sra;
wire inst_addi;
wire inst_andi;
wire inst_ori;
wire inst_xori;
wire inst_slli;
wire inst_srli;
wire inst_srai;
wire inst_lw;
wire inst_jalr;
wire inst_sw;
wire inst_beq;
wire inst_bne;
wire inst_blt;
wire inst_bge;
wire inst_lui;
wire inst_jal;

assign inst_add = instm==9'b0_000_01100;
assign inst_sub = instm==9'b1_000_01100;
assign inst_and = instm==9'b0_111_01100;
assign inst_or  = instm==9'b0_110_01100;
assign inst_xor = instm==9'b0_100_01100;
assign inst_sll = instm==9'b0_001_01100;
assign inst_srl = instm==9'b0_101_01100;
assign inst_sra = instm==9'b1_101_01100;

assign inst_addi = instm[7:0]==8'b000_00100;
assign inst_andi = instm[7:0]==8'b111_00100;
assign inst_ori  = instm[7:0]==8'b110_00100;
assign inst_xori = instm[7:0]==8'b100_00100;
assign inst_slli = instm[7:0]==8'b001_00100;
assign inst_srli = (instm[8]==0)&&(instm[7:0]==8'b101_00100);
assign inst_srai = (instm[8]==1)&&(instm[7:0]==8'b101_00100);
assign inst_lw   = instm[7:0]==8'b010_00000;
assign inst_jalr = instm[7:0]==8'b000_11001;

assign inst_sw = instm[7:0]==8'b010_01000;

assign inst_beq = instm[7:0]==8'b000_11000;
assign inst_bne = instm[7:0]==8'b001_11000;
assign inst_blt = instm[7:0]==8'b100_11000;
assign inst_bge = instm[7:0]==8'b101_11000;

assign inst_lui = instm[4:0]==5'b01101;
assign inst_jal = instm[4:0]==5'b11011;

assign  regwen_o= !(inst_sw||inst_beq||inst_bne||inst_blt||inst_bge);

assign wbsel_o = inst_lw?2'b01:
(inst_jalr||inst_jal)?2'b10:2'b00;

assign sext_o = inst_sw?3'b001:
(inst_beq||inst_bne||inst_blt||inst_bge)?3'b010:
inst_jal?3'b011:
inst_lui?3'b100:3'b000;

assign aluop_o = (inst_sub)?4'b0001:
(inst_and||inst_andi)?4'b0010:
(inst_or||inst_ori)?4'b0011:
(inst_xor||inst_xori)?4'b0100:
(inst_sll||inst_slli)?4'b0101:
(inst_srl||inst_srli)?4'b0110:
(inst_sra||inst_srai)?4'b0111:
(inst_lui)?4'b1000:
4'b0000;

assign asel_o=(inst_beq||inst_bne||inst_blt||inst_bge||inst_jal)?1:0;

assign bsel_o=(inst_add||inst_sub||inst_and||inst_or||inst_xor||inst_sll||inst_srl||inst_sra)?0:1;

assign memrw_o=inst_sw?1:0;

wire bjump;
assign bjump=(inst_beq&&breq_i)||(inst_bne&&(!breq_i))||(inst_blt&&(brlt_i)
||(inst_bge&&(breq_i||brgt_i)));

assign pcsel_o=(inst_jal||inst_jalr||bjump)?1:0;





endmodule