`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: FA.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: divide stages
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module FA(
	a,
	b,
	cin,
	s,
	cout
	);

	input a,b,cin;
	output s,cout;

	wire g,p,c1;

	and(g,a,b);
	xor(p,a,b);
	xor(s,p,cin);

	and(c1,p,cin);
	or(cout,c1,g);
endmodule