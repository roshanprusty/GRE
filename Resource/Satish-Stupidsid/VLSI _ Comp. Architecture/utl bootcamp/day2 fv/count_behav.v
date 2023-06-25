module counter_behav (clk,reset,cnt);
  input clk,reset;
  output reg[2:0] cnt;
  always@ (posedge clk or posedge reset)
  begin
    if(reset)
      cnt<=3'b000;
    else
    cnt<=cnt+1;
    end
  endmodule
