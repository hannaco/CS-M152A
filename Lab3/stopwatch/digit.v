`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:19 11/01/2021 
// Design Name: 
// Module Name:    digit 
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
module digit(
    input [3:0] number,
    input blink,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G
    );
    
    assign A = (number == 1) || (number == 4) || blink;
    assign B = (number == 5) || (number == 6) || blink;
    assign C = (number == 2) || blink;
    assign D = (number == 1) || (number == 4) || (number == 7) || blink;
    assign E = ((number != 2) && (number != 6) && (number != 8) && (number != 0)) || blink;
    assign F = ((number != 4) && (number != 5) && (number != 6) && (number != 8) && (number != 9) && (number != 0)) || blink;
    assign G = (number == 0) || (number == 1) || (number == 7) || blink;
endmodule
