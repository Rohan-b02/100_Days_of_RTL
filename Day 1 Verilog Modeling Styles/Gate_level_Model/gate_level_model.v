`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge

module gate_level(a, b,and_g,or_g,not_g,nand_g,nor_g,xor_g,xnor_g);	 input a, b;
    output and_g,or_g,not_g,nand_g,nor_g,xor_g,xnor_g;
     
			 and andgate(and_g, a, b);
			 or orgate(or_g, a, b);
			 not notgate(not_g, a);
			 nand nandgate(nand_g, a, b);
			 nor norgate(nor_g, a, b);
			 xor xorgate(xor_g, a, b);
			 xnor xnorgate(xnor_g, a, b);
			 
endmodule

