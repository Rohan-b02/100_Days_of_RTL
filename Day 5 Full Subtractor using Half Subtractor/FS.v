`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge
//////////////////////////////////////////////////////////////////////////////////
module HS(a,b,diff,bout);
	input a,b;
	output diff,bout;
	
	assign diff = a^b;
	assign bout =(~a)&b;

endmodule

module FS(a,b,bin,diff,bout);
	input a,b,bin;
	output diff,bout;
	
	wire d1,b1,b2;
	
	HS s1(a,b,d1,b1);
	HS s2(d1,bin,diff,b2);
	
	assign bout = b1|b2;
	
endmodule
