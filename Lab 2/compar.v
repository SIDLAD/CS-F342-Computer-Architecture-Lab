module compar(A,B,AgtB,AeqB,AltB);
    input [3:0] A,B;
    output reg AgtB,AeqB,AltB;
    always@(A or B)
    begin
        if(A[3] != B[3])
        begin
            if(A[3] == 1)
            begin
                AgtB = 0;
                AeqB = 0;
                AltB = 1;
            end
            else
            begin
                AgtB = 1;
                AeqB = 0;
                AltB = 0;
            end
        end
        else if (A[2:0]  < B[2:0])
        begin
                AgtB = 0;
                AeqB = 0;
                AltB = 1;
        end
        else if(A[2:0] > B[2:0])
        begin
                AgtB = 1;
                AeqB = 0;
                AltB = 0;
        end
        else
        begin
                AgtB = 0;
                AeqB = 1;
                AltB = 0;
        end
    end
endmodule;