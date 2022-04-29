module alu #(parameter N = 4)(input logic [N-1:0] a, b,
										input logic ci,
										input logic [3:0] selec_alu,
										output logic [N-1:0] result,
										output logic f_N, f_Z, f_C, f_V);
	
	logic [N-1:0] result_suma, result_resta;			
	logic [N-1:0] result_and, result_or;
	logic co_suma, co_resta;


	sumador_N_bits #(N) sum(a, b, ci, result_suma, co_suma);
	restador_N_bits #(N) rest(a, b,ci,result_resta, co_resta);

	operador_and #(N) op_and (a, b, result_and); 
	operador_or #(N) op_or (a, b, result_or); 

	mux_alu #(N) Mux_Alu (result_suma, result_resta, result_and, result_or, selec_alu, result);

	flag_negativo  flag_N(co_resta, selec_alu, f_N);
	flag_carry  flag_C (co_suma, co_resta, selec_alu, f_C);
	flag_zero #(N) flag_Z (result, f_C, f_Z);
	flag_overflow #(N) flag_V (a, b, result, selec_alu, f_V);

					
endmodule 