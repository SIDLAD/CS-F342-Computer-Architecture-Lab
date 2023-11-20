module mux4_1(regData,q1,q2,q3,q4,reg_no);
    output reg [31:0] regData;
    input [31:0] q1,q2,q3,q4;
    input [1:0] reg_no;
    always@*
    begin
        case(reg_no)
            0: regData = q1;
            1: regData = q2;
            2: regData = q3;
            3: regData = q4;
        endcase
    end
endmodule;