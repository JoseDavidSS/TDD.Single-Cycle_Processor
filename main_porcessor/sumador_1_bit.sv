module sumador_1_bit  (input logic  a, b, ci,
								output logic sum, co);
								
	assign sum = (a ^ b) ^ ci;
	
	assign co = (ci & b) | (a & b) | (ci & a);

endmodule 