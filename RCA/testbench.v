module testb();
	reg [31:0]A,B;
	reg cin;
	wire [31:0]	S;
	wire cout;
	fa32 f(A,B,cin,S,cout);
	
	initial
	 begin
	#10 A=32'd1798; B=32'd2561 ; cin=1'b0;
	#10 A=32'd2561; B=32'd1798 ; cin=1'b0;
	#10 A=32'd98756; B=32'd32165 ; cin=1'b0;
	end

	initial begin
	$monitor($time, "  %d %d %b %d %b",A,B,cin,S,cout);
	end
endmodule
