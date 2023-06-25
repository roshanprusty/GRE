module sandwitch(clk,rst,mcnt);
input clk,rst;
output reg [1:0] mcnt;
reg [1:0] icnt1,icnt2,icnt1_ns,icnt2_ns;
reg div2;
always@(posedge clk)
begin
if(rst)
icnt1 <=0;
else
icnt1 <= icnt1_ns;
end
always@(posedge clk)
begin
if(rst)
icnt2 <= 2'b11;
else
icnt2 <= icnt2_ns;
end
always@(div2,icnt1)
begin
if(div2)
icnt1_ns = icnt1 +1;
else
icnt1_ns = icnt1;
end
always@(div2,icnt2)
begin
if(div2)
icnt2_ns = icnt2 - 1;
else
icnt2_ns = icnt2;
end
always@(posedge clk)
begin
if(rst)
div2 <= 0;
else
div2 <= ~div2;
end
always@(icnt1,icnt2,div2)
begin
if(div2)
mcnt = icnt2;
else
mcnt = icnt1;
end
endmodule
