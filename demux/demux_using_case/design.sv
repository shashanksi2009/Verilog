module demux(
  output out1 ,
  output out2 ,
  input select ,
  input in );
  reg out1 , out2;
  always @( in or select )
    begin
      case(select)
        0 :
        begin
          out1 = in;
          out2 = 1'bx ;
        end
        1 :
        begin
          out1 = 1'bx ;
          out2 = in;
        end
      endcase
    end
endmodule
