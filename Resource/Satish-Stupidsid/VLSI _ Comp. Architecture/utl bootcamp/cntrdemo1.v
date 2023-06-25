module cntrdemo(clk,rst,cnt);
input clk,rst;
output reg [3:0] cnt;
always@(posedge clk)
begin 
if(rst)
cnt <= 4'b0;
else if(cnt==4'b1010)
cnt <=4'b0;
else
cnt <=cnt + 4'b0010;
end
endmodule
