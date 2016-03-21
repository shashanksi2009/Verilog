module mux (
  output out ,
  input [3:0] in ,
  input [1:0] select
);
  reg out;
  assign out = (select == 0)?in[0]:
    (select == 1)?in[1]:
    (select == 2)?in[2]:in[3] ;
endmodule
