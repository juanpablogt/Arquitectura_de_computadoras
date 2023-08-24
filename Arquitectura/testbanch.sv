module tb_alu;

    // Inputs
    reg [31:0] a;
    reg [31:0] b;
    reg [3:0] op;

    // Outputs
    wire [31:0] x;

    // Instantiate the Unit Under Test (UUT)
    alu uut (
        .a(a),
        .b(b),
        .op(op),
        .x(x)
    );

    initial begin
        //vcd file
        $dumpfile("tb_alu.vcd");
        $dumpvars(0, tb_alu);

        // Initialize Inputs
        a = 32'h20;
        b = 32'h2;
        op = 4'b0000;

        #10;

        op = 4'b1000;

        #10;

        op = 4'b0001;

        #10;

        op = 4'b0101;

        #10;

        op = 4'b1101;

        #10;

        op = 4'b0010;

        #10;

        op = 4'b0011;

        #10;

        op = 4'b0111;

        #10;

        op = 4'b0110;

        #10;

        op = 4'b0100;
        
        $finish;
    end

endmodule
