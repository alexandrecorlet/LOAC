/*
 * LOAC 2022.2
 * R02: Irrigacao
 * (c) Alexandre B. Corlet dos Santos
 */

parameter NUM_BITS = 2;

module sensorIrrigacao(
  input logic [NUM_BITS-1:0] U,
  output logic [NUM_BITS-1:0] Saida
  );
  
  always_comb Saida <= U;
  
endmodule
