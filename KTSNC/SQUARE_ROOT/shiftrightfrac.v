`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: shiftrightfrac.v
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
module shiftrightfrac(
	number_exp,
	frac,
	frac_after_shift
	);

	input [7:0]number_exp;
	input [23:0]frac;

	output[23:0]frac_after_shift;

	wire [4:0]sel;
	wire [7:0]shift_right;



	adder8 adder8(.A(number_exp),.B(8'd1),.S(shift_right),.Cout());
	assign sel=shift_right[4:0];
	shiftright sr(.data_in(frac),.sel(sel),.data_out(frac_after_shift));
endmodule
