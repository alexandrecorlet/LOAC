/*
 * LOAC 2022.2
 * Roteiro 05 - Problema 03: Detector de Paridade Par
 * @author Alexandre Corlet
 * @matricula 119210883
 */

parameter NUM_BITS = 1;			    // Define maximum number of bits

module FSM_parity_checker(
  input clk, reset, input_bit,      // Input variables
  output Saida                      // Output variable 
);
  
  enum logic [NUM_BITS-1 : 0] {IMPAR, PAR} state;   // Define all possible states of the FSM
  
  always_ff @(posedge clk)
    if (reset)
      state <= PAR;			// Reset to inital state
    else
      unique case (state)   // Check which is the next state
        PAR:
          if (input_bit)
            state <= IMPAR;	// Set state to IMPAR (odd number of 1s)
          else
            state <= PAR;	// Continue in PAR state (even number of 1s)
        IMPAR:
          if (input_bit)
            state <= PAR;   // Set state to PAR
          else
            state <= IMPAR;	// Continue in IMPAR state
      endcase
  
  always_comb Saida <= (state == IMPAR); // Sign an error if an odd number of 1s was transmitted
  
endmodule
