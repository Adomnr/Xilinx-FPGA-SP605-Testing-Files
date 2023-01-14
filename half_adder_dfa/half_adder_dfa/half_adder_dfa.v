`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:27 01/09/2023 
// Design Name: 
// Module Name:    half_adder_dfa 
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
module half_adder_dfa(s,c,a,b);

	input a,b;
	output s,c;
	assign s = a^b;
	assign c = a&b;


endmodule
