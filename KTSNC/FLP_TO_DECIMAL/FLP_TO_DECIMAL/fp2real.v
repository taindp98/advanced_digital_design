`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: fp2real.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module fp2real(
	A,
	pre,
	significand,
	point
	);

	input [31:0]A;
	output [23:0]pre,significand;
	output[4:0]point;

	wire [23:0] frac;
	wire [7:0] exp,temp_exp,temp_exp_cpl,shift_by_n;
	wire sign,sign_exp;

	wire [23:0] Q_right,R_right,Q_left,R_left,Q,R;

	assign sign=A[31];
	assign exp=A[30:23];
	assign frac={1'b1,A[22:0]};

	//add bias
	adder9 adder9(
		.A({1'b0,exp}),
		.B(9'b110000001),
		.S({sign_exp,temp_exp}),
		.Cout()
		);
	//check positive negative
	two_compliment8 cpl(
		.data_in(temp_exp),
		.data_out(temp_exp_cpl)
		);

	assign shift_by_n=sign_exp?temp_exp_cpl:temp_exp;   

	//shift right
	shiftright_frac srf(
		.frac(frac),
		.shift_by_n(shift_by_n),
		.Q(Q_right),
		.R(R_right)
		);

	//shift left
	shiftleft_frac slf(
		.frac(frac),
		.shift_by_n(shift_by_n),
		.Q(Q_left),
		.R(R_left)
		);

	//check shift left or right
	assign Q=sign_exp?Q_right:Q_left;
	assign R=sign_exp?R_right:R_left;

	precision cal_pre(
		.Q(Q),
		.sign(sign),
		.result(pre)
		);

	fraction cal_frac(
		.R(R),
		.result(significand),
		.point(point)
		);
	
endmodule













