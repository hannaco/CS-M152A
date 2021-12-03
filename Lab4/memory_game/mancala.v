`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:04 11/17/2021 
// Design Name: 
// Module Name:    mancala 
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
module mancala(
    input clk,
    input btnl,
    input btnr,
    input enter,
    input rst,
    input wire dclk,			//pixel clock: 25MHz
    output reg AN0,
    output reg AN1,
    output reg AN3,
    output reg CA,
    output reg CB,
    output reg CC,
    output reg CD,
    output reg CE,
    output reg CF,
    output reg CG,
    output wire hsync,		//horizontal sync out
	output wire vsync,		//vertical sync out
	output wire [2:0] red,	//red vga output
	output wire [2:0] green, //green vga output
	output wire [1:0] blue,	//blue vga output
    output reg done
    );
    
    wire clk_1;
    wire clk_fast;
    
    reg [2:0] state, next_state;
    
    localparam STATE_S0 = 3'b000;
    localparam STATE_S1 = 3'b001;
    localparam STATE_S2 = 3'b010;
    localparam STATE_S3 = 3'b011;
    localparam STATE_S4 = 3'b100;
    localparam STATE_S5 = 3'b101;
    localparam STATE_S6 = 3'b110;
    
    // TODO: implement finish and movement for player 2 
    // game is finished when one of the rows is completely empty

    reg sel;
    // turn done
    // reg done;
    // player chooses another pocket
    reg cont;
    // game is finished (check sum of marbles[7] and marbles[13)
    reg finish;
    reg [2:0] step_sel;
    reg [2:0] step_left;
    reg [2:0] step_right;
    
    reg pickup;
    
    reg firstTick;
    
    clock diffClocks (
       .clk(clk),
       .rst(rst),
       .clk_1(clk_1),
       .clk_fast(clk_fast)
    );
    
    // active pocket
    reg [3:0] pocket_curr;
    // pocket player selects
    reg [3:0] pocket_sel;
    // how many marbles in each pocket
    reg [13:0][5:0] marbles;
    // whose player turn it is
    reg player;
    reg [1:0] digitSelect;
    reg [5:0] handful;
    
    wire [5:0] sum1;
    wire [5:0] sum2;
    
    reg tie;
    reg left;
    reg right;
    reg moved;
    
    //VGA display
    vga640x480 U3(
	.dclk(dclk),
	.clr(rst),
    .marbles(marbles),
    .pocket_curr(pocket_curr),
	.hsync(hsync),
	.vsync(vsync),
	.red(red),
	.green(green),
	.blue(blue)
	);
    
    initial begin 
        player = 0;
        pocket_curr = 0;
        pocket_sel = 0;
        marbles[0] = 4;
        marbles[1] = 4;
        marbles[2] = 4;
        marbles[3] = 4;
        marbles[4] = 4;
        marbles[5] = 4;
        marbles[6] = 0;
        marbles[7] = 4;
        marbles[8] = 4;
        marbles[9] = 4;
        marbles[10] = 4;
        marbles[11] = 4;
        marbles[12] = 4;
        marbles[13] = 0;
        handful = 0;
        done = 0;
        digitSelect = 0;
        state = STATE_S0;
        next_state = STATE_S0;
        step_sel = 0;
        step_left = 0;
        step_right = 0;
        pickup = 0;
        firstTick = 0;
        tie = 0;
        left = 0;
        right = 0;
        moved = 0;
    end
    
    assign sum1 = marbles[0] + marbles[1] + marbles[2] + marbles[3] + marbles[4] + marbles[5];
    assign sum2 = marbles[7] + marbles[8] + marbles[9] + marbles[10] + marbles[11] + marbles[12];
    
    always@(posedge clk_1 or posedge rst) begin
        if(rst) begin
            state = STATE_S0;
        end
        else begin
            state = next_state;
        end
    end

    always@(posedge clk or posedge rst) begin
       if(rst) begin
            step_sel[2:0] <= 0;
            step_left[2:0] <=0;
            step_right[2:0] <=0;
            left <= 0;
            right <= 0;
            sel <= 0;
       end
       else if (moved == 1) begin
            left <= 0;
            right <= 0;
       end
       else begin 
            step_sel[2:0] <= {enter, step_sel[2:1]};
            step_left[2:0] <= {btnl, step_left[2:1]}; 
            step_right[2:0] <= {btnr, step_right[2:1]}; 
            
            if(step_sel[1] && ~step_sel[0]) begin
               sel <= 1;
            end 
            if(step_left[1] && ~step_left[0]) begin
                left <= 1;
            end
            if(step_right[1] && ~step_right[0]) begin
               right <= 1;
            end
            
            if (state != STATE_S1 && state != STATE_S3) begin
                sel <= 0;
            end     
       end
    end
    
    always@(*) begin
        case(state)
            STATE_S0: begin
                next_state <= STATE_S1;
            end
            STATE_S1: begin
                if(sum1 == 0 || sum2 == 0) begin
                    next_state <= STATE_S5;
                end
                else if (sel == 1) begin
                    next_state <= STATE_S2;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S2: begin
                // check if done with our turn
                if(done == 1) begin
                    next_state <= STATE_S3;
                end
                // check if we select another pocket
                else if(cont == 1) begin
                    next_state <= STATE_S1;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S3: begin
                if(sum1 == 0 || sum2 == 0) begin
                    next_state <= STATE_S5;
                end
                else if (sel == 1) begin
                    next_state <= STATE_S4;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S4: begin
                // check if done with our turn
                if(done == 1) begin
                    next_state <= STATE_S1;
                end
                // check if we select another pocket
                else if(cont == 1) begin
                    next_state <= STATE_S3;
                end
                else begin
                    next_state <= state;
                end
            end
            STATE_S5: begin
                next_state <= STATE_S6;
            end
            STATE_S6: begin
                next_state <= STATE_S6;
            end
            default: next_state <= state;
        endcase
    end 
    
    always@(posedge clk_1) begin
        moved <= 0;
        if (state == STATE_S0) begin
            player <= 0;
            pocket_curr <= 0;
            marbles[0] <= 4;
            marbles[1] <= 4;
            marbles[2] <= 4;
            marbles[3] <= 4;
            marbles[4] <= 4;
            marbles[5] <= 4;
            marbles[6] <= 0;
            marbles[7] <= 4;
            marbles[8] <= 4;
            marbles[9] <= 4;
            marbles[10] <= 4;
            marbles[11] <= 4;
            marbles[12] <= 4;
            marbles[13] <= 0;
            handful <= 0;
            pickup <= 0;
            done <= 0;
            moved <= 0;
            firstTick <= 0;
        end
        else if (state == STATE_S1) begin
            player <= 0;
            
            //start selection
            if (firstTick == 0) begin
                pocket_curr <= 0;
                firstTick <= 1;
            end

            // pocket movement
            if (left == 1) begin 
                if(pocket_curr == 0) begin
                    pocket_curr <= 0;
                end
                else begin
                    pocket_curr <= pocket_curr - 1;
                end
                moved <= 1;
            end
            else if (right == 1) begin
                if(pocket_curr == 5) begin
                    pocket_curr <= 5;
                end
                else begin
                    pocket_curr <= pocket_curr + 1;
                end
                moved <= 1;
            end
            
            pickup <= 1;
            done <= 0;
            cont <= 0;
        end
        else if (state == STATE_S3) begin
            player <= 1;
            
            //start selection
            if (firstTick == 0) begin
                pocket_curr <= 12;
                firstTick <= 1;
            end

            // pocket movement
            if (left == 1) begin 
                if(pocket_curr == 12) begin
                    pocket_curr <= 12;
                end
                else begin
                    pocket_curr <= pocket_curr + 1;
                end
                moved <= 1;
            end
            else if (right == 1) begin
                if(pocket_curr == 7) begin
                    pocket_curr <= 7;
                end
                else begin
                    pocket_curr <= pocket_curr - 1;
                end
                moved <= 1;
            end
            
//            pocket_curr <= pocket_sel;
            pickup <= 1;
            done <= 0;
            cont <= 0;
        end
        else if(state == STATE_S2) begin
            firstTick <= 0;
            player <= 0;
            if(pickup) begin
                handful <= handful + marbles[pocket_curr];
                marbles[pocket_curr] <= 0;
                pickup <= 0;
                if(pocket_curr + 1 == 13) begin
                        pocket_curr <= 0;
                end 
                else begin
                    pocket_curr <= pocket_curr + 1; 
                end
            end
            else begin 
                if (handful > 1) begin
                    handful <= handful - 1;
                    marbles[pocket_curr] <= marbles[pocket_curr]+1;
                    // skip P2's pocket
                    if(pocket_curr + 1 == 13) begin
                        pocket_curr <= 0;
                    end 
                    else begin
                       pocket_curr <= pocket_curr + 1; 
                    end
                end
                else if (handful == 1) begin
                    // if we're at the store
                    if(pocket_curr == 6) begin
                        marbles[pocket_curr] <= marbles[pocket_curr]+1;
                        handful <= 0;
                        cont <= 1;
                    end
                    // pocket is empty
                    else if (marbles[pocket_curr] == 0) begin
                        handful <= 0;
                        marbles[pocket_curr] <= marbles[pocket_curr]+1;
                        done <= 1;
                    end
                    // pocket is not empty
                    else begin
                        pickup <= 1;
                    end            
                end
                else begin
                    done <= 1;
                end
            end
        end
        else if(state == STATE_S4) begin
            firstTick <= 0;
            player <= 1;
            if(pickup) begin
                handful <= handful + marbles[pocket_curr];
                marbles[pocket_curr] <= 0;
                pickup <= 0;
                if(pocket_curr + 1 == 14) begin
                    pocket_curr <= 0;
                end 
                else if (pocket_curr+1 == 6) begin
                    pocket_curr <= 7;
                end
                else begin
                    pocket_curr <= pocket_curr + 1; 
                end
            end
            else begin 
                if (handful > 1) begin
                    handful <= handful - 1;
                    marbles[pocket_curr] <= marbles[pocket_curr]+1;
                    // skip P1's pocket
                    if(pocket_curr + 1 == 14) begin
                        pocket_curr <= 0;
                    end 
                    else if (pocket_curr+1 == 6) begin
                        pocket_curr <= 7;
                    end
                    else begin
                        pocket_curr <= pocket_curr + 1; 
                    end
                end
                else if (handful == 1) begin
                    // if we're at the store
                    if(pocket_curr == 13) begin
                        handful <= 0;
                        marbles[pocket_curr] <= marbles[pocket_curr]+1;
                        cont <= 1;
                    end
                    // pocket is empty
                    else if (marbles[pocket_curr] == 0) begin
                        marbles[pocket_curr] <= marbles[pocket_curr]+1;
                        handful <= 0;
                        done <= 1;
                    end
                    // pocket is not empty
                    else begin
                        pickup <= 1;
                    end            
                end
                else begin
                    done <= 1;
                end
            end
        end
        else if (state == STATE_S5) begin
            firstTick <= 0;
            if (sum1 > 0) begin
                marbles[6] <= marbles[6] + sum1;
                marbles[0] <= 0;
                marbles[1] <= 0;
                marbles[2] <= 0;
                marbles[3] <= 0;
                marbles[4] <= 0;
                marbles[5] <= 0;
            end
            else begin
                marbles[13] <= marbles[13] + sum2;
                marbles[7] <= 0;
                marbles[8] <= 0;
                marbles[9] <= 0;
                marbles[10] <= 0;
                marbles[11] <= 0;
                marbles[12] <= 0;
            end
        end
        else begin
            firstTick <= 0;
            if (marbles[6] > marbles[13]) begin
                player <= 0;
            end 
            else if (marbles[13] > marbles[6]) begin
                player <= 1;
            end
            // else tie and we display that
            else begin
                tie <= 1;
            end
        end
    end
    

    always@(posedge clk_fast) begin
        AN0 <= (digitSelect == 1 || digitSelect == 2 || digitSelect == 3);
        AN1 <= (digitSelect == 0 || digitSelect == 2 || digitSelect == 3);
        AN3 <= (digitSelect == 0 || digitSelect == 1 || digitSelect == 2);
        
        if(digitSelect == 0) begin
            if (tie == 1) begin
                CA = 1;
                CB = 1;
                CC = 1;
                CD = 1;
                CE = 1;
                CF = 1;
                CG = 0;
            end
            else if (player == 0)begin
                CA = 1;
                CB = 0;
                CC = 0;
                CD = 1;
                CE = 1;
                CF = 1;
                CG = 1;
            end else begin
                CA = 0;
                CB = 0;
                CC = 1;
                CD = 0;
                CE = 0;
                CF = 1;
                CG = 0;
            end
        end
        else if(digitSelect == 1) begin
            CA = 0;
            CB = 0;
            CC = 1;
            CD = 1;
            CE = 0;
            CF = 0;
            CG = 0;
        end
        else if(digitSelect == 3 && (state == STATE_S1 || state == STATE_S3)) begin
            CA = 0;
            CB = 1;
            CC = 0;
            CD = 0;
            CE = 1;
            CF = 0;
            CG = 0;
        end
        else begin
            CA = 1;
            CB = 1;
            CC = 1;
            CD = 1;
            CE = 1;
            CF = 1;
            CG = 1;
        end 
        digitSelect <= digitSelect + 1;
    end


endmodule
