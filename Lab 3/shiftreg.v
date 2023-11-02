module shiftreg(EN, in, CLK, Q);
    // input EN,in,CLK;
    // output reg [0:3] Q;
    // initial Q=4'd10;    
    // always@(posedge CLK) begin
    //     if(EN) begin
    //         Q>>=1;
    //         Q[0] <= in;
    //     end
    // end
    parameter n = 4;
    input EN;
    input in;
    input CLK;
    output [n-1:0] Q;
    reg [n-1:0] Q;
    initial
    Q=4'd0;
    always @(posedge CLK)
    begin
        if (EN)
        Q={in,Q[n-1:1]};
    end
endmodule