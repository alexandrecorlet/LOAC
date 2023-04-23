/*
 * UFCG - LOAC 2022.2
 * R03: Unidade Logica e Aritmetica (ULA) / Logic and Arimithmetic Unit (LAU)
 * (c) Alexandre B. Corlet dos Santos, 119210883
 */

parameter NUM_BITS = 8;						// Define bit-width

module ula(
  input signed [NUM_BITS-1:0] A, B,			// operands
  input logic [1:0] F,						// operation selector
  output signed [NUM_BITS-1:0] Saida,		// Result of A <operation> B
  output logic FLAG_O						// flag to indicate overflow/underflow
);
  
  always_comb begin
    
    FLAG_O <= 0;		// assume overflow/underflow has not occurred
    case (F)
      2'b00: 
        // if F == 2'b00, then compute A & B
        Saida <= A & B;
      2'b01:
        // if F == 2'b01, then compute A | B
        Saida <= A | B;
      2'b10: begin
        // if F == 2'b10, then compute A + B and check for overflow
        Saida <= A + B;
        FLAG_O <= Saida[NUM_BITS-1] & ~(A[NUM_BITS-1]) & ~(B[NUM_BITS-1]);
      end
      2'b11: begin
        // if F == 2'b11, then compute A - B and check for underflow
        Saida <= A - B;
        FLAG_O <= ~Saida[NUM_BITS-1] & A[NUM_BITS-1] & B[NUM_BITS-1];
      end
    endcase
    
  end
  
endmodule
