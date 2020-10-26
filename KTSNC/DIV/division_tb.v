module division_tb;
reg [31:0] A,B;

wire underf,overf;
wire [31:0]S;

division uut(A,B,S,overf,underf);


initial begin
	A=32'h43d10000;
	B=32'h40000000;
#100
	A=32'h43800000;
	B=32'h42f00000;
#100
	A=32'h3f000000;
	B=32'h3e000000;
#100
	A=32'h3f000000;
	B=32'h41100000;
#100 
	A=32'h00000000;
	B=32'h00000000;
#100
	A=32'hc0c00000;
	B=32'h7f800000;

end


endmodule
