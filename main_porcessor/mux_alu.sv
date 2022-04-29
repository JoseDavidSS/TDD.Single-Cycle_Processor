module mux_alu #(parameter N = 4)	(input logic[N-1:0] result_suma, result_resta, result_and, result_or,
											input logic[3:0] select_alu,
											output logic[N-1:0] result);
	
	always_comb
		case(select_alu)
			4'b0000 : result = result_suma;
			4'b0001 : result = result_resta;
			4'b0010 : result = result_and;
			4'b0011 : result = result_or;
			default : result = 'z;
		endcase
		
endmodule 