
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:30 10/06/2023
// Design Name:   behavioural
// Module Name:   behav_test.v
// Project Name:  behaviouralmodel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behavioural
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module structural_level_test_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire and_g;
	wire or_g;
	wire not_a_g;
	wire xor_g;
	wire xnor_g;
	wire nand_g;

	// Instantiate the Unit Under Test (UUT)
	structural_level uut (
		.a(a), 
		.b(b), 
		.and_g(and_g), 
		.or_g(or_g), 
		.not_a_g(not_a_g), 
		.xor_g(xor_g), 
		.xnor_g(xnor_g), 
		.nand_g(nand_g)
	);

	initial begin
        
		// Initialize Inputs
            a= 0; b= 0;
        #10 a= 0; b= 1;
        #10 a= 1; b= 0;
        #10 a= 1; b= 1;
		#40 $finish;
        
	end
      
endmodule


