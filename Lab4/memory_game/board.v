`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:25 03/19/2013 
// Design Name: 
// Module Name:    NERP_demo_top 
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
module NERP_demo_top(
	input wire clk,			//master clock = 50MHz
	input wire rst,			//right-most pushbutton for reset
    input wire btnl,
    input wire btnr,
    input wire enter,
    output wire CA,
    output wire CB,
    output wire CC,
    output wire CD,
    output wire CE,
    output wire CF,
    output wire CG,
    output wire AN0,
    output wire AN1,
    output wire AN2,
    output wire AN3,
	output wire [2:0] red,	//red vga output - 3 bits
	output wire [2:0] green,//green vga output - 3 bits
	output wire [1:0] blue,	//blue vga output - 2 bits
	output wire hsync,		//horizontal sync out
	output wire vsync,		//vertical sync out
    output wire done
	);

// 7-segment clock interconnect
wire segclk;

// VGA display clock interconnect
wire dclk;

// disable the 7-segment decimal points
assign dp = 1;

assign AN2 = 1;

// generate 7-segment clock & display clock
clockdiv U1(
	.clk(clk),
	.clr(rst),
	.segclk(segclk),
	.dclk(dclk)
	);

//// 7-segment display controller
//segdisplay U2(
//	.segclk(segclk),
//	.clr(rst),
//	.seg(seg),
//	.an(an)
//	);

// VGA controller
/*vga640x480 U3(
	.dclk(dclk),
	.clr(rst),
	.hsync(hsync),
	.vsync(vsync),
	.red(red),
	.green(green),
	.blue(blue)
	);
*/
mancala game (
    .clk(clk),
    .btnl(btnl),
    .btnr(btnr),
    .enter(enter),
    .rst(rst),
    .dclk(dclk),
    .AN0(AN0),
    .AN1(AN1),
    .AN3(AN3),
    .CA(CA),
    .CB(CB),
    .CC(CC),
    .CD(CD),
    .CE(CE),
    .CF(CF),
    .CG(CG),
    .hsync(hsync),
	.vsync(vsync),
	.red(red),
	.green(green),
	.blue(blue),
    .done(done)
    );
    
endmodule
