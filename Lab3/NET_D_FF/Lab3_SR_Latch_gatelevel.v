module Lab3_SR_Latch_gatelevel(output Q, NQ, input S, R);
	
	nor #(2) r(Q, R, NQ);
	nor #(2) s(NQ, S, Q);

endmodule