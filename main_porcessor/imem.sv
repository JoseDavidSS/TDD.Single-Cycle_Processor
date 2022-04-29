module imem(input logic [31:0] a,
				output logic [31:0] rd);
				
	logic [31:0] RAM[1023:0];
	initial
	$readmemh("C:/altera/14.1/procesador/memfile.txt",RAM);
	
	assign rd = RAM[a[31:2]]; // word aligned
	
endmodule