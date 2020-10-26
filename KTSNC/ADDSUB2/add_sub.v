`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: add_sub.v
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

module add_sub(
	A,
	B,
	add_or_sub,
	overflow,
	underflow,
	result
	);
// Port in declarations
	input	[31:0]A,B;
	input	add_or_sub;
// Port out declarations
	output	underflow,overflow;
	output	[31:0]result;
//Extract floating-point A and B
	wire	signA,signB,sign_result;
	wire	[7:0]expA,expB,exp_result;
	wire	[23:0]fracA,fracB,frac_result;

//Local signal declarations
	wire	signCompExp;

	wire	[7:0]expchoose;

	wire	[23:0]fracOrig,fracShift,frac0shift;
	wire	[4:0]shiftRight;

	wire	sign_shift,sign_not_shift;

	wire	[25:0]after_add,preadd1,preadd2;

	wire	[24:0]frac_before_normal;

//fix
	wire [31:0]	result_large;
	wire ovf_large,udf_large;
	wire [31:0] result_orig;
	wire ovf_orig,udf_orig;
	wire checknumbershift;
//Unpack
	assign	signA=A[31];
	assign	signB=B[31]^add_or_sub;
	assign	expA=A[30:23];
	assign	expB=B[30:23];
	assign	fracA={1'b1,A[22:0]};
	assign	fracB={1'b1,B[22:0]};
/////////////////////////////////////////////////////////////////////////////////////////////////////
//Compare and choose exponent A and B 

	compare_exp	comp_expAB(
		.A(expA),
		.B(expB),
		.numshift(shiftRight),
		.checknumshift(checknumbershift),	//checknum=1 if must shift > 24 bit
		.sign(signCompExp)
		);

	too_large larg(
		.A(A),
		.B(B),
		.signB(signB),
		.signCompExp(signCompExp),
		.result(result_large),
		.overflow(ovf_large),
		.underflow(udf_large)
		);

		mux8b	choose_exp(
		.A(expB),
		.B(expA),
		.sel(signCompExp),
		.out(expchoose)
		);

//Shift smaller number right
	mux24b	not_shift(
		.A(fracB),
		.B(fracA),
		.sel(signCompExp),
		.out(frac0shift)
		);

	mux24b	shift_right(
		.A(fracA),
		.B(fracB),
		.sel(signCompExp),
		.out(fracOrig)
		);

	shiftright	shift_right24b(
		.data_in(fracOrig),
		.sel(shiftRight),
		.data_out(fracShift)
		);


//Choose sign shift & notshift
	mux1b	choose_sign_shift(
		.A(signA),
		.B(signB),
		.sel(signCompExp),
		.out(sign_shift)
		);

	mux1b	choose_sign_not_shift(
		.A(signB),
		.B(signA),
		.sel(signCompExp),
		.out(sign_not_shift)
		);

//take 2's complex of fraction if sign = 1
	preadder26	preproccess_add(
		.sign1(sign_shift),
		.sign2(sign_not_shift),
	    .in1(fracShift),
	    .in2(frac0shift),
	    .full1(preadd1),
	    .full2(preadd2)
	    );

//add fraction 25bit result 26bit carry
//flow1
	adder26	process_add(
		.A(preadd1),
		.B(preadd2),
		.S(after_add),
		.Cout()
		);
//check carry
	postadder26	postprocess_add(
		.data_in(after_add),
		.sign(sign_result),
		.frac(frac_before_normal)
		);

//Normalize the frac
	normalize	normalize_ans(
		.exp_in(expchoose),
		.frac_in(frac_before_normal),
		.overflow(ovf_orig),
		.underflow(udf_orig),
		.exp_out(exp_result),
		.frac_out(frac_result)
		);

//Export S
	export_result_addsub	export_result_addsub(
		.A({signA,expA,fracA[22:0]}),
		.B({signB,expB,fracB[22:0]}),
		.temp_result({sign_result,exp_result,frac_result[22:0]}),
		.result(result_orig)
		);
	assign result 	 = 	checknumbershift?result_large:result_orig;
	assign overflow  =	checknumbershift?ovf_large:ovf_orig;
	assign underflow =	checknumbershift?udf_large:udf_orig;
		
endmodule
