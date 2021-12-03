`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:23 11/03/2021
// Design Name:   clock
// Module Name:   E:/Lab3/stopwatch/clock_tb.v
// Project Name:  stopwatch
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

module clock_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [2:0] state;

	// Outputs
	wire clk_sel;
	wire clk_fast;
	wire clk_adj;
    
    integer i;

	// Instantiate the Unit Under Test (UUT)
	clock uut (
		.clk(clk), 
		.rst(rst), 
		.state(state), 
		.clk_sel(clk_sel), 
		.clk_fast(clk_fast), 
		.clk_adj(clk_adj)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
        i = 0;

		// Wait 100 ns for global reset to finis
		#100;
        rst = 0;
        state = 1;
        
        #1000000000;
        
        state = 3;
        
        #3000000000 $finish;
        
        
		// Add stimulus here

	end
    
    always begin
        #5 clk = ~clk;
    end
      
endmodule

