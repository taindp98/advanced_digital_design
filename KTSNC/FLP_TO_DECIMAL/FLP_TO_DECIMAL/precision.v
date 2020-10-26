module precision(Q,sign,result);
	input[23:0]Q;
	input sign;
	output[23:0]result;

	wire [23:0] z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,z20,z21,z22,z23;

	wire[23:0]result_temp,cpl_result_temp;
	assign z0=Q[0]?24'd1:24'd0; //1
	assign z1=Q[1]?24'd2:24'd0; //2
	assign z2=Q[2]?24'd4:24'd0; //4
	assign z3=Q[3]?24'd8:24'd0; //8
	assign z4=Q[4]?24'd16:24'd0; //16
	assign z5=Q[5]?24'd32:24'd0; //32
	assign z6=Q[6]?24'd64:24'd0; //64
	assign z7=Q[7]?24'd128:24'd0; //128
	assign z8=Q[8]?24'd256:24'd0;  //256
	assign z9=Q[9]?24'd512:24'd0;  //512
	assign z10=Q[10]?24'd1024:24'd0; //1024
	assign z11=Q[11]?24'd2048:24'd0; //2048
	assign z12=Q[12]?24'd4096:24'd0; //4096
	assign z13=Q[13]?24'd8192:24'd0; //8192
	assign z14=Q[14]?24'd16384:24'd0; //16384
	assign z15=Q[15]?24'd32768:24'd0; //32768
	assign z16=Q[16]?24'd65536:24'd0; //65536
	assign z17=Q[17]?24'd131072:24'd0; //131072
	assign z18=Q[18]?24'd262144:24'd0; //262144
	assign z19=Q[19]?24'd524288:24'd0; //524288
	assign z20=Q[20]?24'd1048576:24'd0; //1048576
	assign z21=Q[21]?24'd2097152:24'd0; //2097152
	assign z22=Q[22]?24'd4194304:24'd0; //4194304
	assign z23=Q[23]?24'd8388608:24'd0; //8388608

	wire[23:0]temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19,
				temp20,temp21,temp22;
	adder24 add1(.A(z0),.B(z1),.S(temp1),.Cout());
	adder24 add2(.A(z2),.B(z3),.S(temp2),.Cout());
	adder24 add3(.A(z4),.B(z5),.S(temp3),.Cout());
	adder24 add4(.A(z6),.B(z7),.S(temp4),.Cout());
	adder24 add5(.A(z8),.B(z19),.S(temp5),.Cout());
	adder24 add6(.A(z10),.B(z11),.S(temp6),.Cout());
	adder24 add7(.A(z12),.B(z13),.S(temp7),.Cout());
	adder24 add8(.A(z14),.B(z15),.S(temp8),.Cout());
	adder24 add9(.A(z16),.B(z17),.S(temp9),.Cout());
	adder24 add10(.A(z18),.B(z19),.S(temp10),.Cout());
	adder24 add11(.A(z20),.B(z21),.S(temp11),.Cout());
	adder24 add12(.A(z22),.B(z23),.S(temp12),.Cout());

	adder24 add13(.A(temp1),.B(temp2),.S(temp13),.Cout());
	adder24 add14(.A(temp3),.B(temp4),.S(temp14),.Cout());
	adder24 add15(.A(temp5),.B(temp6),.S(temp15),.Cout());
	adder24 add16(.A(temp7),.B(temp8),.S(temp16),.Cout());
	adder24 add17(.A(temp9),.B(temp10),.S(temp17),.Cout());
	adder24 add18(.A(temp11),.B(temp12),.S(temp18),.Cout());

	adder24 add19(.A(temp13),.B(temp14),.S(temp19),.Cout());
	adder24 add20(.A(temp15),.B(temp16),.S(temp20),.Cout());
	adder24 add21(.A(temp17),.B(temp18),.S(temp21),.Cout());

	adder24 add22(.A(temp19),.B(temp20),.S(temp22),.Cout());
	adder24 add23(.A(temp21),.B(temp22),.S(result_temp),.Cout());

	

	two_compliment24 cply(.data_in(result_temp),.data_out(cpl_result_temp));
	assign result=sign?cpl_result_temp:result_temp;
endmodule

