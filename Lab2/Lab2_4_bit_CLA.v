module Lab2_4_bit_CLA(Sum, Cout, A, B, Cin);

	output reg [3:0] Sum;
	output reg Cout;

	input [3:0] A, B;
	input Cin;

	wire [4:1] C;
	wire [3:0] P, G;

	assign P = A ^ B;
	assign G = A & B;

	// module Lab2_CLG_behavior(C, P, G, C0);
	Lab2_CLG_behavior M(C, P, G, Cin);

	always @(*) begin
		Sum[0] = P[0] ^ Cin;
		Sum[1] = P[1] ^ C[1];
		Sum[2] = P[2] ^ C[2];
		Sum[3] = P[3] ^ C[3];
		Cout = C[4];
	end
	
endmodule