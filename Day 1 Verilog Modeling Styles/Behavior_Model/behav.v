`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge

module behavioural(a,b,and_g,or_g,not_a_g,xor_g,xnor_g,nand_g);
	input a,b;
	output reg and_g,or_g,not_a_g,xor_g,xnor_g,nand_g;
	
	always @(*)
		begin
			and_g = a&b;
			or_g  = a|b;
			not_a_g = ~a;
			xor_g = a^b ;
			xnor_g = ~(a^b);
			nand_g = ~(a&b);
		end
endmodule

