module flag_overflow #(parameter N = 4)(input logic [N-1:0] a,b, result,
													  input logic [3:0] selec_alu, 
													  output logic flag );
					
	wire[N-1:0] d;
	divisor_N_bits #(N) div (result,b,d);	
	
	assign flag = (a!=d) & (selec_alu==4'b0010);

endmodule 