`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 14:14:40
// Design Name: 
// Module Name: demux4x1_tb
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
module demux1x4_tb;

reg I;
reg [1:0] s;
wire [3:0] y;

demux1x4 DUT(
    .I(I),
    .s(s),
    .y(y)
);

initial begin
    $display("I s  y");
    $monitor("%b %b %b", I, s, y);

    I = 1;

    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

    $finish;
end

endmodule