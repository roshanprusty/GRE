module t_ff_tb;
  reg clk,t,reset;
  wire q;
  t_ff t1(.clk(clk),.t(t),.q(q));
  initial 
  begin
    clk =0; reset =0;
  end
    always
    #10 clk =~clk;
    initial 
    begin
    t=0; 
    #10 t=1; 
    #10 t=0; reset=0;
    #20 t=1; reset=1;
    #5 t=0; reset=0;
    #100 $finish;

  $monitor($time,"input=%b reset=%b output=%b",t,reset,q);
end
endmodule 
     
  
