module decoder (
  output [15:0] out ,
  input [3:0] in ,
  input enable );
  reg [15:0] out ;
  assign out = (enable)?(1<<in):16'hzzzz;
endmodule
