//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name: Hongzhou Luan
// Date: 5/June
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory.
//
//  inputs:
//           clk, a[2:0], b[2:0], read
//
//  outputs:
//           result[4:0]
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module multiplier(clk,a,b,read)
  
  input clk,read;
  input [2:0]a,b;
  output reg [4:0]result;
  
  wire [5:0]address;
  
  always@(a||b)
    address = (a << 3) + b;
  
  multiplier_memory mem(
	.clk(clk),
	.enable(read),
	.address(addr),
	.result(result)
	);
  
endmodule
  
