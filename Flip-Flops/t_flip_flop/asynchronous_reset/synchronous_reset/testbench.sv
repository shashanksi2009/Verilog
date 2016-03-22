module tb();
  wire q;
  reg t , reset , clk ;
  t_flip_flop dev(q,t,reset,clk);
  initial
    begin
      $dumpvars(1,dev) ;
      $dumpfile("dump.vcd") ;
      reset=0;
      clk = 0;
      t = 0;
      #2 clk = 1;
      #2 clk = 0;
      #2 reset = 1;
         t = 1;
      #2 clk = 1;
      #2 clk = 0;
      #2 t = 0;
      #2 clk = 1;
      #2 clk = 0;
      #2 reset = 0;
      #2 clk = 1;
      #2 $finish ;
    end
endmodule
