module CSA_4BIT(cin,inA,inB,cout,out);
    input cin;
    input [3:0] inA,inB;
    output [3:0] out;
    output cout;

    wire [3:0] out1,out2;
    wire cout1,cout2;

    rippleCarryAdder4Bit r1(inA,inB,1'b1,out1,cout1);
    rippleCarryAdder4Bit r2(inA,inB,1'b0,out2,cout2);
    
    MUX2to1 m1(cout2,cout1,cin,cout);
    MUX2to1_4BIT m2(out2,out1,cin,out);
endmodule;

module rippleCarryAdder4Bit(A,B,carryIn,S,carryOut);
    input [3:0] A,B;
    input carryIn;
    output [3:0] S;
    output carryOut;
    wire l,m,n;
    fulladder fa1(A[0],B[0],carryIn,S[0],l);
    fulladder fa2(A[1],B[1],l,S[1],m);
    fulladder fa3(A[2],B[2],m ,S[2],n);
    fulladder fa4(A[3],B[3],n,S[3],carryOut);
endmodule

module fulladder(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    assign s = a^b^cin;
    assign cout = (a&b) | (b&cin) | (cin&a);
endmodule

module MUX2to1_4BIT(a,b,s,out);
    input [3:0] a,b;
    input s;
    output [3:0] out;
    generate
        for(genvar i = 0; i < 4; i = i + 1)
        begin:mux_loop
            MUX2to1 m1(a[i],b[i],s,out[i]);
        end
    endgenerate
endmodule

module MUX2to1(a,b,s,out);
    input a,b,s;
    output out;
    assign out = s?b:a;
endmodule