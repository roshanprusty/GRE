module fsm111(clk,rst,I,Y);
input clk,rst,I;
output reg Y;
reg [1:0] state,state_ns;
parameter s0 = 2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
always@(posedge clk)
begin
if(rst)
state <= 2'b00;
else
state <= state_ns;
end
always@(state,I)
begin
case(state)
2'b00 : begin
        if(I)
        state_ns = 2'b01;
        else
        state_ns = 2'b00;
        end
2'b01 : begin
        if(I)
        state_ns = 2'b10;
        else
        state_ns = 2'b00;
        end
2'b10: begin
       if(I)
       state_ns = 2'b11;
       else
       state_ns = 2'b00;
       end
2'b11 : begin
        if(I)
        state_ns = 2'b11;
        else
        state_ns = 2'b00;
        end
 default : state_ns = 2'b00;
 endcase
 end
 
 //assign Y = state == 2'b11;
always@(state)
begin
if(state == 2'b11)
Y = 1;
else
Y = 0;
end 
endmodule