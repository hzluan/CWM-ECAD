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
