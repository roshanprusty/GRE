module tb;
reg clk_tb,rst_tb,dir_tb;
reg [3:0] in1_tb,in2_tb;
wire [4:0] out_tb;
add_sub R1 (.clk(clk_tb),.rst(rst_tb),.in1(in1_tb),.in2(in2_tb),.out(out_tb),.dir(dir_tb));
initial
begin 
clk_tb=0;
forever #5 clk_tb = ~clk_tb;
end
task send;
input rst_t,dir_t;
input [3:0] in1_t,in2_t;
input [4:0] exp_t;
begin
 rst_tb = rst_t;
 dir_tb = dir_t;
 in1_tb = in1_t;
 in2_tb = in2_t;
 #10;
if(out_tb !== exp_t)
 $display("ERROR");
 else
 $display("pass");
 end
 endtask
 initial
 begin
 send(1'b1,1'b0,4'd9,4'd1,5'd0);
 send(1'b0,1'b0,4'd10,4'd1,5'd11);
 send(1'b0,1'b1,4'd11,4'd1,5'd10);
 send(1'b0,1'b0,4'd12,4'd1,5'd13);
 send(1'b0,1'b1,4'd13,4'd2,5'd11);
 send(1'b0,1'b0,4'd14,4'd1,5'd15);
 send(1'b0,1'b1,4'd15,4'd1,5'd14);
 send(1'b0,1'b0,4'd9,4'd1,5'd10);
 send(1'b0,1'b1,4'd10,4'd1,5'd9);
 send(1'b0,1'b0,4'd11,4'd1,5'd12);
 send(1'b0,1'b1,4'd12,4'd1,5'd11);
 end
 endmodule
 
  