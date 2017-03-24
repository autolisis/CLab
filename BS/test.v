`include "barrelPipe.v"


module test;
	reg[31:0] a;
	reg[4:0] shift;
	reg rot;
	wire[31:0] out;
	reg clk;

	shifter bs(a , shift , rot , out , clk);

	always begin
		#1
		clk = ~clk;
	end

	initial begin
		clk = 1'b1;
		a = 32'd1;
		rot = 1'b1;
		shift = 5'b00001;
	end

	always begin
		#20 shift=shift+1;
	end
	initial begin
		#1000
		$finish;
	end

	initial begin
		$monitor($time , "\ta = %d\tshift = %d\trotate = %d\toutput = %d", a, shift, rot, out, $time);
	end
endmodule
