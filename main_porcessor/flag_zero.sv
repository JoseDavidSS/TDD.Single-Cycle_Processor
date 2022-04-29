module flag_zero #(parameter N = 4)(input logic [N-1:0] result,
												 input logic flag_C,
												 output logic flag_Z );
										
assign flag_Z = (result=='b0) & (flag_C==1'b0);

endmodule 