module decoder2_4 (register,reg_no);
    input [1:0] reg_no;
    output reg [3:0] register;
    always@*
    begin
        case(reg_no)
            0: register = 4'b0001;
            1: register = 4'b0010;
            2: register = 4'b0100;
            3: register = 4'b1000;
        endcase
    end
endmodule;