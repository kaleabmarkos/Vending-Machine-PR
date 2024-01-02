module sev_seg_ch (
	input logic [3:0] State,
	output logic [6:0] S
);

logic [15:0] I;

//dec416 in:([3:0] I) out:([15:0] Y)
dec416 dec(.I(State[3:0]), .Y(I[15:0]));

	assign S[0] = ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5] | I[7] | I[8]);
	assign S[1] = ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5] | I[6] | I[7] | I[8]);
	assign S[2] = ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5] | I[6] | I[8]);
	assign S[3] = ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5] | I[7] | I[8]);
	assign S[4] = ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5] | I[7]);
	assign S[5] = ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5]);
	assign S[6] = ~(I[7] | I[8]);
 
endmodule