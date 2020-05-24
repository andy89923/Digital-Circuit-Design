module t_Lab2_Excess_3_adder_behavior:
	wire [3:0] Sum;
	wire Cout;
	reg [3:0] A, B;
	reg Cin;

	t_Lab2_Excess_3_adder_behavior M(Sum, Cout, A, B, Cin);

	initial begin
		$dumpfile("Lab2_Excess_3_adder_behavior.vcd");
		
			A = 4'b0011; B = 4'b0011; Cin = 1'b0;
		#50 A = 4'b0011; B = 4'b0011; Cin = 1'b1;
		
		#50 A = 4'b1000; B = 4'b0111; Cin = 1'b0;
		#50 A = 4'b1000; B = 4'b0111; Cin = 1'b1;

		#50 A = 4'b1100; B = 4'b1100; Cin = 1'b0;
		#50 A = 4'b1100; B = 4'b1100; Cin = 1'b1;
	end


endmodule