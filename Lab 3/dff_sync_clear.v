module dff_sync_clear(d,clearb,clock,q);
    input d,clearb,clock;
    output reg q;
    always@(posedge clock)
    begin
        if(clearb) q <= 0;
        else q <= d;
    end
endmodule;