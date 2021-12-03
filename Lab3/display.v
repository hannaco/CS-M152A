`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:44 11/01/2021 
// Design Name: 
// Module Name:    display 
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
module display(
    input clk,
    input adj,
    input sel,
    input rst,
    input pauseBtn,
    output reg AN0,
    output reg AN1,
    output reg AN2,
    output reg AN3,
    output CA,
    output CB,
    output CC,
    output CD,
    output CE,
    output CF,
    output CG
    );
    
    wire clk_1;
    wire clk_2;
    wire clk_fast;
    wire clk_adj;
    
    clock diffClocks (
       .clk(clk),
       .rst(rst),
       .clk_1(clk_1),
       .clk_2(clk_2),
       .clk_fast(clk_fast),
       .clk_adj(clk_adj)
    );
    
    reg [3:0] digit0;
    reg [3:0] digit1;
    reg [3:0] digit2;
    reg [3:0] digit3;
    
    reg [1:0] digitSelect;
    reg [3:0] currDigit;
    
    reg pause;
    reg [2:0] step_d;
    
    initial begin 
        digit0 = 0;
        digit1 = 0;
        digit2 = 0;
        digit3 = 0;
        digitSelect = 0;
        currDigit = 0;
        AN0 = 1;
        AN1 = 1;
        AN2 = 1;
        AN3 = 1;
        pause = 0;
        step_d = 0;
    end

    always@(posedge clk or posedge rst) begin
       if(rst) begin
            step_d[2:0] <= 0;
            pause <= 0;
       end
       else begin 
            step_d[2:0] <= {pauseBtn, step_d[2:1]};
            if(step_d[1] && ~step_d[0]) begin
               pause <= ~pause;
            end
       end
    end
    
    always@(posedge clk_1 or posedge rst) begin
        if (rst) begin
            digit0 <= 0;
            digit1 <= 0;
            digit2 <= 0;
            digit3 <= 0;
        end
        else if (~pause) begin 
            if(digit0 == 4'b1001) begin
                digit0 <= 0;
                if(digit1 == 4'b0101) begin
                    digit1 <= 0;
                    if(digit2 == 4'b1001) begin
                        digit2 <= 0;
                        if(digit3 == 4'b0101) begin
                            digit3 <= 0;
                        end
                        else begin
                            digit3 <= digit3 + 1;
                        end
                    end
                    else begin
                        digit2 <= digit2 + 1;
                    end
                end
                else begin
                    digit1 <= digit1 + 1;
                end
            end
            else begin
                digit0 <= digit0 + 1;
            end
        end 
    
    end
    
    digit getSeg (
            .number(currDigit),
            .A(CA),
            .B(CB),
            .C(CC),
            .D(CD),
            .E(CE),
            .F(CF),
            .G(CG)
        );

    always@(posedge clk_fast) begin
        AN0 <= (digitSelect != 2'b00);
        AN1 <= (digitSelect != 2'b01);
        AN2 <= (digitSelect != 2'b10);
        AN3 <= (digitSelect != 2'b11);
        
        case (digitSelect)
            2'b00:
                currDigit <= digit0;
            2'b01:
                currDigit <= digit1;
            2'b10:
                currDigit <= digit2;
            2'b11:
                currDigit <= digit3;
            default:
                currDigit <= digit0;  
        endcase
        
        digitSelect <= digitSelect + 1;
        
    end


endmodule
