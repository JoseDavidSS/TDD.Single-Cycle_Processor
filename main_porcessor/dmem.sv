module dmem(input logic clk, we,
				input logic [31:0] a, wd,
				output logic [31:0] rd);
				
	logic [31:0] RAM[1023:0];
	initial $readmemh("C:/altera/14.1/procesador/ram_file.txt",RAM);
	assign rd = RAM[a[31:2]]; // word aligned
	
	always_ff @(posedge clk)
	if (we) RAM[a[31:2]] <= wd;
	
endmodule