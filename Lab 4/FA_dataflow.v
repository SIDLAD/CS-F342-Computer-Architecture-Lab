module FA_dataflow(in1,in2,cin,sum,cout);
    input [31:0] in1,in2;
    input cin;
    output [31:0] sum;
    output cout;
    assign {cout,sum} = in1 + in2 + cin;
endmodule;

// module testbench;
//     reg [31:0] x,y;
//     reg z;
//     wire [31:0] s;
//     wire c;
//     FA_dataflow fl(x,y,z,s,c);
//     initial
//     $monitor($time," x=%b,y=%b,z=%b,s=%b,c=%b",x,y,z,s,c);
//     initial
//     begin
//         $dumpfile("a.vcd");
//         $dumpvars;
//         #0 x=32'hFFFFFFFF;y=32'd1;z=1'b0;
//         #4 x=32'd1;y=32'd12;z=1'b0;
//         #4 x=32'd3;y=32'd1;z=1'b1;
//         #4 x=32'd2;y=32'd2;z=1'b1;
//         #4 x=32'd1;y=32'd5;z=1'b0;
//         #4 x=32'd11;y=32'd2;z=1'b0;
//         #4 x=32'd0;y=32'd1;z=1'b1;
//         #4 x=32'd1;y=32'd1;z=1'b1;
//     end
// endmodule