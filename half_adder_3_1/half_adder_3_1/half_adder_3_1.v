`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:05:47 01/09/2023 
// Design Name: 
// Module Name:    half_adder_3_1 
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
module half_adder_3(s,c,a,b);
	input a,b;
	output reg s,c;
	always @(*)
		begin
			s = a^b;
			c = a&b;
	end
endmodule
