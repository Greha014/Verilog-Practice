`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 21:45:06
// Design Name: 
// Module Name: encoder_8x3_tb
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


module encoder_8x3_tb;
   reg [7:0]i;
   wire [2:0]out;
   encoder_8x3 uut(
      .i(i), .out(out)
    );
    initial  begin 
      $monitor("Time = %0t| i = %b | out = %b", $time, i, out);
    i = 8'b0000_0001; #100;
    i = 8'b0000_0010; #100; 
    i = 8'b0000_0100; #100; 
    i = 8'b0000_1000; #100;
    i = 8'b0001_0000; #100; 
    i = 8'b0010_0000; #100; 
    i = 8'b0100_0000; #100;
    i= 8'b1000_0000 ; #100;
    $finish;
    end
endmodule
