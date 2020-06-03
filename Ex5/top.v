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

`timescale 1ns = 100ps

module traffic_light(clk,red,amber,green);
  
  input clk,;
  out put reg red,amber,green;
  
  always@(posedge clk) begin
    red 
    amber 
//////////////////////////////////////////////////////////////////////////////////

