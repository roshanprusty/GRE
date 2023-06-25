module operation(AB_AND,AB_OR,AB_XOR,A,B);
parameter delay=10;
input [3:0] A,B;
output reg [3:0] AB_AND,AB_OR,AB_XOR;
always@(A or B)
begin
   bitwise_oper(AB_AND,AB_OR,AB_XOR,A,B);
end
task bitwise_oper;
    output [3:0] ab_and,ab_or,ab_xor;
    input [3:0] a,b;    
begin
#delay ab_and = a & b;
       ab_or = a | b;
       ab_xor = a ^ b;
       end
       endtask
       endmodule
