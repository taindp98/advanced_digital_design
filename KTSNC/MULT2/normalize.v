`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: normalize.v
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

module normalize(
	exp_in,
	frac_in,
	overflow,
	underflow,
	exp_out,
	frac_out
	);
// Port in declarations
	input	[7:0]exp_in;
	input	[24:0]frac_in;
// Port out declarations
	output  overflow,underflow;
	output	[7:0]exp_out;
	output	[23:0]frac_out;
//Local signal declarations
	wire	checkzero;
	wire	[4:0]shift_left_by_n;
	wire	[24:0]temp_frac;
	wire	[9:0]cpl_n;
	wire	[9:0]ext_exp_out,temp_cpl_n;

//Normalize fraction 
	find_1_first	findbit1(.I(frac_in),.position(shift_left_by_n),.flag(checkzero));
	shiftleft	shift_left_frac(.data_in(frac_in),.sel(shift_left_by_n),.data_out(temp_frac));
	assign	frac_out=temp_frac[24:1]; //vi bo so 1 dau tien

//Normalize exponent
	two_comp10		cpl_shiftleft(.data_in({5'd0,shift_left_by_n}),.data_out(cpl_n));
	adder10		normalize_exp1(.A(10'd1),.B(cpl_n),.S(temp_cpl_n),.Cout());
	adder10		normalize_exp2(.A({2'b00,exp_in}),.B(temp_cpl_n),.S(ext_exp_out),.Cout());


	assign  underflow=ext_exp_out[9]&ext_exp_out[8]&checkzero;
	assign  overflow=~ext_exp_out[9]&ext_exp_out[8]&~checkzero;

	assign	exp_out=(ext_exp_out[8]|checkzero)?8'd0:ext_exp_out[7:0];
endmodule