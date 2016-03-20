module encoder_16_4(
  output [4:0] out,
  input [15:0] in ,
  input enable );
  
  reg [4:0] out;
  
  always @( enable or in )
    begin
      if(enable)
        begin
          if( in[0] == 1)
        out = 0;
          else if( in[1] == 1)
        out = 1;
          else if( in[2] == 1)
        out = 2;
          else if( in[3] == 1)
        out = 3;
          else if( in[4] == 1)
        out = 4;
          else if( in[5] == 1)
        out = 5;
          else if( in[6] == 1)
        out = 6;
          else if( in[7] == 1)
        out = 7;
          else if( in[8] == 1)
        out = 8;
          else if( in[9] == 1)
        out = 9;
          else if( in[10] == 1)
        out = 10;
          else if( in[11] == 1)
        out = 11;
          else if( in[12] == 1)
        out = 12;
          else if( in[13] == 1)
        out = 13;
          else if( in[14] == 1)
        out = 14;
          else if( in[15] == 1)
        out = 15;
        end
    end
  
endmodule
