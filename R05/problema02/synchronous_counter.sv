/*
 * LOAC 2022.
 * Roteiro 05 - Problema 02
 * @author Alexandre B. Corlet dos Santos
 * @matricula 119210883
 */

parameter NUM_BITS = 4;                     // Set maximum number of bits

module synchronous_counter(
  input logic clk, reset,             		// Input variables for clock and reset
  output logic [NUM_BITS-1:0] Saida         // Output (Counter)
);
 
  always_ff @(posedge clk) begin
  
    if (reset)
      Saida <= 1;                           // Reset output value to 1
    else
      if (Saida[NUM_BITS-1]) // If counter == 8, then counter := 1 and restart
        Saida <= 1;												
      else // Increment counter multiplying it by 2, this is done by shifting the bits to the left
        Saida <= Saida << 1;
  
  end
  
endmodule
