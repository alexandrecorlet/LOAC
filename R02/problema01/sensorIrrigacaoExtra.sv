/*
 * LOAC 2022.2
 * Roteiro 02 - Problema 01: Irrigacao (Extra)
 * (c) Alexandre B. Corlet dos Santos, 119210883
 */

parameter NUM_BITS = 2;

module sensorIrrigacaoExtra(
  input logic [NUM_BITS-1:0] U,
  output logic A, B, C, D, E, F, G
);
  
  always_comb begin
	// Light the display according to the given input
    case(U)      
      2'b00:
        begin
          A <= 0;
          B <= 0;
          C <= 0;
          D <= 0;
          E <= 0;
          F <= 0;
          G <= 0;
        end
      2'b01:
        begin
          A <= 1;
          B <= 1;
          C <= 1;
          D <= 1;
          E <= 1;
          F <= 1;
          G <= 0;
        end
      2'b10:
        begin
          A <= 0;
          B <= 1;
          C <= 1;
          D <= 0;
          E <= 0;
          F <= 0;
          G <= 0;
        end
      2'b11:
        begin
          A <= 1;
          B <= 1;
          C <= 0;
          D <= 1;
          E <= 1;
          F <= 0;
          G <= 1;
        end
    endcase
    
  end
  
endmodule
