module Lab3_BCD_to_Excess3_state_diagram(output reg z, input x, clock, reset);
	
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011;
	parameter S4 = 3'b100, S5 = 3'b101, S6 = 3'b110;

	reg [2:0] now_state, nxt_state;

	always @(posedge clock, negedge reset) 
		if (reset == 1'b0) now_state <= S0;
		else now_state <= nxt_state;

	always @(now_state, x)
		case (now_state)
			S0: if (x) nxt_state = S2; else nxt_state = S1;
			S1: if (x) nxt_state = S4; else nxt_state = S3;
			S2: nxt_state = S4;
			S3: nxt_state = S5;
			S4: if (x) nxt_state = S6; else nxt_state = S5;
			S5: nxt_state = S0;
			S6: nxt_state = S0;
		endcase

	always @(now_state, x)
		case (now_state)
			S0, S1, S4, S6: z = ~x;
			S2, S3, S5: z = x;
		endcase
		

endmodule