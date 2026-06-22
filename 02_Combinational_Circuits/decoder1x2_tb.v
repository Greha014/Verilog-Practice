`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 06:31:24
// Design Name: 
// Module Name: decoder1x2_tb
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
module decoder1x2_tb;

reg i;
reg en;

wire o1;
wire o2;

decoder1x2 DUT(
    .i(i),
    .en(en),
    .o1(o1),
    .o2(o2)
);

initial begin

    $monitor("en=%b i=%b o1=%b o2=%b",
              en,i,o1,o2);

    en=0; i=0; #10;
    en=0; i=1; #10;

    en=1; i=0; #10;
    en=1; i=1; #10;

    $finish;

end

endmodule