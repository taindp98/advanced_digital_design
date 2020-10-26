////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     :multiplier
// Description  :
//                
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 2/11/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////ok

module multiplier(A,B,overflag,underflag,result);
// Port in declarations
	input	[31:0]A;
	input	[31:0]B;
// Port out declarations
	output	underflag,overflag;
	output	[31:0]result;
//Extract floating-point A and B
	wire	signA,signB,sign_result;
	wire	[7:0]expA,expB,exp_result;
	wire	[23:0]fracA,fracB,frac_result;

	assign	signA=A[31];
	assign	signB=B[31];
	assign	expA=A[30:23];
	assign	expB=B[30:23];
	assign	fracA={1'b1,A[22:0]};
	assign	fracB={1'b1,B[22:0]};
//Local signal declarations
	wire	[9:0]temp_expB,exp_before_normal;

	wire	[47:0]frac_after_mult;
	wire	[24:0]frac_before_normal,frac_check_over;



//Sign S
	assign	sign_result = signA ^ signB;  //ok

//Additon 2 exponent
	adder10	sub_expB_127(.A({2'b00,expB}),.B(10'b1110000001),.S(temp_expB),.Cout());
	adder10	add_expA_expB(.A({2'b00,expA}),.B(temp_expB),.S(exp_before_normal),.Cout());

//Multiplier frac A and frac B
	mult24	mult_two_frac(.A(fracA),.B(fracB),.S(frac_after_mult));
	assign	frac_before_normal = frac_after_mult[47:23];
	assign  frac_check_over={2'b00,frac_after_mult[22:0]};

//Normalize the frac answer
	normalize_mult	normalize_mult(.exp_in(exp_before_normal),
							.frac_in(frac_before_normal),
			
							.frac_check_over(frac_check_over),

							.overflag(overflag),
							.underflag(underflag),
							.exp_out(exp_result),
							.frac_out(frac_result));

//Export S
	export_result_mult export_mult_value(.A({signA,expA,fracA[22:0]}),
											.B({signB,expB,fracB[22:0]}),
											
								

										
										
											.temp_result({sign_result,exp_result,frac_result[22:0]}),
											.result(result));
		
endmodule
