module output_logic( input logic [3:0] S,
                     output logic T,
					 output logic [1:0] C

);

assign T = S[3] | S[2] & S[0] | S[2] & S[1];
assign C[0] = S[3] | S[2] & S[1] & ~S[0];
assign C[1] = S[3] | S[2] & S[1] & S[0];
          
endmodule