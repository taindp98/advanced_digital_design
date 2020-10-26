module caculate_R(R,result,so_bit_0);

	input[23:0]R;
	output[23:0]result;
	output[4:0]so_bit_0;


	wire [47:0] x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23;
//cac so nay o dang BCD
	assign x23=R[23]?{4'b0101,44'd0}:48'd0; //0.5
	assign x22=R[22]?{8'b00100101,40'd0}:48'd0; //0.25
	assign x21=R[21]?{12'b000100100101,36'd0}:48'd0; //0.125
	assign x20=R[20]?{16'b0000011000100101,32'd0}:48'd0; //0.0625
	assign x19=R[19]?{20'b00000011000100100101,28'd0}:48'd0; //0.03125
	assign x18=R[18]?{24'b000000010101011000100101,24'd0}:48'd0; //0.015625
	assign x17=R[17]?{28'b0000000001111000000100100101,20'd0}:48'd0; //0.0078125
	assign x16=R[16]?{32'b00000000001110010000011000100101,16'd0}:48'd0; //0.00390625
	assign x15=R[15]?{36'b000000000001100101010011000100100101,12'd0}:48'd0;//0.001953125
	assign x14=R[14]?{40'b0000000000001001011101100101011000100101,8'd0}:48'd0;//0.0009765625
	assign x13=R[13]?{44'b00000000000001001000100000101000000100100101,4'd0}:48'd0;//0.00048828125
	assign x12=R[12]?48'b000000000000001001000100000101000000011000100101:48'd0;

	wire [47:0]f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,temp;
	adder48_BCD add1(.A(x23),.B(x22),.Cin(0),.S(f1),.Cout());
	adder48_BCD add2(.A(x21),.B(x20),.Cin(0),.S(f2),.Cout());
	adder48_BCD add3(.A(x19),.B(x18),.Cin(0),.S(f3),.Cout());
	adder48_BCD add4(.A(x17),.B(x16),.Cin(0),.S(f4),.Cout());
	adder48_BCD add5(.A(x15),.B(x14),.Cin(0),.S(f5),.Cout());
	adder48_BCD add6(.A(x13),.B(x12),.Cin(0),.S(f6),.Cout());

	adder48_BCD add7(.A(f1),.B(f2),.Cin(0),.S(f7),.Cout());
	adder48_BCD add8(.A(f3),.B(f4),.Cin(0),.S(f8),.Cout());
	adder48_BCD add9(.A(f5),.B(f6),.Cin(0),.S(f9),.Cout());

	adder48_BCD add10(.A(f7),.B(f8),.Cin(0),.S(f10),.Cout());
	adder48_BCD add11(.A(f10),.B(f9),.Cin(0),.S(temp),.Cout());


	//lam tron phan thap phan toi 5 chu so
	wire[35:0]g1,g2,g3,g4,g5;
	wire[17:0]h1,h2,h3,h4;
	mult18 mult1(.A({14'd0,temp[47:44]}),.B(18'b000010011100010000),.S(g1));//x10000
	mult18 mult2(.A({14'd0,temp[43:40]}),.B(18'b000000001111101000),.S(g2));//x1000
	mult18 mult3(.A({14'd0,temp[39:36]}),.B(18'b000000000001100100),.S(g3));//x100
	mult18 mult4(.A({14'd0,temp[35:32]}),.B(18'b000000000000001010),.S(g4));//x10
	mult18 mult5(.A({14'd0,temp[31:28]}),.B(18'b000000000000000001),.S(g5));//x1

	adder18 add12(.A(g1[17:0]),.B(g2[17:0]),.Cin(),.S(h1),.Cout());
	adder18 add13(.A(g3[17:0]),.B(g4[17:0]),.Cin(),.S(h2),.Cout());
	adder18 add14(.A(g5[17:0]),.B(h1),.Cin(),.S(h3),.Cout());
	adder18 add15(.A(h2),.B(h3),.Cin(),.S(h4),.Cout());

	assign result={6'd0,h4};
	/////caculate so mu cua phan thap phan
	wire[24:0] for_caculate_exp;
	wire [4:0]pos;
	wire flag;
	assign for_caculate_exp=temp[47:23];//vi find1first co input laf 25 bit nen lay 25 bit cho de
	find_1_first find1(.I(for_caculate_exp),.position(pos),.flag(flag));

	wire[4:0]bon,tam,muoihai,muoisau;
	adder6 add16(.A({1'b0,pos}),.B(6'b111100),.S(bon),.Cout());
	adder6 add17(.A({1'b0,pos}),.B(6'b111000),.S(tam),.Cout());
	adder6 add18(.A({1'b0,pos}),.B(6'b110100),.S(muoihai),.Cout());
	adder6 add19(.A({1'b0,pos}),.B(6'b110000),.S(muoisau),.Cout());

	assign so_bit_0=bon[4]?5'd0:tam[4]?5'd1:muoihai[4]?5'd2:muoisau[4]?5'd3:5'd4;



endmodule