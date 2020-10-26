////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     :postadder26
// Description  :sau khi cộng 2 số 26 bit, bit 25 là sign, nếu sign = 1 thì frac
//bằng bù 2 của của 25 bit đầu, nếu = 0 thì bằng 25 bit  đầu luôn.
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 20/10/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////


module postadder26(data_in,sign,frac);
	input	[25:0]data_in;
	output	sign;
	output	[24:0]frac;

	wire	[24:0]temp,cpltemp;

	assign	sign=data_in[25];	
	assign 	temp=data_in[24:0];
	two_compliment25	cplfrac(.data_in(temp),.data_out(cpltemp));
	assign	frac=sign?cpltemp:temp;
endmodule
