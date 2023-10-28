`include "mux2to1_gate.v"
`include "mux2to1_df.v"
`include "mux2to1_df2.v"
`include "mux2to1_beh.v"

module testbench;
    reg a,b,s;
    wire f;
    mux2to1_gate mux_gate(a,b,s,f);
    initial begin
        $dumpfile("a.vcd");
        $dumpvars;
    end
    initial begin
        $monitor($time," a=%b, b=%b, s=%b, f=%b",a,b,s,f);
        #0 a=1'b0;b=1'b1;
        #2 s=1'b1;
        #5 s=1'b0;
        #10 a=1'b1;b=1'b0;
        #15 s=1'b1;
        #20 s=1'b0;
        #100 $finish;
    end
endmodule