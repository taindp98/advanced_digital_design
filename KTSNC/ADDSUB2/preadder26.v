`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: preadder26.v
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

module preadder26(
	sign1,
	sign2,
	in1,
	in2,
	full1,
	full2
	);

	input  [23:0]in1,in2;
	input  sign1,sign2;

	output [25:0]full1,full2;

	wire   [24:0]temp1,temp2;

	two_comp25	two_compliment25_1(
		.data_in({1'b0,in1}),
		.data_out(temp1)
		);	
	two_comp25	two_compliment25_2(
		.data_in({1'b0,in2}),
		.data_out(temp2)
		);	

	assign	full1=sign1?{1'b1,temp1}:{1'b0,in1};
	assign	full2=sign2?{1'b1,temp2}:{1'b0,in2};
endmodule
