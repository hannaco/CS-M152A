`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:19 11/01/2021 
// Design Name: 
// Module Name:    digit 
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
module digit(
    input player,
    input [1:0] letter,
    input [2:0] state,
    output reg A,
    output reg B,
    output reg C,
    output reg D,
    output reg E,
    output reg F,
    output reg G
    );
    
    localparam STATE_S0 = 3'b000;
    localparam STATE_S1 = 3'b001;
    localparam STATE_S2 = 3'b010;
    localparam STATE_S3 = 3'b011;
    localparam STATE_S4 = 3'b100;
    localparam STATE_S5 = 3'b101;
    
    always@(*) begin
        if(letter == 0) begin
            A = 0;
            B = 0;
            C = 1;
            D = 1;
            E = 0;
            F = 0;
            G = 0;
        end else if(letter == 3 || letter == 2) begin
            if (state == STATE_S1 || state == STATE_S3) begin
                A = 0;
                B = 1;
                C = 0;
                D = 0;
                E = 1;
                F = 0;
                G = 0;
            end
            else begin
                A = 1;
                B = 1;
                C = 1;
                D = 1;
                E = 1;
                F = 1;
                G = 1;
            end
        end else if (player == 0)begin
            A = 1;
            B = 0;
            C = 0;
            D = 1;
            E = 1;
            F = 1;
            G = 1;
        end else begin
            A = 0;
            B = 0;
            C = 1;
            D = 0;
            E = 0;
            F = 1;
            G = 0;
        end
    end
    
endmodule
