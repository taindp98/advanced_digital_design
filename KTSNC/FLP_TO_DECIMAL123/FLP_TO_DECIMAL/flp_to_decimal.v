module flp_to_decimal(A,nguyen,thapphan,so_bit_0);

	input [31:0]A;
	output [23:0]nguyen,thapphan;
	output[4:0]so_bit_0;

	wire [23:0] frac;
	wire [7:0] exp,temp_exp,temp_exp_cpl,shift_by_n;
	wire sign,sign_exp;

	wire [23:0] Q_right,R_right,Q_left,R_left,Q,R;

	assign sign=A[31];
	assign exp=A[30:23];
	assign frac={1'b1,A[22:0]};

	adder9 adder9(.A({1'b0,exp}),.B(9'b110000001),.S({sign_exp,temp_exp}),.Cout());
	two_compliment8 cpl(.data_in(temp_exp),.data_out(temp_exp_cpl));
	assign shift_by_n=sign_exp?temp_exp_cpl:temp_exp;   


	//neu shift_by_n > 23 va sign_exp =0 thi phan nguyen bang no luon, thap phan = 0
	//neu shift_by_n > 23 va sign_exp=1 thi phan nguyen =0 va thap phan =0

	//neu shift_by_n < 23 va sign_exp=0 thi giu nguyen frac, va trich lay phan nguyen va thap phan
	//neu shift_by_n < 23 va sign_exp=1 thi phan nguyen =0 va trich lay phan thap phan

	shiftright_frac srf(.frac(frac),.shift_by_n(shift_by_n),.Q(Q_right),.R(R_right));
	shiftleft_frac slf(.frac(frac),.shift_by_n(shift_by_n),.Q(Q_left),.R(R_left));
	assign Q=sign_exp?Q_right:Q_left;
	assign R=sign_exp?R_right:R_left;

	caculate_Q fdg(.Q(Q),.sign(sign),.result(nguyen));
	caculate_R dvf(.R(R),.result(thapphan),.so_bit_0(so_bit_0));
endmodule













