module clock(enable, clk);
	input enable;
	output clk;

	reg clk;

	always
		#5 clk = !clk;
endmodule

