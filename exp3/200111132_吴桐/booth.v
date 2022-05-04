module booth (
    input  wire        clk  ,
	input  wire        rst_n,
	input  wire [15:0] x    ,
	input  wire [15:0] y    ,
	input  wire        start,
	output  reg  [31:0] z    ,
	output wire        busy 
);

// A储存+x
reg  [31:0] A;
// B储存-x
reg    [31:0] B;
reg[4:0] cnt;
// C为方便符号扩展
integer C=32'h8000_0000;



reg mb=0;

assign busy=mb;


always @(posedge clk or negedge rst_n) begin
	
	if(!rst_n)
	begin
		cnt<=5'h0;
		A<=0;
		B<=0;
		mb<=0;
	end
	else if(start==1'b1)
	// 载入数据
	begin
		mb <=1'b1;
		A[31:16] <= x;
		A[15:0]<=16'b0;
		B[31:16] <= -x;
		B[15:0]<=16'b0;
		z[15:0]<=y;
		cnt<=5'd1;
		z[31:16]<=16'b0;
	end

end



always@(posedge clk or negedge rst_n)
begin
	// 第一步特殊处理
	if(cnt==5'd1)
	begin
		case(z[0])
			1'b1: z[31:0] <= z+B[31:0];
			1'b0: z[31:0] <= z;
		endcase
		cnt<=5'd2;
	end
	// 随后根据后两位进行加法和算数位移
	else if(cnt!=5'd0&&cnt<=5'd16)
	begin
		case(z[1:0])
			2'b00:
			begin
				z[31:0] <=(z[31]==1)?((z>>1)+C): (z>>1);
			end
			2'b01: 
			begin
		
				z[31:0] <= (z[31]==1)?((z>>1)+C+A): (z>>1)+A;

			end
			2'b10: 
			begin
				z[31:0] <=(z[31]==1)?((z>>1)+C+B):  (z>>1)+B;
			end
			2'b11:
			begin
				z[31:0] <=(z[31]==1)?((z>>1)+C):  (z>>1);
			end
		endcase
		cnt<=cnt+1;
	end
	// 最后一次算数位移消除低位多余的一位，输出结果
	else if(cnt==5'd17)
	begin
		z[31:0] <=(z[31]==1)?((z>>1)+C):  (z>>1);
		cnt<=5'b0;
		mb <=1'b0;

	end
end









endmodule