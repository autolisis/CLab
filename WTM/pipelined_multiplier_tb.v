module pipelined_multiplier_tb();
	reg [31:0]x,y;
	reg clk;
	wire [63:0]out;

	multi p(x,y,out,clk);

	initial
	begin
	clk=0;
	end

	always
	begin 
	#1
	clk=~clk;
	end

	always
	begin
	#40 $finish;
	end

	initial
	begin
	x=32'd11;y=32'd11;

	#2 x=32'd111;y=32'd111;

	#2 x=32'd1111;y=32'd1111;

	#2 x=32'd11111;y=32'd11111;

	#2 x=32'd111111;y=32'd111111;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd1;y=32'd22;

	#2 x=32'd91;y=32'd72; 

	#2 x=32'd12;y=32'd12;

	#2 x=32'd48;y=32'd2;

	#2 x=32'd1;y=32'd22;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd1;y=32'd22;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd12;y=32'd12;

	#2 x=32'd48;y=32'd2;

	#2 x=32'd1;y=32'd22;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd1;y=32'd22;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	#2 x=32'd91;y=32'd72;

	$finish;

	end

	initial
	begin

	$monitor($time,"  x = %d , y = %d , out = %d\n",x,y,out);

	end

endmodule
