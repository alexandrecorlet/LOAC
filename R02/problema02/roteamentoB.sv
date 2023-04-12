/*
 * LOAC 2022.2
 * Roteiro 02: Roteamento - Item B
 * (c) Alexandre B. Corlet dos Santos, 119210883
 */

parameter NUM_BITS = 4;

module circuit(
  input logic [NUM_BITS-1:0] A, B, C, D,
  input logic [1:0] SEL,
  output logic [NUM_BITS-1:0] Saida
  );
  
  always_comb begin
    
    case (SEL)
      2'b00: Saida <= A;
      2'b01: Saida <= B;
      2'b10: Saida <= C;
      2'b11: Saida <= D;
    endcase
  
  end
      
endmodule
