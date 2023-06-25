module tb;
reg clk,rst,dir;
reg [3:0] in1,in2;
wire [4:0] out;
add_sub R1 (clk,rst,in1,in2,out,dir);
initial
begin
clk=0;rst=1;
#10;
rst=0;
end
always #5 clk = ~clk;
initial
begin
#10; in1 = 4'd9; in2 = 4'd9; dir=0;
#10; in1 = 4'd10; in2 = 4'd1; dir=1;
#10; in1 = 4'd11; in2 = 4'd2; dir=0;
#10; in1 = 4'd12; in2 = 4'd3; dir=1;
#10; in1 = 4'd13; in2 = 4'd4; dir=0;
#10; in1 = 4'd14; in2 = 4'd5; dir=1;
#10; in1 = 4'd15; in2 = 4'd6; dir=0;
#10; in1 = 4'd16; in2 = 4'd11; dir=1;
#10; in1 = 4'd17; in2 = 4'd10; dir=0;
end
endmodule
