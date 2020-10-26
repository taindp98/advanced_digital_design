module shiftrightfrac(number_exp,frac,frac_after_shift);

	input [7:0]number_exp;
	input [23:0]frac;

	output[23:0]frac_after_shift;

	wire [4:0]sel;
	wire [7:0]shift_right;



	adder8 adder8(.A(number_exp),.B(8'd1),.S(shift_right),.Cout());
	assign sel=shift_right[4:0];
	shiftright sr(.data_in(frac),.sel(sel),.data_out(frac_after_shift));
endmodule
