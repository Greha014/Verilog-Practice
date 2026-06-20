`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 14:07:28
// Design Name: 
// Module Name: demux1x4
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


module demux1x4(
    input I,
    input [1:0] s,
    output reg [3:0] y
);

always @(*) begin
    y = 4'b0000;   // Clear all outputs

    case(s)
        2'b00: y[0] = I;
        2'b01: y[1] = I;
        2'b10: y[2] = I;
        2'b11: y[3] = I;
        default: y = 4'b0000;
    endcase
end

endmodule