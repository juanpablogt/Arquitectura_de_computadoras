module testbench();
    reg [4:0] r1;
    reg [4:0] r2;
    reg [4:0] rd;
    reg [31:0] datawrite;
    reg Ruwr;
    wire [31:0] r1out;
    wire [31:0] r2out;
    reg clk = 0;
  
    // Generar una señal de reloj de 50 MHz
    always #10 clk = ~clk;
  
    registersmemory rm1(r1, r2, rd, datawrite, Ruwr, clk, r1out, r2out);
  
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      // Escritura
      Ruwr = 1; datawrite = 481184; rd = 0;
      #20;
      Ruwr = 0; r2 = 0; r1 = 1; datawrite = 0; rd = 0;
      #20;
      // Escritura
      Ruwr = 1; datawrite = 572264; rd = 0;
      #20;
      Ruwr = 0; r2 = 0; r1 = 1; datawrite = 0; rd = 0;
      #20;
      // Escritura
      Ruwr = 1; datawrite = 342916; rd = 0;
      #20;
      Ruwr = 0; r2 = 0; r1 = 1; datawrite = 0; rd = 0;
      #20;
      // Escritura
      Ruwr = 1; datawrite = 1234673; rd = 0;
      #20;
      Ruwr = 0; r2 = 0; r1 = 1; datawrite = 0; rd = 0;
      #20;
  
      $finish();
    end
  endmodule