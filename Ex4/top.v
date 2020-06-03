//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name: Hongzhou Luan
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

module roll(clk, rst, button, throw)
	input clk, 
        input rst, 
        input button;
	output reg [2:0] throw;
	
	
always @ (posedge clk or rst)
if (rst) 
    throw = 3'd0;
else
	
    if(throw = 3'd0||throw = 3'd7||throw = 3'd6 && button)
        throw <= 3'd1;
    else
	    
        if (button or &(~throw) or &throw)
            throw <= throw + 1;
		
endmodule
