`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 14:13:24
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
   reg a,b,c_in;
   wire sum,c_out;
   full_adder DUT(
   .a(a), .b(b), .c_in(c_in), 
   .sum(sum), .c_out(c_out)
   );
   initial begin
   $monitor("Time = %0t | a = %b | b = %b | c_in = %b | sum = %b | c_out = %b ",$time,a,b,c_in,sum,c_out);
     #10 a=0; b=0; c_in=0;
     #10 a=0; b=0; c_in=1;
     #10 a=0; b=1; c_in=0;
     #10 a=0; b=1; c_in=1;
     #10 a=1; b=0; c_in=0;
     #10 a=1; b=0; c_in=1;
     #10 a=1; b=1; c_in=0;
     #10 a=1; b=1; c_in=1;
     #10 $finish;
     end
endmodule
