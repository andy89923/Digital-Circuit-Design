module Lab2_CLG_gate(C, P, G, C0);
	
	output [4:1] C;
	input  [3:0] P, G;
	input  C0;
 
	wire and1, and2, and3, and4, and5;
	wire and6, and7, and8, and9, and0;

	// C1
	and g1(and1, P[0], C[0]);
	or o1(C[1], and1, G[0]);

	// C2
	and g2(and2, P[1], G[0]);
	and g3(and3, C[0], P[0], P[1]);
	or o2(C[2], and2, and3, G[1]);

	// C3
	and g4(and4, G[1], P[2]);
	and g5(and5, G[0], P[1], P[2]);
	and g6(and6, C[0], P[0], P[1], P[2]);
	or o3(C[3], and4, and5, and6, G[2]);

	// C4
	and g7(and7, G[2], P[3]);
	and g0(and0, G[1], P[2], P[3]);
	and g8(and8, G[0], P[1], P[2], P[3]);
	and g9(and9, C[0], P[0], P[1], P[2], P[3]);
	or o3(C[4], and7, and8, and9, and0, G[3]);

endmodule