module tb();
  wire [15:0] out;
  reg [3:0] in ;
  reg enable ;
  decoder dev( out , in , enable );
  assign enable = 1;
  initial 
    begin
      $dumpvars(1,dev);
      $dumpfile("dump.vcd");
      in = 0;
      #2 in = 1 ;
      #2 in = 2 ;
      #2 in = 3 ;
      #2 in = 4 ;
      #2 in = 5 ;
      #2 in = 6 ;
      #2 in = 7 ;
      #2 in = 8 ;
      #2 in = 9 ;
      #2 in = 10 ;
      #2 in = 11 ;
      #2 in = 12 ;
      #2 in = 13 ;
      #2 in = 14 ;
      #2 in = 15 ;
      #2 $finish;
    end
endmodule
