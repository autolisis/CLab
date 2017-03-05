module clock(enable, clk);
	input enable;
	output clk;

	reg clk;

	initial begin
		clk=1;
	end

	always begin
		#5 clk = !clk;
	end
endmodule
