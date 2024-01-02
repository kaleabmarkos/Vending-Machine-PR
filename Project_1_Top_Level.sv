module Project_1_Top_Level (
	input logic Q, H, O, CLK, RES, CLK50,
	output logic T,
	output logic [1:0] C,
	output logic [6:0] Sev_Seg_Ch,
	output logic [6:0] Seven_Seg,
	output logic [3:0] Current_S
);

//intermediate logic (unused)
logic idle;

//intermediate logic (used)
logic [1:0] I;
logic [3:0] Next_S;
logic DCLK;
logic DRES;

//enc4to2 in:(idle, Q, H, O) out:(A1, A2)
enc4to2 enc (.idle(idle), .Q(Q), .H(H), .O(O), .A1(I[1]), .A2(I[0]));

//Next_State_Logic in:(I[1:0], S[2:0]) out:(Snext[3:0])
Next_State_Logic NSL (.I(I[1:0]), .S(Current_S[2:0]), .Snext(Next_S [3:0]));

//debouncer in:(A_noisy, CLK50M) out:(A)
debouncer CLKdb(.A_noisy(CLK), .CLK50M(CLK50), .A(DCLK));
//debouncer in:(A_noisy, CLK50M) out:(A)
debouncer RESdb(.A_noisy(RES), .CLK50M(CLK50), .A(DRES));

//S_State_Memory in:(Snext [3:0], DCLK, DRES) out:(current_s [3:0])
S_State_Memory SSM(.Snext(Next_S[3:0]), .DCLK(DCLK), .DRES(DRES), .current_s(Current_S[3:0]));

//output_logic in:(S [3:0]) out:(T, C [1:0)
output_logic OL(.S(Current_S[3:0]), .T(T), .C(C[1:0]));

//seven_seg in:(in [3:0]) out:(out [6:0])
seven_seg SS(.in(Current_S[3:0]), .out(Seven_Seg[6:0]));

//sev_seg_ch in:(State [3:0]) out:(S [6:0])
sev_seg_ch SSC(.State(Current_S[3:0]), .S(Sev_Seg_Ch[6:0]));


endmodule