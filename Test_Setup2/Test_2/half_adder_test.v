`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:19:25 01/09/2023
// Design Name:   half_adder
// Module Name:   C:/Users/user/Desktop/Internship FIles/Test_Setup2/Test_2/half_adder_test.v
// Project Name:  Test_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.s(s), 
		.c(c), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

