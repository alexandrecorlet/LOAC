/*
 * LOAC 2022.
 * Roteiro 05 - Problema 02
 * @author Alexandre B. Corlet dos Santos
 * @matricula 119210883
 */

parameter NUM_BITS = 4;

module synchronous_counter(
  input logic clk, reset, load,
  input logic [NUM_BITS-1:0] data_in,
  output logic [NUM_BITS-1:0] Saida
);
  
  always_ff @(posedge clk) begin
  
    if (reset)
      Saida <= 1;		
    else if (load)
      Saida <= data_in;
    else begin
      if (Saida == 8) 
        Saida <= 1;												
      else 
        Saida <= Saida << 1;
    end
  
  end
  
endmodule
