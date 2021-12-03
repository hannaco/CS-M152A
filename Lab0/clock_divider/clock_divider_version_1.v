`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:49 10/04/2021 
// Design Name: 
// Module Name:    clock_divider_version_1 
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
module clock_divider_version_1(
    input clk,
    input rst,
    output reg led
    );
 
integer counter; 
        
always @ (posedge clk) begin
    if (rst) begin
        led <= 1'b0;
        counter <= 0;
    end
    else if (counter == 49999999) begin 
        led <= ~led;
        counter <= 0;
    end
    else begin 
        counter <= counter + 1;
    end
end 


endmodule
