module Lab2_Excess_3_adder_behavior (Sum, Cout, A, B, Cin);
	
	output reg [3:0] Sum;
	output reg Cout;
	
	input [3:0] A, B;
	input Cin;

	reg t = 4'b0011;
	reg [3:0] tmp;

	always @(*) begin
		tmp = A + B;
		Cout = Cin;
	end

	always @(*) begin
		if (Cout == 0) Sum = tmp - 4'b0011;
		else Sum = tmp + 4'b0011;
	end

endmodule