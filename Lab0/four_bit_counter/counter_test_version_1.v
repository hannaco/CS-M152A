`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:24 09/29/2021
// Design Name:   counter_version_1
// Module Name:   E:/Lab0/four_bit_counter/counter_test_version_1.v
// Project Name:  four_bit_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_version_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_test_version_1;

	// Inputs
	reg rst;
	reg clk;
    wire a0, a1, a2, a3;

	// Instantiate the Unit Under Test (UUT)
	counter_version_1 uut (
		.rst(rst), 
		.clk(clk),
        .a0(a0),
        .a1(a1),
        .a2(a2),
        .a3(a3)
	);

	initial begin
		// Initialize Inputs
		rst = 1'b1;
		clk = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
        rst = 1'b0;
        
		// Add stimulus here
        #1000 $finish;
	end
    
    always begin
        #5 clk = ~clk;
    end
      
endmodule

