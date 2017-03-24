module mux(a , b , select , out);
	input a , b , select;
	output out;

	wire a, b, select, out;

	assign out = (select & a) | (!select & b);
endmodule
