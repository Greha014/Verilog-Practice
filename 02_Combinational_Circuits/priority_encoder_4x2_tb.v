`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 22:12:28
// Design Name: 
// Module Name: priority_encoder_4x2_tb
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


module priority_encoder_4x2_tb;
      reg [3:0]i;
      wire [1:0]out;
      priority_encoder_4x2 uut(
        .i(i), .out(out)
        );
        initial begin
      $monitor("Time = %0t | i = %b | out = %b ", $time , i, out);
      i = 4'b1xxx ; #100;
      i = 4'b01xx ; #100;
      i = 4'b001x ; #100;
      i = 4'b0001 ; #100;
      $finish;
      end
endmodule
