module cla8(a,b,cin,s,cout);
	input [7:0]a,b;
	input cin;
	output [7:0]s;
	output cout;
	
	wire [7:0]p,g,car;

	assign p=a^b;
	assign g=a&b;
	assign car[0]=cin;
	assign car[1]=g[0] | p[0]&cin;
	assign car[2]=g[1] | p[1]&g[0] | p[1]&p[0]&cin;
	assign car[3]=g[2] | p[2]&g[1] | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&cin;
	assign car[4]=g[3] | p[3]&g[2] | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&cin;
	assign car[5]=g[4] | p[4]&g[3] | p[4]&p[3]&g[2] | p[4]&p[3]&p[2]&g[1] | p[4]&p[3]&p[2]&p[1]&g[0] | p[4]&p[3]&p[2]&p[1]&p[0]&cin;
	assign car[6]=g[5] | p[5]&g[4] | p[5]&p[4]&g[3] | p[5]&p[4]&p[3]&g[2] | p[5]&p[4]&p[3]&p[2]&g[1] | p[5]&p[4]&p[3]&p[2]&p[1]&g[0] | p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin;
	assign car[7]=g[6] | p[6]&g[5] | p[6]&p[5]&g[4] | p[6]&p[5]&p[4]&g[3] | p[6]&p[5]&p[4]&p[3]&g[2] | p[6]&p[5]&p[4]&p[3]&p[2]&g[1] | p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0] | p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin;
	assign cout=g[7] | p[7]&g[6] | p[7]&p[6]&g[5] | p[7]&p[6]&p[5]&g[4] | p[7]&p[6]&p[5]&p[4]&g[3] | p[7]&p[6]&p[5]&p[4]&p[3]&g[2] | p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&g[1] | p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0] | p[7]&p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin;

	assign s=p^car;
	

endmodule
