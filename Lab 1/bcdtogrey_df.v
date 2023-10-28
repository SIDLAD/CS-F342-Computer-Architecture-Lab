module bcdtogrey_df(input [3:0] bcd, output [3:0] grey);
    assign grey[3] = bcd[3], grey[2] = bcd[2]^bcd[3], grey[1] = bcd[1] ^ bcd[2], grey[0] = bcd[0] ^ bcd[1];
endmodule;