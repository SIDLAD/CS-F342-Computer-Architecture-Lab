module fulladder4bit(x,y,z,s,c);
    input [3:0] x,y;
    output reg [3:0] s;
    input z;
    output reg c;
    reg [4:0] temp;
    always@(*)
    begin
        temp = x + y + z;
        // $display("debug: temp=%b",temp);
        if(temp[4] == 1)
            c = 1;
        else c=0;
        s = temp[3:0];
        // $display("display: x=%b,y=%b,z=%b,s=%b,c=%b,temp=%b",x,y,z,s,c,temp);
    end
endmodule

// module testbench;
//     reg [3:0] x,y;
//     reg z;
//     wire [3:0] s;
//     wire c;
//     fulladder4bit fad(x,y,z,s,c);
//     initial
//     begin
//         $dumpfile("a.vcd");
//         $dumpvars;
//         $monitor($time," x = %b y = %b z = %b s = %b c = %b",x,y,z,s,c);
//     end
//     initial begin
//         #0
//         x = 13;
//         y = 12;
//         z = 1;

//         #3
//         x = 4;
//         y = 7;
//         z = 0;

//         #3
//         x = 5;
//         y = 1;
//         z = 1;
//         #3
//         x = 2;
//         y = 3;
//         z = 1;
//     end
// endmodule