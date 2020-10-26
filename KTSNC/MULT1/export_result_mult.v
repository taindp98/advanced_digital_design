`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: export_result_mult.v
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
module export_result_mult(A,B,temp_result,result);
	input   [31:0]A,B,temp_result;
	output	[31:0]result;
	reg	[31:0]result;

	wire	flagNaNA,flagInfA,flagZeroA,flagNaNB,flagInfB,flagZeroB;

	checkspecial	check_A(.I(A),.flagInf(flagInfA),.flagNaN(flagNaNA),.flagZero(flagZeroA));
	checkspecial	check_B(.I(B),.flagInf(flagInfB),.flagNaN(flagNaNB),.flagZero(flagZeroB));

	always@(A or B or temp_result)
		begin
			case ({flagZeroA,flagInfA,flagNaNA,flagZeroB,flagInfB,flagNaNB})
				6'b100_100: result=32'h00000000;
				6'b100_010: result=32'h7FFFFFFF;
				6'b100_001: result=32'h7FFFFFFF;
				6'b100_000: result=32'h00000000;

				6'b010_100: result=32'h7FFFFFFF;
				6'b010_010: result={temp_result[31],31'h7f800000};	
				6'b010_001:	result=32'h7FFFFFFF;
				6'b010_000: result={temp_result[31],31'h7f800000};

				6'b001_100, 6'b001_010, 6'b001_001, 6'b001_000:	result=32'h7FFFFFFF;

				6'b000_100: result=32'h00000000;
				6'b000_010: result={temp_result[31],31'h7f800000};
				6'b000_001:	result=32'h7FFFFFFF;
				6'b000_000:	result=temp_result;		
				
			endcase
		end
endmodule