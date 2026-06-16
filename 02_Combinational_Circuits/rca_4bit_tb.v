`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 22:19:28
// Design Name: 
// Module Name: rca_4bit_tb
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
module rca_4bit_tb;

reg [3:0] a;
reg [3:0] b;
reg c;

wire [3:0] sum;
wire cout;

rca_4bit uut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .cout(cout)
);

initial begin
    $monitor("Time=%0t a=%b b=%b c=%b sum=%b cout=%b",
              $time, a, b, c, sum, cout);

    a = 4'b0000; b = 4'b0000; c = 0; #10;
    a = 4'b0001; b = 4'b0010; c = 0; #10;
    a = 4'b0011; b = 4'b0101; c = 0; #10;
    a = 4'b0111; b = 4'b1000; c = 0; #10;
    a = 4'b1111; b = 4'b0001; c = 0; #10;
    a = 4'b1010; b = 4'b0101; c = 1; #10;

    $finish;
end

endmodule
