module multiplexer_4to1_32bit(A,B,C,D,sel,out);
    input [31:0] A;
    input [31:0] B;
    input [31:0] C;
    input [31:0] D;
    input [1:0] sel;
    output reg [31:0] out;


    always @(*) begin
        case (sel)
            2'b00: out = A;
            2'b01: out = B;
            2'b10: out = C;
            2'b11: out = D;
            default: out = 32'b0;
        endcase
    end

endmodule