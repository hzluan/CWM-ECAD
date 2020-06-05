//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name: Hongzhou Luan
// Date: 5/June
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file

`timescale 1ns / 100ps

module test();

parameter CLK_PERIOD = 10;
	
reg clk,read,error;
reg [0:2]a,b;

wire [4:0] result;

initial begin
clk <= 0;
read <= 0;
error <= 0;
a <= 3'd1;
b <= 3'd7;
forever #(CLK_PRD/2) clk = ~clk;
	end

initial begin
        
#10 @(posedge clk) begin
    read = 1;
#(CLK_PERIOD) 
    read = 0;
end
	
#15 if (result != 5'd7) begin
		error = 1;
end

	
#20 begin 
if (error)
$display("Fail");
else $display("Success");
end
  
end
    
multiplier multiplier(
		.a(a),
		.b(b),
		.clk(clk),
		.read(read),
		.result(result)
	);

endmodule

