`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 14:15:34
// Design Name: 
// Module Name: mux4x1_tb
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
module mux4x1_tb;

reg i0, i1, i2, i3;
reg s0, s1;
wire y;

mux4x1 uut (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin
    $monitor("Time=%0t | s1=%b s0=%b | y=%b",
              $time, s1, s0, y);

    // Input values
    i0 = 0;
    i1 = 1;
    i2 = 0;
    i3 = 1;

    s1 = 0; s0 = 0; #10;
    s1 = 0; s0 = 1; #10;
    s1 = 1; s0 = 0; #10;
    s1 = 1; s0 = 1; #10;

    $finish;
end

endmodule