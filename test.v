`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:05:37 04/26/2020
// Design Name:   pipe
// Module Name:   C:/Users/Tarunbir Singh/Dropbox/Study/Comp Arch/assign2/assign2/test.v
// Project Name:  assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipe
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	pipe uut (
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

	initial	begin
		// Initialize Inputs
		clk <= 0;
		#200;
		$finish;
	end
	
	initial	begin
		// Initialize Inputs
		Reset = 0;
		#20
		Reset = 1;
		#180
		$finish;
	end
	
	always
	begin
	#10 clk = ~clk;
	end

	end
      
endmodule

