  
//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:Hongzhou Luan
// Date: 4/June
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file

//logic: if(sel = 1&dice || sel = 0&lights) error = 1
`timescale 1ns / 100ps

module top_tb();

//parameter
parameter CLK_PRD = 10;
	
//reg
reg clk, button, sel;
wire [2:0] di, [2:0]tf;

initial begin
error <= 0
clk <= 1'b0;
	forever
	#(CLK_Period/2) clk <= ~clk;
  
 begin
 if((sel&&di)||(!sel&&tf))
 error = 1;
 end
end

if(error)
$display("Fail");
else
$display("Success");

	mux multiplexer(
		.clk(clk),
		.button(button),
		.sel(sel),
		.out(result)	
	);
	
	
endmodule
