`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:36 10/08/2023
// Design Name:   HS
// Module Name:   HA_testbench.v
// Project Name:  Half_Subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HA_testbench_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire diff;
	wire borr;

	// Instantiate the Unit Under Test (UUT)
	HS uut (
		.a(a), 
		.b(b), 
		.diff(diff), 
		.borr(borr)
	);

	initial begin
		// Initialize Inputs
		    a = 0;b = 0;
		#10 a = 0;b = 1;
		#10 a = 1;b = 0;		#10 a = 1;b = 1;
		
		#40 $finish;
        
		// Add stimulus here

	end
      
endmodule

