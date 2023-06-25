module comparator(a,b,y);
  input [2:0] a,b;
  output reg y;
  always@ (a,b)
  begin
    if(a==b)
      begin
        y = 1;
        $display("PASS");
      end
    else
      begin
              y = 0;
              $display("FAIL");
            end
          end
          endmodule
        
