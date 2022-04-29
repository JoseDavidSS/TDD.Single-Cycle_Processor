module flag_negativo (input logic  co_resta,
							  input logic [3:0] selec_alu,
							  output logic flag );
					
	assign flag = co_resta & (selec_alu==4'b0001);

endmodule 