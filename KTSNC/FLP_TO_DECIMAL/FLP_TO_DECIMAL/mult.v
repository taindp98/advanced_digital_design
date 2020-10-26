////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     :mult
// Description  :
//                
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 2/11/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////ok
module mult24(A,B,S);
	input	[23:0]A,B;
	output	[47:0]S;

	wire	[23:0]stage11,stage12,stage13,stage14;
	wire	[23:0]stage2;
	wire	stage2_c;
	wire	[23:0]stage31,stage32;

	//Stage1
	mult12	block1(A[11:0],B[11:0],stage11);
	mult12	block2(A[11:0],B[23:12],stage12);
	mult12	block3(A[23:12],B[11:0],stage13);
	mult12	block4(A[23:12],B[23:12],stage14);

	//Stage2
	adder24  block5(.A(stage12),.B(stage13),.S(stage2),.Cout(stage2_c));

	//Stage3
	adder24	block6(.A({{12{1'b0}},stage11[23:12]}),.B(stage2),.S(stage31),.Cout());
	adder24	block7(.A(stage14),.B({{11{1'b0}},stage2_c,stage31[23:12]}),.S(stage32),.Cout());

	assign	S = {stage32,stage31[11:0],stage11[11:0]};

endmodule
/*
///////////////////////////////////////////////////////////////////////////////////////////ok
module mult23(A,B,S);
	input[22:0]A,B;
	output[45:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={1'd0,A};
	assign tempB={1'd0,B};
	mult24 mult2411(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[45:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult22(A,B,S);
	input[21:0]A,B;
	output[43:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={2'd0,A};
	assign tempB={2'd0,B};
	mult24 mult2410(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[43:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult21(A,B,S);
	input[20:0]A,B;
	output[41:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={3'd0,A};
	assign tempB={3'd0,B};
	mult24 mult249(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[41:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult20(A,B,S);
	input[19:0]A,B;
	output[39:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={4'd0,A};
	assign tempB={4'd0,B};
	mult24 mult248(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[39:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult19(A,B,S);
	input[18:0]A,B;
	output[37:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={5'd0,A};
	assign tempB={5'd0,B};
	mult24 mult247(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[37:0];
endmodule
*/
///////////////////////////////////////////////////////////////////////////////
module mult18(A,B,S);
	input[17:0]A,B;
	output[35:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={6'd0,A};
	assign tempB={6'd0,B};
	mult24 mult246(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[35:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
/*
module mult17(A,B,S);
	input[16:0]A,B;
	output[33:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={7'd0,A};
	assign tempB={7'd0,B};
	mult24 mult245(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[33:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult16(A,B,S);
	input[15:0]A,B;
	output[31:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={8'd0,A};
	assign tempB={8'd0,B};
	mult24 mult244(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[31:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult15(A,B,S);
	input[14:0]A,B;
	output[29:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={9'd0,A};
	assign tempB={9'd0,B};
	mult24 mult243(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[29:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult14(A,B,S);
	input[13:0]A,B;
	output[27:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={10'd0,A};
	assign tempB={10'd0,B};
	mult24 mult242(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[27:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult13(A,B,S);
	input[12:0]A,B;
	output[25:0]S;

	wire[23:0]tempA,tempB;
	wire[47:0]tempS;

	assign tempA={11'd0,A};
	assign tempB={11'd0,B};
	mult24 mult241(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[25:0];
endmodule
*/
///////////////////////////////////////////////////////////////////////////////
module mult12(A,B,S);	
	input	[11:0]A,B;
	output	[23:0]S;

	wire	[11:0]stage11,stage12,stage13,stage14;
	wire	[11:0]stage2;
	wire	stage2_c;
	wire	[11:0]stage31,stage32;

	//Stage1
	mult6	block1(A[5:0],B[5:0],stage11);
	mult6	block2(A[5:0],B[11:6],stage12);
	mult6	block3(A[11:6],B[5:0],stage13);
	mult6	block4(A[11:6],B[11:6],stage14);

	//Stage2
	adder12  block5(.A(stage12),.B(stage13),.S(stage2),.Cout(stage2_c));

	//Stage3
	adder12	block6(.A({{6{1'b0}},stage11[11:6]}),.B(stage2),.S(stage31),.Cout());
	adder12	block7(.A(stage14),.B({{5{1'b0}},stage2_c,stage31[11:6]}),.S(stage32),.Cout());

	assign	S = {stage32,stage31[5:0],stage11[5:0]};
endmodule
/*
///////////////////////////////////////////////////////////////////////////////////ok
module mult11(A,B,S);
	input[10:0]A,B;
	output[21:0]S;

	wire[11:0]tempA,tempB;
	wire[23:0]tempS;

	assign tempA={1'd0,A};
	assign tempB={1'd0,B};
	mult12 mult125(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[21:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult10(A,B,S);
	input[9:0]A,B;
	output[19:0]S;

	wire[11:0]tempA,tempB;
	wire[23:0]tempS;

	assign tempA={2'd0,A};
	assign tempB={2'd0,B};
	mult12 mult124(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[19:0];
endmodule
///////////////////////////////////////////////////////////////////////////////

module mult9(A,B,S);
	input[8:0]A,B;
	output[17:0]S;

	wire[11:0]tempA,tempB;
	wire[23:0]tempS;

	assign tempA={3'd0,A};
	assign tempB={3'd0,B};
	mult12 mult123(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[17:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult8(A,B,S);
	input[7:0]A,B;
	output[15:0]S;

	wire[11:0]tempA,tempB;
	wire[23:0]tempS;

	assign tempA={4'd0,A};
	assign tempB={4'd0,B};
	mult12 mult122(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[15:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
module mult7(A,B,S);
	input[6:0]A,B;
	output[13:0]S;

	wire[11:0]tempA,tempB;
	wire[23:0]tempS;

	assign tempA={5'd0,A};
	assign tempB={5'd0,B};
	mult12 mult121(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[13:0];
endmodule
///////////////////////////////////////////////////////////////////////////////
*/
module mult6(A,B,S);
	input	[5:0]A,B;
	output	[11:0]S;

	wire	[5:0]stage11,stage12,stage13,stage14;
	wire	[5:0]stage2;
	wire	stage2_c;
	wire	[5:0]stage31,stage32;

//Stage1
	mult3	block1(A[2:0],B[2:0],stage11);
	mult3	block2(A[2:0],B[5:3],stage12);
	mult3	block3(A[5:3],B[2:0],stage13);
	mult3	block4(A[5:3],B[5:3],stage14);

//Stage2
	adder6  block5(.A(stage12),.B(stage13),.S(stage2),.Cout(stage2_c));

//Stage3
	adder6	block6(.A({3'b000,stage11[5:3]}),.B(stage2),.S(stage31),.Cout());
	adder6	block7(.A(stage14),.B({2'b00,stage2_c,stage31[5:3]}),.S(stage32),.Cout());

	assign	S = {stage32,stage31[2:0],stage11[2:0]};
endmodule

////////////////////////////////////////////////////////////////////////////////ok
/*
module mult5(A,B,S);
	input[4:0]A,B;
	output[9:0]S;

	wire[5:0]tempA,tempB;
	wire[11:0]tempS;

	assign tempA={1'b0,A};
	assign tempB={1'b0,B};
	mult6 mult61(.A(tempA),.B(tempB),.S(tempS));
	assign S=tempS[9:0];
endmodule

///////////////////////////////////////////////////////////////////////////////
module mult4(A,B,S);
	input	[3:0]A,B;
	output	[7:0]S;

	wire	[3:0]stage11,stage12,stage13,stage14;
	wire	[3:0]stage2;
	wire	stage2_c;
	wire	[3:0]stage31,stage32;

	mult2	block1(A[1:0],B[1:0],stage11);
	mult2	block2(A[1:0],B[3:2],stage12);
	mult2	block3(A[3:2],B[1:0],stage13);
	mult2	block4(A[3:2],B[3:2],stage14);

//Stage2
	adder4  block5(.A(stage12),.B(stage13),.S(stage2),.Cout(stage2_c));

//Stage3
	adder4	block6(.A({2'b00,stage11[3:2]}),.B(stage2),.S(stage31),.Cout());
	adder4	block7(.A(stage14),.B({1'b0,stage2_c,stage31[3:2]}),.S(stage32),.Cout());

	assign	S = {stage32,stage31[1:0],stage11[1:0]};
endmodule
*/
////////////////////////////////////////////////////////////////////////////////
module mult3(A,B,S);
	input [2:0] A;
	input [2:0] B;
	output [5:0] S;

	wire [2:0] P0, P1, P2;
	wire c0, c1, c2, c3, c4, s1, s2;

// stage 1
	assign P0[2] = A[2] & B[0];
	assign P0[1] = A[1] & B[0];
	assign P0[0] = A[0] & B[0];

// stage 2
	assign P1[2] = A[2] & B[1];
	assign P1[1] = A[1] & B[1];
	assign P1[0] = A[0] & B[1];

// stage 3
	assign P2[2] = A[2] & B[2];
	assign P2[1] = A[1] & B[2];
	assign P2[0] = A[0] & B[2];

// Add all stages
	assign S[0] = P0[0];
	FA  block1(.a(P0[1]),.b(P1[0]),.cin(0),.s(S[1]),.cout(c0));
	FA  block2(.a(P0[2]),.b(P1[1]),.cin(P2[0]),.s(s1),.cout(c1));
	FA  block3(.a(c0),.b(s1),.cin(0),.s(S[2]),.cout(c2));
	FA  block4(.a(P2[1]),.b(P1[2]),.cin(c1),.s(s2),.cout(c3));
	FA  block5(.a(c2),.b(s2),.cin(0),.s(S[3]),.cout(c4));
	FA  block6(.a(c4),.b(P2[2]),.cin(c3),.s(S[4]),.cout(S[5]));
endmodule
/////////////////////////////////////////////////////////////////////
/*
module mult2(A,B,S);
	input[1:0]A,B;
	output[3:0]S;

	wire[1:0]P0,P1;
	wire c0;

	assign P0[1] = A[1] & B[0];
	assign P0[0] = A[0] & B[0];

	assign P1[1] = A[1] & B[1];
	assign P1[0] = A[0] & B[1];

	assign S[0]=P0[0];
	FA qw(.a(P0[1]),.b(P1[0]),.cin(0),.s(S[1]),.cout(c0));
	FA qw1(.a(P1[1]),.b(c0),.cin(0),.s(S[2]),.cout(S[3]));
endmodule
*/
////////////////////////////////////////////////////////////////////ok
module FA(a,b,cin,s,cout);
	input a,b,cin;
	output s,cout;

	wire g,p,c1;

	and(g,a,b);
	xor(p,a,b);
	xor(s,p,cin);

	and(c1,p,cin);
	or(cout,c1,g);
endmodule
