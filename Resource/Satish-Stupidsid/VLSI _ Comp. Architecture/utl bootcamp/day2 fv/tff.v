module t_ff(clk,t,q);
input clk,t;
output q;
reg q;
always@ (posedge clk)
begin
if (t)
  q<=~q;
else q<=q;
end
endmodule