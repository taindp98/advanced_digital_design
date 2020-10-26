`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2020 02:42:30 AM
// Design Name: 
// Module Name: conv_main
// Project Name: 
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


module conv_main(
    clk,
    a,
    b
    );
    input clk;
    input[31:0] a;
    output[7:0] b;
    reg [7:0] b;
    reg [31:0] a1;
    always(posedge clk) begin
        b=8'b0;
        a1=a;
        while(a1>1) begin
            b=b+8'b0000_0001;
            a1=a1/10;
        end
    end     
   
endmodule
