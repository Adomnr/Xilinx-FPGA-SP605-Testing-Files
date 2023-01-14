`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:30:20 01/09/2023 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(output s,co, input a,b,c);
	wire t1,t2,k;
	xor g1(s,a,b,c);
	xor g2(k,a,b);
	and(t1,a,b);
	and(t2,k,c);
	or(co,t1,t2);
endmodule
