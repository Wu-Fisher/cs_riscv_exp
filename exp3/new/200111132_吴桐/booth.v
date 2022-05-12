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
// 进入空转状态，初始化
	begin
		cnt<=5'h0;
		mb<=0;

	end
	if(start==1'b1)
// 按下start进入运行初始态，特殊处理
	begin
		mb <=1'b1;
		cnt<=5'd1;
	end
// cnt 17的时候到达输出状态，停止工作
	if(cnt==5'd17)
	begin
	cnt<=0;
	mb<=0;
	end
// 正常状态计数器每个周期+1
	else if (cnt!=0)
	begin
	cnt<=cnt+1;
	end

end



always@(posedge clk or negedge rst_n)


begin
// 复位数据
	if(!rst_n)
	begin
		A<=0;
		B<=0;
		z<=0;

	end
    if(start==1'b1)
	// 载入数据，直接载入到可以加减的高位，方便后面直接计算使用
	begin
		A[31:16] <= x;
		A[15:0]<=16'b0;
		B[31:16] <= -x;
		B[15:0]<=16'b0;
		z[15:0]<=y;
		z[31:16]<=16'b0;
	end

    else 
    begin
	case(cnt)
	// 空状态
		5'd0:begin
		end
	// 第一步特殊判断加减
		5'd1:begin
		case(z[0])
			1'b1: z[31:0] <= z+B[31:0];
			1'b0: z[31:0] <= z;
		endcase
		end
	// 结束状态
		5'd17:begin
		  z[31:0] <=(z[31]==1)?((z>>1)+C):  (z>>1);
		end
	// 正常默认计算状态
		default:
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
			end
		
	endcase
	end

end

endmodule