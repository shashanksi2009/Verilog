module tb();
    reg [15:0] i;
    reg enable;
    wire o;
    encoder_16_4 dev(o , i , enable);
  assign enable = 1;
    initial
      begin
    $dumpfile("dump.vcd");
        $dumpvars(1,dev);
           i = 16'h0001 ;
        #2 i = 16'h0002 ;
        #2 i = 16'h0004 ;
        #2 i = 16'h0008 ;
        #2 i = 16'h0010 ;
        #2 i = 16'h0020 ;
        #2 i = 16'h0040 ;
        #2 i = 16'h0080 ;
        #2 i = 16'h0100 ;
        #2 i = 16'h0200 ;
        #2 i = 16'h0400 ;
        #2 i = 16'h0800 ;
        #2 i = 16'h1000 ;
        #2 i = 16'h2000 ;
        #2 i = 16'h4000 ;
        #2 i = 16'h8000 ;
        #2 $finish ;
      end
endmodule
