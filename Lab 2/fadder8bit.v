`include "fadder.v"

module fadder8bit(x,y,z,s,c);
    input [7:0] x,y;
    output [7:0] s;
    input z;
    output c;
    wire [1:7] cmid;
    fadder f1(x[0],y[0],z,s[0],cmid[1]);
    fadder f2(x[1],y[1],cmid[1],s[1],cmid[2]);
    fadder f3(x[2],y[2],cmid[2],s[2],cmid[3]);
    fadder f4(x[3],y[3],cmid[3],s[3],cmid[4]);
    fadder f5(x[4],y[4],cmid[4],s[4],cmid[5]);
    fadder f6(x[5],y[5],cmid[5],s[5],cmid[6]);
    fadder f7(x[6],y[6],cmid[6],s[6],cmid[7]);
    fadder f8(x[7],y[7],cmid[7],s[7],c);
endmodule