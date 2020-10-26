
module fp2real_tb;

	reg[31:0]A;
	wire [23:0]precision,fraction;
	wire[4:0] point;

	fp2real uut(.A(A),.pre(precision),.significand(fraction),.point(point));

	initial begin
		A=32'h428a4000;
		#100

		A=32'h3ba3d70a;
		#100

		A=32'h44819656;
		#100

		A=32'hc1ca0000;
		#100

		A=32'h3db851ec;
		#100

		A=32'hc1ca0000;
		


	end
endmodule