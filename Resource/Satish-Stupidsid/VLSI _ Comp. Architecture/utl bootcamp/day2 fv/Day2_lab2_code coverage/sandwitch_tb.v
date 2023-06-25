module tb;
reg clk,rst;
wire [1:0] mcnt;
sandwitch R1 (.clk(clk),.rst(rst),.mcnt(mcnt));
initial
begin
clk=0;
rst=1;
repeat(1)@(negedge clk);
rst=0;
end
always #5 clk = ~clk;
endmodule