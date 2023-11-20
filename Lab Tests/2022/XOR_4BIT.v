module XOR_4BIT(xout_4,xin1_4,xin2_4);
    input [3:0] xin1_4,xin2_4;
    output reg [3:0] xout_4;

    always @(*) begin
        xout_4 = xin1_4 ^ xin2_4;
    end
endmodule