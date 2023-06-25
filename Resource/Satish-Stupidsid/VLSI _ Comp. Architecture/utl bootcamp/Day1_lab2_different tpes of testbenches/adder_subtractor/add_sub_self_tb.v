module tb;
  
  wire  [4:0]  out   ; 
  reg   [3:0]  in1   ; 
  reg   [3:0]  in2   ; 
  reg    dir   ; 
  reg    clk   ; 
  reg    rst   ; 
  
  reg [31:0] in1_reg,in2_reg,in1_reg2,in2_reg2,out_sub,out_add; 
  reg add_sub1;
 
    
  add_sub  DUT2  ( 
       .out (out ) ,
      .in1 (in1 ) ,
      .in2 (in2 ) ,
      .dir (dir ) ,
      .clk (clk ) ,
      .rst (rst ) ); 
        
  //initialization
  initial  
  begin
    // Initialize Inputs
    clk = 1'b0;
    rst = 1;
    dir = 1;
    in1 = 0;
    in2 =0;
    #40 rst = 0;
    #20 in1 = 4'd2; 
    in2 = 4'd1;
   #10 dir = 0;
    #40 in1 = 4'd6;
    in2 = 4'd2;    
    
  end
  
  always@(posedge clk or posedge rst)
  begin
    if (rst)
      begin
      in1_reg <= 0;
      in2_reg <= 0;
      end
    else
      begin  
      in1_reg <= in1;
      in2_reg <= in2;
      
      end
    add_sub1 <= dir;   
    in1_reg2 = in1_reg;
    in2_reg2 = in2_reg;
    
    out_add = in1_reg2+in2_reg2;
    out_sub = in1_reg2-in2_reg2;
   
  end
  
  always@(posedge clk or posedge rst)
  begin
    if (add_sub1)
      begin
      if (out==out_add)
        $display("correct");
      else
        $display("wrong"); 
     end
    else
      begin
       if(out==out_sub)
         $display("correct");
      else
        $display("wrong");
    end
  end
  
  
  always #5 clk = ~clk;
  
endmodule
 
