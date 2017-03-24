module tff(t, reset, q);
	input t, reset;
	output q;

	reg q;

	always @(t) begin
		if (reset)
			q<=0;
		else
			q<=!q;
	end
endmodule
