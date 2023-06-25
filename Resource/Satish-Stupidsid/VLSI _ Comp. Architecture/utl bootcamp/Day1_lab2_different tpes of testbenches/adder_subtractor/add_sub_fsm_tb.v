module tb;
reg clk,rst,dir;
reg [3:0] in1,in2;
wire [4:0] out;
reg state,state_ns;
parameter add =1'b0,sub = 1'b1;
add_sub R1 (clk,rst,in1,in2,out,dir);
always@(posedge clk)
begin
if(rst)module tb;
reg clk,rst,dir;
reg [3:0] in1,in2;
wire [4:0] out;
reg state,state_ns;
parameter add =1'b0,sub = 1'b1;
add_sub R1 (clk,rst,in1,in2,out,dir);
always@(posedge clk){reg [3:0] in1,in2;
wire [4:0] out;
reg state,state_ns;
parameter add =1'b0,sub = 1'b1;
add_sub R1 (clk,rst,in1,in2,out,dir);
always@(posedge clk)
begin}
begin
if(rst)
state <= add;
else
state <= state_ns;
end
always@(state)
begin
case(state)
add : begin 
       dir = 1;
       state_ns = sub;
       end
 sub : begin
        dir=0;
        state_ns = add;
        end
  default : state_ns = add;
  endcase
  end
  initial
  begin
    clk=0;
    rst=1;
    #10;
    rst=0;
  end
  always #5 clk = ~clk;
  initial
  begin  
  #10;
  in1 = 4'd10;
  in2 = 4'd5;
  #10;
  in1 = 4'd10;
  in2 = 4'd8;
  end
endmodule
state <= add;
else
state <= state_ns;
end
always@(state)
begin
case(state)
add : begin 
       dir = 1;
       state_ns = sub;
       end
 sub : begin
        dir=0;
        state_ns = add;
        end
  default : state_ns = add;
  endcase
  end
  initial
  begin
    clk=0;
    rst=1;
    #10;
    rst=0;
  end
  always #5 clk = ~clk;
  initial
  begin  
  #10;
  in1 = 4'd10;
  in2 = 4'd5;
  #10;
  in1 = 4'd10;
  in2 = 4'd8;
  end
endmodule
  
           