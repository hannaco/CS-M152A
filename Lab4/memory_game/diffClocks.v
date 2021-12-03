`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:18 10/27/2021 
// Design Name: 
// Module Name:    clock 
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
module clock(
    input clk,
    input rst,
    output reg clk_1,
    output reg clk_fast
    );

    
    integer counter_1; 
    integer counter_fast;  

    initial begin
        counter_1 = 0;
        counter_fast = 0; 
        clk_1 = 0;
        clk_fast = 0;
    end

            
    always @ (posedge clk) begin
        if (rst) begin
            counter_1 <= 0; 
            counter_fast <= 0; 
        end
        else begin
            if (counter_1 == 12999999) begin 
                counter_1 <= 0;
                clk_1 <= ~clk_1;
            end
            else begin
                counter_1 <= counter_1 + 1;
            end

            if (counter_fast == 49999) begin 
                counter_fast <= 0;
                clk_fast <= ~clk_fast;
            end
            else begin
                counter_fast <= counter_fast + 1;
            end
            
        end
    end 


endmodule
