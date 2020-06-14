module Lab3_Neg_Edge_D_FF_gatelevel (output Q, NQ, input D, clock);

	wire o1, o4;
	wire R, S;

	nor #(2) g1(o1, o4, R);
	nor #(2) g2(R, o1, clock);
	nor #(2) g3(S, R, clock, o4);
	nor #(2) g4(o4, S, D);

	Lab3_SR_Latch_gatelevel M(Q, NQ, S, R);

endmodule