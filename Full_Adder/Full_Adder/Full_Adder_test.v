`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:32:24 01/09/2023
// Design Name:   Full_Adder
// Module Name:   C:/Users/user/Desktop/Internship FIles/Full_Adder/Full_Adder/Full_Adder_test.v
// Project Name:  Full_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Adder_test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.s(s), 
		.co(co), 
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		#3 a= 1'b0; b=1'b0; c=1'b0;
		#3 a=1'b1; b=1'b0; b=1'b0;
		#3 a=1'b0; b=1'b1; c=1'b0;
		#3 a=1'b1; b=1'b1; c=1'b0;
		#3 a=1'b0; b=1'b0; c=1'b1;
		#3 a=1'b1; b=1'b0; c=1'b1;
		#3 a=1'b0; b=1'b1; c=1'b1;
		#3 a=1'b1; b=1'b1; c=1'b1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

