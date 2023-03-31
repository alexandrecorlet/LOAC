/*
 * LOAC 2022.2
 * Roteiro 01 - Problema 01: Elevador
 * (c) Alexandre B. Corlet, 119210883
 */

module elevador(
	input logic M, A1, A2, A3,
	output logic P
);
  
  // Check if the door is open or closed
  // the door is open iff the elevator is
  // not moving (M is False) and the elevator
  // is in one of the floors (either A1, A2 or A3)
  always_comb P <= ~M & (A1 | A2 | A3);

endmodule
