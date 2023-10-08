`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan

////////////////////////////////////////////////////////////////////////////////

module HA_test_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	ha uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
			a = 0;b = 0;#10 a = 0;b = 1;
#10 a = 1;b = 0;
#10 a = 1;b = 1;
#40 $finish;
	end
      
endmodule

