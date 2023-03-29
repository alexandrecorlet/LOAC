/*
 * LOAC 2022.2
 * Roteiro 01 - Problema 02: Somador de 8 bits
 * (c) Alexandre B. Corlet, 119210883
 */

parameter NUM_BITS = 8;

module somador(
  input signed [NUM_BITS-1:0] A, B,
  output signed [NUM_BITS-1:0] S,
  output logic Z, N, P
  );
  always_comb begin
    // Compute sum of A and B and store it on S
    S <= A + B;
    // Check if S == 0, if S == 0, then Z := 1, otherwise set Z := 0
    if (S == 0)
      Z <= 1;
    else
      Z <= 0;
    // Check if S < 0. If S < 0, then N := 1, otherwise N := 0
    if (S < 0)
      N <= 1;
    else
      N <= 0;
    // Check if S is even or odd. If S is even, then P := 1, otherwise P := 0
    if (S[0] == 0)
      P <= 1;
    else
      P <= 0;
  end
endmodule