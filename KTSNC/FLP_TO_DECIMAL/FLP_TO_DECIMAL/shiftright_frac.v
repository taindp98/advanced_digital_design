module shiftright_frac(frac,shift_by_n,Q,R);

	input [23:0]frac;
	input [7:0]shift_by_n;

	output [23:0]Q,R;

	wire [7:0]temp_shift;
	wire [4:0]shift_right_by_n;
	wire checknumbershift;

	assign Q=24'd0;
	adder8 adder81(.A(shift_by_n),.B(8'b11111111),.S(temp_shift),.Cout());//subtract1
	assign checknumbershift=temp_shift[7]|temp_shift[6]|temp_shift[5]|(~temp_shift[7]&~temp_shift[6]&~temp_shift[5]&temp_shift[4]&temp_shift[3]);
	assign shift_right_by_n=checknumbershift?5'b11000:temp_shift[4:0];

	shiftright shiftright1(.data_in(frac),.sel(shift_right_by_n),.data_out(R)); 
endmodule


