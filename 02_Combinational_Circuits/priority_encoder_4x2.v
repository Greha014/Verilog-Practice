`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 22:06:46
// Design Name: 
// Module Name: priority_encoder_4x2
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


module priority_encoder_4x2(
      input [3:0]i,
      output reg [1:0]out
    );
    always @(*) begin
     case(i) 
      4'b1xxx : out = 2'b00;
      4'b01xx : out = 2'b01;
      4'b001x : out = 2'b10;
      4'b0001 : out = 2'b11;
     endcase
    end 
endmodule
