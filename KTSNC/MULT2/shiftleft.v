`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: shiftleft.v
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

module shiftleft(data_in,sel,data_out);
	input   [24:0]data_in;
	input   [4:0]sel;
	output	[24:0]data_out;

	wire	[24:0]temp1,temp2,temp3,temp4;

	shiftleftby16	stage4(data_in,sel[4],temp4);
	shiftleftby8	stage3(temp4,sel[3],temp3);
	shiftleftby4	stage2(temp3,sel[2],temp2);
	shiftleftby2	stage1(temp2,sel[1],temp1);
	shiftleftby1	stage0(temp1,sel[0],data_out);
endmodule
///////////////////////////////////////////////////////////////////////////////////
module shiftleftby1(data_in,sel,data_out);	
	input   [24:0]data_in;
	input   sel;
	output	[24:0]data_out;

	assign data_out = sel?{data_in[23:0],1'b0}:data_in;
endmodule
/////////////////////////////////////////////////////////////////////////////////
module shiftleftby2(data_in,sel,data_out);
	input   [24:0]data_in;
	input   sel;
	output	[24:0]data_out;

	assign data_out = sel?{data_in[22:0],2'b00}:data_in;
endmodule
///////////////////////////////////////////////////////////////////////////////////

module shiftleftby4(data_in,sel,data_out);
	input   [24:0]data_in;
	input   sel;
	output	[24:0]data_out;

	assign data_out = sel?{data_in[20:0],4'h0}:data_in;
endmodule
/////////////////////////////////////////////////////////////////////////////////////

module shiftleftby8(data_in,sel,data_out);
	input   [24:0]data_in;
	input   sel;
	output	[24:0]data_out;

	assign data_out = sel?{data_in[16:0],8'h00}:data_in;
endmodule
////////////////////////////////////////////////////////////////////////////////////

module shiftleftby16(data_in,sel,data_out);
	input   [24:0]data_in;
	input   sel;
	output	[24:0]data_out;

	assign data_out = sel?{data_in[8:0],16'h0000}:data_in;
endmodule
