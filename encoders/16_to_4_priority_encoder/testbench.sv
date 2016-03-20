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
           i = 16'h0011 ;
        #2 i = 16'h0012 ;
        #2 i = 16'h0014 ;
        #2 i = 16'h0018 ;
        #2 i = 16'h0110 ;
        #2 i = 16'h0120 ;
        #2 i = 16'h0140 ;
        #2 i = 16'h0280 ;
        #2 i = 16'h2100 ;
        #2 i = 16'h3200 ;
        #2 i = 16'h2400 ;
        #2 i = 16'h2800 ;
        #2 i = 16'h1000 ;
        #2 i = 16'h2000 ;
        #2 i = 16'h4000 ;
        #2 i = 16'h8000 ;
        #2 $finish ;
      end
endmodule
