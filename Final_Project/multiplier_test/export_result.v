////////////////////////////////////////////////////////////////////////////////
//
// HoChiMinh University of Technology
//
// Filename     :export_result
// Description  :kiem tra cac so A, B thuoc dac biet hay khong, khong tgi xuat ra S  
//                
//					
//
// Author       : nam.nguyennamduong@hcmut.edu.vn
// Created On   : 20/10/2019
// History (Date, Changed By)
//
////////////////////////////////////////////////////////////////////////////////

module export_result_addsub(A,B,temp_result,result);
	input   [31:0]A,B,temp_result;
	output	[31:0]result;
	reg	[31:0]result;

	wire	flagNaNA,flagInfA,flagZeroA,flagNaNB,flagInfB,flagZeroB;

	checkspecial	check_A(.I(A),.flagInf(flagInfA),.flagNaN(flagNaNA),.flagZero(flagZeroA));
	checkspecial	check_B(.I(B),.flagInf(flagInfB),.flagNaN(flagNaNB),.flagZero(flagZeroB));
		
	always@(A or B or temp_result)
	begin
		case ({flagZeroA,flagInfA,flagNaNA,flagZeroB,flagInfB,flagNaNB})
			6'b010000, 6'b000100:	result=A;			                //A=Inf or B=0
			6'b100000, 6'b000010:	result=B;			                //B=Inf or A=0
			6'b001000, 6'b000001, 6'b001001:	result=32'h7FFFFFFF;    //A or B NaN
			6'b010010:  						                        //A with B = Inf
				if (B[31])  result=32'h7FFFFFFF;		                //Inf-Inf=NaN
				else        result=A;			                        //Inf+Inf=Inf
			6'b100100:  	result=32'h00000000;				        //0+0=0
			default: result=temp_result;
		endcase
	end
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////

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
				6'b100000, 6'b000100, 6'b100100:	result=32'h00000000;		          //B=0 or A=0     => result=0
				6'b010000, 6'b000010, 6'b010010:	result={temp_result[31],31'h7f800000};//A=Inf or B=Inf => result=Inf			
				6'b001000, 6'b000001, 6'b001001:	result=32'h7FFFFFFF; 	              //A or B NaN    => result=NaN 
				6'b100010, 6'b010100:  	            result=32'h7FFFFFFF;		          //A=0 and B=Inf => result=NaN		

				default: result=temp_result;
			endcase
		end
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////chua lam phan nay
module export_result_div(A,B,temp_result,result);
	input   [31:0]A,B,temp_result;
	output	[31:0]result;
	reg	[31:0]result;

	wire	flagNaNA,flagInfA,flagZeroA,flagNaNB,flagInfB,flagZeroB;

	checkspecial	check_A(.I(A),.flagInf(flagInfA),.flagNaN(flagNaNA),.flagZero(flagZeroA));
	checkspecial	check_B(.I(B),.flagInf(flagInfB),.flagNaN(flagNaNB),.flagZero(flagZeroB));
		
	always@(A or B or temp_result)
		begin
			case ({flagZeroA,flagInfA,flagNaNA,flagZeroB,flagInfB,flagNaNB})
				6'b00_00_01, 6'b10_00_00:	result={temp_result[31],31'h7f800000};	//
				6'b00_00_10, 6'b01_00_00:	result=32'h00000000;		        //
				6'b001000, 6'b000001, 6'b001001:	result=32'h7FFFFFFF; 	//A or B NaN    => result=NaN 
				6'b100100, 6'b010010:  	        result=32'h7FFFFFFF;		//A=0 and B=0, A and B = Inf => result=NaN							
				default: result=temp_result;
			endcase
		end

endmodule
