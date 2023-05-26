/*
 * LOAC 2022.2
 * Roteiro 05 - Problema 01
 * @author Alexandre B. Corlet dos Santos
 * @matricula 119210883
 */

parameter NUM_BITS = 4;
parameter N = 15;

module synchronous_counter(
  input logic clk, reset, Sel,
  output logic [NUM_BITS-1:0] Saida
);
      
  always_ff @(posedge clk) begin
    if (reset)
      if (Sel)
        Saida <= N;
      else
        Saida <= 0; 
    else
      if (Sel)
        // Count down [15 .. 0]
        Saida <= (Saida + N ) % (N+1);
      else
        // Count up [0 .. 15]
        Saida <= (Saida + 1) % (N+1);
  end
  
endmodule
