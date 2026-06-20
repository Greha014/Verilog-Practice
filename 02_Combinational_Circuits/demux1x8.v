`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 14:36:00
// Design Name: 
// Module Name: demux1x8
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
module demux1x8(
    input I,
    input [2:0] s,
    output [7:0] y
);

wire [3:0] y_low;
wire [3:0] y_high;

demux1x4 D0(
    .I(I & ~s[2]),
    .s(s[1:0]),
    .y(y_low)
);

demux1x4 D1(
    .I(I & s[2]),
    .s(s[1:0]),
    .y(y_high)
);

assign y = {y_high, y_low};

endmodule
