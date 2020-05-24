module t_Lab2_4_bit_CLA;
	wire [3:0] Sum;
	wire Cout;

	reg [3:0] A, B;
	reg Cin;

	Lab2_4_bit_CLA M(Sum, Cout, A, B, Cin);

	initial begin
		$dumpfile("Lab2_4_bit_CLA.vcd");
		
			P = 4'b1101; G = 4'b0101; Cin = 1'b0;
		#50 P = 4'b1100; G = 4'b1000; Cin = 1'b1;
		
		#50 P = 4'b0101; G = 4'b1101; Cin = 1'b0;
		#50 P = 4'b1000; G = 4'b1100; Cin = 1'b1;

		#50 P = 4'b0101; G = 4'b0101; Cin = 1'b0;
		#50 P = 4'b1011; G = 4'b1011; Cin = 1'b1;

		#50 P = 4'b1111; G = 4'b1111; Cin = 1'b1;
		#50 P = 4'b1111; G = 4'b0000; Cin = 1'b1;
	end

endmodule