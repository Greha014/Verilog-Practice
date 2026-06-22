`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 21:09:08
// Design Name: 
// Module Name: encoder_4x2_tb
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


module encoder_4x2_tb;
       reg [3:0]i;
       wire [1:0]out;
     encoder_4x2 UUT(
        .i(i), .out(out)
        );
        initial begin
          $monitor("Time = %0t | i = %b | out = %b", $time, i, out);
          i = 4'b0001; #100;
          i = 4'b0010; #100;
          i = 4'b0100; #100;
          i = 4'b1000; #100;
          $finish;
        end   
endmodule
