module d_flip_flop(
  output q,
  input d,
  input reset,
  input clk);
  reg q;
  always @( posedge(clk) or negedge(reset) )
    begin
      if( reset == 0 )
        q<=0;
      else
        q<=d;
    end
endmodule
