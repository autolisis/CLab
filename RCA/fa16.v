module fa16(a,b,cin,s,cout);
	input [15:0]a,b;
	input cin;
	output [15:0]s;
	output cout;
	wire w1,w2,w3;
	fa4 f1(a[3:0],b[3:0],cin,s[3:0],w1);
	fa4 f2(a[7:4],b[7:4],w1,s[7:4],w2);
	fa4 f3(a[11:8],b[11:8],w2,s[11:8],w3);
	fa4 f4(a[15:12],b[15:12],w3,s[15:12],cout);
endmodule
