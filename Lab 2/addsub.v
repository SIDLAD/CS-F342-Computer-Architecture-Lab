`include "fulladder4bit.v"
module addsub(a,b,m,s,c,v);
    input [3:0] a,b;
    output [3:0] s;
    input m;
    output c;
    output v;
    reg [3:0] temp;
    fulladder4bit fadd4(a,temp,m,s,c);
    assign v = a[3] == temp[3] ? a[3] ^ s[3] : 0;
    always@(*)
    begin
        if(m == 1)
            temp = ~b;
        else
            temp = b;
        // $display("\n",$time," temp = %b v = %b",temp,v);
    end
endmodule;

// module testbench;
//     reg [3:0]a,b;
//     reg m;
//     wire [3:0] s;
//     wire c;
//     wire v;
//     addsub as1(a,b,m,s,c,v);
//     initial begin
//         $monitor($time," a = %b, b = %b, m = %b , s = %b , c = %b , v = %b",a,b,m,s,c,v);
//         #0
//         a = 5;
//         b = 1;
//         m = 1;

//         #3
//         a = 15;
//         b = 1;
//         m = 0;

//         #3
//         a = 7;
//         b = 8;
//         m = 1;

//         #3
//         a = 15;
//         b = 15;
//         m = 0;

//         #3
//         a = 5;
//         b = 1;
//         m = 1;
//     end
// endmodule;