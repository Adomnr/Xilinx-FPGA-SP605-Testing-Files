`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:49:07 01/09/2023
// Design Name:   Full_Adder
// Module Name:   C:/Users/user/Desktop/Internship FIles/Full_Adder_dfa/Full_Adder_dfa/Full_Adder_dfa_test.v
// Project Name:  Full_Adder_dfa
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

module Full_Adder_dfa_test;

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
		{a,b,c} = 3'b000;
		#2 {a,b,c} = 3'b001;
		#2 {a,b,c} = 3'b010;
		#2 {a,b,c} = 3'b011;
		#2 {a,b,c} = 3'b100;
		#2 {a,b,c} = 3'b101;
		#2 {a,b,c} = 3'b110;
		#2 {a,b,c} = 3'b111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

