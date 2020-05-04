module Lab1_gatelevel_UDP(F, A, B, C, D);
	output F;
	input A, B, C, D;

	wire negA, negB, negD; 
	wire andCD, orACD;
	wire K;

	Lab1_UDP udp(K, A, negD, negB, C);

	not #(0) nega(negA, A);
	not #(0) negb(negB, B);
	not #(0) negd(negD, D);

	and #(0) andcd(andCD, C, D);
	or  #(0) oracd(orACD, negA, andCD);

	and #(0) andans(F, K, orACD);

endmodule