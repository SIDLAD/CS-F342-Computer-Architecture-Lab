`include "bcdtogrey_df.v"
`include "bcdtogrey_gate.v"

module testbench;
    reg [3:0] bcd;
    wire [3:0] grey;
    bcdtogrey_gate converter(bcd,grey);
    initial begin
        $dumpfile("a.vcd");
        $dumpvars;
    end
    initial begin
        $monitor($time,"bcd = %b, grey = %b",bcd,grey);
        bcd = 4'b0000;
        repeat(9)
        begin
            #3
            bcd++;
        end
        #3 $finish;
    end
endmodule