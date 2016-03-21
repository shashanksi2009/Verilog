module tb();
  wire out1 , out2 ;
  reg select , in ;
  demux dev( out1 , out2 , select , in );
  initial
    begin
      $dumpvars(1,dev);
      $dumpfile("dump.vcd");
      in = 1 ;
      select = 0;
   #2 select = 1;
   #2 in = 0;
   #2 $finish;
    end
endmodule
