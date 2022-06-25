module sext(
    input [24:0] inst,
    input [2:0]sext_op,
    output reg[31:0] out
);

// 立即数生成单元
always @(*) begin
    case (sext_op)
        3'b000: out = (inst[24]==1'b0)?{{20{1'b0}},inst[24:13]}:{{20{1'b1}},inst[24:13]};

        3'b001:out = (inst[24]==1'b0)?{{20{1'b0}},inst[24:18],inst[4:0]}:{{20{1'b1}},inst[24:18],inst[4:0]};

        3'b010: out=(inst[24]==1'b0)?{{19{1'b0}},inst[24],inst[0],inst[23:18],inst[4:1],1'b0}:{{19{1'b1}},inst[24],inst[0],inst[23:18],inst[4:1],1'b0};

        3'b011: out=(inst[24]==1'b0)?{{11{1'b0}},inst[24],inst[12:5],inst[13],inst[23:14],1'b0}:{{11{1'b0}},inst[24],inst[12:5],inst[13],inst[23:14],1'b0};

        3'b100: out={inst[24:5],{12{1'b0}}};

        default:  out = 32'b0;
    endcase
    
end

endmodule