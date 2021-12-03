`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:08 09/29/2021 
// Design Name: 
// Module Name:    counter_version_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter_version_1(
    input rst,
    input clk,
    output reg a0,
    output reg a1,
    output reg a2,
    output reg a3
    );

always @ (posedge clk) begin
    if (rst) begin
        a0 <= 1'b0;
        a1 <= 1'b0;
        a2 <= 1'b0;
        a3 <= 1'b0;
    end
    else begin
        a0 <= ~a0;
        a1 <= a0 ^ a1;
        a2 <= a2 ^ (a0 & a1);
        a3 <= a3 ^ (a2 & (a0 & a1));
    end
end

endmodule
