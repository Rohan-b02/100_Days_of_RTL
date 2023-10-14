`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan
//
// Create Date:   23:26:24 10/14/2023
// Design Name:   CLA
// Module Name:   CLA_testbench.v
// Project Name:  cla
////////////////////////////////////////////////////////////////////////////////

module CLA_testbench_v;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (
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
		
#10   a = 0;
		b = 0;
		cin = 1;
		
#10   a = 0;
		b = 1;
		cin = 0;
		
 #10   a = 0;
		b = 1;
		cin = 1;
		
#10   a = 1;
		b = 0;
		cin = 0;		

#10   a = 1;
		b = 0;
		cin = 1;

#10   a = 1;
		b = 1;
		cin = 0;

#10   a = 1;
		b = 1;
		cin = 1;
		
#10 $finish;
	

	end
      
endmodule

