/*
 * LOAC 2022.1
 * Roteiro 02: Roteamento - ITEM A)
 * (c) Alexandre B. Corlet dos Santos, 119210883
 */

parameter NUM_BITS = 4;						// Define max number of bits

module roteamentoA(
  input logic [NUM_BITS - 1:0] A, B,
  input logic SEL,
  output logic [NUM_BITS - 1:0] Saida);
  
  always_comb begin
    if (~SEL)
      Saida <= A;
    else
      Saida <= B;
  end
  
endmodule
