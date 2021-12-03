`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:42 10/20/2021
// Design Name:   floating_converter
// Module Name:   E:/Lab2/lab2/tb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: floating_converter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [2:0] E;
	wire [3:0] F;
    
    reg[7:0] res;
    integer i;

    reg[7:0] ans1;
    reg[7:0] ans2;
    reg[7:0] desAns;
    integer dec1;
    integer dec2;
    reg [3:0] exp;
    reg [4:0] base;
    

	// Instantiate the Unit Under Test (UUT)
	floating_converter uut (
		.D(D), 
		.S(S), 
		.E(E), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
        D = -40;
        #10;
        res = {S, E, F};
        if (res == 8'b10101010) begin
            $display("Success: %b = %b", D, {S, E, F} );
        end
        else begin 
            $display("Failure: %b = %b", D, {S, E, F} );
        end
        
        D = 56;
        #10;
        res = {S, E, F};
        if (res == 8'b00101110) begin
            $display("Success: %b = %b", D, {S, E, F} );
        end
        else begin 
            $display("Failure: %b = %b", D, {S, E, F} );
        end
        
        D = 12'b000000101100;
        #10;
        res = {S, E, F};
        if (res == 8'b00101011) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 12'b000000101101;
        #10;
        res = {S, E, F};
        if (res == 8'b00101011) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 12'b000000101110;
        #10;
        res = {S, E, F};
        if (res == 8'b00101100) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 12'b000000101111;
        #10;
        res = {S, E, F};
        if (res == 8'b00101100) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 0;
        #10;
        res = {S, E, F};
        if (res == 8'b00000000) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = -1;
        #10;
        res = {S, E, F};
        if (res == 8'b10000001) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 1;
        #10;
        res = {S, E, F};
        if (res == 8'b00000001) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 8;
        #10;
        res = {S, E, F};
        if (res == 8'b00001000) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 16;
        #10;
        res = {S, E, F};
        if (res == 8'b00011000) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 12'b100000000000;
        #10;
        res = {S, E, F};
        if (res == 8'b11111111) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
        
        D = 12'b011111111111;
        #10;
        res = {S, E, F};
        if (res == 8'b01111111) begin
            $display("Success: %b = %b", D, res );
        end
        else begin 
            $display("Failure: %b = %b", D, res );
        end
		// Add stimulus here
        
        //Check for negative number overflow
        for (i = -1* 2**11; i <= -1 * 15* 2 ** 7; i = i + 1) begin
            D = i;
            #10;
            res = {S, E, F};
            if (res != 8'b11111111) begin
                $display("Failure: %b = %b", D, res );
            end
        end
        
        //Check for positive number overflow
        for (i = 15* 2 ** 7; i < 2**11; i = i + 1) begin
            D = i;
            #10;
            res = {S, E, F};
            if (res != 8'b01111111) begin
                $display("Failure: %b = %b", D, res );
            end
        end

        ans1 = 8'b00000000;
        ans2 = 8'b00000001;
        desAns = 8'b00000000;
        dec1 = 0;
        dec2 = 1;

        // two possible fp encoding and checking which one it should be 
        // goes through encodings

      for (i = 0; i < 15* 2 ** 7; i = i + 1) begin
            D = i;
            #10;
            res = {S, E, F};
            if(i == dec2) begin
                dec1 = dec2;
                ans1 = ans2;
                ans2 = ans1 + 1;
                exp = ans2[6:4];
                base = ans2[3:0];
                if(base == 0) begin
                    base = 4'b1000;
                    ans2[3:0] = base;
                end
                dec2 = 2 ** exp * base;
            end

            
          if((dec2 -i) <= (i - dec1)) begin
                desAns = ans2;
            end
            else begin
                desAns = ans1;
            end
            if (res != desAns) begin
              $display("Failure: %b = %b, res = %d, i = %d ", D, res, dec1, i);
            end
        end

        ans1 = 8'b10000001;
        ans2 = 8'b10000010;
        desAns = 8'b10000001;
        dec1 = -1;
        dec2 = -2;

        for (i = -1; i > -1 * 15* 2 ** 7; i = i - 1) begin
            D = i;
            #10;
            res = {S, E, F};
            if(i == dec2) begin
                dec1 = dec2;
                ans1 = ans2;
                ans2 = ans1 + 1;
                exp = ans2[6:4];
                base = ans2[3:0];
                if(base == 0) begin
                    base = 4'b1000;
                    ans2[3:0] = base;
                end
                dec2 = -1* 2 ** exp * base;
            end

            
          if((i - dec2) <= (dec1 - i)) begin
                desAns = ans2;
            end
            else begin
                desAns = ans1;
            end
            if (res != desAns) begin
              $display("Failure: %b = %b, res = %d, i = %d, desAns = %b", D, res, dec1, i, desAns);
            end
        end

	end
      
endmodule

