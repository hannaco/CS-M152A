`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:38 03/19/2013 
// Design Name: 
// Module Name:    vga640x480 
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
module vga640x480(
	input wire dclk,			//pixel clock: 25MHz
	input wire clr,			//asynchronous reset
    input wire [3:0] pocket_curr,
    input wire [13:0][5:0] marbles,
	output wire hsync,		//horizontal sync out
	output wire vsync,		//vertical sync out
	output reg [2:0] red,	//red vga output
	output reg [2:0] green, //green vga output
	output reg [1:0] blue	//blue vga output
	);

// video structure constants
parameter hpixels = 800;// horizontal pixels per line
parameter vlines = 521; // vertical lines per frame
parameter hpulse = 96; 	// hsync pulse length
parameter vpulse = 2; 	// vsync pulse length
parameter hbp = 144; 	// end of horizontal back porch
parameter hfp = 784; 	// beginning of horizontal front porch
parameter vbp = 31; 		// end of vertical back porch
parameter vfp = 511; 	// beginning of vertical front porch
// active horizontal video is therefore: 784 - 144 = 640
// active vertical video is therefore: 511 - 31 = 480

// registers for storing the horizontal & vertical counters
reg [9:0] hc;
reg [9:0] vc;

// Horizontal & vertical counters --
// this is how we keep track of where we are on the screen.
// ------------------------
// Sequential "always block", which is a block that is
// only triggered on signal transitions or "edges".
// posedge = rising edge  &  negedge = falling edge
// Assignment statements can only be used on type "reg" and need to be of the "non-blocking" type: <=
always @(posedge dclk or posedge clr)
begin
	// reset condition
	if (clr == 1)
	begin
		hc <= 0;
		vc <= 0;
	end
	else
	begin
		// keep counting until the end of the line
		if (hc < hpixels - 1)
			hc <= hc + 1;
		else
		// When we hit the end of the line, reset the horizontal
		// counter and increment the vertical counter.
		// If vertical counter is at the end of the frame, then
		// reset that one too.
		begin
			hc <= 0;
			if (vc < vlines - 1)
				vc <= vc + 1;
			else
				vc <= 0;
		end
		
	end
end

// generate sync pulses (active low)
// ----------------
// "assign" statements are a quick way to
// give values to variables of type: wire
assign hsync = (hc < hpulse) ? 0:1;
assign vsync = (vc < vpulse) ? 0:1;

// display 100% saturation colorbars
// ------------------------
// Combinational "always block", which is a block that is
// triggered when anything in the "sensitivity list" changes.
// The asterisk implies that everything that is capable of triggering the block
// is automatically included in the sensitivty list.  In this case, it would be
// equivalent to the following: always @(hc, vc)
// Assignment statements can only be used on type "reg" and should be of the "blocking" type: =
always @(*)
begin
	// first check if we're within vertical and horizontal active video range
	if (vc >= vbp && vc < vfp && hc >= hbp && hc < hfp)
	begin
		// now display different colors every 80 pixels
		// while we're within the active horizontal range
		// -----------------
        // horizontal contraints of board
		if (hc >= (hbp+10) && hc < (hfp-10))
		begin
            // vertical contraints of board
            if (vc >= vbp+130 && vc < vfp-130) begin
                // displaying stores
                
                // store 13
                if (vc >= vbp+150 && vc < vfp-150 && hc >= (hbp+25) && hc < (hbp+90)) begin
                    // marble row 1
                    if(vc >= vbp+155 && vc < vbp+165) begin
                        if(marbles[13] > 0 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 1 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 2 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 3 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 2
                    else if(vc >= vbp+170 && vc < vbp+180) begin
                        if(marbles[13] > 4 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 5 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 6 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 7 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 3
                    else if(vc >= vbp+185 && vc < vbp+195) begin
                        if(marbles[13] > 8 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 9 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 10 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 11 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 4
                    else if(vc >= vbp+200 && vc < vbp+210) begin
                        if(marbles[13] > 12 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 13 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 14 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 15 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 5
                    else if(vc >= vbp+215 && vc < vbp+225) begin
                        if(marbles[13] > 16 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 17 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 18 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 19 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 6
                    else if(vc >= vbp+230 && vc < vbp+240) begin
                        if(marbles[13] > 20 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 21 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 22 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 23 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 7
                    else if(vc >= vbp+245 && vc < vbp+255) begin
                        if(marbles[13] > 24 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 25 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 26 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 27 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 8
                    else if(vc >= vbp+260 && vc < vbp+270) begin
                        if(marbles[13] > 28 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 29 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 30 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 31 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 9
                    else if(vc >= vbp+275 && vc < vbp+285) begin
                        if(marbles[13] > 32 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 33 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 34 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 35 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 10
                    else if(vc >= vbp+290 && vc < vbp+300) begin
                        if(marbles[13] > 36 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 37 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 38 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 39 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 11
                    else if(vc >= vbp+305 && vc < vbp+315) begin
                        if(marbles[13] > 40 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 41 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 42 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 43 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 12
                    else if(vc >= vbp+320 && vc < vbp+330) begin
                        if(marbles[13] > 44 && hc >= (hbp+30) && hc < (hbp+40)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 45 && hc >= (hbp+45) && hc < (hbp+55)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 46 && hc >= (hbp+60) && hc < (hbp+70)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[13] > 47 && hc >= (hbp+75) && hc < (hbp+85)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b100;
                        blue = 2'b10; 
                    end
                end
                //store 13 top highlight
                else if (pocket_curr == 13 && vc >= vbp+148 && vc < vbp+150 && hc >= (hbp+23) && hc < (hbp+92)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                //store 13 bottom highlight
                else if (pocket_curr == 13 && vc >= vfp-150 && vc < vfp-148 && hc >= (hbp+23) && hc < (hbp+92)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                //store 13 left highlight
                else if (pocket_curr == 13 && vc >= vbp+150 && vc < vfp-150 && hc >= (hbp+23) && hc < (hbp+25)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                //store 13 right highlight
                else if (pocket_curr == 13 && vc >= vbp+150 && vc < vfp-150 && hc >= (hbp+90) && hc < (hbp+92)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                
                // store 6
                else if (vc >= vbp+150 && vc < vfp-150 && hc >= (hfp-90) && hc < (hfp-25)) begin
                    // marble row 1
                    if(vc >= vbp+155 && vc < vbp+165) begin
                        if(marbles[6] > 0 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 1 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 2 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 3 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 2
                    else if(vc >= vbp+170 && vc < vbp+180) begin
                        if(marbles[6] > 4 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 5 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 6 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 7 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 3
                    else if(vc >= vbp+185 && vc < vbp+195) begin
                        if(marbles[6] > 8 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 9 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 10 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 11 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 4
                    else if(vc >= vbp+200 && vc < vbp+210) begin
                        if(marbles[6] > 12 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 13 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 14 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 15 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 5
                    else if(vc >= vbp+215 && vc < vbp+225) begin
                        if(marbles[6] > 16 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 17 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 18 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 19 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 6
                    else if(vc >= vbp+230 && vc < vbp+240) begin
                        if(marbles[6] > 20 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 21 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 22 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 23 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 7
                    else if(vc >= vbp+245 && vc < vbp+255) begin
                        if(marbles[6] > 24 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 25 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 26 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 27 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 8
                    else if(vc >= vbp+260 && vc < vbp+270) begin
                        if(marbles[6] > 28 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 29 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 30 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 31 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 9
                    else if(vc >= vbp+275 && vc < vbp+285) begin
                        if(marbles[6] > 32 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 33 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 34 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 35 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 10
                    else if(vc >= vbp+290 && vc < vbp+300) begin
                        if(marbles[6] > 36 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 37 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 38 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 39 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 11
                    else if(vc >= vbp+305 && vc < vbp+315) begin
                        if(marbles[6] > 40 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 41 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 42 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 43 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // marble row 12
                    else if(vc >= vbp+320 && vc < vbp+330) begin
                        if(marbles[6] > 44 && hc >= (hfp-85) && hc < (hfp-75)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 45 && hc >= (hfp-70) && hc < (hfp-60)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 46 && hc >= (hfp-55) && hc < (hfp-45)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else if(marbles[6] > 47 && hc >= (hfp-40) && hc < (hfp-30)) begin
                            red = 3'b111;
                            green = 3'b000;
                            blue = 2'b11;
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b100;
                        blue = 2'b10; 
                    end
                end
                //store 6 top highlight
                else if (pocket_curr == 6 && vc >= vbp+148 && vc < vbp+150 && hc >= (hfp-92) && hc < (hfp-23)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                //store 6 bottom highlight
                else if (pocket_curr == 6 && vc >= vfp-150 && vc < vfp-148 && hc >= (hfp-92) && hc < (hfp-23)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                //store 6 left highlight
                else if (pocket_curr == 6 && vc >= vbp+150 && vc < vfp-150 && hc >= (hfp-92) && hc < (hfp-90)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                //store 6 right highlight
                else if (pocket_curr == 6 && vc >= vbp+150 && vc < vfp-150 && hc >= (hfp-25) && hc < (hfp-23)) begin
                    red = 3'b111;
                    green = 3'b111;
                    blue = 2'b11;
                end
                // bottom row of pockets
                else if (vc >= vfp-215 && vc < vfp-150 ) begin
                    // pocket 0
                    if (hc >= (hbp+100) && hc < (hbp+165)) begin
                        // marble row 1
                        if(vc >= vfp-210 && vc < vfp-200) begin
                            if(marbles[0] > 0 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 1 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 2 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 3 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vfp-195 && vc < vfp-185) begin
                            if(marbles[0] > 4 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 5 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 6 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 7 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vfp-180 && vc < vfp-170) begin
                            if(marbles[0] > 8 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 9 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 10 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 11 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vfp-165 && vc < vfp-155) begin
                            if(marbles[0] > 12 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 13 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 14 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[0] > 15 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // pocket 0 left highlight
                    else if (pocket_curr == 0 && hc >= (hbp+98) && hc < (hbp+100)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 0 right highlight
                    else if (pocket_curr == 0 && hc >= (hbp+165) && hc < (hbp+167)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 1
                    else if (hc >= (hbp+175) && hc < (hbp+240)) begin
                        // marble row 1
                        if(vc >= vfp-210 && vc < vfp-200) begin
                            if(marbles[1] > 0 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 1 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 2 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 3 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vfp-195 && vc < vfp-185) begin
                            if(marbles[1] > 4 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 5 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 6 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 7 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vfp-180 && vc < vfp-170) begin
                            if(marbles[1] > 8 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 9 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 10 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 11 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vfp-165 && vc < vfp-155) begin
                            if(marbles[1] > 12 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 13 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 14 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[1] > 15 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end 
                    end
                    // pocket 1 left highlight
                    else if (pocket_curr == 1 && hc >= (hbp+173) && hc < (hbp+175)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 1 right highlight
                    else if (pocket_curr == 1 && hc >= (hbp+240) && hc < (hbp+242)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 2
                    else if (hc >= (hbp+250) && hc < (hbp+315)) begin
                        // marble row 1
                        if(vc >= vfp-210 && vc < vfp-200) begin
                            if(marbles[2] > 0 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 1 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 2 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 3 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vfp-195 && vc < vfp-185) begin
                            if(marbles[2] > 4 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 5 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 6 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 7 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vfp-180 && vc < vfp-170) begin
                            if(marbles[2] > 8 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 9 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 10 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 11 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vfp-165 && vc < vfp-155) begin
                            if(marbles[2] > 12 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 13 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 14 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[2] > 15 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end 
                    end
                    // pocket 2 left highlight
                    else if (pocket_curr == 2 && hc >= (hbp+248) && hc < (hbp+250)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 2 right highlight
                    else if (pocket_curr == 2 && hc >= (hbp+315) && hc < (hbp+317)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 3
                    else if (hc >= (hbp+325) && hc < (hbp+390)) begin
                        // marble row 1
                        if(vc >= vfp-210 && vc < vfp-200) begin
                            if(marbles[3] > 0 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 1 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 2 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 3 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vfp-195 && vc < vfp-185) begin
                            if(marbles[3] > 4 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 5 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 6 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 7 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vfp-180 && vc < vfp-170) begin
                            if(marbles[3] > 8 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 9 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 10 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 11 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vfp-165 && vc < vfp-155) begin
                            if(marbles[3] > 12 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 13 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 14 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[3] > 15 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end 
                    end
                    // pocket 3 left highlight
                    else if (pocket_curr == 3 && hc >= (hbp+323) && hc < (hbp+325)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 3 right highlight
                    else if (pocket_curr == 3 && hc >= (hbp+390) && hc < (hbp+392)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 4
                    else if (hc >= (hbp+400) && hc < (hbp+465)) begin
                        // marble row 1
                        if(vc >= vfp-210 && vc < vfp-200) begin
                            if(marbles[4] > 0 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 1 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 2 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 3 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vfp-195 && vc < vfp-185) begin
                            if(marbles[4] > 4 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 5 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 6 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 7 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vfp-180 && vc < vfp-170) begin
                            if(marbles[4] > 8 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 9 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 10 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 11 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vfp-165 && vc < vfp-155) begin
                            if(marbles[4] > 12 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 13 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 14 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[4] > 15 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end  
                    end
                    // pocket 4 left highlight
                    else if (pocket_curr == 4 && hc >= (hbp+398) && hc < (hbp+400)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 4 right highlight
                    else if (pocket_curr == 4 && hc >= (hbp+465) && hc < (hbp+467)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 5
                    else if (hc >= (hbp+475) && hc < (hbp+540)) begin
                        // marble row 1
                        if(vc >= vfp-210 && vc < vfp-200) begin
                            if(marbles[5] > 0 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 1 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 2 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 3 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vfp-195 && vc < vfp-185) begin
                            if(marbles[5] > 4 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 5 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 6 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 7 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vfp-180 && vc < vfp-170) begin
                            if(marbles[5] > 8 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 9 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 10 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 11 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vfp-165 && vc < vfp-155) begin
                            if(marbles[5] > 12 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 13 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 14 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[5] > 15 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end  
                    end
                    // pocket 5 left highlight
                    else if (pocket_curr == 5 && hc >= (hbp+473) && hc < (hbp+475)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 5 right highlight
                    else if (pocket_curr == 5 && hc >= (hbp+540) && hc < (hbp+542)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b101;
                        blue = 2'b11;
                    end 
                end
                // bottom row of pockets top highlight
                else if (vc >= vfp-217 && vc < vfp-215) begin
                    // pocket 0
                    if (pocket_curr == 0 && hc >= (hbp+98) && hc < (hbp+167)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 1
                    else if (pocket_curr == 1 && hc >= (hbp+173) && hc < (hbp+242)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    // pocket 2
                    else if (pocket_curr == 2 && hc >= (hbp+248) && hc < (hbp+317)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 3
                    else if (pocket_curr == 3 && hc >= (hbp+323) && hc < (hbp+392)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 4
                    else if (pocket_curr == 4 && hc >= (hbp+398) && hc < (hbp+467)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 5
                    else if (pocket_curr == 5 && hc >= (hbp+473) && hc < (hbp+542)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b101;
                        blue = 2'b11;
                    end 
                end
                // bottom row of pockets bottom highlight
                else if (vc >= vfp-150 && vc < vfp-148) begin
                    // pocket 0
                    if (pocket_curr == 0 && hc >= (hbp+98) && hc < (hbp+167)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 1
                    else if (pocket_curr == 1 && hc >= (hbp+173) && hc < (hbp+242)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    // pocket 2
                    else if (pocket_curr == 2 && hc >= (hbp+248) && hc < (hbp+317)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 3
                    else if (pocket_curr == 3 && hc >= (hbp+323) && hc < (hbp+392)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 4
                    else if (pocket_curr == 4 && hc >= (hbp+398) && hc < (hbp+467)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 5
                    else if (pocket_curr == 5 && hc >= (hbp+473) && hc < (hbp+542)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b101;
                        blue = 2'b11;
                    end 
                end
                // top row of pockets
                else if (vc >= vbp+150 && vc < vbp+215 ) begin
                    // pocket 12
                    if (hc >= (hbp+100) && hc < (hbp+165)) begin
                        // marble row 1
                        if(vc >= vbp+155 && vc < vbp+165) begin
                            if(marbles[12] > 0 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 1 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 2 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 3 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vbp+170 && vc < vbp+180) begin
                            if(marbles[12] > 4 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 5 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 6 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 7 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vbp+185 && vc < vbp+195) begin
                            if(marbles[12] > 8 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 9 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 10 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 11 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vbp+200 && vc < vbp+210) begin
                            if(marbles[12] > 12 && hc >= (hbp+105) && hc < (hbp+115)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 13 && hc >= (hbp+120) && hc < (hbp+130)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 14 && hc >= (hbp+135) && hc < (hbp+145)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[12] > 15 && hc >= (hbp+150) && hc < (hbp+160)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end
                    end
                    // pocket 12 left highlight
                    else if (pocket_curr == 12 && hc >= (hbp+98) && hc < (hbp+100)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 12 right highlight
                    else if (pocket_curr == 12 && hc >= (hbp+165) && hc < (hbp+167)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 11
                    else if (hc >= (hbp+175) && hc < (hbp+240)) begin
                        // marble row 1
                        if(vc >= vbp+155 && vc < vbp+165) begin
                            if(marbles[11] > 0 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 1 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 2 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 3 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vbp+170 && vc < vbp+180) begin
                            if(marbles[11] > 4 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 5 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 6 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 7 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vbp+185 && vc < vbp+195) begin
                            if(marbles[11] > 8 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 9 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 10 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 11 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vbp+200 && vc < vbp+210) begin
                            if(marbles[11] > 12 && hc >= (hbp+180) && hc < (hbp+190)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 13 && hc >= (hbp+195) && hc < (hbp+205)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 14 && hc >= (hbp+210) && hc < (hbp+220)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[11] > 15 && hc >= (hbp+225) && hc < (hbp+235)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end 
                    end
                    // pocket 11 left highlight
                    else if (pocket_curr == 11 && hc >= (hbp+173) && hc < (hbp+175)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 11 right highlight
                    else if (pocket_curr == 11 && hc >= (hbp+240) && hc < (hbp+242)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 10
                    else if (hc >= (hbp+250) && hc < (hbp+315)) begin
                        // marble row 1
                        if(vc >= vbp+155 && vc < vbp+165) begin
                            if(marbles[10] > 0 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 1 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 2 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 3 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vbp+170 && vc < vbp+180) begin
                            if(marbles[10] > 4 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 5 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 6 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 7 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vbp+185 && vc < vbp+195) begin
                            if(marbles[10] > 8 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 9 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 10 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 11 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vbp+200 && vc < vbp+210) begin
                            if(marbles[10] > 12 && hc >= (hbp+255) && hc < (hbp+265)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 13 && hc >= (hbp+270) && hc < (hbp+280)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 14 && hc >= (hbp+285) && hc < (hbp+295)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[10] > 15 && hc >= (hbp+300) && hc < (hbp+310)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end   
                    end
                    // pocket 10 left highlight
                    else if (pocket_curr == 10 && hc >= (hbp+248) && hc < (hbp+250)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 10 right highlight
                    else if (pocket_curr == 10 && hc >= (hbp+315) && hc < (hbp+317)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 9
                    else if (hc >= (hbp+325) && hc < (hbp+390)) begin
                        // marble row 1
                        if(vc >= vbp+155 && vc < vbp+165) begin
                            if(marbles[9] > 0 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 1 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 2 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 3 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vbp+170 && vc < vbp+180) begin
                            if(marbles[9] > 4 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 5 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 6 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 7 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vbp+185 && vc < vbp+195) begin
                            if(marbles[9] > 8 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 9 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 10 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 11 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vbp+200 && vc < vbp+210) begin
                            if(marbles[9] > 12 && hc >= (hbp+330) && hc < (hbp+340)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 13 && hc >= (hbp+345) && hc < (hbp+355)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 14 && hc >= (hbp+360) && hc < (hbp+370)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[9] > 15 && hc >= (hbp+375) && hc < (hbp+385)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end   
                    end
                    // pocket 9 left highlight
                    else if (pocket_curr == 9 && hc >= (hbp+323) && hc < (hbp+325)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 9 right highlight
                    else if (pocket_curr == 9 && hc >= (hbp+390) && hc < (hbp+392)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 8
                    else if (hc >= (hbp+400) && hc < (hbp+465)) begin
                        // marble row 1
                        if(vc >= vbp+155 && vc < vbp+165) begin
                            if(marbles[8] > 0 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 1 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 2 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 3 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vbp+170 && vc < vbp+180) begin
                            if(marbles[8] > 4 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 5 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 6 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 7 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vbp+185 && vc < vbp+195) begin
                            if(marbles[8] > 8 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 9 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 10 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 11 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vbp+200 && vc < vbp+210) begin
                            if(marbles[8] > 12 && hc >= (hbp+405) && hc < (hbp+415)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 13 && hc >= (hbp+420) && hc < (hbp+430)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 14 && hc >= (hbp+435) && hc < (hbp+445)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[8] > 15 && hc >= (hbp+450) && hc < (hbp+460)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end    
                    end
                    // pocket 8 left highlight
                    else if (pocket_curr == 8 && hc >= (hbp+398) && hc < (hbp+400)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 8 right highlight
                    else if (pocket_curr == 8 && hc >= (hbp+465) && hc < (hbp+467)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 7
                    else if (hc >= (hbp+475) && hc < (hbp+540)) begin
                        // marble row 1
                        if(vc >= vbp+155 && vc < vbp+165) begin
                            if(marbles[7] > 0 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 1 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 2 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 3 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 2
                        else if(vc >= vbp+170 && vc < vbp+180) begin
                            if(marbles[7] > 4 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 5 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 6 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 7 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 3
                        else if(vc >= vbp+185 && vc < vbp+195) begin
                            if(marbles[7] > 8 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 9 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 10 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 11 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        // marble row 4
                        else if(vc >= vbp+200 && vc < vbp+210) begin
                            if(marbles[7] > 12 && hc >= (hbp+480) && hc < (hbp+490)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 13 && hc >= (hbp+495) && hc < (hbp+505)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 14 && hc >= (hbp+510) && hc < (hbp+520)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else if(marbles[7] > 15 && hc >= (hbp+525) && hc < (hbp+535)) begin
                                red = 3'b111;
                                green = 3'b000;
                                blue = 2'b11;
                            end
                            else begin
                                red = 3'b111;
                                green = 3'b100;
                                blue = 2'b10; 
                            end
                        end
                        else begin
                            red = 3'b111;
                            green = 3'b100;
                            blue = 2'b10; 
                        end   
                    end
                    // pocket 7 left highlight
                    else if (pocket_curr == 7 && hc >= (hbp+473) && hc < (hbp+475)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 7 right highlight
                    else if (pocket_curr == 7 && hc >= (hbp+540) && hc < (hbp+542)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b101;
                        blue = 2'b11;
                    end  
                end
                // top row of pockets top highlight
                else if (vc >= vbp+148 && vc < vbp+150) begin
                    // pocket 12
                    if (pocket_curr == 12 && hc >= (hbp+98) && hc < (hbp+167)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 11
                    else if (pocket_curr == 11 && hc >= (hbp+173) && hc < (hbp+242)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    // pocket 10
                    else if (pocket_curr == 10 && hc >= (hbp+248) && hc < (hbp+317)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 9
                    else if (pocket_curr == 9 && hc >= (hbp+323) && hc < (hbp+392)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 8
                    else if (pocket_curr == 8 && hc >= (hbp+398) && hc < (hbp+467)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 7
                    else if (pocket_curr == 7 && hc >= (hbp+473) && hc < (hbp+542)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b101;
                        blue = 2'b11;
                    end 
                end
                // top row of pockets bottom highlight
                else if (vc >= vbp+215 && vc < vbp+217) begin
                    // pocket 12
                    if (pocket_curr == 12 && hc >= (hbp+98) && hc < (hbp+167)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 11
                    else if (pocket_curr == 11 && hc >= (hbp+173) && hc < (hbp+242)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    // pocket 10
                    else if (pocket_curr == 10 && hc >= (hbp+248) && hc < (hbp+317)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;  
                    end
                    // pocket 9
                    else if (pocket_curr == 9 && hc >= (hbp+323) && hc < (hbp+392)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 8
                    else if (pocket_curr == 8 && hc >= (hbp+398) && hc < (hbp+467)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11;
                    end
                    // pocket 7
                    else if (pocket_curr == 7 && hc >= (hbp+473) && hc < (hbp+542)) begin
                        red = 3'b111;
                        green = 3'b111;
                        blue = 2'b11; 
                    end
                    else begin
                        red = 3'b111;
                        green = 3'b101;
                        blue = 2'b11;
                    end 
                end
                // otherwise lighter pink for board
                else begin 
                    red = 3'b111;
                    green = 3'b101;
                    blue = 2'b11;
                end
            end
            // otherwise black
            else begin
                red = 0;
                green = 0;
                blue = 0;
            end
		end
		else
		begin
			red = 0;
			green = 0;
			blue = 0;
		end
	end
	// we're outside active vertical and horizontal range so display black
	else
	begin
		red = 0;
		green = 0;
		blue = 0;
	end
end

endmodule
