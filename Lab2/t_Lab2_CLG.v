module t_Lab2_CLG;
	wire [4:1] C;
	reg [3:0] P, G;
	reg C0;

	// Lab2_CLG_gate M(C, P, G, C0);
	// Lab2_CLG_dataflow M(C, P, G, C0);
	Lab2_CLG_behavior M(C, P, G, C0);

	initial #300 $finish;

	initial begin
		// $dumpfile("Lab2_CLG_gate.vcd");
		// $dumpfile("Lab2_CLG_dataflow.vcd");
		$dumpfile("Lab2_CLG_behavior.vcd");
		$dumpvars;
		
			P = 4'b1101; G = 4'b0101; C0 = 1'b0; 
		#50 P = 4'b1100; G = 4'b1000; C0 = 1'b1;
		
		#50 P = 4'b0101; G = 4'b1101; C0 = 1'b0;
		#50 P = 4'b1000; G = 4'b1100; C0 = 1'b1;

		#50 P = 4'b0101; G = 4'b0101; C0 = 1'b0;
		#50 P = 4'b1011; G = 4'b1011; C0 = 1'b1;
	end

	initial begin
		$monitor("%b %b %b %b", C[4], C[3], C[2], C[1]);
	end

endmodule