module freq_divider(in,out,clk,rst);
    input [2:0] in;
    input clk;
    input rst;
    output reg out;

    reg [7:0] count;

    always@(posedge clk or posedge rst)
    begin 
        if(rst==1) begin 
            count<=0;
            out<=0;
        end
        else begin
            count<=count+1;
        end
    end

    always@(count) 
    begin 
        case(in)
            0:out=count[0];
            1:out=count[1];
            2:out=count[2];
            3:out=count[3];
            4:out=count[4];
            5:out=count[5];
            6:out=count[6];
            7:out=count[7];
            default:out=0;
        endcase
    end

endmodule