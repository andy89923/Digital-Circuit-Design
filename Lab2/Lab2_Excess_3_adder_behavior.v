module Lab2_Excess_3_adder_behavior(Sum, Cout, A, B, Cin);
	
	output reg [3:0] Sum;
	output Cout;
	
	input [3:0] A, B;
	input Cin;

	reg t = 4'b0011;
	wire [3:0] tmp;

	Lab2_4_bit_CLA M(tmp, Cout, A, B, Cin);

	always @(*) begin
		if (Cout == 0) Sum = tmp - 4'b0011;
		else Sum = tmp + 4'b0011;
	end

endmodule