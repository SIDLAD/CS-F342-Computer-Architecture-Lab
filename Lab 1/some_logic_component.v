`timescale 1ns / 1ps
//create a NAND gate out of an AND and an Invertor
module some_logic_component (c, a, b);
    // declare port signals
    output c;
    input a, b;
    // declare internal wire
    wire d;
    //instantiate structural logic gates
    and a1(d, a, b); //d is output, a and b are inputs
    not n1(c, d); //c is output, d is input
endmodule
