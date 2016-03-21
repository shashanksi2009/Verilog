module mux (
  output out ,
  input [3:0] in ,
  input [1:0] select
);
  reg out;
  always @(select or in)
    begin
    if(select == 0)
      out = in[0];
    else if(select == 1)
      out = in[1];
    else if(select == 2)
      out = in[2];
    else
       out = in[3] ;
    end
endmodule
