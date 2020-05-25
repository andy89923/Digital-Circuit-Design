module t_Lab2_4_bit_BLS;

	wire [3:0] Diff;
	wire Bout;
	reg [3:0] X, Y;
	reg Bin;

	Lab2_4_bit_BLS M(Diff, Bout, X, Y, Bin);

	initial begin
		$dumpfile("Lab2_4_bit_BLS.vcd");
		$dumpvars;

			X = 4'b1101; Y = 4'b0101; Bin = 1'b0;
		#50 X = 4'b1100; Y = 4'b1000; Bin = 1'b1;
		
		#50 X = 4'b0101; Y = 4'b1101; Bin = 1'b0;
		#50 X = 4'b1000; Y = 4'b1100; Bin = 1'b1;

		#50 X = 4'b0101; Y = 4'b0101; Bin = 1'b0;
		#50 X = 4'b1011; Y = 4'b1011; Bin = 1'b1;

		#50 X = 4'b0000; Y = 4'b1111; Bin = 1'b0;
		#50 X = 4'b0000; Y = 4'b1111; Bin = 1'b1;
	end

	initial begin
		$display("B Dif");
		$monitor("%b %b%b%b%b", Bout, Diff[3], Diff[2], Diff[1], Diff[0]);
	end

endmodule