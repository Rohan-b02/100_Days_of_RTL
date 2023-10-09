`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge
// Create Date:   22:29:45 10/09/2023
// Design Name:   FA
// Module Name:   FA_testbench.v
// Project Name:  full_adder
////////////////////////////////////////////////////////////////////////////////

module FA_testbench_v;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		
	a = 1'b0; b = 1'b0; cin = 1'b0;
  #10;
  a = 1'b0; b = 1'b0; cin = 1'b1;
  #10;
  a = 1'b0; b = 1'b1; cin = 1'b0;
  #10;
  a = 1'b0; b = 1'b1; cin = 1'b1;
  #10;
  a = 1'b1; b = 1'b0; cin = 1'b0;
  #10;
  a = 1'b1; b = 1'b0; cin = 1'b1;
  #10;
  a = 1'b1; b = 1'b1; cin = 1'b0;
  #10;
  a = 1'b1; b = 1'b1; cin = 1'b1;
  #10;
  $finish;

	end
      
endmodule

