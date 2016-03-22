module tb();
  wire [3:0] out;
  reg clk , reset;
  up_counter dev(out,clk,reset);
  initial
    clk = 0;
  always
    #1 clk <= ~clk;
  initial
    begin
      $dumpvars(1,dev);
      $dumpfile("dump.vcd");
      reset = 0;
      #3 reset = 1;
      #50 
      reset = 0;
      #3 reset = 1;
      #2 $finish;
    end
endmodule
