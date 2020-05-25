module Lab2_CLG_dataflow(C, P, G, C0);
	
	output [4:1] C;
	input  [3:0] P, G;
	input  C0;

	assign C[1] = (P[0]&C0) | G[0];
	
	assign C[2] = (P[1]&P[0]&C0) | (P[1]&G[0]) | G[1];

	assign C[3] = (P[2]&P[1]&P[0]&C0) | (P[2]&P[1]&G[0]) | (G[1]&P[2]) | G[2];

	assign C[4] = (P[3]&P[2]&P[1]&P[0]&C0) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&G[1]&P[2]) | (P[3]&G[2]) | G[3];

endmodule