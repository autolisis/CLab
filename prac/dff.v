module dff(d, clk, q);
	input d, clk;
	output q;

	reg q;
	always @(posedge(clk))
		q<=d;
endmodule
