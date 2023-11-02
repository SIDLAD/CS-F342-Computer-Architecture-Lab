`include "bit8_3to1mux.v"

module bit32_3to1mux(out,sel,in1,in2,in3);
    input [1:0] sel;
    input [31:0] in1,in2,in3;
    output [31:0] out;
    generate
        for(genvar i=0;i<4;i=i+1)
        begin
            bit8_3to1mux m1(out[i*8 + 7:i*8],sel,in1[i*8 + 7:i*8],in2[i*8 + 7:i*8],in3[i*8 + 7:i*8]);
        end
    endgenerate
endmodule;