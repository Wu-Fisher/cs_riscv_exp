module rv_u(
    input clk,
    input rst_n,

    input[31:0] inst_i,
    input[31:0] wbdata_i,

    output[31:0] pc_o,
    output memwb_o,
    output[31:0] memaddr_o,
    output[31:0] memdata_o

);

    // npc
    wire[31:0] wr_pcadd_npc;
    wire[31:0] wr_aluc_npc;
    wire wr_control_npc;    
    wire[31:0] wr_npc_pc;

    // pc
    wire[31:0] wr_pc_o;

    // im
    assign pc_o =wr_pc_o;

    // regfile
    wire[4:0] wr_im_rf_r1;
    wire[4:0] wr_im_rf_r2;
    wire[4:0] wr_im_rf_rd;
    wire wr_control_rf;
    wire[31:0] wr_wb_rf;
    wire[31:0]wr_rf_asel;
    wire[31:0]wr_rf_bsel;

    assign wr_im_rf_r1 = inst_i[19:15];
    assign wr_im_rf_r2 = inst_i[24:20];
    assign wr_im_rf_rd = inst_i[11:7];


    // sext
    wire[24:0]wr_im_sext;
    wire[2:0]wr_control_sext;
    wire[31:0]wr_sext_bsel;
    assign wr_im_sext = inst_i[31:7];

    // branch
    wire wr_breq_control;
    wire wr_brlt_control;
    wire wr_brgt_control; 

    // sel
    wire[31:0] wr_asel_alu;
    wire[31:0] wr_bsel_alu;
    wire wr_control_asel;
    wire wr_control_bsel;

    // alu
    wire[31:0] wr_alu_out;
    wire[3:0] wr_control_alu;
    assign wr_aluc_npc = wr_alu_out;

    // dm
    wire[31:0] wr_dm_wb;
    wire wr_control_dm;
    assign memaddr_o=wr_alu_out;
    assign memdata_o=wr_rf_bsel;
    assign memwb_o=wr_control_dm;
    assign wr_dm_wb = wbdata_i;

    // wb
    wire[1:0] wr_control_wb;
    
    npc u_npc(
        .Pcsel  ( wr_control_npc  ),
        .Pcnext ( wr_pcadd_npc ),
        .Pcjump ( wr_aluc_npc ),
        .out    ( wr_npc_pc     )
    );
    
    pc u_pc(
    	.clk   (clk   ),
        .rst_n (rst_n ),

        .din   (wr_npc_pc),
        .pc    (wr_pc_o),
        .pcadd (wr_pcadd_npc)
    );
    
    regfile u_regfile(
    	.clk    (clk    ),
        .raddr1 (wr_im_rf_r1 ),
        .raddr2 (wr_im_rf_r2 ),
        .rdata1 (wr_rf_asel ),
        .rdata2 (wr_rf_bsel ),
        .we     (wr_control_rf),
        .waddr  (wr_im_rf_rd  ),
        .wdata  (wr_wb_rf  )
    );

    sext u_sext(
    	.inst    (wr_im_sext    ),
        .sext_op (wr_control_sext ),
        .out     (wr_sext_bsel)
    );

    branch u_branch(
    	.data1 (wr_rf_asel ),
        .data2 (wr_rf_bsel ),
        .breq  (wr_breq_control  ),
        .brlt  (wr_brlt_control  ),
        .brgt  (wr_brgt_control  )
    );
    
    alu_mux u_asel(
    	.a     (wr_rf_asel     ),
        .b     (wr_pc_o     ),
        .sel_i (wr_control_asel ),
        .c     (wr_asel_alu)
    );

    alu_mux u_bsel(
    	.a     (wr_rf_bsel     ),
        .b     (wr_sext_bsel     ),
        .sel_i (wr_control_bsel ),
        .c     (wr_bsel_alu     )
    );

    alu u_alu(
    	.alu_src_a (wr_asel_alu ),
        .alu_src_b (wr_bsel_alu ),
        .alu_op    (wr_control_alu ),
        .alu_out   (wr_alu_out )
    );

    wb_mux u_wb_mux(
    	.memdata (wr_dm_wb ),
        .pcaddr  (wr_pcadd_npc  ),
        .aludata (wr_alu_out ),
        .WBsel   (wr_control_wb   ),
        .data    (wr_wb_rf    )
    );
    
    controller u_controller(
    	.inst_i   (inst_i   ),
        .breq_i   (wr_breq_control   ),
        .brgt_i   (wr_brgt_control   ),
        .brlt_i   (wr_brlt_control   ),

        .pcsel_o  (wr_control_npc  ),
        .regwen_o (wr_control_rf ),
        .wbsel_o  (wr_control_wb  ),
        .sext_o   (wr_control_sext   ),
        .aluop_o  (wr_control_alu  ),
        .asel_o   (wr_control_asel   ),
        .bsel_o   (wr_control_bsel   ),
        .memrw_o  (wr_control_dm  )
    );
    
    

    
    
    










endmodule