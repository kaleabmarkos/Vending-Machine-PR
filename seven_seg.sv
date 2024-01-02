module seven_seg (
	input logic [3:0] in,
	output logic [6:0] out
);

logic [15:0] decOut;

//dec416 in:([3:0] I) out:([15:0] Y)
dec416 dec(.I(in[3:0]), .Y(decOut[15:0]));

assign out[0] = decOut[1] | decOut[4] | decOut[11] | decOut[13];
assign out[1] = decOut[5] | decOut[6] | decOut[11] | decOut[12] | decOut[14] | decOut[15];
assign out[2] = decOut[2] | decOut[12] | decOut[14] | decOut[15];
assign out[3] = decOut[1] | decOut[4] | decOut[7] | decOut[10] | decOut[15];
assign out[4] = decOut[1] | decOut[3] | decOut[4] | decOut[5] | decOut[7] | decOut[9];
assign out[5] = decOut[1] | decOut[2] | decOut[3] | decOut[7] | decOut[13];
assign out[6] = decOut[0] | decOut[1] | decOut[7] | decOut[12];

endmodule