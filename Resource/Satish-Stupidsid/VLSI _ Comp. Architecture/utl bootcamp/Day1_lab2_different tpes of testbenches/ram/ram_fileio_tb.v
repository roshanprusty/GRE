module tb;
reg clk,rst,wr;
reg [3:0] din;
reg [3:0] addr;
wire [3:0] dout;
reg [3:0] memd [0:4];
integer i,j;
integer stim1;
ram R1 (clk,rst,din,wr,addr,dout);
initial
begin
  clk=0;
  rst=1;
  #10;
  rst=0;
end
always #5 clk = ~clk;
initial
wr=1;
always@(negedge clk)
addr = $random;
 initial
 begin
   #10;
   $readmemh("raminput.txt",memd);
   for(i=0;i<5;i=i+1)
   begin
   din = memd[i];
   #10;
 end
 end
 initial
 begin
   #16;
   stim1 =$fopen("ramoutput.txt");
   for(j=0;j<=5;j=i+1)
   begin
   $fdisplay(stim1,"%h",dout);
   #10;
   end
   end
endmodule