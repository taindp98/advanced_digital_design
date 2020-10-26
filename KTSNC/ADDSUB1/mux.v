`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: mux.v
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

module mux24b(A,B,sel,out);
	input  [23:0]A,B;
	input  sel;
	output [23:0]out;
	
	assign out=sel?A:B;
endmodule
//////////////////////////////////////////////////////////////////////////////////

module mux8b(A,B,sel,out);
	input  [7:0]A,B;
	input  sel;
	output [7:0]out;
	
	assign out=sel?A:B;
endmodule
////////////////////////////////////////////////////////////////////////////////

module mux1b(A,B,sel,out);
	input  A,B;
	input  sel;
	output out;
	
	assign out=sel?A:B;
endmodule