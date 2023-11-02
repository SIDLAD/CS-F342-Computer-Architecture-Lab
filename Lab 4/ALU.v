`include "FA_dataflow.v"
`include "bit32_2to1mux.v"
`include "bit32_3to1mux.v"

module ALU(a,b,Binvert,CarryIn,Operation,Result,CarryOut);
    input [31:0] a,b;
    output [31:0] Result;
    input Binvert,CarryIn;
    input[1:0] Operation;
    output CarryOut;

    wire [31:0] nb;
    assign nb = ~b;

    wire [31:0] w1,w2,w3,w4;

    assign w1 = a&b;
    assign w2 = a|b;
    FA_dataflow f1(a,w4,CarryIn,w3,CarryOut);
    bit32_2to1mux m1(w4,Binvert,b,nb);
    bit32_3to1mux m2(Result,Operation,w1,w2,w3);
    // always@*
    // begin
    //     $display("Debug: a=%h b=%h w1=%h w2=%h w3=%h w4=%h Result=%h",a,b,w1,w2,w3,w4,Result);
    // end
endmodule;