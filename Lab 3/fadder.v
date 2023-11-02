`include "decoder.v"

module fadder(x,y,z,s,c);
    input x,y,z;
    output s,c;
    wire [0:7] d;
    decoder comp1(x,y,z,d);
    assign s = d[1] | d[2] | d[4] | d[7];
    assign c = d[3] | d[5] | d[6] | d[7];
endmodule