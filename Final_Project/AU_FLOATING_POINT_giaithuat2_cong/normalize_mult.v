////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     :normalize
// Description  :hieu chinh sau khi cong
//                
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 20/10/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////

module normalize_mult(exp_in,frac_in,frac_check_over,overflag,underflag,exp_out,frac_out);
// Port in declarations
	input	[9:0]exp_in;
	input	[24:0]frac_in;
	input	[24:0]frac_check_over;

// Port out declarations
	output  overflag,underflag;
	output	[7:0]exp_out;
	output	[23:0]frac_out;
//Local signal declarations
	wire	checkzero,checkzero_frac_check_over;
	wire	[4:0]shift_left_by_n;
	wire	[24:0]temp_frac;
	wire	[9:0]cpl_n;
	wire	[9:0]ext_exp_out,temp_cpl_n;

//Normalize fraction 
	find_1_first	findbit1(.I(frac_in),.position(shift_left_by_n),.flag(checkzero));
	find_1_first	findbit1_frac_check_over(.I(frac_check_over),
												.position(),
												.flag(checkzero_frac_check_over));
	shiftleft	shift_left_frac(.data_in(frac_in),.sel(shift_left_by_n),.data_out(temp_frac));
	assign	frac_out=temp_frac[24:1]; //vi bo so 1 dau tien

//Normalize exponent
	two_compliment10		cpl_shiftleft(.data_in({5'b00000,shift_left_by_n}),.data_out(cpl_n));
	adder10		normalize_exp1(.A(10'd1),.B(cpl_n),.S(temp_cpl_n),.Cout());
	adder10		normalize_exp2(.A(exp_in),.B(temp_cpl_n),.S(ext_exp_out),.Cout());




	assign  overflag=checkzero_frac_check_over?1'b0:1'b1;
	assign  underflag=(ext_exp_out[8]==1'b0)?1'b0:(checkzero?1'b0:1'b1);

	assign	exp_out=ext_exp_out[7:0];
endmodule