module	Lab1_gatelevel(F, A, B, C, D);
	output F;
	input A, B, C, D;
	
	wire negD, negB, negA;
	wire andAD, andBC, andCD;
	wire orTwoAnd, orACD;

	not #(0) notD(negD, D);
	not #(0) notB(negB, B);
	not #(0) notA(negA, A);

	and #(0) andad(andAD, A, negD);
	and #(0) andbc(andBC, negB, C);
	and #(0) andcd(andCD, C, D);

	or #(0) oracd(orACD, andCD, negA);
	or #(0) ortan(orTwoAnd, andAD, andBC);

	and #(0) ans(F, orACD, orTwoAnd);

endmodule