/*
 * LOAC 2022.2
 * Roteiro 01 - Problema 02: Somador de 8 bits
 * (c) Alexandre B. Corlet, 119210883
 */

parameter NUM_BITS = 8;	// Define a constant which represent the maximum number of bits

module somador(
  input logic signed [NUM_BITS-1:0] A, B,
  output logic signed [NUM_BITS-1:0] S,
  output logic Z, N, P
  );

  always_comb begin
    // Compute sum of A and B and store it on S
    S <= A + B;
    // Check if S == 0, if S == 0, then Z := 1, otherwise set Z := 0
    Z <= S == 0;
    // Check if S < 0. If S < 0, then N := 1, otherwise N := 0
    N <= S < N;
    // Check if S is even or odd. If S is even, then P := 1, otherwise P := 0
    // this is done by checking the LSB is or 0 or 1.
    P <= S[0] == 0;
  end

endmodule
