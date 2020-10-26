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
module two_compliment49(data_in,data_out);
	input	[48:0]data_in;
	output	[48:0]data_out;

	wire	[48:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder49  add49(.A(temp),.B(49'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment47(data_in,data_out);
	input	[46:0]data_in;
	output	[46:0]data_out;

	wire	[46:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder47  add47(.A(temp),.B(47'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment45(data_in,data_out);
	input	[44:0]data_in;
	output	[44:0]data_out;

	wire	[44:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder45  add45(.A(temp),.B(45'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment43(data_in,data_out);
	input	[42:0]data_in;
	output	[42:0]data_out;

	wire	[42:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder43  add43(.A(temp),.B(43'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment41(data_in,data_out);
	input	[40:0]data_in;
	output	[40:0]data_out;

	wire	[40:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder41  add41(.A(temp),.B(41'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment39(data_in,data_out);
	input	[38:0]data_in;
	output	[38:0]data_out;

	wire	[38:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder39  add39(.A(temp),.B(39'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment37(data_in,data_out);
	input	[36:0]data_in;
	output	[36:0]data_out;

	wire	[36:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder37  add37(.A(temp),.B(37'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment35(data_in,data_out);
	input	[34:0]data_in;
	output	[34:0]data_out;

	wire	[34:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder35  add35(.A(temp),.B(35'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment33(data_in,data_out);
	input	[32:0]data_in;
	output	[32:0]data_out;

	wire	[32:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder33  add33(.A(temp),.B(33'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment31(data_in,data_out);
	input	[30:0]data_in;
	output	[30:0]data_out;

	wire	[30:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder31  add31(.A(temp),.B(31'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment29(data_in,data_out);
	input	[28:0]data_in;
	output	[28:0]data_out;

	wire	[28:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder29  add29(.A(temp),.B(29'b1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment27(data_in,data_out);
	input	[26:0]data_in;
	output	[26:0]data_out;

	wire	[26:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder27  add27(.A(temp),.B(27'b1),.S(data_out),.Cout());
endmodule
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
module two_compliment24(data_in,data_out);
	input	[23:0]data_in;
	output	[23:0]data_out;

	wire	[23:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder24  add24(.A(temp),.B(24'd1),.S(data_out),.Cout());
endmodule
////////////////////////////////////////////////////////////////////////////////
module two_compliment23(data_in,data_out);
	input	[22:0]data_in;
	output	[22:0]data_out;

	wire	[22:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder23  add23(.A(temp),.B(23'b1),.S(data_out),.Cout());
endmodule

module two_compliment21(data_in,data_out);
	input	[20:0]data_in;
	output	[20:0]data_out;

	wire	[20:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder21  add21(.A(temp),.B(21'b1),.S(data_out),.Cout());
endmodule
///////////////////////////////////////////////////////////////////////////////
module two_compliment19(data_in,data_out);
	input	[18:0]data_in;
	output	[18:0]data_out;

	wire	[18:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder19  add19(.A(temp),.B(19'b1),.S(data_out),.Cout());
endmodule
///////////////////////////////////////////////////////////////////////////////
module two_compliment17(data_in,data_out);
	input	[16:0]data_in;
	output	[16:0]data_out;

	wire	[16:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder17  add17(.A(temp),.B(17'b1),.S(data_out),.Cout());
endmodule
///////////////////////////////////////////////////////////////////////////////
module two_compliment15(data_in,data_out);
	input	[14:0]data_in;
	output	[14:0]data_out;

	wire	[14:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder15  add15(.A(temp),.B(15'b1),.S(data_out),.Cout());
endmodule
///////////////////////////////////////////////////////////////////////////////
module two_compliment13(data_in,data_out);
	input	[12:0]data_in;
	output	[12:0]data_out;

	wire	[12:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder13  add13(.A(temp),.B(13'b1),.S(data_out),.Cout());
endmodule
///////////////////////////////////////////////////////////////////////////////
module two_compliment11(data_in,data_out);
	input	[10:0]data_in;
	output	[10:0]data_out;

	wire	[10:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder11  add11(.A(temp),.B(11'b1),.S(data_out),.Cout());
endmodule
///////////////////////////////////////////////////////////////////////////////
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
//////////////////////////////////////////////////////////////////////////////
module two_compliment7(data_in,data_out);
	input	[6:0]data_in;
	output	[6:0]data_out;

	wire	[6:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder7 add7(.A(temp),.B(7'b1),.S(data_out),.Cout());
endmodule
//////////////////////////////////////////////////////////////////////////////
module two_compliment5(data_in,data_out);
	input	[4:0]data_in;
	output	[4:0]data_out;

	wire	[4:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder5 add5(.A(temp),.B(5'b1),.S(data_out),.Cout());
endmodule
//////////////////////////////////////////////////////////////////////////////
module two_compliment3(data_in,data_out);
	input	[2:0]data_in;
	output	[2:0]data_out;

	wire	[2:0]temp;

//Not 
	assign temp = ~data_in;
//add 1
	adder3 add3(.A(temp),.B(3'b1),.S(data_out),.Cout());
endmodule
