module cla4(a,b,cin,s,cout);
	input [3:0]a,b;
	input cin;
	output [3:0]s;
	output cout;
	
	wire [3:0]p,g,car;

	assign p=a^b;
	assign g=a&b;
	assign car[0]=cin;
	assign car[1]=g[0] | p[0]&cin;
	assign car[2]=g[1] | p[1]&g[0] | p[1]&p[0]&cin;
	assign car[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&cin;
	assign cout=g[3] | p[3]&g[2] | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&cin;

	assign s=p^car;
	

endmodule
