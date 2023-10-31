module dff_async_clear(d,clearb,clock,q);
    input d,clearb,clock;
    output reg q;
    always@(negedge clearb or posedge clock)
    begin
        if(clearb) q <= 0;
        else q <= d;
    end
endmodule;