`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: postadder26.v
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


module postadder26(data_in,sign,frac);
	input	[25:0]data_in;
	output	sign;
	output	[24:0]frac;

	wire	[24:0]temp,cpltemp;

	assign	sign=data_in[25];	
	assign 	temp=data_in[24:0];
	two_comp25	cplfrac(
		.data_in(temp),
		.data_out(cpltemp)
		);
	assign	frac=sign?cpltemp:temp;
endmodule
