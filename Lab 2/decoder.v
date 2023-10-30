module decoder(x,y,z,d);
    input x,y,z;
    // output reg [0:7] d;
    output [0:7] d;

    wire nx,ny,nz;
    not(nx,x);
    not(ny,y);
    not(nz,z);


    // reg [1:0] a,b,c;
    // reg l,m,n;
    // reg [2:0] i;
    // always@(x or y or z)
    // begin
    //     #0
    //     i = 0;
    //     a = 0;
    //     b = 0;
    //     c = 0;
    //     repeat(8)
    //     begin
    //         l = a ? x : nx;
    //         m = b ? y : ny;
    //         n = c ? z : nz;
    //         d[i] = l&m&n;
    //         // $display("l = %b m = %b n = %b i = %b d[i] = %b a = %b b = %b c = %b",l,m,n,i,d[i],a,b,c,$time);
    //         i++;
    //         c++;
    //         if(c == 2)
    //         begin
    //             c = 0;
    //             b++;
    //         end
    //         if(b == 2)
    //         begin
    //             b = 0;
    //             a++;
    //         end
    //     end
    // end
    and(d[0],nx,ny,nz);
    and(d[1],nx,ny,z);
    and(d[2],nx,y,nz);
    and(d[3],nx,y,z);
    and(d[4],x,ny,nz);
    and(d[5],x,ny,z);
    and(d[6],x,y,nz);
    and(d[7],x,y,z);
endmodule