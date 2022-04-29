module procesador_arm(input logic clk, reset,
				output logic [31:0] PC,
				input logic [31:0] Instr,
				output logic MemWrite,
				output logic [31:0] ALUResult, WriteData,
				input logic [31:0] ReadData);
				
	logic flag_N, flag_Z, flag_C, flag_V;
	logic RegWrite, ALUSrc, MemtoReg, PCSrc;
	logic [1:0] RegSrc, ImmSrc;
	logic [3:0] ALUControl;
	
	controller c(clk, reset, Instr[31:12], {flag_N, flag_Z, flag_C, flag_V},
						RegSrc, RegWrite, ImmSrc,
						ALUSrc, ALUControl,
						MemWrite, MemtoReg, PCSrc);
						
	datapath dp(clk, reset,
					RegSrc, RegWrite, ImmSrc,
					ALUSrc, ALUControl,
					MemtoReg, PCSrc,
					flag_N, flag_Z, flag_C, flag_V, PC, Instr,
					ALUResult, WriteData, ReadData);
endmodule