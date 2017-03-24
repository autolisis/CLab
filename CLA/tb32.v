module tb();
	reg [31:0]a,b;
	reg cin;
	wire [31:0]s;
	wire cout;
	cla32 f(a,b,cin,s,cout);

	initial begin
	#5 a=32'd2147483647;	b=32'd2147483648;	cin=1'b0;
/*	#10 a=31'd10000;	b=31'd45610;	cin=1'b0;
	#15 a=31'd20000;	b=31'd40000;	cin=1'b1;
	#20 a=31'd300000;	b=31'd444444;	cin=1'b1;
*/	end

	initial begin
	$monitor ($time, " %d %d %b %d %b",a,b,cin,s,cout);
	end
endmodule
