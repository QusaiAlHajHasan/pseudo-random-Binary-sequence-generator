`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:18:56 05/03/2020
// Design Name:   prbs
// Module Name:   D:/Study/2019-2020/Second Semester/CPE433 - Advanced Digital/Home Work 3/PRBS_Generator/prbs_TB.v
// Project Name:  PRBS_Generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prbs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prbs_TB;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire random;

	// Instantiate the Unit Under Test (UUT)
	prbs uut (
		.clk(clk), 
		.reset(reset), 
		.random(random)
	);

	initial begin
		// Initialize Inputs
		forever begin
		   clk <= 0;
		#5 clk <= 1;
		#5 clk <= 0;
		end
		
	end
	
	initial begin
		    reset = 1;
		#10 reset = 0;
		#90 reset = 1;
		#10 reset = 0;
	end
      
endmodule

