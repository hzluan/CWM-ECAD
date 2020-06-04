0;

inpu//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:Hongzhou Luan
// Date: 3/June
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green

//this traffic light is a 4-bit counter: 00(red) - 01(red + amber) - 10(green) - 11(amber)
//use Karnaugh map to find transitions states: red from amber and red;anber from non-amber;green from red&amber

`timescale 1ns = 100ps

module traffic_light(clk,red,amber,green);
  
  input clk,;
  out put reg red,amber,green;
  
  always@(posedge clk) begin
	red <= (red && !amber && !green) || (!red && amber && !green);
	amber <= !amber;
	green <= (red && amber);
		end		
  
endmodule

