`timescale 1 ns / 1 ns
module testbench_top();

	logic clk, rst, MemWrite;
	logic [31:0] WriteData, DataAdr;
	
	top top_tb (clk, rst, WriteData, DataAdr, MemWrite);
	
	initial begin
	rst <= 1; #22;
	rst <= 0;
	end
	
	always begin
	clk <= 1; #5;
	clk <= 0; #5;
	end
	
endmodule
	
	