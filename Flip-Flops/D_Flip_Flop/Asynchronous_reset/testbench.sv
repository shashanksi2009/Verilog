module tb();
  wire q;
  reg d , reset , clk ;
  d_flip_flop dev(q,d,reset,clk);
  initial
    begin
      $dumpvars(1,dev) ;
      $dumpfile("dump.vcd") ;
      reset=1;
      clk = 0;
      d = 0;
      #2 clk = 1;
      #2 clk = 0;
      #2 d = 1;
      #2 clk = 1;
      #2 d = 0;
      #2 reset = 0;
      #2 $finish ;
    end
endmodule
