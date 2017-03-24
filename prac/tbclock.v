`include "tff.v"

module test;
	reg clk;
	wire q[3:0];

	reg reset, init;

	//dff dff1(init, clk, reset, q[0]);
	//dff dff2(q[0], clk, reset, q[1]);
	//dff dff3(q[1], clk, reset, q[2]);
	//dff dff4(q[2], clk, reset, q[3]);
	tff a(init, clk, reset, q[0]);
	tff b(q[0], clk, reset, q[1]);
	tff c(q[1], clk, reset, q[2]);
	tff d(q[2], clk, reset, q[3]);

	initial begin
		$display("Time\tclk\tq");
		$monitor("%g\t%d\t%b\t%b\t%b\t%b", $time, clk, q[0], q[1], q[2], q[3]);
		clk=0;
		reset = 1;
		init = 0;

		#2 reset = 0;
		init = 1;
		#50 $finish;
	end

	always begin
		#1 clk = !clk;
	end
endmodule
