`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VHT
// Engineer: taindp@viettel.com.vn
// 
// Create Date: 24/05/2019 02:56:40 PM
// Design Name: 
// Module Name: multiplier_tb.v
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
module multiplier_tb;
   wire [31:0]result;
    wire underflow,overflow;

    reg [31:0]A,B;
  


    multiplier uut(.A(A),
                .B(B),
                .overflow(overflow),
                .underflow(underflow),
                .result(result));


    initial
        begin
            A = 32'b00111110000000000000000000000000; //0.125
            B = 32'b01000001000101100000000000000000; //9.375
    
            #50;

////////////////////////////////////////////////////////////////////////////////
            A=32'h44fc6000; //2019
            B=32'hc4f9e000; //-1999
      
            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b10111110000000000000000000000000; //-0.125
            B = 32'b11000001000101100000000000000000; //-9.375
  
            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b00000000000000000000000000000000; //0
            B = 32'b11000001000101100000000000000000; //-9.375
      
            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b01111111100000000000000000000000; //+vo cung
            B = 32'b11000001000101100000000000000000; //-9.375
      
            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b01111111100000000000000000000000; //+vo cung
            B = 32'b11111111100000000000000000000000; //-vo cung
         
            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b01111111100000000000000000000000; //+vo cung
            B = 32'b01111111100000000000000000000000; //+vo cung
         

            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b00111000010100011011011100010111; //0.00005
            B = 32'b01100000101011010111100011101100; //10^20


            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b00000000000000000000000000000000; //0
            B = 32'b01111111100000000000000000000000; //+vo cung
      
        
            #50;
//////////////////////////////////////////////////////////////////////////////////
            A = 32'b00000000000000000000000000000000; //0
            B = 32'b11111111100000000000000000000000; //-vo cung
            #50;
        end
endmodule
