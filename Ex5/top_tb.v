//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:Hongzhou Luan
// Date: 4/June
//
// Description: A testbench module to test Ex5 - Traffic Lights
`timescale 1ns / 100ps

module top_tb();

  //parameters
parameter CLK_Period = 10;

reg clk, error;
wire red, amber,green;

  //clock
initial begin
clk = 1'b0;
	forever
	#(CLK_Period/2) clk = ~clk;
end

initial begin
error <= 0;

//using the given states, if unwanted states are shown, error = 1
begin
  if ( !( ({red, amber, green} == 3'b100) || ({red, amber, green} == 3'b110) || ({red, amber, green} == 3'b001) || ({red, amber, green} == 3'b010) ) ) 
				error = 1;
end
end
  
  //check for falure/success
initial begin
  #50
  if(error)
    $display("Test Failed");
  else
    $display("Success");
 end

  //instantiate counter module
lights top(.clk (clk), .red (red), .amber (amber), .green (green));

endmodule
