module tb;
reg clk,rst,dir;
reg [3:0] in1,in2;
wire [4:0] out;
integer sim1,sim2,sim3;
add_sub R1 (clk,rst,in1,in2,out,dir);
initial
begin
clk=0;
rst=1;
#10;
rst=0;
end
always #5 clk = ~clk;
always #20 dir = ~dir;
initial
begin
in1 =0;
in2 =0;
dir =0;
#10;
sim1 = $fopen("in1_data.dat","r");
sim2 = $fopen("in2_data.dat","r");
sim3 = $fopen("p1out.txt","w");
end
initial
begin
while(!$feof(sim1) && !$feof(sim2))
begin
@(posedge clk)
if(rst==0)
begin
            $fscanf(sim1,"%d",in1);
            $fscanf(sim2,"%d",in2);        
            end
else
 begin 
 in1 =0;
 in2=0;
 end
 end
 $fclose(sim1);
 $fclose(sim2);
 $fclose(sim3);
 end
 initial
 begin
   $fdisplay(sim3,out);
 end   
 endmodule


