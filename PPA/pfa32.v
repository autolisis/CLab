module pfa32( x[31:0] , y[31:0] , cin , s[31:0] , cout );
	input [31:0] x,y;
	input cin;
	output [31:0] s;
	output cout;

	wire w;

	pfa16 p1(x[15:0] , y[15:0] , cin , s[15:0] , w1);
	pfa16 p2(x[31:16] , y[31:16] , w1 , s[31:16] , cout);

endmodule