`include "compar.v"

module compar_testbench;
//This module tests the functionality of compare() module
    reg [3:0] A;
    reg [3:0] B;
    wire AgrA,AegB,AltB;
    initial
    begin
        $dumpfile("a.vcd");
        $dumpvars;
        A=4'b0000;//input1
        B=4'b0000;//input2
    end

    initial
    begin
        #1 A=-8;B=-5;
        #1 A=2; B=7;
        #1 A=5; B=-1;
    end

    compar c1(A,B,AgtB,AeqB,AltB); //make an instance of compar()

    initial
    begin
        $monitor($time,"A=%b, B=%b AgrB=%b, AeqB=%b, AltB=%b",A,B,AgtB,AeqB,AltB);
    end

    initial
    begin
        #5 $finish;
    end
endmodule