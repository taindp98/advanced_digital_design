////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     : 
// Description  : 
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 11//12/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////

module adder26 (A,B,Cin,S,Cout);
	input	[25:0]A,B;
	input	Cin;

	output	[25:0]S;
	output Cout;

	wire [24:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(temp[7]));
	full_adder FA9(.x(A[8]),.y(B[8]),.Cin(temp[7]),.S(S[8]),.Cout(temp[8]));
	full_adder FA10(.x(A[9]),.y(B[9]),.Cin(temp[8]),.S(S[9]),.Cout(temp[9]));
	full_adder FA11(.x(A[10]),.y(B[10]),.Cin(temp[9]),.S(S[10]),.Cout(temp[10]));
	full_adder FA12(.x(A[11]),.y(B[11]),.Cin(temp[10]),.S(S[11]),.Cout(temp[11]));
	full_adder FA13(.x(A[12]),.y(B[12]),.Cin(temp[11]),.S(S[12]),.Cout(temp[12]));
	full_adder FA14(.x(A[13]),.y(B[13]),.Cin(temp[12]),.S(S[13]),.Cout(temp[13]));
	full_adder FA15(.x(A[14]),.y(B[14]),.Cin(temp[13]),.S(S[14]),.Cout(temp[14]));
	full_adder FA16(.x(A[15]),.y(B[15]),.Cin(temp[14]),.S(S[15]),.Cout(temp[15]));
	full_adder FA17(.x(A[16]),.y(B[16]),.Cin(temp[15]),.S(S[16]),.Cout(temp[16]));
	full_adder FA18(.x(A[17]),.y(B[17]),.Cin(temp[16]),.S(S[17]),.Cout(temp[17]));
	full_adder FA19(.x(A[18]),.y(B[18]),.Cin(temp[17]),.S(S[18]),.Cout(temp[18]));
	full_adder FA20(.x(A[19]),.y(B[19]),.Cin(temp[18]),.S(S[19]),.Cout(temp[19]));
	full_adder FA21(.x(A[20]),.y(B[20]),.Cin(temp[19]),.S(S[20]),.Cout(temp[20]));
	full_adder FA22(.x(A[21]),.y(B[21]),.Cin(temp[20]),.S(S[21]),.Cout(temp[21]));
	full_adder FA23(.x(A[22]),.y(B[22]),.Cin(temp[21]),.S(S[22]),.Cout(temp[22]));
	full_adder FA24(.x(A[23]),.y(B[23]),.Cin(temp[22]),.S(S[23]),.Cout(temp[23]));
	full_adder FA25(.x(A[24]),.y(B[24]),.Cin(temp[23]),.S(S[24]),.Cout(temp[24]));
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(Cout));

endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder25 (A,B,Cin,S,Cout);
	input	[24:0]A,B;
	input	Cin;

	output	[24:0]S;
	output Cout;

	wire [23:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(temp[7]));
	full_adder FA9(.x(A[8]),.y(B[8]),.Cin(temp[7]),.S(S[8]),.Cout(temp[8]));
	full_adder FA10(.x(A[9]),.y(B[9]),.Cin(temp[8]),.S(S[9]),.Cout(temp[9]));
	full_adder FA11(.x(A[10]),.y(B[10]),.Cin(temp[9]),.S(S[10]),.Cout(temp[10]));
	full_adder FA12(.x(A[11]),.y(B[11]),.Cin(temp[10]),.S(S[11]),.Cout(temp[11]));
	full_adder FA13(.x(A[12]),.y(B[12]),.Cin(temp[11]),.S(S[12]),.Cout(temp[12]));
	full_adder FA14(.x(A[13]),.y(B[13]),.Cin(temp[12]),.S(S[13]),.Cout(temp[13]));
	full_adder FA15(.x(A[14]),.y(B[14]),.Cin(temp[13]),.S(S[14]),.Cout(temp[14]));
	full_adder FA16(.x(A[15]),.y(B[15]),.Cin(temp[14]),.S(S[15]),.Cout(temp[15]));
	full_adder FA17(.x(A[16]),.y(B[16]),.Cin(temp[15]),.S(S[16]),.Cout(temp[16]));
	full_adder FA18(.x(A[17]),.y(B[17]),.Cin(temp[16]),.S(S[17]),.Cout(temp[17]));
	full_adder FA19(.x(A[18]),.y(B[18]),.Cin(temp[17]),.S(S[18]),.Cout(temp[18]));
	full_adder FA20(.x(A[19]),.y(B[19]),.Cin(temp[18]),.S(S[19]),.Cout(temp[19]));
	full_adder FA21(.x(A[20]),.y(B[20]),.Cin(temp[19]),.S(S[20]),.Cout(temp[20]));
	full_adder FA22(.x(A[21]),.y(B[21]),.Cin(temp[20]),.S(S[21]),.Cout(temp[21]));
	full_adder FA23(.x(A[22]),.y(B[22]),.Cin(temp[21]),.S(S[22]),.Cout(temp[22]));
	full_adder FA24(.x(A[23]),.y(B[23]),.Cin(temp[22]),.S(S[23]),.Cout(temp[23]));
	full_adder FA25(.x(A[24]),.y(B[24]),.Cin(temp[23]),.S(S[24]),.Cout(Cout));

