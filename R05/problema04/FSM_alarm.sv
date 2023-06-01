/*
 * LOAC 2022.2
 * Roteiro 05 - Problema 04: Detector de Sequencia
 * @author Alexandre Corlet
 * @matricula 119210883
 */

parameter NUM_BITS = 2;

module FSM_alarm(
  input clk, reset,
  input lamp1, lamp2, lamp3,
  output logic alarm_bit
);

  // Create all possible states
  enum logic [NUM_BITS-1 : 0] {
    IDLE,		// All lamps are turned off
    LAMP1_ON,   // Lamp 1 is on
    LAMP2_ON,	// Lamp 2 is on
    LAMP3_ON	// Lamp 3 is on
  } state;
  
  always_ff @(posedge clk)
    if (reset) state <= IDLE;	// reset state to idle
    else
      // Detect the LAMP1_ON -> LAMP2_ON -> LAMP3_ON sequence and sound the alarm
      unique case (state)
        IDLE:
          if (lamp1)
            // lamp1 is on, therefore go from IDLE to LAMP1_ON state
            state <= LAMP1_ON;
          else
            // Either lamp2 or lamp3 is on, therefore stay in IDLE (Do nothing)
            state <= IDLE;
        LAMP1_ON:
          if (lamp2)
            // Since lamp2 was turned on, go from LAMP1_ON state to LAMP2_ON state
            state <= LAMP2_ON;
          else if (lamp1)
            // Stay in LAMP1_ON state
            state <= LAMP1_ON;
          else
            // lamp3 is on while in LAMP1_ON state, therefore go back to IDLE state (broke the seq)
            state <= IDLE;
        LAMP2_ON:
          if (lamp3)
            // lamp3 was turned on, therefore go from LAMP2_ON state to LAMP3_ON state
            state <= LAMP3_ON;
          else if (lamp1)
            // lamp1 was turned on while in LAMP1_ON state, therefore go back to LAMP1_ON state
            state <= LAMP1_ON;
          else
            // Lamp2 was turned on, therefore go back to IDLE (broke the sequence)
            state <= IDLE;
        LAMP3_ON:
          if (lamp1)
            // lamp1 is on while in ALARM state, turn off the alarm and go to LAMP1_ON state
            state <= LAMP1_ON;
          else
            // Either lamp2 or lamp3 is turned on, turn off the alarm and go to IDLE state
            state <= IDLE;
      endcase
  
  always_comb alarm_bit <= (state == LAMP3_ON);	// Sound the alarm!
  
endmodule
