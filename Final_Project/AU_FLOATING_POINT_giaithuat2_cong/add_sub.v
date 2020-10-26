////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     :add_sub
// Description  :add or sub 2 number A, B
//                
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 20/10/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////

module add_sub(A,B,add_or_sub,overflag,underflag,result);
// Port in declarations
	input	[31:0]A,B;
	input	add_or_sub;
// Port out declarations
	output	underflag,overflag;
	output	[31:0]result;
//Extract floating-point A and B

	wire	[7:0]expA,expB;

	assign	expA=A[30:23];
	assign	expB=B[30:23];


//Local signal declarations
	wire	expA_vs_expB,checknumbershift; //ok

	wire	[4:0]shift_right_by_n; //ok

	wire [31:0]result_large,result_small;
	wire over_large,under_large,over_small,under_small;


/////////////////////////////////////////////////////////////////////////////////////////////////////
//Compare and choose exponent A and B 
//expA_LT_expB=1 => expA <  expB
//expA_LT_expB=0 => expA >= expB
	compare_exp	compare_expAB(.A(expA),
								.B(expB),
								.numbershift(shift_right_by_n),
								.checknumbershift(checknumbershift),
								.sign(expA_vs_expB));
	large_distance case1(.A(A),
							.B(B),
							.expA_expB(expA_vs_expB),
							.result(result_large),
							.overflag(over_large),
							.underflag(under_large));
	small_distance case2(.A(A),
							.B(B),
							.add_or_sub(add_or_sub),
							.shift_right_by_n(shift_right_by_n),
							.expA_vs_expB(expA_vs_expB),
							.result(result_small),
							.overflag(over_small),
							.underflag(under_small));
	assign result=checknumbershift?result_large:result_small;
	assign overflag=checknumbershift?over_large:over_small;
	assign underflag=checknumbershift?under_large:under_small;
	
endmodule
