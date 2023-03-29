/*
 * LOAC 2022.2
 * Roteiro 01 - Problema 01: Elevador
 * (c) Alexandre B. Corlet, 119210883
 */

module elevador(
	input logic M, A1, A2, A3,
	output logic P
);
  
  always_comb P <= ~M & (A1 | A2 | A3);

endmodule
