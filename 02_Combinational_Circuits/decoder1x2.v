`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 06:20:46
// Design Name: 
// Module Name: decoder1x2
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
module decoder1x2(
    input i,
    input en,
    output reg o1,
    output reg o2
);

always @(*) begin

    if(en) begin
        case(i)
            1'b0: begin
                o1 = 1'b1;
                o2 = 1'b0;
            end

            1'b1: begin
                o1 = 1'b0;
                o2 = 1'b1;
            end
        endcase
    end

    else begin
        o1 = 1'b0;
        o2 = 1'b0;
    end

end

endmodule