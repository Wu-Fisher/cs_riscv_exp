module booth2 (
    input  wire        clk  ,
	input  wire        rst_n,
	input  wire [15:0] x    ,
	input  wire [15:0] y    ,
	input  wire        start,
	output reg [31:0] z    ,
	output wire        busy 
);
reg mg=0;
reg[31:0]B1=32'b0;
reg[31:0]B2=32'b0;
reg[31:0]C1=32'b0;
reg[31:0]C2=32'b0;
reg[4:0]cnt=5'b0;
reg[16:0]D=16'b0;



assign busy=mg;

always @(posedge clk) begin
	if(start==1)
	begin
		mg=1;
		cnt<=cnt+1;
		if(x!=32'b0 && y!=32'b0)
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
	
end

always@(posedge clk) begin
if(cnt>1'b0 && cnt<5'd8)
begin
	case(D[2:0])
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
	cnt<=cnt+1;
	D<=(D>>2);
end
else if(cnt==5'd8)
begin
  mg=0;
  cnt<=5'b0;
end


end




endmodule