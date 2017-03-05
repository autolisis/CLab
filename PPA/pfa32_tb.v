module pfa32_tb;
	reg [31:0] a , b;
	reg cin;
	wire cout;
	wire [31:0] s;

	pfa32 cal(a , b , cin , s , cout);

	initial 
	begin

		a = 32'b00110011001100110011001100110011;
		b = 32'b11001100110011001100110011001100;
		cin = 1'b1;

	end // initial

	initial 
	begin

		$monitor("a = %b , b = %b , cin = %b , sum = %b , cout = %b",a,b,cin,s,cout);

	end // initial

endmodule