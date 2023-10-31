`include "jkff.v"

module sync_counter_4bit(clk,q);
    output [0:3] q;
    input clk;
    wire a1,a2;
    assign a1 = q[0] & q[1];
    assign a2 = a1 & q[2];
    jkff ffa(1'b1,1'b1,clk,q[0]);
    jkff ffb(q[0],q[0],clk,q[1]);
    jkff ffc(a1,a1,clk,q[2]);
    jkff ffd(a2,a2,clk,q[3]);
endmodule