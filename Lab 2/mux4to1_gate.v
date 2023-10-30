module mux4to1_gate (out,in,sel);
    input [0:3] in;
    input [0:1] sel;
    output out;
    wire [0:1] nsel;
    wire a,b,c,d;
    not(nsel[0],sel[0]);
    not(nsel[1],sel[1]);
    and(a,nsel[0],nsel[1],in[0]);
    and(b,nsel[0],sel[1],in[1]);
    and(c,sel[0],nsel[1],in[2]);
    and(d,sel[0],sel[1],in[3]);
    or(out,a,b,c,d);
endmodule