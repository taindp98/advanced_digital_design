`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: square_root.v
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
module square_root(
	A,
	S
	);

	input [31:0]A;

	output [31:0]S;

	wire sign, sign_exp;
	wire [7:0]exp,temp_number_exp,cpl_temp_number_exp,number_exp;
	wire [23:0]frac,temp_frac_neg,temp_frac_pos,fb;  //fb mean frac_before


	assign sign=A[31];
	assign exp=A[30:23];
	assign frac={1'b1,A[22:0]};

	//expA-127
	adder9 adder9(.A({1'b0,exp}),.B(9'b110000001),.S({sign_exp,temp_number_exp}));
	
	two_compliment8 cpl8(.data_in(temp_number_exp),.data_out(cpl_temp_number_exp));
	assign number_exp=sign_exp?cpl_temp_number_exp:temp_number_exp;

	shiftrightfrac srf(.number_exp(number_exp),.frac(frac),.frac_after_shift(temp_frac_neg));
	assign temp_frac_pos=number_exp[0]?frac:{1'b0,frac[23:1]};
	assign fb=sign_exp?temp_frac_neg:temp_frac_pos;


	wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,
			x17,x18,x19,x20,x21,x22,x23,x24;


	wire [2:0]cpl_temp1,test1;
	two_compliment3 cpl3(.data_in({1'b0,2'b01}),.data_out(cpl_temp1));
	adder3 block1(.A({1'b0,fb[23:22]}),.B(cpl_temp1),.S(test1),.Cout());
	assign x1=test1[2]?0:1;


	wire[3:0]temp2;
	wire[4:0]cpl_temp2,test2;
	mult2 mult2(.A({x1,1'b1}),.B({x1,1'b1}),.S(temp2));
	two_compliment5 cpl5(.data_in({1'b0,temp2}),.data_out(cpl_temp2));
	adder5 block2(.A({1'b0,fb[23:20]}),.B(cpl_temp2),.S(test2),.Cout());
	assign x2=test2[4]?0:1;

	wire[5:0]temp3;
	wire[6:0]cpl_temp3,test3;
	mult3 mult3(.A({x1,x2,1'b1}),.B({x1,x2,1'b1}),.S(temp3));
	two_compliment7 cpl7(.data_in({1'b0,temp3}),.data_out(cpl_temp3));
	adder7 block3(.A({1'b0,fb[23:18]}),.B(cpl_temp3),.S(test3),.Cout());
	assign x3=test3[6]?0:1;

	wire[7:0]temp4;
	wire[8:0]cpl_temp4,test4;
	mult4 mult4(.A({x1,x2,x3,1'b1}),.B({x1,x2,x3,1'b1}),.S(temp4));
	two_compliment9 cpl9(.data_in({1'b0,temp4}),.data_out(cpl_temp4));
	adder9 block4(.A({1'b0,fb[23:16]}),.B(cpl_temp4),.S(test4),.Cout());
	assign x4=test4[8]?0:1;

	wire[9:0]temp5;
	wire[10:0]cpl_temp5,test5;
	mult5 mult5(.A({x1,x2,x3,x4,1'b1}),.B({x1,x2,x3,x4,1'b1}),.S(temp5));
	two_compliment11 cpl11(.data_in({1'b0,temp5}),.data_out(cpl_temp5));
	adder11 block5(.A({1'b0,fb[23:14]}),.B(cpl_temp5),.S(test5),.Cout());
	assign x5=test5[10]?0:1;

	wire[11:0]temp6;
	wire[12:0]cpl_temp6,test6;
	mult6 mult6(.A({x1,x2,x3,x4,x5,1'b1}),.B({x1,x2,x3,x4,x5,1'b1}),.S(temp6));
	two_compliment13 cpl13(.data_in({1'b0,temp6}),.data_out(cpl_temp6));
	adder13 block6(.A({1'b0,fb[23:12]}),.B(cpl_temp6),.S(test6),.Cout());
	assign x6=test6[12]?0:1;

	wire[13:0]temp7;
	wire[14:0]cpl_temp7,test7;
	mult7 mult7(.A({x1,x2,x3,x4,x5,x6,1'b1}),.B({x1,x2,x3,x4,x5,x6,1'b1}),.S(temp7));
	two_compliment15 cpl15(.data_in({1'b0,temp7}),.data_out(cpl_temp7));
	adder15 block7(.A({1'b0,fb[23:10]}),.B(cpl_temp7),.S(test7),.Cout());
	assign x7=test7[14]?0:1;

	wire[15:0]temp8;
	wire[16:0]cpl_temp8,test8;
	mult8 mult8(.A({x1,x2,x3,x4,x5,x6,x7,1'b1}),.B({x1,x2,x3,x4,x5,x6,x7,1'b1}),.S(temp8));
	two_compliment17 cpl17(.data_in({1'b0,temp8}),.data_out(cpl_temp8));
	adder17 block8(.A({1'b0,fb[23:8]}),.B(cpl_temp8),.S(test8),.Cout());
	assign x8=test8[16]?0:1;

	wire[17:0]temp9;
	wire[18:0]cpl_temp9,test9;
	mult9 mult9(.A({x1,x2,x3,x4,x5,x6,x7,x8,1'b1}),.B({x1,x2,x3,x4,x5,x6,x7,x8,1'b1}),.S(temp9));
	two_compliment19 cpl19(.data_in({1'b0,temp9}),.data_out(cpl_temp9));
	adder19 block9(.A({1'b0,fb[23:6]}),.B(cpl_temp9),.S(test9),.Cout());
	assign x9=test9[18]?0:1;

	wire[19:0]temp10;
	wire[20:0]cpl_temp10,test10;
	mult10 mult10(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,1'b1}),.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,1'b1}),.S(temp10));
	two_compliment21 cpl21(.data_in({1'b0,temp10}),.data_out(cpl_temp10));
	adder21 block21(.A({1'b0,fb[23:4]}),.B(cpl_temp10),.S(test10),.Cout());
	assign x10=test10[20]?0:1;

	wire[21:0]temp11;
	wire[22:0]cpl_temp11,test11;
	mult11 mult11(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,1'b1}),.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,1'b1}),.S(temp11));
	two_compliment23 cpl23(.data_in({1'b0,temp11}),.data_out(cpl_temp11));
	adder23 block23(.A({1'b0,fb[23:2]}),.B(cpl_temp11),.S(test11),.Cout());
	assign x11=test11[22]?0:1;

	wire[23:0]temp12;
	wire[24:0]cpl_temp12,test12;
	mult12 mult12(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,1'b1}),.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,1'b1}),.S(temp12));
	two_compliment25 cpl25(.data_in({1'b0,temp12}),.data_out(cpl_temp12));
	adder25 block25(.A({1'b0,fb[23:0]}),.B(cpl_temp12),.S(test12),.Cout());
	assign x12=test12[24]?0:1;

//////////////////////////////////////////////////////////////////////////////////////////
	wire[25:0]temp13;
	wire[26:0]cpl_temp13,test13;
	mult13 mult13(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,1'b1}),.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,1'b1}),.S(temp13));
	two_compliment27 cpl27(.data_in({1'b0,temp13}),.data_out(cpl_temp13));
	adder27 block27(.A({1'b0,fb[23:0],2'b00}),.B(cpl_temp13),.S(test13),.Cout());
	assign x13=test13[26]?0:1;

	wire[27:0]temp14;
	wire[28:0]cpl_temp14,test14;
	mult14 mult14(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,1'b1}),.S(temp14));
	two_compliment29 cpl29(.data_in({1'b0,temp14}),.data_out(cpl_temp14));
	adder29 block29(.A({1'b0,fb[23:0],4'b0000}),.B(cpl_temp14),.S(test14),.Cout());
	assign x14=test14[28]?0:1;

	wire[29:0]temp15;
	wire[30:0]cpl_temp15,test15;
	mult15 mult15(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,1'b1}),.S(temp15));
	two_compliment31 cpl31(.data_in({1'b0,temp15}),.data_out(cpl_temp15));
	adder31 block31(.A({1'b0,fb[23:0],6'b000000}),.B(cpl_temp15),.S(test15),.Cout());
	assign x15=test15[30]?0:1;

	wire[31:0]temp16;
	wire[32:0]cpl_temp16,test16;
	mult16 mult16(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,1'b1}),.S(temp16));
	two_compliment33 cpl33(.data_in({1'b0,temp16}),.data_out(cpl_temp16));
	adder33 block33(.A({1'b0,fb[23:0],8'b00000000}),.B(cpl_temp16),.S(test16),.Cout());
	assign x16=test16[32]?0:1;

	wire[33:0]temp17;
	wire[34:0]cpl_temp17,test17;
	mult17 mult17(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,1'b1}),.S(temp17));
	two_compliment35 cpl35(.data_in({1'b0,temp17}),.data_out(cpl_temp17));
	adder35 block35(.A({1'b0,fb[23:0],10'b0000000000}),.B(cpl_temp17),.S(test17),.Cout());
	assign x17=test17[34]?0:1;

	wire[35:0]temp18;
	wire[36:0]cpl_temp18,test18;
	mult18 mult18(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,1'b1}),.S(temp18));
	two_compliment37 cpl37(.data_in({1'b0,temp18}),.data_out(cpl_temp18));
	adder37 block37(.A({1'b0,fb[23:0],12'b000000000000}),.B(cpl_temp18),.S(test18),.Cout());
	assign x18=test18[36]?0:1;

	wire[37:0]temp19;
	wire[38:0]cpl_temp19,test19;
	mult19 mult19(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,1'b1}),.S(temp19));
	two_compliment39 cpl39(.data_in({1'b0,temp19}),.data_out(cpl_temp19));
	adder39 block39(.A({1'b0,fb[23:0],14'b00000000000000}),.B(cpl_temp19),.S(test19),.Cout());
	assign x19=test19[38]?0:1;

	wire[39:0]temp20;
	wire[40:0]cpl_temp20,test20;
	mult20 mult20(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,1'b1}),.S(temp20));
	two_compliment41 cpl41(.data_in({1'b0,temp20}),.data_out(cpl_temp20));
	adder41 block41(.A({1'b0,fb[23:0],16'b0000000000000000}),.B(cpl_temp20),.S(test20),.Cout());
	assign x20=test20[40]?0:1;

	wire[41:0]temp21;
	wire[42:0]cpl_temp21,test21;
	mult21 mult21(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,1'b1}),.S(temp21));
	two_compliment43 cpl43(.data_in({1'b0,temp21}),.data_out(cpl_temp21));
	adder43 block43(.A({1'b0,fb[23:0],18'b000000000000000000}),.B(cpl_temp21),.S(test21),.Cout());
	assign x21=test21[42]?0:1;

	wire[43:0]temp22;
	wire[44:0]cpl_temp22,test22;
	mult22 mult22(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,1'b1}),.S(temp22));
	two_compliment45 cpl45(.data_in({1'b0,temp22}),.data_out(cpl_temp22));
	adder45 block45(.A({1'b0,fb[23:0],20'b00000000000000000000}),.B(cpl_temp22),.S(test22),.Cout());
	assign x22=test22[44]?0:1;

	wire[45:0]temp23;
	wire[46:0]cpl_temp23,test23;
	mult23 mult23(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,1'b1}),.S(temp23));
	two_compliment47 cpl47(.data_in({1'b0,temp23}),.data_out(cpl_temp23));
	adder47 block47(.A({1'b0,fb[23:0],22'b0000000000000000000000}),.B(cpl_temp23),.S(test23),.Cout());
	assign x23=test23[46]?0:1;

	wire[47:0]temp24;
	wire[48:0]cpl_temp24,test24;
	mult24 mult24(.A({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,1'b1}),
					.B({x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,1'b1}),.S(temp24));
	two_compliment49 cpl49(.data_in({1'b0,temp24}),.data_out(cpl_temp24));
	adder49 block49(.A({1'b0,fb[23:0],24'b000000000000000000000000}),.B(cpl_temp24),.S(test24),.Cout());
	assign x24=test24[48]?0:1;




	wire[24:0]after_square;
	assign after_square={x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,1'b0};


////////////////////////////////////////////////////////////////////////////////
/////////////caculate exp

//add1 or sub1 or normal
	wire [8:0]number_exp_sub1,number_exp_add1,number_expnot_addsub;
	adder9 sub_1(.A({1'b0,number_exp}),.B(9'b111111111),.S(number_exp_sub1),.Cout());
	adder9 add_1(.A({1'b0,number_exp}),.B(9'b000000001),.S(number_exp_add1),.Cout());
	assign number_expnot_addsub={1'b0,number_exp};

//chia 2 de lay exp cua kq bang cach shiftright 1
	wire[7:0]exp_sub1,exp_add1,exp_notaddsub1;
	assign exp_sub1=number_exp_sub1[7:0];
	assign exp_add1=number_exp_add1[7:0];
	assign exp_notaddsub1=number_expnot_addsub[7:0];

//shiftleft doi voi truong hop sign_exp negative
	wire[24:0]sl_chan,sl_le;
	wire[24:0]after_square_neg;
	shiftleft sl_frac1(.data_in(after_square),.sel(exp_add1[4:0]),.data_out(sl_le));
	shiftleft sl_frac2(.data_in(after_square),.sel(exp_notaddsub1[4:0]),.data_out(sl_chan));
	assign after_square_neg=number_exp[0]?sl_le:sl_chan;

//frac out cuoi cung
	wire[23:0]frac_out;
	assign frac_out=sign_exp?after_square_neg[24:1]:after_square[24:1];

//caculate exp after square root
	wire [7:0]exp_add2,exp_sub2,exp_notaddsub2;
	assign exp_add2={1'b0,exp_add1[7:1]};
	assign exp_sub2={1'b0,exp_sub1[7:1]};
	assign exp_notaddsub2={1'b0,exp_notaddsub1[7:1]};
//lay cpl cua no
	wire[7:0]cpl_exp_add2,cpl_exp_sub2,cpl_exp_notaddsub2;
	two_compliment8 cpl8_exp1(.data_in(exp_add2),.data_out(cpl_exp_add2));
	two_compliment8 cpl8_exp2(.data_in(exp_sub2),.data_out(cpl_exp_sub2));
	two_compliment8 cpl8_exp3(.data_in(exp_notaddsub2),.data_out(cpl_exp_notaddsub2));
//choose exp base on sign_exp
	wire[7:0]exp_add,exp_sub,exp_notaddsub;
	assign exp_add=sign_exp?cpl_exp_add2:exp_add2;
	assign exp_sub=sign_exp?cpl_exp_sub2:exp_sub2;
	assign exp_notaddsub=sign_exp?cpl_exp_notaddsub2:exp_notaddsub2;


//caculate exp_out

	wire [7:0]exp_sub_add127,exp_add_add127,exp_notaddsub_add127,exp_pos,exp_neg,exp_out;
	adder8 adder_sub1(.A(exp_sub),.B(8'd127),.S(exp_sub_add127),.Cout());
	adder8 adder_add1(.A(exp_add),.B(8'd127),.S(exp_add_add127),.Cout());
	adder8 adder_not(.A(exp_notaddsub),.B(8'd127),.S(exp_notaddsub_add127),.Cout());
	assign exp_pos=number_exp[0]?exp_sub_add127:exp_notaddsub_add127;
	assign exp_neg=number_exp[0]?exp_add_add127:exp_notaddsub_add127;
	assign exp_out=sign_exp?exp_neg:exp_pos;

	assign S={sign,exp_out,frac_out[22:0]};

endmodule