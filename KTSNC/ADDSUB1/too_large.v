`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: too_large.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: fix too small & too large
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module too_large(
	A,
	B,
	signB,
	signCompExp,
	result,
	overflow,
	underflow
	);

	input [31:0]A,B;
	input signCompExp;
	input signB;
	output [31:0]result;
	output overflow,underflow;
	wire [31:0] tempSign;
	
	assign tempSign=signCompExp?B:A;

	assign result = signB ? {signB,B[30:0]} : tempSign;
	assign overflow=1'b1;
	assign underflow=1'b0;
endmodule




