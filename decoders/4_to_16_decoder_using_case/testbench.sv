module tb();
    reg [3:0] i;
    reg enable;
    wire o;
    decoder dev(o , i , enable);
  assign enable = 1;
    initial
      begin
    $dumpfile("dump.vcd");
        $dumpvars(1,dev);
           i = 4'b0000 ;
        #2 i = 4'b0001 ;
        #2 i = 4'b0010 ;
        #2 i = 4'b0011 ;
        #2 i = 4'b0100 ;
        #2 i = 4'b0101 ;
        #2 i = 4'b0110 ;
        #2 i = 4'b0111 ;
        #2 i = 4'b1000 ;
        #2 i = 4'b1001 ;
        #2 i = 4'b1010 ;
        #2 i = 4'b1011 ;
        #2 i = 4'b1100 ;
        #2 i = 4'b1101 ;
        #2 i = 4'b1110 ;
        #2 i = 4'b1111 ;
        #2 $finish ;
      end
endmodule
