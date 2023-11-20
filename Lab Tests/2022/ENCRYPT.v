`include "CONCAT.v"
`include "CSA_4BIT.v"
`include "EXPANSION_BOX.v"
`include "REG_8BIT.v"
`include "XOR_4BIT.v"
`include "XOR_8BIT.v"

module ENCRYPT  (number,key,clock,reset,enc_number);
    input [7:0] number,key;
    output [7:0] enc_number;
    input clock,reset;

    wire [7:0] reg8out_1,reg8out_2;
    wire [7:0] expansion_out,xor8_out;
    wire [3:0] csa_out;
    wire [3:0] xor4_out;
    wire csa_cout;

    REG_8BIT r1(reg8out_1,number,clock,reset);
    REG_8BIT r2(reg8out_2,key,clock,reset);

    EXPANSION_BOX e1(reg8out_1[3:0],expansion_out);
    XOR_8BIT x1(xor8_out,expansion_out,reg8out_2);

    CSA_4BIT c1(reg8out_2[0],xor8_out[7:4],xor8_out[3:0],csa_cout,csa_out);

    XOR_4BIT x2(xor4_out,reg8out_1[7:4],csa_out);

    CONCAT con1(enc_number,xor4_out,reg8out_1[3:0]);

endmodule