`include "ENCRYPT.v"
module TESTBENCH;
    reg [7:0] number,key;
    wire [7:0] encnumber;
    reg clock,reset;

    ENCRYPT en1(number,key,clock,reset,encnumber);

    initial begin
        forever begin
            #2 clock = ~clock;
        end
    end

    initial begin
        $monitor($time," number = %b, key = %b, enc_number = %b",number,key,encnumber);
    end
    initial begin
        reset = 1'b0;
        clock = 1'b0;
        
        #2
        $display("\n");

        number = 8'b01000110;
        key = 8'b10010011;

        #4
        number = 8'b11001001;
        key = 8'b10101100;

        #4
        number = 8'b10100101;
        key = 8'b01011010;

        #4
        number = 8'b11110000;
        key = 8'b10110001;
        
        #1 $finish;
    end
endmodule