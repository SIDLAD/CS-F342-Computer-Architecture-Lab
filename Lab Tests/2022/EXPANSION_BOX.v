module EXPANSION_BOX(in,out);
    input [3:0] in;
    output reg [7:0] out;
    always@*
    begin
        out[7] = in[3];
        out[6] = in[0];
        out[5] = in[1];
        out[4] = in[2];
        out[3] = in[1];
        out[2] = in[3];
        out[1] = in[2];
        out[0] = in[0];
    end
endmodule