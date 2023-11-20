module CONCAT(concat_out,concat_in1,concat_in2);
    output [7:0] concat_out;
    input [3:0] concat_in1,concat_in2;
    assign concat_out = {concat_in1,concat_in2};
    
endmodule