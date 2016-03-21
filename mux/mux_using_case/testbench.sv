module tb();
  wire out;
  reg [3:0] in ;
  reg [1:0] select ;
  mux dev(out , in , select );
  initial
    begin
      $dumpvars(1,dev);
      $dumpfile("dump.vcd");
      in = 4'b1010 ;
      select = 2'b00;
      #2 select = 2'b01;
      #2 select = 2'b10;
      #2 select = 2'b11;
      #2 in[3] = 0 ;
      #2 $finish;
    end
endmodule
