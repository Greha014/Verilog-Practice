`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 22:59:29
// Design Name: 
// Module Name: cla_tb
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
// s
module cla_tb;

reg  [3:0] A;
reg  [3:0] B;
reg        Cin;

wire [4:0] C;

cla uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .C(C)
);

initial begin

    $display("Time\tA\tB\tCin\tC");
    $monitor("%0t\t%b\t%b\t%b\t%b",
              $time, A, B, Cin, C);

    // Test Case 1
    A = 4'b0000;
    B = 4'b0000;
    Cin = 0;
    #10;

    // Test Case 2
    A = 4'b0001;
    B = 4'b0001;
    Cin = 0;
    #10;

    // Test Case 3
    A = 4'b0011;
    B = 4'b0101;
    Cin = 0;
    #10;

    // Test Case 4
    A = 4'b1111;
    B = 4'b0001;
    Cin = 0;
    #10;

    // Test Case 5
    A = 4'b1010;
    B = 4'b0101;
    Cin = 1;
    #10;

    // Test Case 6
    A = 4'b1111;
    B = 4'b1111;
    Cin = 1;
    #10;

    $finish;

end

endmodule