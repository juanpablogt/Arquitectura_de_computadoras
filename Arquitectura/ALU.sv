module alu (
    input logic [31:0] a, b,
    input logic [3:0] op,
    output logic [31:0] x
    );

    always @(a or b or op)
        case(op)
            4'b0000: x <= a + b;
            4'b1000: x <= a - b;
            4'b0001: x <= a << b;
            4'b0101: x <= a >> b;
            4'b1001: x <= a >>> b;
            4'b0010: x <= ($signed(a) < $signed(b));
            4'b0011: x <= a < b;
            4'b0111: x <= a & b;
            4'b0110: x <= a | b;
            4'b0100: x <= a ^ b;
            default: x <= 32'b0; // Valor por defecto si el opcode no coincide
        endcase
endmodule
