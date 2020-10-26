module shiftleft_frac(frac,shift_by_n,Q,R);

	input [23:0]frac;
	input [7:0]shift_by_n;

	output [23:0]Q,R;

	//wire [23:0]temp_shift_getR;

	wire [7:0]temp_shift;
	wire [4:0]shift_left_by_n,cpl_shift_left_by_n,shift_left_by_n1,shift_get_Q;
	wire checknumbershift,checknumbershift1;


	adder8 adder8(.A(shift_by_n),.B(8'd1),.S(temp_shift),.Cout());
	assign checknumbershift=temp_shift[7]|temp_shift[6]|temp_shift[5]|(~temp_shift[7]&~temp_shift[6]&~temp_shift[5]&temp_shift[4]&temp_shift[3]);
	assign shift_left_by_n=checknumbershift?5'b11000:temp_shift[4:0];



	two_compliment5 cpl5(.data_in(shift_left_by_n),.data_out(cpl_shift_left_by_n));
	adder5 adder5(.A(5'b11000),.B(cpl_shift_left_by_n),.S(shift_get_Q),.Cout());
	shiftright sr(.data_in(frac),.sel(shift_get_Q),.data_out(Q));

//	assign checknumbershift1=shift_by_n[7]|shift_by_n[6]|shift_by_n[5]|(~shift_by_n[7]&~shift_by_n[6]&~shift_by_n[5]&shift_by_n[4]&shift_by_n[3]);
//	assign shift_left_by_n1=checknumbershift1?5'b11000:shift_by_n[4:0];

	shiftleft sl(.data_in(frac),.sel(shift_left_by_n),.data_out(R));
	//shiftright sr1(.data_in(temp_shift_getR),.sel(shift_left_by_n1),.data_out(R));



endmodule


