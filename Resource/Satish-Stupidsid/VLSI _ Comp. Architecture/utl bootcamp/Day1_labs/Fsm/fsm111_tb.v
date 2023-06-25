module fsm111_tb;
reg clk,rst,I;
wire Y;
fsm111 R2(clk,rst,I,Y);
initial
begin
clk=0;
rst=1;
#10;
rst=0;
I=1'b1;
#10;
I=1'b0;
#10;
I=1'b1;
#10;
I=1'b1;
#10;
I=1'b0;
#10;
I=1'b1;
#10;
I=1'b1;
#10;
I=1'b1;
#10;
I=1'b1;
#10;
I=1'b0;
#10;
I=1'b0;
#10;
I=1'b0;
#10;
end
always #5 clk=~clk;
endmodule