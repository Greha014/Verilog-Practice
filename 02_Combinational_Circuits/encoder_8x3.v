`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 21:36:36
// Design Name: 
// Module Name: encoder_8x3
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


module encoder_8x3(
   input [7:0] i,
   output reg [2:0]out
    );
   always @(*) begin
    case(i)
    8'b0000_0001 : out = 3'b000;
    8'b0000_0010 : out = 3'b001;
    8'b0000_0100 : out = 3'b010;
    8'b0000_1000 : out = 3'b011;
    8'b0001_0000 : out = 3'b100;
    8'b0010_0000 : out = 3'b101;
    8'b0100_0000 : out = 3'b110;
    8'b1000_0000 : out = 3'b111;
    endcase
   end
endmodule
