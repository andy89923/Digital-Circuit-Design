module Lab2_4_bit_BLS(Diff, Bout, X, Y, Bin);
	
	output reg [3:0] Diff;
	output reg Bout;
	input [3:0] X, Y;
	input Bin;

	wire [4:1] C;
	wire [3:0] P, G;

	assign P[0] = X[0] ^ Y[0];
	assign G[0] = !X[0] & Y[0];

	assign P[1] = X[1] ^ Y[1];
	assign G[1] = !X[1] & Y[1];

	assign P[2] = X[2] ^ Y[2];
	assign G[2] = !X[2] & Y[2];

	assign P[3] = X[3] ^ Y[3];
	assign G[3] = !X[3] & Y[3];

	// module Lab2_CLG_behavior(C, P, G, C0);
	Lab2_CLG_behavior M(C, P, G, Bin);

	always @(*) begin
		Diff[0] = P[0] ^ Bin;
		Diff[1] = P[1] ^ C[1];
		Diff[2] = P[2] ^ C[2];
		Diff[3] = P[3] ^ C[3];
		Bout = C[4];
	end

endmodule