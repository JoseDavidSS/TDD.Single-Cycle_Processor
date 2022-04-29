module testbench_decoder();

	logic [1:0] Op;
	logic [5:0] Funct;
	logic [3:0] Rd;
	
	logic [1:0] FlagW;
	logic PCS, RegW, MemW;
	logic MemtoReg, ALUSrc;
	logic [1:0] ImmSrc, RegSrc, ALUControl;
	
	decoder decoder_tb (Op, Funct, Rd, FlagW, PCS, RegW, MemW, MemtoReg, ALUSrc, ImmSrc, RegSrc, ALUControl);
	
	initial begin
	Op = 2'b00;
	Funct = 6'b000000;
	Rd = 4'b0000;
	
	#20
	Op = 2'b01;
	Funct = 6'b010000;
	Rd = 4'b0011;
	
	#20;

	end
	
endmodule