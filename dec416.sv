module dec416(
	input logic [3:0] I,
	output logic [15:0] Y
);

//Describe each possible output with the inputs required to turn it on
assign Y[15] = I[3] & I[2] & I[1] & I[0];    //1111
assign Y[14] = I[3] & I[2] & I[1] & ~I[0];   //1110
assign Y[13] = I[3] & I[2] & ~I[1] & I[0];   //1101
assign Y[12] = I[3] & I[2] & ~I[1] & ~I[0];  //1100
assign Y[11] = I[3] & ~I[2] & I[1] & I[0];   //1011
assign Y[10] = I[3] & ~I[2] & I[1] & ~I[0];  //1010
assign Y[9] = I[3] & ~I[2] & ~I[1] & I[0];   //1001
assign Y[8] = I[3] & ~I[2] & ~I[1] & ~I[0];  //1000
assign Y[7] = ~I[3] & I[2] & I[1] & I[0];    //0111
assign Y[6] = ~I[3] & I[2] & I[1] & ~I[0];   //0110
assign Y[5] = ~I[3] & I[2] & ~I[1] & I[0];   //0101
assign Y[4] = ~I[3] & I[2] & ~I[1] & ~I[0];  //0100
assign Y[3] = ~I[3] & ~I[2] & I[1] & I[0];   //0011
assign Y[2] = ~I[3] & ~I[2] & I[1] & ~I[0];  //0010
assign Y[1] = ~I[3] & ~I[2] & ~I[1] & I[0];  //0001
assign Y[0] = ~I[3] & ~I[2] & ~I[1] & ~I[0]; //0000

endmodule