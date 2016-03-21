module mux (
  output out ,
  input [3:0] in ,
  input [1:0] select
);
  reg out;
  always @(select or in)
    begin
    case(select)
     0: out = in[0];
     1: out = in[1];
     2: out = in[2];
     3: out = in[3];
    endcase
    end
endmodule
