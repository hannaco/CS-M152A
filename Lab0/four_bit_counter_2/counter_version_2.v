`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:01 10/04/2021 
// Design Name: 
// Module Name:    counter_version_2 
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
module counter_version_2(
    input rst,
    input clk,
    output reg [3:0] a
    );
    
always @ (posedge clk) begin
    if (rst) begin
        a <= 4'b0000;
    end
    else begin 
        a <= a + 1'b1;
    end
end 
endmodule
