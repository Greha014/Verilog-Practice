`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 06:46:09
// Design Name: 
// Module Name: decoder3x8_tb
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
module decoder3x8_tb;

reg [2:0] a;
reg en;

wire [7:0] y;

decoder3x8 DUT(
    .a(a),
    .en(en),
    .y(y)
);

initial begin

    $monitor("Time=%0t en=%b a=%b y=%b",
              $time,en,a,y);

    en = 0; a = 3'b000; #10;

    en = 1; a = 3'b000; #10;
    en = 1; a = 3'b001; #10;
    en = 1; a = 3'b010; #10;
    en = 1; a = 3'b011; #10;
    en = 1; a = 3'b100; #10;
    en = 1; a = 3'b101; #10;
    en = 1; a = 3'b110; #10;
    en = 1; a = 3'b111; #10;

    $finish;

end

endmodule