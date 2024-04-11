module ALU_32bit(A,B,ALU_Sel,ALU_Out,Carryout);
    input [31:0] A;
    input [31:0] B;
    input [3:0] ALU_Sel;
    output reg [31:0] ALU_Out;
    output reg Carryout;


always @(*) begin
    case (ALU_Sel)
        4'b0000: begin // Addition
            {Carryout, ALU_Out} = A + B;
        end
        4'b0001: begin // Subtraction
            {Carryout, ALU_Out} = A - B;
        end
        4'b0010: begin // Multiplication
            ALU_Out = A * B;
            Carryout = 1'b0; // Carryout is not relevant for multiplication
        end
        4'b0011: begin // Division
            ALU_Out = A / B;
            Carryout = 1'b0; // Carryout is not relevant for division
        end
        4'b0100: begin // Logical shift left
            ALU_Out = A << 1;
            Carryout = 1'b0; // Carryout is not relevant for shift operations
        end
        4'b0101: begin // Logical shift right
            ALU_Out = A >> 1;
            Carryout = 1'b0; // Carryout is not relevant for shift operations
        end
        4'b0110: begin // Rotate left
            ALU_Out = {A[30:0], A[31]};
            Carryout = 1'b0; // Carryout is not relevant for rotate operations
        end
        4'b0111: begin // Rotate right
            ALU_Out = {A[0], A[31:1]};
            Carryout = 1'b0; // Carryout is not relevant for rotate operations
        end
        4'b1000: begin // Logical AND
            ALU_Out = A & B;
            Carryout = 1'b0; // Carryout is not relevant for logical operations
        end
        4'b1001: begin // Logical OR
            ALU_Out = A | B;
            Carryout = 1'b0; // Carryout is not relevant for logical operations
        end
        4'b1010: begin // Logical XOR
            ALU_Out = A ^ B;
            Carryout = 1'b0; // Carryout is not relevant for logical operations
        end
        4'b1011: begin // Logical NOR
            ALU_Out = ~(A | B);
            Carryout = 1'b0; // Carryout is not relevant for logical operations
        end
        4'b1100: begin // Logical NAND
            ALU_Out = ~(A & B);
            Carryout = 1'b0; // Carryout is not relevant for logical operations
        end
        4'b1101: begin // Logical XNOR
            ALU_Out = ~(A ^ B);
            Carryout = 1'b0; // Carryout is not relevant for logical operations
        end
        4'b1110: begin // Greater comparison
            ALU_Out = (A > B) ? 32'd1 : 32'd0;
            Carryout = 1'b0; // Carryout is not relevant for comparison operations
        end
        4'b1111: begin // Equal comparison
            ALU_Out = (A == B) ? 32'd1 : 32'd0;
            Carryout = 1'b0; // Carryout is not relevant for comparison operations
        end
        default: begin
            ALU_Out = 32'b0;
            Carryout = 1'b0;
        end
    endcase
end

endmodule