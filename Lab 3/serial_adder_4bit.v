`include "shiftreg.v"
`include "fadder.v"
`include "dff_sync_clear.v"

module serial_adder_4bit(serial_input,shift_control,clk,clr,qa);
    parameter n = 4;
    input serial_input,shift_control,clk,clr;
    output [n-1:0] qa;
    wire [n-1:0] qb;
    wire qd;
    wire s,c;
    wire a1;

    shiftreg A(shift_control,s,clk,qa);
    shiftreg B(shift_control,serial_input,clk,qb);
    fadder fa(qa[0],qb[0],qd,s,c);
    and(a1,shift_control,clk);
    dff_sync_clear dff(c,clr,a1,qd);

    //how to initialise: (shift control kept 1,clr kept 0) serial_input A, serial_input zero 4 clock cycles, serial_input B, and to perform add, serial_input = 0 for 4 clock cycles.
    //then make shift control 0 in the immediate next cycle and make clr 1. output is qa
endmodule;