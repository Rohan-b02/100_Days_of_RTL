`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:  VIT
// Engineer: Rohan Boge
//
// Create Date:   22:41:57 10/09/2023
// Design Name:   full_subtractor
// Module Name:   HS_testbench.v
// Project Name:  full_sub 
////////////////////////////////////////////////////////////////////////////////

module HS_testbench_v;

	// Inputs
	reg a;
	reg b;
	reg bin;

	// Outputs
	wire diff;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (
		.a(a), 
		.b(b), 
		.bin(bin), 
		.diff(diff), 
		.bout(bout)
	);

	initial begin
		// Initialize Inputs
		
	a = 1'b0; b = 1'b0; bin = 1'b0;
  #10;
  a = 1'b0; b = 1'b0; bin = 1'b1;
  #10;
  a = 1'b0; b = 1'b1; bin = 1'b0;
  #10;
  a = 1'b0; b = 1'b1; bin = 1'b1;
  #10;
  a = 1'b1; b = 1'b0; bin = 1'b0;
  #10;
  a = 1'b1; b = 1'b0; bin = 1'b1;
  #10;
  a = 1'b1; b = 1'b1; bin = 1'b0;
  #10;
  a = 1'b1; b = 1'b1; bin = 1'b1;
	#10;
	$finish;

	end
      
endmodule

