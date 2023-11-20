module d_ff(q,d,clk,reset);
    input d,reset,clk;
    output reg q;
    always@(negedge reset or posedge clk)
    begin
        if(! reset) q <= 0;
        else q <= d;
    end
endmodule;