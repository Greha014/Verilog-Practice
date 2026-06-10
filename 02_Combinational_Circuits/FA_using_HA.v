`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 19:08:58
// Design Name: 
// Module Name: FA_using_HA
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


module FA_using_HA(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
    );
    half_adder1 HA1 (
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);
half_adder1 HA2 (
    .a(s1),
    .b(c_in),
    .sum(sum),
    .carry(c2)
);
assign c_out = c1 | c2;

endmodule
