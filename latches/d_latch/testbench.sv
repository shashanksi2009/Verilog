module tb();
  wire q;
  reg din , enable , reset ;
  d_latch dev( q , din , enable , reset );
  initial
    begin
      $dumpvars(1,dev);
      $dumpfile("dump.vcd");
      enable = 0;
      #2 din = 0;
      #2 reset = 0;
      #2 reset = 1;
      #2 enable = 1;
      #2 din = 1;
      #2 reset = 0;
      #2 $finish;
    end
endmodule
