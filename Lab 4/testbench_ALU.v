`include "ALU.v"

module tbALU();
    reg Binvert, CarryIn;
    reg [1:0] Operation;
    reg [31:0] a,b;
    wire [31:0] Result;
    wire CarryOut;
    ALU a1(a,b,Binvert,CarryIn,Operation,Result,CarryOut);

    initial begin
        $dumpfile("a.vcd");
        $dumpvars;
        $monitor($time," a= %h b= %h Operation= %d Binvert=%b CarryIn=%b CarryOut=%b Result=%h",a,b,Operation,Binvert,CarryIn,CarryOut,Result);
    end
    initial
    begin
        a=32'ha5a5a5a5;
        b=32'h5a5a5a5a;
        Operation=2'b00;
        Binvert=1'b0;
        CarryIn=1'b0; //must perform AND resulting in zero
        #100 Operation=2'b01; //OR
        #100 Operation=2'b10; //ADD
        #100 Binvert=1'b1;//SUB
        #200 $finish;
    end
endmodule