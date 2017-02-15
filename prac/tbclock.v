module test;
	wire clk;
	clock(1, clk);
	wire poss = (@posedge(clk));


	initial begin
		enable = 1;
	end
	initial begin
		$monitor($time, "\t%d\t%d\t", clk, poss);
	end
endmodule
