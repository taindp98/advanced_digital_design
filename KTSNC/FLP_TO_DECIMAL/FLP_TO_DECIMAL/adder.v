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
/*
module adder49 (A,B,Cin,S,Cout);
	input	[48:0]A,B;
	input	Cin;

	output	[48:0]S;
	output Cout;

	wire [47:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(temp[36]));
	full_adder FA38(.x(A[37]),.y(B[37]),.Cin(temp[36]),.S(S[37]),.Cout(temp[37]));
	full_adder FA39(.x(A[38]),.y(B[38]),.Cin(temp[37]),.S(S[38]),.Cout(temp[38]));
	full_adder FA40(.x(A[39]),.y(B[39]),.Cin(temp[38]),.S(S[39]),.Cout(temp[39]));
	full_adder FA41(.x(A[40]),.y(B[40]),.Cin(temp[39]),.S(S[40]),.Cout(temp[40]));
	full_adder FA42(.x(A[41]),.y(B[41]),.Cin(temp[40]),.S(S[41]),.Cout(temp[41]));
	full_adder FA43(.x(A[42]),.y(B[42]),.Cin(temp[41]),.S(S[42]),.Cout(temp[42]));
	full_adder FA44(.x(A[43]),.y(B[43]),.Cin(temp[42]),.S(S[43]),.Cout(temp[43]));
	full_adder FA45(.x(A[44]),.y(B[44]),.Cin(temp[43]),.S(S[44]),.Cout(temp[44]));
	full_adder FA46(.x(A[45]),.y(B[45]),.Cin(temp[44]),.S(S[45]),.Cout(temp[45]));
	full_adder FA47(.x(A[46]),.y(B[46]),.Cin(temp[45]),.S(S[46]),.Cout(temp[46]));
	full_adder FA48(.x(A[47]),.y(B[47]),.Cin(temp[46]),.S(S[47]),.Cout(temp[47]));
	full_adder FA49(.x(A[48]),.y(B[48]),.Cin(temp[47]),.S(S[48]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder47 (A,B,Cin,S,Cout);
	input	[46:0]A,B;
	input	Cin;

	output	[46:0]S;
	output Cout;

	wire [45:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(temp[36]));
	full_adder FA38(.x(A[37]),.y(B[37]),.Cin(temp[36]),.S(S[37]),.Cout(temp[37]));
	full_adder FA39(.x(A[38]),.y(B[38]),.Cin(temp[37]),.S(S[38]),.Cout(temp[38]));
	full_adder FA40(.x(A[39]),.y(B[39]),.Cin(temp[38]),.S(S[39]),.Cout(temp[39]));
	full_adder FA41(.x(A[40]),.y(B[40]),.Cin(temp[39]),.S(S[40]),.Cout(temp[40]));
	full_adder FA42(.x(A[41]),.y(B[41]),.Cin(temp[40]),.S(S[41]),.Cout(temp[41]));
	full_adder FA43(.x(A[42]),.y(B[42]),.Cin(temp[41]),.S(S[42]),.Cout(temp[42]));
	full_adder FA44(.x(A[43]),.y(B[43]),.Cin(temp[42]),.S(S[43]),.Cout(temp[43]));
	full_adder FA45(.x(A[44]),.y(B[44]),.Cin(temp[43]),.S(S[44]),.Cout(temp[44]));
	full_adder FA46(.x(A[45]),.y(B[45]),.Cin(temp[44]),.S(S[45]),.Cout(temp[45]));
	full_adder FA47(.x(A[46]),.y(B[46]),.Cin(temp[45]),.S(S[46]),.Cout(Cout));

endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder45 (A,B,Cin,S,Cout);
	input	[44:0]A,B;
	input	Cin;

	output	[44:0]S;
	output Cout;

	wire [43:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(temp[36]));
	full_adder FA38(.x(A[37]),.y(B[37]),.Cin(temp[36]),.S(S[37]),.Cout(temp[37]));
	full_adder FA39(.x(A[38]),.y(B[38]),.Cin(temp[37]),.S(S[38]),.Cout(temp[38]));
	full_adder FA40(.x(A[39]),.y(B[39]),.Cin(temp[38]),.S(S[39]),.Cout(temp[39]));
	full_adder FA41(.x(A[40]),.y(B[40]),.Cin(temp[39]),.S(S[40]),.Cout(temp[40]));
	full_adder FA42(.x(A[41]),.y(B[41]),.Cin(temp[40]),.S(S[41]),.Cout(temp[41]));
	full_adder FA43(.x(A[42]),.y(B[42]),.Cin(temp[41]),.S(S[42]),.Cout(temp[42]));
	full_adder FA44(.x(A[43]),.y(B[43]),.Cin(temp[42]),.S(S[43]),.Cout(temp[43]));
	full_adder FA45(.x(A[44]),.y(B[44]),.Cin(temp[43]),.S(S[44]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder43 (A,B,Cin,S,Cout);
	input	[42:0]A,B;
	input	Cin;

	output	[42:0]S;
	output Cout;

	wire [41:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(temp[36]));
	full_adder FA38(.x(A[37]),.y(B[37]),.Cin(temp[36]),.S(S[37]),.Cout(temp[37]));
	full_adder FA39(.x(A[38]),.y(B[38]),.Cin(temp[37]),.S(S[38]),.Cout(temp[38]));
	full_adder FA40(.x(A[39]),.y(B[39]),.Cin(temp[38]),.S(S[39]),.Cout(temp[39]));
	full_adder FA41(.x(A[40]),.y(B[40]),.Cin(temp[39]),.S(S[40]),.Cout(temp[40]));
	full_adder FA42(.x(A[41]),.y(B[41]),.Cin(temp[40]),.S(S[41]),.Cout(temp[41]));
	full_adder FA43(.x(A[42]),.y(B[42]),.Cin(temp[41]),.S(S[42]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder41 (A,B,Cin,S,Cout);
	input	[40:0]A,B;
	input	Cin;

	output	[40:0]S;
	output Cout;

	wire [39:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(temp[36]));
	full_adder FA38(.x(A[37]),.y(B[37]),.Cin(temp[36]),.S(S[37]),.Cout(temp[37]));
	full_adder FA39(.x(A[38]),.y(B[38]),.Cin(temp[37]),.S(S[38]),.Cout(temp[38]));
	full_adder FA40(.x(A[39]),.y(B[39]),.Cin(temp[38]),.S(S[39]),.Cout(temp[39]));
	full_adder FA41(.x(A[40]),.y(B[40]),.Cin(temp[39]),.S(S[40]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder39 (A,B,Cin,S,Cout);
	input	[38:0]A,B;
	input	Cin;

	output	[38:0]S;
	output Cout;

	wire [37:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(temp[36]));
	full_adder FA38(.x(A[37]),.y(B[37]),.Cin(temp[36]),.S(S[37]),.Cout(temp[37]));
	full_adder FA39(.x(A[38]),.y(B[38]),.Cin(temp[37]),.S(S[38]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder37 (A,B,Cin,S,Cout);
	input	[36:0]A,B;
	input	Cin;

	output	[36:0]S;
	output Cout;

	wire [35:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(temp[34]));
	full_adder FA36(.x(A[35]),.y(B[35]),.Cin(temp[34]),.S(S[35]),.Cout(temp[35]));
	full_adder FA37(.x(A[36]),.y(B[36]),.Cin(temp[35]),.S(S[36]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder35 (A,B,Cin,S,Cout);
	input	[34:0]A,B;
	input	Cin;

	output	[34:0]S;
	output Cout;

	wire [33:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(temp[32]));
	full_adder FA34(.x(A[33]),.y(B[33]),.Cin(temp[32]),.S(S[33]),.Cout(temp[33]));
	full_adder FA35(.x(A[34]),.y(B[34]),.Cin(temp[33]),.S(S[34]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder33 (A,B,Cin,S,Cout);
	input	[32:0]A,B;
	input	Cin;

	output	[32:0]S;
	output Cout;

	wire [31:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(temp[30]));
	full_adder FA32(.x(A[31]),.y(B[31]),.Cin(temp[30]),.S(S[31]),.Cout(temp[31]));
	full_adder FA33(.x(A[32]),.y(B[32]),.Cin(temp[31]),.S(S[32]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder31 (A,B,Cin,S,Cout);
	input	[30:0]A,B;
	input	Cin;

	output	[30:0]S;
	output Cout;

	wire [29:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(temp[28]));
	full_adder FA30(.x(A[29]),.y(B[29]),.Cin(temp[28]),.S(S[29]),.Cout(temp[29]));
	full_adder FA31(.x(A[30]),.y(B[30]),.Cin(temp[29]),.S(S[30]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder29 (A,B,Cin,S,Cout);
	input	[28:0]A,B;
	input	Cin;

	output	[28:0]S;
	output Cout;

	wire [27:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(temp[26]));
	full_adder FA28(.x(A[27]),.y(B[27]),.Cin(temp[26]),.S(S[27]),.Cout(temp[27]));
	full_adder FA29(.x(A[28]),.y(B[28]),.Cin(temp[27]),.S(S[28]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
module adder27 (A,B,Cin,S,Cout);
	input	[26:0]A,B;
	input	Cin;

	output	[26:0]S;
	output Cout;

	wire [25:0]temp;

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
	full_adder FA26(.x(A[25]),.y(B[25]),.Cin(temp[24]),.S(S[25]),.Cout(temp[25]));
	full_adder FA27(.x(A[26]),.y(B[26]),.Cin(temp[25]),.S(S[26]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////
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
*/
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
/*
////////////////////////////////////////////////////////////////////////////////////////
module adder23 (A,B,Cin,S,Cout);
	input	[22:0]A,B;
	input	Cin;

	output	[22:0]S;
	output Cout;

	wire [21:0]temp;

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
	full_adder FA23(.x(A[22]),.y(B[22]),.Cin(temp[21]),.S(S[22]),.Cout(Cout));
endmodule
////////////////////////////////////////////////////////////////////////////////////////
module adder21 (A,B,Cin,S,Cout);
	input	[20:0]A,B;
	input	Cin;

	output	[20:0]S;
	output Cout;

	wire [19:0]temp;

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
	full_adder FA21(.x(A[20]),.y(B[20]),.Cin(temp[19]),.S(S[20]),.Cout(Cout));
endmodule
/////////////////////////////////////////////////////////////////////////////////////////
module adder19 (A,B,Cin,S,Cout);
	input	[18:0]A,B;
	input	Cin;

	output	[18:0]S;
	output Cout;

	wire [17:0]temp;

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
	full_adder FA19(.x(A[18]),.y(B[18]),.Cin(temp[17]),.S(S[18]),.Cout(Cout));
endmodule
*/
////////////////////////////////////////////////////////////////////////////////////////
module adder18 (A,B,Cin,S,Cout);
	input	[17:0]A,B;
	input	Cin;

	output	[17:0]S;
	output Cout;

	wire [16:0]temp;

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
	full_adder FA18(.x(A[17]),.y(B[17]),.Cin(temp[16]),.S(S[17]),.Cout(Cout));
