transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/decoder.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/condcheck.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/condlogic.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/flopr.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/flopenr.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/extend.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/regfile.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/adder.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/mux2.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/datapath.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/controller.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/procesador_arm.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/top.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/mux_alu.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/alu.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/sumador_N_bits.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/sumador_1_bit.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/restador_N_bits.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/negador_1_bit.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/negador_N_bits.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/operador_and.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/operador_or.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/flag_negativo.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/flag_carry.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/flag_zero.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/flag_overflow.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/divisor_N_bits.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/testbench_top.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/dmem.sv}
vlog -sv -work work +incdir+C:/altera/14.1/procesador {C:/altera/14.1/procesador/imem.sv}