endmodule
////////////////////////////////////////////////////////////////////////////////////////////
module adder24 (A,B,Cin,S,Cout);
	input	[23:0]A,B;
	input	Cin;

	output	[23:0]S;
	output Cout;

	wire [22:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(temp[7]));
	full_adder FA9(.x(A[8]),.y(B[8]),.Cin(temp[7]),.S(S[8]),.Cout(temp[8]));
	full_adder FA10(.x(A[9]),.y(B[9]),.Cin(temp[8]),.S(S[9]),.Cout(temp[9]));
	full_adder FA11(.x(A[10]),.y(B[10]),.Cin(temp[9]),.S(S[10]),.Cout(temp[10]));
	full_adder FA12(.x(A[11]),.y(B[11]),.Cin(temp[10]),.S(S[11]),.Cout(temp[11]));
	full_adder FA13(.x(A[12]),.y(B[12]),.Cin(temp[11]),.S(S[12]),.Cout(temp[12]));
	full_adder FA14(.x(A[13]),.y(B[13]),.Cin(temp[12]),.S(S[13]),.Cout(temp[13]));
	full_adder FA15(.x(A[14]),.y(B[14]),.Cin(temp[13]),.S(S[14]),.Cout(temp[14]));
	full_adder FA16(.x(A[15]),.y(B[15]),.Cin(temp[14]),.S(S[15]),.Cout(temp[15]));
	full_adder FA17(.x(A[16]),.y(B[16]),.Cin(temp[15]),.S(S[16]),.Cout(temp[16]));
	full_adder FA18(.x(A[17]),.y(B[17]),.Cin(temp[16]),.S(S[17]),.Cout(temp[17]));
	full_adder FA19(.x(A[18]),.y(B[18]),.Cin(temp[17]),.S(S[18]),.Cout(temp[18]));
	full_adder FA20(.x(A[19]),.y(B[19]),.Cin(temp[18]),.S(S[19]),.Cout(temp[19]));
	full_adder FA21(.x(A[20]),.y(B[20]),.Cin(temp[19]),.S(S[20]),.Cout(temp[20]));
	full_adder FA22(.x(A[21]),.y(B[21]),.Cin(temp[20]),.S(S[21]),.Cout(temp[21]));
	full_adder FA23(.x(A[22]),.y(B[22]),.Cin(temp[21]),.S(S[22]),.Cout(temp[22]));
	full_adder FA24(.x(A[23]),.y(B[23]),.Cin(temp[22]),.S(S[23]),.Cout(Cout));

endmodule
////////////////////////////////////////////////////////////////////////////////////////
module adder12 (A,B,Cin,S,Cout);
	input	[11:0]A,B;
	input	Cin;

	output	[11:0]S;
	output Cout;

	wire [10:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(temp[7]));
	full_adder FA9(.x(A[8]),.y(B[8]),.Cin(temp[7]),.S(S[8]),.Cout(temp[8]));
	full_adder FA10(.x(A[9]),.y(B[9]),.Cin(temp[8]),.S(S[9]),.Cout(temp[9]));
	full_adder FA11(.x(A[10]),.y(B[10]),.Cin(temp[9]),.S(S[10]),.Cout(temp[10]));
	full_adder FA12(.x(A[11]),.y(B[11]),.Cin(temp[10]),.S(S[11]),.Cout(Cout));

endmodule
///////////////////////////////////////////////////////////////////////////////////
module adder10 (A,B,Cin,S,Cout);
	input	[9:0]A,B;
	input	Cin;

	output	[9:0]S;
	output Cout;

	wire [8:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(temp[7]));
	full_adder FA9(.x(A[8]),.y(B[8]),.Cin(temp[7]),.S(S[8]),.Cout(temp[8]));
	full_adder FA10(.x(A[9]),.y(B[9]),.Cin(temp[8]),.S(S[9]),.Cout(Cout));

endmodule
////////////////////////////////////////////////////////////////////////////
module adder9 (A,B,Cin,S,Cout);
	input	[8:0]A,B;
	input	Cin;

	output	[8:0]S;
	output Cout;

	wire [7:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(temp[7]));
	full_adder FA9(.x(A[8]),.y(B[8]),.Cin(temp[7]),.S(S[8]),.Cout(Cout));

endmodule
//////////////////////////////////////////////////////////////////////////
module adder8 (A,B,Cin,S,Cout);
	input	[7:0]A,B;
	input	Cin;

	output	[7:0]S;
	output Cout;

	wire [6:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(temp[6]));
	full_adder FA8(.x(A[7]),.y(B[7]),.Cin(temp[6]),.S(S[7]),.Cout(Cout));

endmodule
///////////////////////////////////////////////////////////////////////////
module adder6 (A,B,Cin,S,Cout);
	input	[5:0]A,B;
	input	Cin;

	output	[5:0]S;
	output Cout;

	wire [4:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(Cout));
endmodule

/////////////////////////////////////////////////////////////
module  adder3 (A,B,Cin,S,Cout);

	input [2:0] A;
	input [2:0] B;
	input Cin;

	output[2:0] S;
	output Cout;
	wire [1:0] temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(Cout));

endmodule


/////////////////////////////////////////////////////////////////
module  adder4 (A,B,Cin,S,Cout);

	input [3:0] A;
	input [3:0] B;
	input Cin;

	output[3:0] S;
	output Cout;
	wire [2:0] temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(Cout));

endmodule
////////////////////////////////////////////////////////////////
module full_adder(x,y,Cin,S,Cout);
	input x,y,Cin;
	output S,Cout;
	assign S=(x^y)^Cin;
	assign Cout=(x&&y)|(x&&Cin)|(y&&Cin);
endmodule

	