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
        $monitor($time," number = %b, key = %b, enc_number = %b, clock = %b",number,key,encnumber,clock);
    end
    initial begin
        reset = 1'b0;
        clock = 1'b0;

        #5 
        number = 8'b01000110;
        key = 8'b10010011;

        #5 
        number = 8'b11001001;
        key = 8'b10101100;

        #5 
        number = 8'b10100101;
        key = 8'b01011010;

        #5 
        number = 8'b11110000;
        key = 8'b10110001;
        
        #20 $finish;
    end
endmodule