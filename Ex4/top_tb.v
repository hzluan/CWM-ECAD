//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:Hongzhou Luan
// Date: 3/June
//
// Description: A testbench module to test Ex4 - Electronic Dice
`timescale 1ns / 100ps
module top_tb();
  
  parameter CLK_PERIOD = 10;
  
  reg clk;
  reg rst;
  reg direction;
  reg enable;
  reg error;
  reg [7:0]maxcount;
  
  
  initial begin
    clk = 1'b0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end
  
  initial begin
    rst = 0;
    direction = 1;
    enable = 1;
    err = 0;
    
    #10
    maxcount <= counter_out;
    direction <= 0;
    
    #20
    if(maxcount< counter_out)
    error = 1;
    enable = 0;
    
    #30
    rst = 1;
    
  end
  
  initial begin
    #40
    if(!error)
      $display("Passed");
    $finish;
    else $display("Failed");
    $finish;
  end
  
  dice dice(.clk(clk),
            .rst(rst),
            .direction(direction),
            .enable(enable)
               );
  
endmodule
              

//////////////////////////////////////////////////////////////////////////////////

