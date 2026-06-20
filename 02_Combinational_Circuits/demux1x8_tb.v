`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 14:38:57
// Design Name: 
// Module Name: demux1x8_tb
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
module demux1x8_tb;

reg I;
reg [2:0] s;
wire [7:0] y;

demux1x8 DUT(
    .I(I),
    .s(s),
    .y(y)
);

initial begin
    I = 1'b1;

    $display("I  S    Y");
    $monitor("%b  %b  %b", I, s, y);

    s = 3'b000; #10;
    s = 3'b001; #10;
    s = 3'b010; #10;
    s = 3'b011; #10;
    s = 3'b100; #10;
    s = 3'b101; #10;
    s = 3'b110; #10;
    s = 3'b111; #10;

    $finish;
end

endmodule