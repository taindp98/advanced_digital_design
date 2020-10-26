module  adder5_forBCD (A,B,Cin,S,Cout);
	input [4:0] A;
	input [4:0] B;
	input Cin;

	output[4:0] S;
	output Cout;
	wire [3:0] temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(Cin),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(Cout));
endmodule
//////////////////////////////////////////////////////////////////////////////
module adder4_BCD(A,B,Cin,S,Cout);
	input[3:0]A,B;
	input Cin;
	output[3:0]S;
	output Cout;

	wire[4:0]temp1S,temp2S;

	adder5_forBCD add1(.A({1'b0,A}),.B({1'b0,B}),.Cin(Cin),.S(temp1S),.Cout());
	adder5_forBCD add2(.A(temp1S),.B(5'b10110),.Cin(0),.S(temp2S),.Cout());

	assign S=temp2S[4]?temp1S[3:0]:temp2S[3:0];
	assign Cout=temp2S[4]?1'b0:1'b1;
endmodule
//////////////////////////////////////////////////////////////////////////////
module adder8_BCD(A,B,Cin,S,Cout);
	input[7:0]A,B;
	input Cin;
	output[7:0]S;
	output Cout;

	wire c0;

	adder4_BCD add1(.A(A[3:0]),.B(B[3:0]),.Cin(Cin),.S(S[3:0]),.Cout(c0));
	adder4_BCD add2(.A(A[7:4]),.B(B[7:4]),.Cin(c0),.S(S[7:4]),.Cout(Cout));
endmodule
///////////////////////////////////////////////////////////////////////////////
module adder16_BCD(A,B,Cin,S,Cout);
	input[15:0]A,B;
	input Cin;
	output[15:0]S;
	output Cout;

	wire c0;

	adder8_BCD add1(.A(A[7:0]),.B(B[7:0]),.Cin(Cin),.S(S[7:0]),.Cout(c0));
	adder8_BCD add2(.A(A[15:8]),.B(B[15:8]),.Cin(c0),.S(S[15:8]),.Cout(Cout));
endmodule
////////////////////////////////////////////////////////////////////////////////
module adder32_BCD(A,B,Cin,S,Cout);
	input[31:0]A,B;
	input Cin;
	output[31:0]S;
	output Cout;

	wire c0;

	adder16_BCD add1(.A(A[15:0]),.B(B[15:0]),.Cin(Cin),.S(S[15:0]),.Cout(c0));
	adder16_BCD add2(.A(A[31:16]),.B(B[31:16]),.Cin(c0),.S(S[31:16]),.Cout(Cout));
endmodule
//////////////////////////////////////////////////////////////////////////////////
module adder48_BCD(A,B,Cin,S,Cout);
	input[47:0]A,B;
	input Cin;
	output[47:0]S;
	output Cout;

	wire c0;

	adder32_BCD add1(.A(A[31:0]),.B(B[31:0]),.Cin(Cin),.S(S[31:0]),.Cout(c0));
	adder16_BCD add2(.A(A[47:32]),.B(B[47:32]),.Cin(c0),.S(S[47:32]),.Cout(Cout));
endmodule

