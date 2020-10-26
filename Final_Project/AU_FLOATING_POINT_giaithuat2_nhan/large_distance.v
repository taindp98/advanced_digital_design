module large_distance(A,B,expA_expB,result,overflag,underflag);
	input [31:0]A,B;
	input expA_expB;

	output [31:0]result;
	output overflag,underflag;

	assign result=expA_expB?B:A;
	assign overflag=1'b1;
	assign underflag=1'b0;
endmodule




