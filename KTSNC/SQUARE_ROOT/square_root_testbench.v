module square_root_testbench;

	reg[31:0]A;
	wire[31:0]S;

	square_root uut(.A(A),.S(S));

	initial begin
		A=32'h43290000;
		#100
		A=32'h43130000;
		#100
		A=32'h3e800000;
		#100
		A=32'h499837f8;

		#100
		A=32'hc4908000;
		#100
		A=32'h408b851f;
		#100
		A=32'hc4722000;
		#100
		A=32'h3d6047d4;




		#100
		A=32'hc4722000;
		

	end
endmodule