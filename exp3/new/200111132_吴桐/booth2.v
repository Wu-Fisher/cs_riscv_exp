module booth2 (
    input  wire        clk  ,
	input  wire        rst_n,
	input  wire [15:0] x    ,
	input  wire [15:0] y    ,
	input  wire        start,
	output reg [31:0] z    ,
	output wire        busy 
);
reg mg;

// 以下储存均在高位可以加的位置，并且带了两个算数位移，在后面算法运用的时候可以不用位移

// B1储存x
reg[31:0]B1;
// B2储存2x
reg[31:0]B2;
// C1储存-x
reg[31:0]C1;
// C2储存-2x
reg[31:0]C2;
// cnt为计数器
reg[4:0]cnt;
// D中储存Y 做扩展
reg[16:0]D;



assign busy=mg;

// 计数器（状态）和busy工作状态控制模块
always @(posedge clk or negedge rst_n) begin
	//复位
if(!rst_n)
	begin
	mg<=0;
	cnt<=5'b0;
	end
	//开始按钮
else if(start==1)
	begin
		mg=1;
		cnt<=1;
	end
	//正常运行以及结束
else
	begin 
	// cnt=8结束运算
	if(cnt==5'd8)
	begin
  		mg=0;
  		cnt<=5'b0;
	end
	// 当cnt！=0时为正常计算 每个周期+1
	else if(cnt!=5'd0)
		begin
			cnt<=cnt+1;
		end
	end
	
end

// 数据处理运算模块
always@(posedge clk or negedge rst_n) begin

// 复位
if(!rst_n)
	begin
	B1<=32'b0;
	B2<=32'b0;
	C1<=32'b0;
	C2<=32'b0;
	D<=16'b0;
	end
// 开始按钮
else if(start==1)
	// 初始化处理数据
	begin
		if(x!=32'b0 && y!=32'b0)
		// 如果xy不为0，则直接在第一步就做第一次加法判断
		// 并且x的四种都直接放在可以加法运算的高位上（根据指导书步骤）所处高位和符号位都进行处理
		// 相当于原16位存在[29:14]，为[31:16]高位结果算数位移两位的结果
		begin
		B1[31:14]<={x[15],x[15],x};
		B2[31:14]<={x[15],x,1'b0};
		C1[31:14]<={(1'b1-x[15]),(1'b1-x[15]),-x};
		C2[31:14]<={(1'b1-x[15]),-x,1'b0};
		D<={y[15],y[15],y[15:1]};
		z[13:0]<=14'b0;
		case({y[1:0],1'b0})
			3'b010:z[31:14]<={x[15],x[15],x};
			3'b100:z[31:14]<={(1'b1-x[15]),-x,1'b0};
			3'b110:z[31:14]<={(1'b1-x[15]),(1'b1-x[15]),-x};
			default:z[31:14]<=18'b0;
		endcase
		end
		// 判0可以直接优化结果
		else
		begin
		z<=32'b0;
		B1<=32'b0;
		B2<=32'b0;
		C1<=32'b0;
		C2<=32'b0;
		D<=17'b0;
		end
	end

// 正常计算状态
else 
    // cnt必须在正常运算范围内
	if(cnt>5'd0 && cnt<5'd8)
	begin
	// 根据当前后三位，进行一个加法判断
	case(D[2:0])

	// 这里利用了乘法分配律，B 和 C 储存的都是已经算数位移两位后的结果
	
	// 例子 相当于 B1 = x>>2 所以这里没有位移BC

	// 最后一步虽然只用位移一位，但是这里由于存放数据在高[63:1]位还需要再算数位移一位，这里我们就直接算数位移两位，统一化处理
		3'b000:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0);
		3'b001:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0)+B1;
		3'b010:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0)+B1;
		3'b011:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0)+B2;
		3'b100:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0)+C2;
		3'b101:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0)+C1;
		3'b110:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0)+C1;
		3'b111:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0);
		default:z<=(z>>2)+(z[31]==1?(32'hc000_0000):32'b0);
	endcase
	D<=(D>>2);
	end
end

endmodule