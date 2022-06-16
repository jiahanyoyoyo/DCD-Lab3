module Lab3_Sequence_Recognizer_state_diagram (input x, clock,reset, output z);

reg z;
reg [2: 0] state, next_state;
parameter S0 = 3'b000,
		  S1 = 3'b001,
		  S2 = 3'b010, 
		  S3 = 3'b011,
		  S4 = 3'b100,
		  S5 = 3'b101,
		  S6 = 3'b110;

always @(posedge clock, negedge reset) //state transition
if (reset == 0) state <= S0; //Active-LOW reset
else state <= next_state;

always @ (state, x) // Form the next state
case (state)
S0: if (~x) next_state = S1; else next_state = S4;
S1: if (~x) next_state = S1; else next_state = S2;
S2: if (~x) next_state = S3; else next_state = S4;
S3: if (~x) next_state = S6; else next_state = S2;
S4: if (~x) next_state = S5; else next_state = S4;
S5: if (~x) next_state = S6; else next_state = S2;
S6: if (~x) next_state = S6; else next_state = S6;
endcase

always @ (state, x) // Form the output
case (state)
S2: z = ~x;
S0,S1,S3,S4,S5,S6: z = 0;
endcase

endmodule