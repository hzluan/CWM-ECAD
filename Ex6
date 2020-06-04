//This file is for Ex6 but I don't have the other files and I got the question from Ox-EngSci so this is an attempt.
//this file is for the multiplexer logic, lights and dice are needed in separate files

  
//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name:Hongzhou Luan
// Date: 4/June
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]

//in this exersice, the multiplxer selects between dice and traffic lights while the clk keeps ticking

`timescale 1ns / 100ps

module multiplexer( rst, clk, button, sel, result);
	input rst, clk, button, sel;
	output [2:0] result;
	wire [2:0] tf, [2:0] di;
	
dice dice(
  .clk(clk), .rst(rst), .button(button), .throw(di)
  );
  
lights lights(
 .clk(clk), .red(tf[0]), .amber(tf[1]), .green(tf[2])
 );
 
assign result = (sel)?tf:di;

endmodule
