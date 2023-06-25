module counter(clk,reset,q);
  input clk,reset;
  output reg [2:0] q;
  
 
  t_ff n1(clk,1,reset,q[0]);
  t_ff n2(~q[0],1,reset,q[1]);
  t_ff n3(~q[1],1,reset,q[2]);

endmodule
  
  
