`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2026 23:15:51
// Design Name: 
// Module Name: mux_2x1_tb
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


module mux_2x1_tb;
    reg [1:0]i;
    reg s;
    wire y;
    mux_2x1 DUT(
      .i(i), 
      .s(s), 
      .y(y)
      );
   initial begin
   $monitor("Time = %t | i0 = %b | i1 = %b | s = %b | y =%b", $time, i[0], i[1], s, y);
   i = 2'b00 ; s = 0 ; #10;
   i = 2'b01 ; s = 0 ; #10;
   i = 2'b10 ; s = 0 ; #10;
   i = 2'b11 ; s = 0 ; #10;
   
   $finish;
   end      
endmodule
