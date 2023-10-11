`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge
// Create Date:   21:37:19 10/11/2023
// Design Name:   FS
// Module Name:   FS_testbench.v
// Project Name:  full_subt
////////////////////////////////////////////////////////////////////////////////

module FS_testbench_v;

	// Inputs
	reg a;
	reg b;
	reg bin;

	// Outputs
	wire diff;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	FS uut (
		.a(a), 
		.b(b), 
		.bin(bin), 
		.diff(diff), 
		.bout(bout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		bin = 0;

	#10
		a = 0;
		b = 0;
		bin =1;
	#10
		a = 0;
		b = 1;
		bin = 0;
	#10
		a = 0;
		b = 1;
		bin = 1;
	#10
		a = 1;
		b = 0;
		bin = 0;
	#10
		a = 1;
		b = 0;
		bin = 1;
	#10
		a = 1;
		b = 1;
		bin = 0;
	#10
		a = 1;
		b = 1;
		bin = 1;
	#10 
		$finish;
	end
      
endmodule

