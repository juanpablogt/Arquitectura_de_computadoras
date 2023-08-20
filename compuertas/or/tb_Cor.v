module tb_Cor;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire y;

    // Instantiate the Unit Under Test (UUT)
    Cor uut (
        .a(a), 
        .b(b), 
        .y(y)
    );

    initial begin

        //vcd file
        $dumpfile("tb_Cor.vcd");
        $dumpvars(0,tb_Cor);
        
        // Initialize Inputs
        a = 0;
        b = 0;

        // Wait 100 ns for global reset to finish
        #100;

        // Add stimulus here
        a = 1;
        b = 1;
        #100;
        a = 0;
        b = 1;
        #100;
        a = 1;
        b = 0;
        #100;
        a = 0;
        b = 0;
        #100;
        $finish;
    end

endmodule