module stim (clk,reset);
  output reg clk,reset;
    initial 
    begin
      clk =0; reset =1;
    end
    
      always
      #10 clk =~clk;
      
      initial 
      begin
       
      #10 reset=0;
      #20  reset=1;
      #5 reset=0;
    end
  endmodule
