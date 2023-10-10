`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:00:19 10/10/2023
// Design Name:   FA
// Module Name:   FA_test.v
// Project Name:  full_adderHA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_test_v;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

	#10;
	   a = 0;
		b = 0;
		cin = 1;
	#10;
	   a = 0;
		b = 1 ;
		cin = 0;
	#10;
	   a = 0;
		b = 1;
		cin = 1;
	#10;
	   a = 1;
		b = 0;
		cin = 0;
	#10;
	   a = 1;
		b = 0;
		cin = 1;
	#10;
	   a = 1;
		b = 1;
		cin = 0;
	#10;
	   a = 1;
		b = 1;
		cin = 1;
	#10 $finish;
		

	end
      
endmodule

