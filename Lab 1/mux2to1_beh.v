module mux2to1_beh(a,b,s,f);
    input a,b,s;
    output reg f;
    always@(*)
    begin
        if(s)   f = b;
        else    f = a;
    end
endmodule