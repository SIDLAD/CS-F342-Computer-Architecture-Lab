module mux2to1_df2(input a,input b,input s,output f);
    // input a,b,s;
    // output f;
    assign f = s?b:a;
endmodule