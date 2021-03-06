`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: two_comp.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: 2's complex
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module two_comp25(data_in,data_out);
	input	[24:0]data_in;
	output	[24:0]data_out;

	wire	[24:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder25  add25(.A(temp),.B(25'b1),.S(data_out),.Cout());
endmodule

////////////////////////////////////////////////////////////////////////////////
module two_comp10(data_in,data_out);
	input	[9:0]data_in;
	output	[9:0]data_out;

	wire	[9:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder10  add10(.A(temp),.B(10'b1),.S(data_out),.Cout());
endmodule

///////////////////////////////////////////////////////////////////////////////
module two_comp9(data_in,data_out);
	input	[8:0]data_in;
	output	[8:0]data_out;

	wire	[8:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder9 add9(.A(temp),.B(9'b1),.S(data_out),.Cout());
endmodule

/////////////////////////////////////////////////////////////////////////////////
module two_comp8(data_in,data_out);
	input	[7:0]data_in;
	output	[7:0]data_out;

	wire	[7:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder8 add8(.A(temp),.B(8'b1),.S(data_out),.Cout());
endmodule
//////////////////////////////////////////////////////////////////////////////
/*module two_comp5(data_in,data_out);
	input	[4:0]data_in;
	output	[4:0]data_out;

	wire	[4:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder5 add5(.A(temp),.B(8'b1),.S(data_out),.Cout());

endmodule
*/