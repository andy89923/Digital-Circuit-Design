module t_Lab3_SR_Latch_gatelevel;
	wire Q, NQ;
	reg S, R;

	Lab3_SR_Latch_gatelevel M(Q, NQ, S, R);

	initial #70 $finish;
	initial begin
		$dumpfile("SR_Latch_gatelevel.vcd");
		$dumpvars;

			S = 1'b1; R = 1'b0;
		#10 S = 1'b0; R = 1'b0;
		#10 S = 1'b0; R = 1'b1;
		#10 S = 1'b0; R = 1'b0;
		#10 S = 1'b0; R = 1'b0;
		#10 S = 1'b1; R = 1'b1;
		#10 S = 1'b0; R = 1'b0;
	end

endmodule