module pfa16_tb;
	reg [15:0] a , b;
	reg cin;
	wire [15:0] s;
	wire cout;

	pfa16 calc(a , b , cin , s , cout);

	initial begin

	a = 16'b1100100000110010;
	b = 16'b0011010100011010;
	cin = 1'b1;

	end

	initial begin

	$monitor("time = " , $time , "a = %d , b = %d , cin = %b , sum = %d , cout = %b" , a , b , cin , s , cout);

	end


endmodule