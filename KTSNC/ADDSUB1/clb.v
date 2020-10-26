`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: clb.v
// Project Name: KTSNC 
// Target Devices: 
// Tool Versions: 
// Description: carry lookahead adder block CLB
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module clb(
	gin,
	pin,
	cin,
	gout,
	pout,
	cout
	);

// Port in declarations
	input  cin;
	input  [3:0]gin,pin;

// Port out declarations
	output gout,pout;
	output [3:0]cout;

	assign cout[0]=cin;
	assign cout[1]=gin[0]|(pin[0]&cin);
	assign cout[2]=gin[1]|(pin[1]&gin[0])|(pin[1]&pin[0]&cin);
	assign cout[3]=gin[2]|(pin[2]&gin[1])|(pin[2]&pin[1]&gin[0])|(pin[2]&pin[1]&pin[0]&cin);

	assign gout   =gin[3]|(pin[3]&gin[2])|(pin[3]&pin[2]&gin[1])|(pin[3]&pin[2]&pin[1]&gin[0]);
	assign pout   =pin[3]&pin[2]&pin[1]&pin[0];
endmodule

////////////////////////////////////////////////////////////////////////////////////

module clb3(
	gin,
	pin,
	cin,
	gout,
	pout,
	cout
	);

// Port in declarations
	input  cin;
	input  [2:0]gin,pin;

// Port out declarations
	output gout,pout;
	output [2:0]cout;

	assign cout[0]=cin;
	assign cout[1]=gin[0]|(pin[0]&cin);
	assign cout[2]=gin[1]|(pin[1]&gin[0])|(pin[1]&pin[0]&cin);

	assign gout   =gin[2]|(pin[2]&gin[1])|(pin[2]&pin[1]&gin[0]);
	assign pout   =pin[2]&pin[1]&pin[0];
endmodule

//////////////////////////////////////////////////////////////////////////////////////

module clb2(
	gin,
	pin,
	cin,
	gout,
	pout,
	cout
	);
// Port in declarations
	input  cin;
	input  [1:0]gin,pin;
// Port out declarations
	output gout,pout;
	output [1:0]cout;

	assign cout[0]=cin;
	assign cout[1]=gin[0]|(pin[0]&cin);

	assign gout   =gin[1]|(pin[1]&gin[0]);
	assign pout   =pin[1]&pin[0];
endmodule