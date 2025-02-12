module DFF (d, clk, q);
  parameter WIDTH = 1;
  input clk;
  input [WIDTH-1:0] d;
  output [WIDTH-1:0] q;
  reg [WIDTH-1:0] q;

  always@ (posedge clk)
    q <= d;
endmodule
