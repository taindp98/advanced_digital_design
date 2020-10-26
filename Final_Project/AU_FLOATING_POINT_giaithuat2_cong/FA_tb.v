`timescale 1ns/1ns
module FA_tb;
	reg a,b,cin;
	wire s,cout;

	FA FA_uut(a,b,cin,s,cout);

	initial
		begin
			a=1'b1;
			b=1'b0;
			cin=1'b1;
			#50

			a=1'b1;
			b=1'b1;
			cin=1'b1;
			#50

			a=1'b0;
			b=1'b0;
			cin=1'b1;
			#50

			a=1'b1;
			b=1'b0;
			cin=1'b0;
			
		end
endmodule