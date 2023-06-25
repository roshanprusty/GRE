module tb;
reg clk,rst,wr;
reg [3:0] din;
reg [3:0] addr;
wire [3:0] dout;
ram R1 (clk,rst,din,wr,addr,dout);
initial
begin
rst=1;
clk=0;
#10;
rst=0;
end
always #5 clk = ~clk;
initial
begin
  #10;
wr=1;
addr=4'b0000;
din = 4'b1111;
#10;
addr=4'b0001;
din = 4'b1111;
#10;
addr=4'b0010;
din = 4'b1111;
#10;
addr=4'b0011;
din = 4'b1111;
#10;
addr=4'b0100;
din = 4'b1111;
#10;
addr=4'b0101;
din = 4'b1111;
#10;
addr=4'b0110;
din = 4'b1111;
#10;
addr=4'b0111;
din = 4'b1111;
#10;
addr=4'b1000;
din = 4'b1111;
#10;
addr=4'b1001;
din = 4'b1111;
#10;
addr=4'b1010;
din = 4'b1111;
#10;
addr=4'b1011;
din = 4'b1111;
#10;
addr=4'b1100;
din = 4'b1000;
#10;
addr=4'b1101;
din = 4'b1111;
#10;
addr=4'b1110;
din = 4'b1111;
#10;
addr=4'b1111;
din = 4'b1111;
#10;
#100;
addr=4'b1100;
wr=0;
end
endmodule
