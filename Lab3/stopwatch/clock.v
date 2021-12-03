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
    input [2:0] state,
    output reg clk_sel,
    output reg clk_fast,
    output reg clk_adj
    );

    reg clk_1;
    reg clk_2;
    
    integer counter_1;
    integer counter_2; 
    integer counter_fast; 
    integer counter_adj; 

    initial begin
        counter_1 = 0;
        counter_2 = 0; 
        counter_fast = 0; 
        counter_adj = 0;
        clk_1 = 0;
        clk_2 = 0;
        clk_sel = 0;
        clk_fast = 0;
        clk_adj= 0;
    end
    
    localparam STATE_S0 = 3'b000;
    localparam STATE_S1 = 3'b001;
    localparam STATE_S2 = 3'b010;
    localparam STATE_S3 = 3'b011;
    localparam STATE_S4 = 3'b100;
    
//    assign clk_sel = (clk_1 && state == STATE_S1) || (clk_2 && (state == STATE_S3 || state == STATE_S4));
            
    always @ (posedge clk) begin
        if (rst) begin
            counter_1 <= 0;
            counter_2 <= 0; 
            counter_fast <= 0; 
            counter_adj <= 0;
        end
        else begin
            if (counter_1 == 49999999) begin 
                counter_1 <= 0;
                clk_1 <= ~clk_1;
            end
            else begin
                counter_1 <= counter_1 + 1;
            end
            
            if (counter_2 == 24999999) begin 
                counter_2 <= 0;
                clk_2 <= ~clk_2;
            end
            else begin
                counter_2 <= counter_2 + 1;
            end
            
            if (counter_fast == 49999) begin 
                counter_fast <= 0;
                clk_fast <= ~clk_fast;
            end
            else begin
                counter_fast <= counter_fast + 1;
            end
            
            if (counter_adj == 9999999) begin 
                counter_adj <= 0;
                clk_adj <= ~clk_adj;
            end
            else begin
                counter_adj <= counter_adj + 1;
            end
        end
        
        if(state == STATE_S3 || state == STATE_S4) begin
            clk_sel <= clk_2;
        end
        else begin
            clk_sel <= clk_1;
        end
    end 


endmodule
