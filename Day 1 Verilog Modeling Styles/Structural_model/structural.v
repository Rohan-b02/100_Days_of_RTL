`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge

module structural_level(a,b,and_g,or_g,not_a_g,xor_g,xnor_g,nand_g);
	input a,b;
	output and_g,or_g,not_a_g,xor_g,xnor_g,nand_g;
	
		assign and_g = a&b;
		assign or_g  = a|b;
		assign not_a_g = ~a;
		assign xor_g = a^b ;
		assign xnor_g = ~(a^b);
		assign nand_g = ~(a&b);
endmodule

