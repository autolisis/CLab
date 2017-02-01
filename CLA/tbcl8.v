module tb();
	reg [7:0]a,b;
	reg cin;
	wire [7:0]s;
	wire cout;
	cla8 f(a,b,cin,s,cout);

	initial begin
	#5 a=8'd56;	b=8'd24;	cin=1'b0;
	#10 a=8'd34;	b=8'd44;	cin=1'b0;
	#15 a=8'd128;	b=8'd77;	cin=1'b1;
	#20 a=8'd200;	b=8'd11;	cin=1'b1;
	end

	initial begin
	$monitor ($time, " %d %d %b %d %b",a,b,cin,s,cout);
	end
endmodule
