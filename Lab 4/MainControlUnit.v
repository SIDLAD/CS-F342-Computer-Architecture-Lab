module MainControlUnit (RegDst,ALUSrc, MemtoReg, RegWrite,
MemRead, MemWrite,Branch,ALUOp0,ALUOp1,Op);
    input [5:0] Op;
    output RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOp1,ALUOp2;
    wire Rformat,lw,sw,beq;
    assign Rformat = ~Op[5] & ~Op[4] & ~Op[3] &  ~Op[2] & ~Op[1] & ~Op[0];
    assign lw = Op[5] & ~Op[4] & ~Op[3] &  ~Op[2] & Op[1] & Op[0];
    assign sw = Op[5] & ~Op[4] & Op[3] &  ~Op[2] & Op[1] & Op[0];
    assign beq = ~Op[5] & ~Op[4] & ~Op[3] & Op[2] & ~Op[1] & ~Op[0];
    
    assign RegDst = Rformat;
    assign ALUSrc = lw | sw;
    assign MemtoReg = lw;
    assign RegWrite = Rformat | lw;
    assign MemRead = lw;
    assign MemWrite = sw;
    assign Branch = beq;
    assign ALUOp0 = Rformat; 
    assign ALUOp1 = beq;
endmodule;