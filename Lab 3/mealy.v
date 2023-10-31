module mealy(clk,rst,inp,outp);
    input inp,clk,rst;
    output reg outp;
    reg [1:0] state;
    always@(posedge clk,posedge rst)
    begin
        if(rst) begin
            state <= 2'b00;
            outp <=0;
        end
        else begin
            case (state)
                2'b00: 
                begin
                    if(inp)
                    begin
                        outp<=0;
                        state<=2'b01;
                    end
                    else begin
                        outp<=0;
                        state<=2'b10;
                    end
                end
                2'b01: 
                begin
                    if(inp)
                    begin
                        outp<=1;
                        state<=2'b00;
                    end
                    else begin
                        outp<=0;
                        state<=2'b10;
                    end
                end
                2'b10: 
                begin
                    if(inp)
                    begin
                        outp<=0;
                        state<=2'b01;
                    end
                    else begin
                        outp<=1;
                        state<=2'b00;
                    end
                end
                default:
                begin
                    outp<=0;
                    state<=2'b00;
                end 
            endcase
        end
    end
endmodule