endmodule
/*
///////////////////////////////////////////////////////////////////////////////////////
module adder17 (A,B,Cin,S,Cout);
	input	[16:0]A,B;
	input	Cin;

	output	[16:0]S;
	output Cout;

	wire [15:0]temp;

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
	full_adder FA17(.x(A[16]),.y(B[16]),.Cin(temp[15]),.S(S[16]),.Cout(Cout));
endmodule
////////////////////////////////////////////////////////////////////////////////////////
module adder15 (A,B,Cin,S,Cout);
	input	[14:0]A,B;
	input	Cin;

	output	[14:0]S;
	output Cout;

	wire [13:0]temp;

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
	full_adder FA15(.x(A[14]),.y(B[14]),.Cin(temp[13]),.S(S[14]),.Cout(Cout));
endmodule
///////////////////////////////////////////////////////////////////////////////////////
module adder13 (A,B,Cin,S,Cout);
	input	[12:0]A,B;
	input	Cin;

	output	[12:0]S;
	output Cout;

	wire [11:0]temp;

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
	full_adder FA13(.x(A[12]),.y(B[12]),.Cin(temp[11]),.S(S[12]),.Cout(Cout));
endmodule
*/
///////////////////////////////////////////////////////////////////////////////////////
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
/*
//////////////////////////////////////////////////////////////////////////////////
module adder11 (A,B,Cin,S,Cout);
	input	[10:0]A,B;
	input	Cin;

	output	[10:0]S;
	output Cout;

	wire [9:0]temp;

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
	full_adder FA11(.x(A[10]),.y(B[10]),.Cin(temp[9]),.S(S[10]),.Cout(Cout));
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
*/
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
//////////////////////////////////////////////////////////////////////////
/*
module adder7 (A,B,Cin,S,Cout);
	input	[6:0]A,B;
	input	Cin;

	output	[6:0]S;
	output Cout;

	wire [5:0]temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(temp[4]));
	full_adder FA6(.x(A[5]),.y(B[5]),.Cin(temp[4]),.S(S[5]),.Cout(temp[5]));
	full_adder FA7(.x(A[6]),.y(B[6]),.Cin(temp[5]),.S(S[6]),.Cout(Cout));
endmodule
*/
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

/////////////////////////////////////////////////////////////////
module  adder5 (A,B,Cin,S,Cout);

	input [4:0] A;
	input [4:0] B;
	input Cin;

	output[4:0] S;
	output Cout;
	wire [3:0] temp;

	full_adder FA1(.x(A[0]),.y(B[0]),.Cin(0),.S(S[0]),.Cout(temp[0]));
	full_adder FA2(.x(A[1]),.y(B[1]),.Cin(temp[0]),.S(S[1]),.Cout(temp[1]));
	full_adder FA3(.x(A[2]),.y(B[2]),.Cin(temp[1]),.S(S[2]),.Cout(temp[2]));
	full_adder FA4(.x(A[3]),.y(B[3]),.Cin(temp[2]),.S(S[3]),.Cout(temp[3]));
	full_adder FA5(.x(A[4]),.y(B[4]),.Cin(temp[3]),.S(S[4]),.Cout(Cout));
endmodule
/*
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
*/
////////////////////////////////////////////////////////////////
module full_adder(x,y,Cin,S,Cout);
	input x,y,Cin;
	output S,Cout;
	assign S=(x^y)^Cin;
	assign Cout=(x&&y)|(x&&Cin)|(y&&Cin);
endmodule

	