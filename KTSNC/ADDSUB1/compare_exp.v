`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: compare_exp.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: alignment shift (preshift)
//				operand with smaller exponent to be preshift
//				expA_LT_expB=1 => expA <  expB
//				expA_LT_expB=0 => expA >= expB
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module compare_exp(
	A,
	B,
	numshift,
	checknumshift,
	sign
	);
	input  [7:0]A;
	input  [7:0]B;

	output [4:0]numshift;
	output sign;
	output	checknumshift;
	wire   [8:0]tempA,tempB,compB;

	wire   [7:0] exp_temp;
	wire   [7:0] cpl_exp_temp,temp_shift;



	assign  tempA={1'b0,A};
	assign  tempB={1'b0,B};

	//take 2's complement of expB
	two_comp9 cpl9(
		.data_in(tempB),
		.data_out(compB)
		);
	//carry lookahead adder expA-expB
	adder9  addA_extB(
		.A(tempA),
		.B(compB),
		.S({sign,exp_temp}),
		.Cout()
		);
	//take 2's complement of result subtr
	two_comp8 cpl8(
		.data_in(exp_temp),
		.data_out(cpl_exp_temp)
		);
	//if sign = 1 result subtr negative
	assign temp_shift=sign?cpl_exp_temp:exp_temp;
		//checknumshift = 1 if temp_shift>=24
		
	assign checknumshift=temp_shift[7]|temp_shift[6]|temp_shift[5]|(~temp_shift[7]&~temp_shift[6]&temp_shift[5]&temp_shift[4]);
	assign numshift=checknumshift?5'd0:temp_shift[4:0];
endmodule
