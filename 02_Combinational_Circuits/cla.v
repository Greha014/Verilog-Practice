`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 22:57:48
// Design Name: 
// Module Name: cla
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
module cla (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [4:0] C
);

wire [3:0] G;
wire [3:0] P;

assign G = A & B;
assign P = A ^ B;

assign C[0] = Cin;

assign C[1] = G[0] | (P[0] & C[0]);

assign C[2] = G[1] |
              (P[1] & G[0]) |
              (P[1] & P[0] & C[0]);

assign C[3] = G[2] |
              (P[2] & G[1]) |
              (P[2] & P[1] & G[0]) |
              (P[2] & P[1] & P[0] & C[0]);

assign C[4] = G[3] |
              (P[3] & G[2]) |
              (P[3] & P[2] & G[1]) |
              (P[3] & P[2] & P[1] & G[0]) |
              (P[3] & P[2] & P[1] & P[0] & C[0]);

endmodule