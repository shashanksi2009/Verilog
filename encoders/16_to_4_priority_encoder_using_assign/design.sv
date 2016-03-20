module encoder_16_4(
  output [3:0] out,
  input [15:0] in ,
  input enable );
  
  reg [3:0] out;
  
  assign out = enable?
    (
    in[0]?0:
    in[1]?1:
    in[2]?2:
    in[3]?3:
    in[4]?4:
    in[5]?5:
    in[6]?6:
    in[7]?7:
    in[8]?8:
    in[9]?9:
    in[10]?10:
    in[11]?11:
    in[12]?12:
    in[13]?13:
    in[14]?14:
    in[15]?15:4'bxxxx
    ):4'bzzzz ;
  
endmodule
