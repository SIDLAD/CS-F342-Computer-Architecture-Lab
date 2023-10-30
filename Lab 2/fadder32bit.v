`include "fadder8bit.v"

module fadder32bit(x,y,z,s,c);
    input [31:0] x,y;
    output [31:0] s;
    input z;
    output c;
    wire [1:3] mid;
    fadder8bit f1(x[7:0],y[7:0],z,s[7:0],mid[1]);
    fadder8bit f2(x[15:8],y[15:8],mid[1],s[15:8],mid[2]);
    fadder8bit f3(x[23:16],y[23:16],mid[2],s[23:16],mid[3]);
    fadder8bit f4(x[31:24],y[31:24],mid[3],s[31:24],c);    
endmodule