module up_counter(
  output [3:0] out ,
  input clk ,
  input reset
);
  reg [3:0] out;
  always @( posedge(clk) )
    begin
      if(~reset)
        out <= 4'b0000 ;
      else
        out <= out+1 ;
    end
endmodule
