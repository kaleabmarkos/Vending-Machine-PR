module enc4to2 (
	input logic idle, Q, H, O,
	output logic A1, A2
);

assign A1 = H | O;
assign A2 = Q | O;


endmodule

