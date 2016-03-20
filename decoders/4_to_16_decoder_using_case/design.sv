module decoder_16_4(
  output [15:0] out,
  input [3:0] in ,
  input enable );
  
  reg [15:0] out;
  
  always @( enable or in)
  begin
    if( enable )
      begin
    case(in)
    0 : out = 16'h0001;
    1 : out = 16'h0002;
    2 : out = 16'h0004;
    3 : out = 16'h0008;
    4 : out = 16'h0010;
    5 : out = 16'h0020;
    6 : out = 16'h0040;
    7 : out = 16'h0080;
    8 : out = 16'h0100;
    9 : out = 16'h0200;
    10 : out = 16'h0400;
    11 : out = 16'h0800;
    12 : out = 16'h1000;
    13 : out = 16'h2000;
    14 : out = 16'h4000;
    15 : out = 16'h8000;
    endcase
      end
  end
endmodule
