module jkff(j,k,clk,q);
    input j,k,clk;
    output reg q,qd;
    always@(posedge clk)
    begin
        if(j & k)
        begin
            q<=~q;
        end
        else if(j)
        begin
            q<=1;
        end
        else if(k)
        begin
            q<=0;
        end
    end
endmodule