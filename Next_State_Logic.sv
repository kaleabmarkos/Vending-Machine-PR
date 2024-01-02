module Next_State_Logic (
	input logic [1:0] I,
	input logic [2:0] S,
	output logic [3:0] Snext
);

assign Snext[3] = (S[2] & ~S[1] & ~S[0] & I[1] & I[0]);
assign Snext[2] = (~S[2] & I[1] & I[0]) | (S[0] & I[1] & I[0]) | (~S[2] & S[1] & I[1]) | (S[1] & I[1] & I[0]) | (~S[2] & S[1] & S[0] & I[0]) | (S[2] & ~S[1] & ~S[0] & ~I[1]) | (S[2] & ~S[1] & ~S[0] & ~I[0]);
assign Snext[1] = (~S[1] & I[1] & ~I[0]) | (S[2] & I[1] & ~I[0]) | (~S[2] & S[1] & ~S[0] & ~I[1]) | (~S[2] & S[1] & ~I[1] & ~I[0]) | (~S[2] & S[1] & I[1] & I[0]) | (~S[2] & ~S[1] & S[0] & ~I[1] & I[0]);
assign Snext[0] = (~S[0] & ~I[1] & I[0]) | (~S[2] & S[0] & ~I[0]) | (~S[2] & S[0] & I[1]) | (S[2] & ~I[1] & I[0]);

endmodule