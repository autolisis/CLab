module fa32(a,b,cin,s,cout);
	input [31:0]a,b;
	input cin;
	output [31:0]s;
	output cout;
	wire w1;
	fa16 f1(a[15:0],b[15:0],cin,s[15:0],w1);
	fa16 f2(a[31:16],b[31:16],w1,s[31:16],cout);
endmodule
