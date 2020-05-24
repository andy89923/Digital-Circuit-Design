module t_Lab2_4_bit_CLA;
	wire [3:0] Sum;
	wire Cout;

	reg [3:0] A, B;
	reg Cin;

	Lab2_4_bit_CLA M(Sum, Cout, A, B, Cin);

	initial #400 $finish;

	initial begin
		// $dumpfile("Lab2_4_bit_CLA.vcd");
		
			A = 4'b1101; B = 4'b0101; Cin = 1'b0;
		#50 A = 4'b1100; B = 4'b1000; Cin = 1'b1;
		
		#50 A = 4'b0101; B = 4'b1101; Cin = 1'b0;
		#50 A = 4'b1000; B = 4'b1100; Cin = 1'b1;

		#50 A = 4'b0101; B = 4'b0101; Cin = 1'b0;
		#50 A = 4'b1011; B = 4'b1011; Cin = 1'b1;

		#50 A = 4'b1111; B = 4'b1111; Cin = 1'b1;
		#50 A = 4'b1111; B = 4'b0000; Cin = 1'b1;
	end

	initial begin
		$display("C Sum");
		$monitor("%b %b%b%b%b", Cout, Sum[3], Sum[2], Sum[1], Sum[0]);
	end

endmodule