`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:41:23 11/30/2021
// Design Name:   board
// Module Name:   E:/Lab3/stopwatch/board_tb.v
// Project Name:  memory_game
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module board_tb;

	// Inputs
    reg clk;			//master clock = 50MHz
    reg rst;			//right-most pushbutton for reset
    reg btnl;
    reg btnr;
    reg enter;

	// Outputs
    wire CA;
    wire CB;
    wire CC;
    wire CD;
    wire CE;
    wire CF;
    wire CG;
    wire AN0;
    wire AN1;
    wire AN2;
    wire AN3;
    wire [2:0] red;	//red vga output - 3 bits
    wire [2:0] green;//green vga output - 3 bits
    wire [1:0] blue;	//blue vga output - 2 bits
    wire hsync;		//horizontal sync out
    wire vsync;		//vertical sync out
    wire done;

	// Instantiate the Unit Under Test (UUT)
	NERP_demo_top uut (
        .clk(clk),
        .rst(rst),
        .btnl(btnl),
        .btnr(btnr),
        .enter(enter),
        // Outputs
        .CA(CA),
        .CB(CB),
        .CC(CC),
        .CD(CD),
        .CE(CE),
        .CF(CF),
        .CG(CG),
        .AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .done(done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
        btnl = 0;
        btnr = 0;
        enter = 0;

		// Wait 100 ns for global reset to finish
		#100;
        rst = 0;
        btnr = 1;
        #10
        btnr = 0;
        #10
        enter = 1;
        #10
        enter = 0;

        #10000

        enter = 1;
        #10
        enter = 0;

        #3000000000 $finish;
	end
    
    always begin
        #5 clk = ~clk;
    end
      
endmodule

