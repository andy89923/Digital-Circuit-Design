module t_Lab3_Neg_Edge_D_FF_gatelevel;
	reg clock, D;
	wire Q, NQ;	


	Lab3_Neg_Edge_D_FF_gatelevel M(Q, NQ, D, clock);

	initial #200 $finish;

	initial begin
		clock = 1'b0;
		forever #10 clock = ~clock;
	end

	initial fork
		 #00 D = 0;
		 #15 D = 1;
		 #35 D = 0;
		 #65 D = 1;
		 #88 D = 0;
		 #125 D = 1;
		 #130 D = 0;
	join

	initial begin
		$dumpfile("Neg_Edge_D_FF_gatelevel.vcd");
		$dumpvars;
	end

endmodule