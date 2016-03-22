module t_flip_flop(
  output q,
  input t,
  input reset,
  input clk);
  reg q;
  always @( posedge(clk) or negedge(reset) )
    begin
      if( reset == 0 )
        q<=0;
      else if(t)
        q<=~q;
    end
endmodule
