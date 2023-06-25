module cntrdemo1_tb;
reg clk,rst;
wire  [3:0] cnt;
cntrdemo R1 (clk,rst,cnt);
initial
begin
clk=0;
rst=1;
#10;
rst=0;
end
always #5 clk =~clk;
endmodule