module flp_to_decimal_testbench;

	reg[31:0]A;
	wire [23:0]nguyen,thapphan;
	wire[4:0] so_bit_0;

	flp_to_decimal uut(.A(A),.nguyen(nguyen),.thapphan(thapphan),.so_bit_0(so_bit_0));

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