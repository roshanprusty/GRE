module counter_tb;
  reg clk,reset;
  wire [2:0] q;
    counter m1 (clk,reset,q);
    
  initial 
  begin
    clk =0; reset =0;
  end
  
    always
    #10 clk =~clk;
    
    initial 
    begin 
    #10 reset=0;
    #20  reset=1;
    #5  reset=0;
    #100 $finish;

  $monitor($time,"reset=%b output=%b", reset,q);
end
endmodule 
