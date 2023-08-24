module alu (x, y, a,b,opcode);
input [3:0] a,b,opcode;
input [31:0] x,y;

always @(a,b,opcode)
    case(opcode)
        4'b0011: x = a & b;
        4'b0100: x = a | b;
        4'b0111: x = a ^ b;
        4'b0110: x[0] = a > b;
        4'b0111: x[0] = a < b;
        4'b0000: {y[0],x} = a + b;
        4'b1000: X= a - b;
        4'b0101: {y,x} = a >> b;
        4'b0001: {y,x} = a << b;
        deault: $display("error");
    endcase
endmodule