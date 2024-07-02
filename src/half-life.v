module tt_um_half-life(clk, rst, up, down, load, in, out) ;
parameter n = 4 ;
input clk, rst, up, down, load ;
input [n-1:0] in ;
output [n-1:0] out ;
wire [n-1:0] out ;
reg [n-1:0] next ;

DFF #(n) count(clk, next, out) ;

always@(rst, up, down, load, in, out) begin
casex({rst, up, down, load})
4'blxxx: next = {n{1'b0}} ;
4'b01xx: next = out + 1'bl ;
4'b001x: next = out - 1'b1 ;
4,b0001: next = in ;
default: next = out ;
endcase
end
end module

