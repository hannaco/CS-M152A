`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:00 11/08/2021
// Design Name:   display
// Module Name:   E:/Lab3/stopwatch/state1_tb.v
// Project Name:  stopwatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module state1_tb;

	// Inputs
	reg clk;
	reg adjSw;
	reg selSw;
	reg rst;
	reg pauseBtn;

	// Outputs
	wire AN0;
	wire AN1;
	wire AN2;
	wire AN3;
	wire CA;
	wire CB;
	wire CC;
	wire CD;
	wire CE;
	wire CF;
	wire CG;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.clk(clk), 
		.adjSw(adjSw), 
		.selSw(selSw), 
		.rst(rst), 
		.pauseBtn(pauseBtn), 
		.AN0(AN0), 
		.AN1(AN1), 
		.AN2(AN2), 
		.AN3(AN3), 
		.CA(CA), 
		.CB(CB), 
		.CC(CC), 
		.CD(CD), 
		.CE(CE), 
		.CF(CF), 
		.CG(CG)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		adjSw = 0;
		selSw = 0;
		rst = 0;
		pauseBtn = 0;
        
		#2100000000 $finish;

	end
    
    always begin
        #5 clk = ~clk;
    end
      
endmodule

