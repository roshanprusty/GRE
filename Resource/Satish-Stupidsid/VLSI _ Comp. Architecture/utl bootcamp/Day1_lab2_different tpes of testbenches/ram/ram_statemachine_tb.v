module tb;
reg clk,rst,wr;
reg [3:0] din;
reg [3:0] addr;
wire [3:0] dout;
reg state,state_ns;
parameter write=1'b1,read=1'b0;
ram R1 (.clk(clk),.rst(rst),.din(din),.wr(wr),.addr(addr),.dout(dout));
initial
begin
clk=0;
rst=1;
#10;
rst=0;
end
always #5 clk=~clk;
always@(negedge clk)
begin
if(rst)
state <= write;
else
state <=state_ns;
end
/*always@(state,wr)
begin
if(wr)
state_ns = write;
else
state_ns = read;
end*/
always@(state)
begin
case(state)
1'b1 : begin
       wr=1;
       din =4'b1000;
       addr = $random;
       state=0;
       end
1'b0 : begin
       wr=0;
       addr=$random;
       state=1;
       end
  endcase
 end
 endmodule
       

