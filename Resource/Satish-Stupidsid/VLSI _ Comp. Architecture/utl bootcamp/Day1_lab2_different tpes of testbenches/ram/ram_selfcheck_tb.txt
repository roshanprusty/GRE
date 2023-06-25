module tb;
reg clk_tb,rst_tb,wr_tb;
reg [3:0] din_tb;
reg [3:0] addr_tb;
wire [3:0] dout_tb;
ram R1 (.clk(clk_tb),.rst(rst_tb),.din(din_tb),.wr(wr_tb),.addr(addr_tb),.dout(dout_tb));
initial
begin
clk_tb=0;
rst_tb=1;
#10;
rst_tb=0;
end
always #5 clk_tb=~clk_tb;
task send;
input wr_t;
input [3:0] din_t;
input [3:0] addr_t;
input [3:0] expt_t;
begin
wr_tb = wr_t;
din_tb = din_t;
addr_tb = addr_t;
#10;
if(dout_tb !== expt_t)
  $display("error");
else
  $display("success");
end
endtask
initial
begin
#10;
send(1'b1,4'd10,4'd2,4'd10);
send(1'b1,4'd11,4'd3,4'd11);
send(1'b1,4'd12,4'd4,4'd12);
send(1'b1,4'd13,4'd5,4'd13);
send(1'b1,4'd14,4'd6,4'd14);
send(1'b1,4'd15,4'd7,4'd15);
send(1'b0,4'dx,4'd3,4'd11);
end
endmodule

