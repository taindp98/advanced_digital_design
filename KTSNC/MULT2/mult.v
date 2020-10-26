`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: mult.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: algorithm 2
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 

module mult24(
	A,
	B,
	S
	);

	input	[23:0]A,B;
	output	[47:0]S;

	wire [23:0] B24,B23,B22,B21,B20,B19,B18,B17,B16,B15,B14,B13,B12,B11,B10,B9,B8,B7,B6,B5,B4,B3,B2,B1;
	wire [24:0] A24,A23,A22,A21,A20,A19,A18,A17,A16,A15,A14,A13,A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1;
	wire [24:0] temp25,temp24,temp23,temp22,temp21,temp20,temp19,temp18,temp17,temp16,temp15,temp14,temp13,
				temp12,temp11,temp10,temp9,temp8,temp7,temp6,temp5,temp4,temp3,temp2;

// 		A23 A22 A21 A20 ... A3 A2 A1 A0
//		*
//		B23 B22 B21 B20 ... B3 B2 B1 B0
//		-------------------------------
//		A23 A22 A21 A20 ... A3 A2 A1 A0 if B0 = 1
//		zeros(1,24)						if B0 = 0

	adder25 adder24(.A({1'b0,A}),.B(25'b0),.S(temp25),.Cout());
	assign B24=B[0]?{temp25[0],B[23:1]}:{1'b0,B[23:1]};
	assign A24=B[0]?{1'b0,temp25[24:1]}:{1'b0,24'b0};

// A is add result above stage, shift 
// B discard result locations added

	adder25 adder23(.A({1'b0,A}),.B(A24),.S(temp24),.Cout());
	assign B23=B24[0]?{temp24[0],B24[23:1]}:{A24[0],B24[23:1]};
	assign A23=B24[0]?{1'b0,temp24[24:1]}:{1'b0,A24[24:1]};

	adder25 adder22(.A({1'b0,A}),.B(A23),.S(temp23),.Cout());
	assign B22=B23[0]?{temp23[0],B23[23:1]}:{A23[0],B23[23:1]};
	assign A22=B23[0]?{1'b0,temp23[24:1]}:{1'b0,A23[24:1]};

	adder25 adder21(.A({1'b0,A}),.B(A22),.S(temp22),.Cout());
	assign B21=B22[0]?{temp22[0],B22[23:1]}:{A22[0],B22[23:1]};
	assign A21=B22[0]?{1'b0,temp22[24:1]}:{1'b0,A22[24:1]};

	adder25 adder20(.A({1'b0,A}),.B(A21),.S(temp21),.Cout());
	assign B20=B21[0]?{temp21[0],B21[23:1]}:{A21[0],B21[23:1]};
	assign A20=B21[0]?{1'b0,temp21[24:1]}:{1'b0,A21[24:1]};

	adder25 adder19(.A({1'b0,A}),.B(A20),.S(temp20),.Cout());
	assign B19=B20[0]?{temp20[0],B20[23:1]}:{A20[0],B20[23:1]};
	assign A19=B20[0]?{1'b0,temp20[24:1]}:{1'b0,A20[24:1]};

	adder25 adder18(.A({1'b0,A}),.B(A19),.S(temp19),.Cout());
	assign B18=B19[0]?{temp19[0],B19[23:1]}:{A19[0],B19[23:1]};
	assign A18=B19[0]?{1'b0,temp19[24:1]}:{1'b0,A19[24:1]};

	adder25 adder17(.A({1'b0,A}),.B(A18),.S(temp18),.Cout());
	assign B17=B18[0]?{temp18[0],B18[23:1]}:{A18[0],B18[23:1]};
	assign A17=B18[0]?{1'b0,temp18[24:1]}:{1'b0,A18[24:1]};

	adder25 adder16(.A({1'b0,A}),.B(A17),.S(temp17),.Cout());
	assign B16=B17[0]?{temp17[0],B17[23:1]}:{A17[0],B17[23:1]};
	assign A16=B17[0]?{1'b0,temp17[24:1]}:{1'b0,A17[24:1]};

	adder25 adder15(.A({1'b0,A}),.B(A16),.S(temp16),.Cout());
	assign B15=B16[0]?{temp16[0],B16[23:1]}:{A16[0],B16[23:1]};
	assign A15=B16[0]?{1'b0,temp16[24:1]}:{1'b0,A16[24:1]};

	adder25 adder14(.A({1'b0,A}),.B(A15),.S(temp15),.Cout());
	assign B14=B15[0]?{temp15[0],B15[23:1]}:{A15[0],B15[23:1]};
	assign A14=B15[0]?{1'b0,temp15[24:1]}:{1'b0,A15[24:1]};

	adder25 adder13(.A({1'b0,A}),.B(A14),.S(temp14),.Cout());
	assign B13=B14[0]?{temp14[0],B14[23:1]}:{A14[0],B14[23:1]};
	assign A13=B14[0]?{1'b0,temp14[24:1]}:{1'b0,A14[24:1]};

	adder25 adder12(.A({1'b0,A}),.B(A13),.S(temp13),.Cout());
	assign B12=B13[0]?{temp13[0],B13[23:1]}:{A13[0],B13[23:1]};
	assign A12=B13[0]?{1'b0,temp13[24:1]}:{1'b0,A13[24:1]};

	adder25 adder11(.A({1'b0,A}),.B(A12),.S(temp12),.Cout());
	assign B11=B12[0]?{temp12[0],B12[23:1]}:{A12[0],B12[23:1]};
	assign A11=B12[0]?{1'b0,temp12[24:1]}:{1'b0,A12[24:1]};

	adder25 adder10(.A({1'b0,A}),.B(A11),.S(temp11),.Cout());
	assign B10=B11[0]?{temp11[0],B11[23:1]}:{A11[0],B11[23:1]};
	assign A10=B11[0]?{1'b0,temp11[24:1]}:{1'b0,A11[24:1]};

	adder25 adder9(.A({1'b0,A}),.B(A10),.S(temp10),.Cout());
	assign B9=B10[0]?{temp10[0],B10[23:1]}:{A10[0],B10[23:1]};
	assign A9=B10[0]?{1'b0,temp10[24:1]}:{1'b0,A10[24:1]};

	adder25 adder8(.A({1'b0,A}),.B(A9),.S(temp9),.Cout());
	assign B8=B9[0]?{temp9[0],B9[23:1]}:{A9[0],B9[23:1]};
	assign A8=B9[0]?{1'b0,temp9[24:1]}:{1'b0,A9[24:1]};

	adder25 adder7(.A({1'b0,A}),.B(A8),.S(temp8),.Cout());
	assign B7=B8[0]?{temp8[0],B8[23:1]}:{A8[0],B8[23:1]};
	assign A7=B8[0]?{1'b0,temp8[24:1]}:{1'b0,A8[24:1]};

	adder25 adder6(.A({1'b0,A}),.B(A7),.S(temp7),.Cout());
	assign B6=B7[0]?{temp7[0],B7[23:1]}:{A7[0],B7[23:1]};
	assign A6=B7[0]?{1'b0,temp7[24:1]}:{1'b0,A7[24:1]};

	adder25 adder5(.A({1'b0,A}),.B(A6),.S(temp6),.Cout());
	assign B5=B6[0]?{temp6[0],B6[23:1]}:{A6[0],B6[23:1]};
	assign A5=B6[0]?{1'b0,temp6[24:1]}:{1'b0,A6[24:1]};

	adder25 adder4(.A({1'b0,A}),.B(A5),.S(temp5),.Cout());
	assign B4=B5[0]?{temp5[0],B5[23:1]}:{A5[0],B5[23:1]};
	assign A4=B5[0]?{1'b0,temp5[24:1]}:{1'b0,A5[24:1]};

	adder25 adder3(.A({1'b0,A}),.B(A4),.S(temp4),.Cout());
	assign B3=B4[0]?{temp4[0],B4[23:1]}:{A4[0],B4[23:1]};
	assign A3=B4[0]?{1'b0,temp4[24:1]}:{1'b0,A4[24:1]};

	adder25 adder2(.A({1'b0,A}),.B(A3),.S(temp3),.Cout());
	assign B2=B3[0]?{temp3[0],B3[23:1]}:{A3[0],B3[23:1]};
	assign A2=B3[0]?{1'b0,temp3[24:1]}:{1'b0,A3[24:1]};

	adder25 adder1(.A({1'b0,A}),.B(A2),.S(temp2),.Cout());
	assign B1=B2[0]?{temp2[0],B2[23:1]}:{A2[0],B2[23:1]};
	assign A1=B2[0]?{1'b0,temp2[24:1]}:{1'b0,A2[24:1]};

	assign S={A1[23:0],B1};
endmodule


