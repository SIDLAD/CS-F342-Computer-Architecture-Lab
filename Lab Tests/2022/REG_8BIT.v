module REG_8BIT(reg_out,num_in,clock,reset);
    input [7:0] num_in;
    output reg [7:0] reg_out;
    input clock,reset;
    always@(posedge clock)
    begin
        if(reset)reg_out<=0;
        else reg_out<=num_in;
    end
endmodule