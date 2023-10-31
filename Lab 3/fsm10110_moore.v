module fsm10110_moore(inp,clk,rst,outp);
    input inp,clk,rst;
    output reg outp;
    reg [2:0] curstate;
    reg [2:0] nextstate;
    parameter   s0 = 3'b000,
                s1 = 3'b001,
                s2 = 3'b010,
                s3 = 3'b011,
                s4 = 3'b100,
                s5 = 3'b101;
    initial begin
        curstate <= s0;
    end
    always@(posedge clk)
    begin
        if(rst)
        begin
            curstate <= s0;
        end
        else curstate <= nextstate;
        // $display("debug curstate:%b and time %t",curstate,$time);
    end
    always@(curstate,inp)
    begin
        case(curstate)
            s0:
            begin
                if(inp)
                nextstate<=s1;
                else
                nextstate<=s0;
            end
            s1:
            begin
                if(inp)
                nextstate<=s1;
                else
                nextstate<=s2;
            end
            s2:
            begin
                if(inp)
                nextstate<=s3;
                else
                nextstate<=s0;
            end
            s3:
            begin
                if(inp)
                nextstate<=s4;
                else
                nextstate<=s2;
            end
            s4:
            begin
                if(inp)
                nextstate<=s1;
                else
                nextstate<=s5;
            end
            s5:
            begin
                if(inp)
                nextstate<=s3;
                else
                nextstate<=s0;
            end
        endcase
    end
    always@(curstate)
    begin
        case(curstate)
            s0:outp<=0;
            s1:outp<=0;
            s2:outp<=0;
            s3:outp<=0;
            s4:outp<=0;
            s5:outp<=1;
        endcase
    end
endmodule;

// module testbench;
//     reg inp;
//     wire outp;
//     reg clk;
//     initial clk = 0;
//     wire rst;
//     assign rst = 0;
//     initial
//     $monitor($time," inp = %b , outp = %b, clk = %b",inp,outp,clk);
//     always
//     #2 clk = ~clk;
//     fsm10110_moore fsm1(inp,clk,rst,outp);
//     initial begin
//         #0 inp = 1;
//         #4 inp = 0;
//         #4 inp = 1;
//         #4 inp = 1;
//         #4 inp = 0;
//         #4 inp = 0;
//         #5 $finish;
//     end
// endmodule