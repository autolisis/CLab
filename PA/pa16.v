module pa16(a,b,cin,s,cout);
	input [15:0]a,b;
	input cin;
	output [15:0]s;
	output cout;
	
	wire [15:0]p,g,a;

	assign p=a^b;
	assign g=a&b;
	assign a=g+p;

	dotm()
	
	
	

endmodule
