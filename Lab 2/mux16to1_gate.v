`include "mux4to1_gate.v"
module mux16to1_gate(out,in,sel);
    output out;
    input [0:15] in;
    input [0:3] sel;
    wire [0:3] mid;
    mux4to1_gate m1(mid[0],in[0:3],sel[2:3]);
    mux4to1_gate m2(mid[1],in[4:7],sel[2:3]);
    mux4to1_gate m3(mid[2],in[8:11],sel[2:3]);
    mux4to1_gate m4(mid[3],in[12:15],sel[2:3]);
    mux4to1_gate mf(out,mid,sel[0:1]);
endmodule