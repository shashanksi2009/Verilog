module encoder_16_4(
  output [4:0] out,
  input [15:0] in ,
  input enable );
  
  reg [4:0] out;
  
  always @( enable or in )
    begin
      if(enable)
        begin
     case( in )
     16'h0001 : out = 0;
     16'h0002 : out = 1;
     16'h0004 : out = 2;
     16'h0008 : out = 3;
     16'h0010 : out = 4;
     16'h0020 : out = 5;
     16'h0040 : out = 6;
     16'h0080 : out = 7;
     16'h0100 : out = 8;
     16'h0200 : out = 9;
     16'h0400 : out = 10;
     16'h0800 : out = 11;
     16'h1000 : out = 12;
     16'h2000 : out = 13;
     16'h4000 : out = 14;
     16'h8000 : out = 15;
     endcase
        end
    end
  
endmodule
