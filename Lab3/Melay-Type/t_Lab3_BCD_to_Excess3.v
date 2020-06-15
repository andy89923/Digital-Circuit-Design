module t_Lab3_BCD_to_Excess3;
	
	reg [3:0] num;
	reg x, clk;
	reg rst;    // active LOW
	reg idx;
	wire z1, z2;

	reg [3:0] std, str;

	Lab3_BCD_to_Excess3_state_diagram M1(z1, x, clk, rst);
	Lab3_BCD_to_Excess3_structure M2(z2, x, clk, rst);

	initial #500 $finish;

	initial begin
		$dumpfile("BCD_to_Excess3.vcd");
		$dumpvars;
	end

	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1'b1;
		#4 rst = 1'b0;
		#6 rst = 1'b1;
	end

	initial begin
		num <= 4'b0000;
		std <= 4'b0000;
		str <= 4'b0000;

		#10 x = 1'b0;

		repeat(10) fork
			$display("\nBCD: %b%b%b%b", num[3], num[2], num[1], num[0]);

			#0 rst <= 1'b1;
			
			#1 x = num[0]; 
			#4 std[0] = z1; 
			#4 str[0] = z2;

			#11 x = num[1]; 
			#14 std[1] = z1; 
			#14 str[1] = z2;

			#21 x = num[2]; 
			#24 std[2] = z1; 
			#24 str[2] = z2;

			#31 x = num[3]; 
			#34 std[3] = z1; 
			#34 str[3] = z2;

			#39 $write("State: %b%b%b%b\n", std[3], std[2], std[1], std[0]);
			#40 $write("Struct: %b%b%b%b\n", str[3], str[2], str[1], str[0]);
		
			#45 rst = 1'b0;

 			#50 num = num + 4'b0001;
		join
	end

	// initial begin
	// 	num <= 4'b0000;
	// 	std <= 4'b0000;
	// 	str <= 4'b0000;

	// 	#10 x = 1'b0;

	// 	repeat(10) begin
	// 		$display("\nBCD: %b%b%b%b", num[3], num[2], num[1], num[0]);

	// 		rst <= 1'b1;
	// 			x = num[0]; std[0] = z1; str[0] = z2;
	// 		#10 x = num[1]; std[1] = z1; str[1] = z2;
	// 		#10 x = num[2]; std[2] = z1; str[2] = z2;
	// 		#10 x = num[3]; std[3] = z1; str[3] = z2;

	// 		// rst <= 1'b1;
	// 		// 	x = num[0]; std[0] = z1; str[0] = z2;
	// 		// #10 x = num[1]; std[1] = z1; str[1] = z2;
	// 		// #10 x = num[2]; std[2] = z1; str[2] = z2;
	// 		// #10 x = num[3]; std[3] = z1; str[3] = z2;

	// 		#5 $write("State: %b%b%b%b\n", std[3], std[2], std[1], std[0]);
	// 		#5 $write("Struct: %b%b%b%b\n", str[3], str[2], str[1], str[0]);
		
	// 		#5 rst = 1'b0;
	// 		#5 rst = 1'b1;

 // 			num = num + 4'b0001;
	// 	end
	// end

	// initial begin
	// 	rst = 1'b1;
	// 	#1 rst = 1'b0;
	// 	#1 rst = 1'b1;
	// end

	// initial begin 
	// 	    x = 0;
	// 	#10 x = 0;
	// 	#10 x = 0;
	// 	#10 x = 0;

	// 	#10 x = 1;
	// 	#10 x = 0;
	// 	#10 x = 0;
	// 	#10 x = 0;

	// 	#10 x = 0;
	// 	#10 x = 1;
	// 	#10 x = 0;
	// 	#10 x = 1;

	// 	// #10 rst = 1'b0;
	// 	// #10 rst = 1'b1;
	// 	#10 x = 1;
	// 	#10 x = 1;
	// 	#10 x = 0;
	// 	#10 x = 0;

	// 	#10 x = 0;
	// 	#10 x = 1;
	// 	#10 x = 0;
	// 	#10 x = 0;

	// 	#10 x = 0;
	// 	#10 x = 0;
	// 	#10 x = 0;
	// 	#10 x = 1;

	// 	#10 x = 0;
	// 	#10 x = 0;
	// 	#10 x = 1;
	// 	#10 x = 1;

	// 	#10 x = 0;
	// 	#10 x = 1;
	// 	#10 x = 1;
	// 	#10 x = 1;
		
	// 	#10 x = 1;
	// 	#10 x = 0;
	// 	#10 x = 0;
	// 	#10 x = 1;

	// 	#10 x = 1;
	// 	#10 x = 0;
	// 	#10 x = 1;
	// 	#10 x = 0;
	// end

endmodule
