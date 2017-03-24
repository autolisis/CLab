module dff(d, clk, reset, q);
	input d, clk, reset;
	output q;

	reg q;
	always @(posedge(clk)) begin
		if (reset) begin
			q<=0;
		end
		else begin
			q<=d;
		end
	end
endmodule
