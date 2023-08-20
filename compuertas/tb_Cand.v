module tb_Cand;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire y;

    // Instantiate the Unit Under Test (UUT)
    Cand uut (
        .a(a), 
        .b(b), 
        .y(y)
    );

    initial begin

        //vcd file
        $dumpfile("tb_Cand.vcd");
        $dumpvars(0,tb_Cand);
        
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