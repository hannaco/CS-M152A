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
    input adjSw,
    input selSw,
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
    
    wire clk_sel;
    wire clk_fast;
    wire clk_adj;
    
    reg [2:0] state, next_state;

    localparam STATE_S0 = 3'b000;
    localparam STATE_S1 = 3'b001;
    localparam STATE_S2 = 3'b010;
    localparam STATE_S3 = 3'b011;
    localparam STATE_S4 = 3'b100;
    
    clock diffClocks (
       .state(state),
       .clk(clk),
       .rst(rst),
       .clk_sel(clk_sel),
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
    reg adj;
    reg sel;
    reg [2:0] step_pause;
    reg [2:0] step_adj;
    reg [2:0] step_sel;

    reg blink;
    reg shouldBlink;

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
        adj = 0;
        sel = 0;
        step_pause = 0;
        step_adj = 0;
        step_sel = 0;
        blink = 0;
        shouldBlink = 0;
        state = STATE_S0;
        next_state = STATE_S0;
    end

    always@(posedge clk_sel or posedge rst) begin
        if(rst) begin
            state = STATE_S0;
        end
        else begin
            state = next_state;
        end
    end

    always@(posedge clk or posedge rst) begin
       if(rst) begin
            step_pause[2:0] <= 0;
            step_adj[2:0] <=0;
            step_sel[2:0] <=0;
            pause <= 0;
            adj <= 0;
            sel <= 0;
       end
       else begin 
            step_pause[2:0] <= {pauseBtn, step_pause[2:1]};
            step_adj[2:0] <= {adjSw, step_adj[2:1]}; 
            step_sel[2:0] <= {selSw, step_sel[2:1]}; 
            if(step_pause[1] && ~step_pause[0]) begin
               pause <= ~pause;
            end
            if(step_adj[1] && ~step_adj[0]) begin
               adj <= 1;
            end
            if(~step_adj[1] && step_adj[0]) begin
               adj <= 0;
            end
            if(step_sel[1] && ~step_sel[0]) begin
               sel <= 1;
            end
            if(~step_sel[1] && step_sel[0]) begin
               sel <= 0;
            end
       end
    end


    always@(*) begin
        case(state)
            STATE_S0: begin
                if (pause) begin
                    next_state <= STATE_S2;
                end
                else if (adj == 0) begin
                    next_state <= STATE_S1;
                end
                else if (sel == 0) begin
                    next_state <= STATE_S3;
                end
                else if (sel == 1) begin
                    next_state <= STATE_S4;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S1: begin
                if (pause == 1) begin
                    next_state <= STATE_S2;
                end
                else if (adj == 1 && sel == 0) begin
                    next_state <= STATE_S3;
                end
                else if(adj == 1 && sel == 1) begin
                    next_state <= STATE_S4;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S2: begin
                if(~pause && adj == 1 && sel == 0) begin
                    next_state <= STATE_S3;
                end
                else if (~pause && adj == 1 && sel == 1) begin
                    next_state <= STATE_S4;
                end
                else if (~pause && adj == 0) begin
                    next_state <= STATE_S1;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S3: begin
                if(pause) begin
                    next_state <= STATE_S2;
                end
                else if (adj == 1 && sel == 1) begin
                    next_state <= STATE_S4;
                end
                else if (adj == 0) begin
                    next_state <= STATE_S1;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S4: begin
                if(pause) begin
                    next_state <= STATE_S2;
                end
                else if (adj == 1 && sel == 0) begin
                    next_state <= STATE_S3;
                end
                else if (adj == 0) begin
                    next_state <= STATE_S1;
                end
                else begin
                    next_state <= state;
                end
            end
            default: next_state <= state;
        endcase
    end 
    
    always@(posedge clk_sel) begin
        if (state == STATE_S0) begin
            digit0 <= 0;
            digit1 <= 0;
            digit2 <= 0;
            digit3 <= 0;
        end
        else if (state == STATE_S1) begin 
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
        else if (state == STATE_S3) begin 
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
        else if (state == STATE_S4) begin 
            if(digit0 == 4'b1001) begin
                digit0 <= 0;
                if(digit1 == 4'b0101) begin
                    digit1 <= 0;
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
            .blink(blink),
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
            2'b00: begin
                currDigit <= digit0;
                if(state == STATE_S4) begin
                    blink <= shouldBlink;
                end
                else begin
                    blink <= 0; 
                end
            end
            2'b01: begin
                currDigit <= digit1;
                if(state == STATE_S4) begin
                    blink <= shouldBlink;
                end
                else begin
                    blink <= 0; 
                end
            end
            2'b10: begin
                currDigit <= digit2;
                if(state == STATE_S3) begin
                    blink <= shouldBlink;
                end
                else begin
                    blink <= 0; 
                end
            end
            2'b11: begin
                currDigit <= digit3;
                if(state == STATE_S3) begin
                    blink <= shouldBlink;
                end
                else begin
                    blink <= 0; 
                end
            end
            default: begin
                currDigit <= digit0; 
                blink <= 0; 
            end
        endcase
        
        digitSelect <= digitSelect + 1;
        
    end


    always@(posedge clk_adj) begin
        if(state == STATE_S3 || state == STATE_S4) begin
            shouldBlink <= ~shouldBlink;
        end
        else begin
            shouldBlink <= 0;
        end
    end


endmodule
