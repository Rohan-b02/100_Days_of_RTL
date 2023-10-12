`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: VIT
// Engineer: Rohan Boge
//
// Create Date:   22:48:49 10/12/2023
// Design Name:   FA
// Module Name:   FA_Testbench.v
// Project Name:  full_adder
////////////////////////////////////////////////////////////////////////////////

module FA_Testbench_v;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RCR uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 5;
		b = 8;
		cin = 0;
		
#10   a = 5;
		b = 7;
		cin = 1;
		
#10   a = 6;
		b = 4;
		cin = 0;

#10   a = 15;
		b = 1;
		cin =1;		
		
#10   a = 1;
		b = 7;
		cin = 0;	
		
#10   a = 1;
		b = 0;
		cin = 1;
		
#10   a = 1;
		b = 1;
		cin = 0;
		
#10   a = 8;
		b = 6;
		cin = 1;

#10 $finish;		
		
	end
      
endmodule

