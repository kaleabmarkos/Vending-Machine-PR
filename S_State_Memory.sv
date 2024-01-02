module S_State_Memory (
	input logic [3:0] Snext, DCLK, DRES,
	output logic [3:0] current_s
);

logic [3:0] not_current_s;

//D_FF_neg.sv in:(D, CLKb, RSTb) out:(Q,Qb)
D_FF_neg DFF3 (.D(Snext[3]), .CLKb(DCLK), .RSTb(DRES), .Q(current_s[3]), .Qb(not_current_s[3]));
D_FF_neg DFF2 (.D(Snext[2]), .CLKb(DCLK), .RSTb(DRES), .Q(current_s[2]), .Qb(not_current_s[2]));
D_FF_neg DFF1 (.D(Snext[1]), .CLKb(DCLK), .RSTb(DRES), .Q(current_s[1]), .Qb(not_current_s[1]));
D_FF_neg DFF0 (.D(Snext[0]), .CLKb(DCLK), .RSTb(DRES), .Q(current_s[0]), .Qb(not_current_s[0]));

endmodule