module registersmemory (
    input [4:0] r1,
    input [4:0] r2,
    input [4:0] rd,
    input [31:0] datawrite,
    input Ruwr,
    input clk, // nueva entrada de reloj
    output reg [31:0] r1out,
    output reg [31:0] r2out
  );
  
    reg [31:0] RF [0:31];
  
    always @(negedge clk) begin // usar el flanco de subida del reloj
      if (Ruwr == 1 && r1!=0) begin
        RF[rd] <= datawrite;
      end 
      if (Ruwr==0) begin
        r1out <= RF[r2];
        r2out <= RF[r1];
      end
    end
  
    initial begin
      $readmemb("registerfile.txt", RF);
    end
    
  endmodule