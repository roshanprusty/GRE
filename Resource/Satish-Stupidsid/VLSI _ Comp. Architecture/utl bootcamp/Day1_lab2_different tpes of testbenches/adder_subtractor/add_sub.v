module add_sub(clk,rst,in1,in2,out,dir);
input clk,rst,dir;
input [3:0] in1,in2;
output reg [4:0] out;
always@(posedge clk)
begin
if(rst)
out <=5'b0;
else if(dir)
out <= in1 - in2;
else
out <= in1 + in2;
end
endmodule