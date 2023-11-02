`include "mux2to1.v"

module bit8_2to1mux(out,sel,in1,in2);
    input [7:0] in1,in2;
    output [7:0] out;
    input sel;

    genvar j;//genvar can be declared outside generate body but cannot be initialised ie genvar j=0; would give a syntax error
    //the purpose of genvar is exclusively as a generate loop variable
    generate
        //genvar can be declared and initialised within generate blocks
        for( j=0;j<8;j=j+1)//j++ doesn't work with genvar in iverilog, but works with regs, reg arrays and integer variables
        begin:mux_loop//labelled (for no reason at all), even though generate for loops cannot be disabled as it is not a component
            mux2to1 m1(out[j],sel,in1[j],in2[j]);
        end
    endgenerate

endmodule;