module testbench_alu();

	logic [3:0] a, b;
	logic ci;
	logic [3:0] selec_alu;
	logic [3:0] result;
	logic f_N, f_Z, f_C, f_V;
	
	alu alu_tb (a,b,ci,selec_alu,result,f_N,f_Z,f_C,f_V);
	
	initial begin
	selec_alu = 4'b0000;
	ci = 0;
	a = 4'b0011;
	b = 4'b0001;
	
	#20
	selec_alu = 4'b0001;
	ci = 0;
	a = 4'b0011;
	b = 4'b0001;
	
	#20
	selec_alu = 4'b0010;
	ci = 0;
	a = 4'b0011;
	b = 4'b0001;
	
	#20
	selec_alu = 4'b0011;
	ci = 0;
	a = 4'b0011;
	b = 4'b0001;
	end
	
endmodule