module decoder(
  output [15:0] out,
  input [3:0] in ,
  input enable );
  
  reg [15:0] out;
  
  assign out = enable?
    (
    in==0?16'h0001:
    in==1?16'h0002:
    in==2?16'h0004:
    in==3?16'h0008:
    in==4?16'h0010:
    in==5?16'h0020:
    in==6?16'h0040:
    in==7?16'h0080:
    in==8?16'h0100:
    in==9?16'h0200:
    in==10?16'h0400:
    in==11?16'h0800:
    in==12?16'h1000:
    in==13?16'h2000:
    in==14?16'h4000:
    in==15?16'h8000:16'hxxxx
    ):16'hzzzz ;
  
endmodule
