module D_ff_AR(output reg Q, input D, clk, rst);
	
	// reset active LOW
	always @(posedge clk, negedge rst) begin
		if (!rst) Q <= 1'b0;
		else Q <= D;
	end

endmodule