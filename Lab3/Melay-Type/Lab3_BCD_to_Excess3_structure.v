module Lab3_BCD_to_Excess3_structure(output z, input x, clock, reset);
	
	wire Q2, Q1, Q0;
	wire D2, D1, D0;

	assign D2 = Q1&Q0 | x&Q1 | x&(~Q2)&Q0 | Q2&(~Q1)&(~Q0) | (~x)&(~Q2)&Q1;

	assign D1 = x&(~Q1)&(~Q0) | (~x)&(~Q2)&(~Q1)&Q0;

	assign D0 = Q1&Q0 | (~x)&(~Q2)&(~Q1) | (~x)&(~Q1)&(~Q0);
	
	assign z = (~x)&(~Q2)&(~Q1) | x&Q1 | Q2&Q1 | x&Q2&Q0 | (~x)&(~Q1)&(~Q0);

	D_ff_AR M2(Q2, D2, clock, reset);
	D_ff_AR M1(Q1, D1, clock, reset);
	D_ff_AR M0(Q0, D0, clock, reset);

endmodule