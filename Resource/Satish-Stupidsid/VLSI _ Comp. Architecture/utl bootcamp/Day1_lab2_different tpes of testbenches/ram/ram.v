module ram(clk,rst,din,wr,addr,dout);
input clk,rst,wr;
input [3:0] din;
input [3:0] addr;
output reg [3:0] dout;
reg [3:0] mem [0:15];
always@(posedge clk)
begin
if(rst)
begin
mem[0] <= 4'b0;
mem[1] <= 4'b0;
mem[2] <= 4'b0;
mem[3] <= 4'b0;
mem[4] <= 4'b0;
mem[5] <= 4'b0;
mem[6] <= 4'b0;
mem[7] <= 4'b0;
mem[8] <= 4'b0;
mem[9] <= 4'b0;
mem[10] <= 4'b0;
mem[11] <= 4'b0;
mem[12] <= 4'b0;
mem[13] <= 4'b0;
mem[14] <= 4'b0;
mem[15] <= 4'b0;
end
else if(wr)
begin
mem[addr] <= din;
dout <=din;
end
else 
dout <= mem[addr];
end
endmodule
    