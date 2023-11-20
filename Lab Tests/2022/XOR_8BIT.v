module XOR_8BIT(xout_8,xin1_8,xin2_8);
    input [7:0] xin1_8,xin2_8;
    output reg [7:0] xout_8;

    always @(*) begin
        xout_8 = xin1_8 ^ xin2_8;
    end
endmodule