`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:09 10/18/2021 
// Design Name: 
// Module Name:    floating_converter 
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
module floating_converter(
    input [11:0] D,
    output reg S,
    output reg [2:0] E,
    output reg [3:0] F
    );
    
    integer zeros;
    reg [11:0] abs;
    
    always@(*) begin
    S = D[11];
    
    E = 0;
    F = 0;
    
    abs = D;
    
    if (S == 1) begin
        abs = ~abs;
        abs = abs + 1;
        if (abs[11] == 1) begin
            abs = 12'b011111111111;
        end
    end
    

    casex(abs)
        12'b01XXXXXXXXXX:
            zeros = 1;
        12'b001XXXXXXXXX:
            zeros = 2;
        12'b0001XXXXXXXX:
            zeros = 3;
        12'b00001XXXXXXX:
            zeros = 4;
        12'b000001XXXXXX:
            zeros = 5;
        12'b0000001XXXXX:
            zeros = 6;
        12'b00000001XXXX:
            zeros = 7;
        default:
            zeros = 8;
    endcase

    abs = abs << zeros;
    
    E = 8 - zeros;


    if (abs[7] == 1 && abs[11:8] == 4'b1111) begin
        if (E != 7) begin
            F = 4'b1000;
            E = E + 1;
        end 
        else begin
            F = abs[11:8];
        end
    end
    else begin
        F = abs[11:8] + abs[7]; 
    end
  
end
endmodule
