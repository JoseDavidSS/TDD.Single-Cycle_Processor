 module negador_N_bits #(parameter N = 4)(input logic [N-1:0] a,
													output logic [N-1:0] result );
										
	genvar i;

	generate		
	
		for( i=0;i<N;i++) 
			begin: gen_loop
				negador_1_bit uut (a[i],result[i]);
			end 
			
	endgenerate

endmodule 