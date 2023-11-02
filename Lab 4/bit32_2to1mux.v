`include "bit8_2to1mux.v"

module bit32_2to1mux(out,sel,in1,in2);
    input sel;
    input [31:0] in1,in2;
    output [31:0] out;
    generate
        for(genvar i=0;i<4;i=i+1)
        begin
            bit8_2to1mux m1(out[i*8 + 7:i*8],sel,in1[i*8 + 7:i*8],in2[i*8 + 7:i*8]);
        end
    endgenerate
endmodule;