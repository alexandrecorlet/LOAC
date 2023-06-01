/*
 * LOAC 2022.2
 * Roteiro 05 - Problema 01: Contador Sincrono (Modulo 16)
 * @author Alexandre B. Corlet dos Santos
 * @matricula 119210883
 */

parameter NUM_BITS = 4;					// Define maximum number of bits

module mod_16_synchronous_counter(
  input logic clk, reset, count_down, 	// Input variables
  output logic [NUM_BITS-1 : 0] Saida	// Output variable (Counter)
);
  
  always_ff @(posedge clk) begin
    
    if (reset)
      if (count_down)
        Saida <= 15;					// Reset counter to maximum possible val
      else
        Saida <= 0;						// Reset counter to 0
    else
      if (count_down)
        Saida <= Saida - 1;				// Decrement Saida by one
      else
        Saida <= Saida + 1;				// Increment Saida by one
  
  end
  
endmodule 
