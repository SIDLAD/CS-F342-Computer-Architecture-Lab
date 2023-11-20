`include "d_ff.v"
module reg_32bit(q,d,clk,reset);
    output [31:0] q;
    input [31:0] d;
    input clk,reset;
    generate
        for(genvar i=0;i<=31;i = i+1)
        begin
            d_ff d1(q[i],d[i],clk,reset);
        end
    endgenerate
endmodule;