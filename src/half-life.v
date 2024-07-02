module tt_um_halflife(clk, rst, up, down, load, in, out) ;
parameter n = 4 ;
input clk, rst, up ; 
  input [2:0] down ;
  input [5:0] load ;
input [n-1:0] in ;
output [n-1:0] out ;
wire [n-1:0] out1 ;
reg [n-1:0] next ;

  DFF #(n) count(next, clk, out) ;

always@(rst, up, down, load, in, out) begin
casex({rst, up, down, load})
next: out1 = 4'b0001;
//4'bl000: next = {4{1'b0}} ;
//4'b0100: next = out + 1'bl ;
//4'b0010: next = out - 1'b1 ;
//4,b0001: next = in ;
default: next = out ;
endcase
end
endmodule

