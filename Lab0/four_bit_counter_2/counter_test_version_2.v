`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:16 10/04/2021
// Design Name:   counter_version_2
// Module Name:   E:/Lab0/four_bit_counter_2/counter_test_version_2.v
// Project Name:  four_bit_counter_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_version_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module counter_test_version_2;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [3:0] a;

	// Instantiate the Unit Under Test (UUT)
	counter_version_2 uut (
		.rst(rst), 
		.clk(clk), 
		.a(a)
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

