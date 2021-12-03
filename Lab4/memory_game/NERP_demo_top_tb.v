`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:22:34 11/30/2021
// Design Name:   NERP_demo_top
// Module Name:   D:/Lab4/memory_game/NERP_demo_top_tb.v
// Project Name:  memory_game
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NERP_demo_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NERP_demo_top_tb;

	// Inputs
	reg clk;
	reg rst;
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
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;
	wire hsync;
	wire vsync;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	NERP_demo_top uut (
		.clk(clk), 
		.rst(rst), 
		.btnl(btnl), 
		.btnr(btnr), 
		.enter(enter), 
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

