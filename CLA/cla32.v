module cla32(a,b,cin,s,cout);
	input [31:0]a,b;
	input cin;
	output [31:0]s;
	output cout;
	wire w1,w2,w3;
	cla8 fc(a[7:0],b[7:0],cin,s[7:0],w1);
	cla8 f2(a[15:8],b[15:8],w1,s[15:8],w2);
	cla8 f3(a[23:16],b[23:16],w2,s[23:16],w3);
	cla8 f4(a[31:24],b[31:24],w3,s[31:24],cout);
endmodule
