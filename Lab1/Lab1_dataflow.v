module	Lab1_dataflow(F, A, B, C, D);
	output F;
	input A, B, C, D;
	
	wire negD, negB, negA;
	wire andAD, andBC, andCD;
	wire orTwoAnd, orACD;

	assign negD = !D;
	assign negB = !B;
	assign negA = !A;

	assign andAD = A & negD;
	assign andBC = negB & C;
	assign andCD = C & D;

	assign orTwoAnd = andAD | andBC;
	assign orACD = negA | andCD;

	assign F = orTwoAnd & orACD;

endmodule