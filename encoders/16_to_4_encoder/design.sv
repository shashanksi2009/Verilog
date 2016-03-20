module encoder_16_4(
  output [4:0] out,
  input [15:0] in ,
  input enable );
  
  reg [4:0] out;
  
  always @( enable or in )
    begin
      if(enable)
        begin
     if( in == 16'h0001)
        out = 0;
      else if( in == 16'h0002)
        out = 1;
      else if( in == 16'h0004)
        out = 2;
      else if( in == 16'h0008)
        out = 3;
      else if( in == 16'h0010)
        out = 4;
      else if( in == 16'h0020)
        out = 5;
      else if( in == 16'h0040)
        out = 6;
      else if( in == 16'h0080)
        out = 7;
      else if( in == 16'h0100)
        out = 8;
      else if( in == 16'h0200)
        out = 9;
      else if( in == 16'h0400)
        out = 10;
      else if( in == 16'h0800)
        out = 11;
      else if( in == 16'h1000)
        out = 12;
      else if( in == 16'h2000)
        out = 13;
      else if( in == 16'h4000)
        out = 14;
      else if( in == 16'h8000)
        out = 15;
        end
    end
  
endmodule
