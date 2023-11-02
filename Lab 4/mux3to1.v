module mux3to1(out,sel,in1,in2,in3);
    input in1,in2,in3;
    input [1:0] sel;
    output out;
    wire [1:0] not_sel;
    wire [1:3] a;
    generate
        for(genvar i=0;i<2;i = i+1)
        begin
            not(not_sel[i],sel[i]);
        end
    endgenerate
    assign a[1] = in1 & not_sel[1] & not_sel[0];
    assign a[2] = in2 & not_sel[1] & sel[0];
    assign a[3] = in3 & sel[1] & not_sel[0];
    or(out,a[1],a[2],a[3]);
endmodule;

// module testbench;
//     reg in1,in2,in3;
//     wire out;
//     reg [1:0] sel;
//     mux3to1 m1(out,sel,in1,in2,in3);
//     initial begin
//         $dumpfile("a.vcd");
//         $dumpvars;
//         $monitor($time," in1 = %b in2 = %b in3 = %b sel = %b out = %b",in1,in2,in3,sel,out);
//     end
//     initial begin
//         in1 = 1'b1;
//         in2 = 1'b0;
//         in3 = 1'b1;
//         sel = 2'd0;
//         #2 sel = 2'd1;
//         #2 sel = 2'd2;
//         #2 sel = 2'd0;
//         #4 $finish;
//     end
// endmodule