module bcdtogrey_gate(input [3:0] bcd,output [3:0] grey);
    buf(grey[3],bcd[3]);
    xor(grey[2],bcd[2],bcd[3]);
    xor(grey[1],bcd[1],bcd[2]);
    xor(grey[0],bcd[0],bcd[1]);
endmodule