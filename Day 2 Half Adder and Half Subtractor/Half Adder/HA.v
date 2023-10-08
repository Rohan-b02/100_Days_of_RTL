`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan 
////////////////////////////////////////////////////////////////////////////////// 

module ha(a,b,sum,carry);
	output sum,carry;
	assign sum = a^b;
	assign carry = a&b;

endmodule