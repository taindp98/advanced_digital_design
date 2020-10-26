////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     : two_compliment
// Description  : 2'Compliment of number 25bit,10bit,9bit,8bit
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 18/10/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////
module two_compliment25(data_in,data_out);
	input	[24:0]data_in;
	output	[24:0]data_out;

	wire	[24:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder25  add25(.A(temp),.B(25'b1),.S(data_out),.Cout());
endmodule

////////////////////////////////////////////////////////////////////////////////
module two_compliment10(data_in,data_out);
	input	[9:0]data_in;
	output	[9:0]data_out;

	wire	[9:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder10  add10(.A(temp),.B(10'b1),.S(data_out),.Cout());
endmodule

///////////////////////////////////////////////////////////////////////////////
module two_compliment9(data_in,data_out);
	input	[8:0]data_in;
	output	[8:0]data_out;

	wire	[8:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder9 add9(.A(temp),.B(9'b1),.S(data_out),.Cout());
endmodule

/////////////////////////////////////////////////////////////////////////////////
module two_compliment8(data_in,data_out);
	input	[7:0]data_in;
	output	[7:0]data_out;

	wire	[7:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder8 add8(.A(temp),.B(8'b1),.S(data_out),.Cout());
endmodule
