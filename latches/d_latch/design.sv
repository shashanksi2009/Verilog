module d_latch(
  output q,
  input din ,
  input enable ,
  input reset );
  reg q;
  always @(din or enable or reset )
    begin
      if(enable)
        begin
          if(~reset)
            q<=0;
          else
            q<=din;
        end
    end
endmodule
