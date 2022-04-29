module restador_N_bits #(parameter N = 4) (input logic [N-1:0] a, b,
													  input logic ci,
													  output logic [N-1:0] rest,
													  output logic co);

	wire [N-1:0] b_negado ;
	wire ci_negado,co_negado; 
	
	negador_N_bits #(N) neg (b, b_negado);
	
	negador_1_bit cn (ci,ci_negado); 
	
	sumador_N_bits #(N) resta (a,b_negado,ci_negado,rest,co_negado);
	
	negador_1_bit con (co_negado,co);
												  
endmodule 